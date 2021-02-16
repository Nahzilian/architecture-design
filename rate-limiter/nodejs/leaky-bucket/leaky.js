const redis = require('redis');
const moment = require('moment');
const redisClient = redis.createClient();
const { promisify } = require('util');

redisClient.on("error", function (error) {
  console.error(error);
})


const WINDOW_SIZE_IN_HOURS = 24;
const MAX_WINDOW_REQUEST_COUNT = 10;
const WINDOW_LOG_INTERVAL_IN_HOURS = 1;

const getAsync = promisify(redisClient.get).bind(redisClient);
const postAsync = promisify(redisClient.set).bind(redisClient);


async function rateLimiter(req, res, next) {
  try {
    if (!redisClient) {
      throw new Error('Redis client does not exist!');
    }
    const currentRequestTime = moment();
    const record = await getAsync(req.ip);
    if (record === null) {
      let newRecord = [];
      let requestLog = {
        requestTimeStamp: currentRequestTime.unix(),
        requestCount: 1
      };
      newRecord.push(requestLog);
      const setInfo = await postAsync(req.ip, JSON.stringify(newRecord));
      next();
    }
    let data = JSON.parse(record);
    let windowStartTimestamp = moment()
      .subtract(WINDOW_SIZE_IN_HOURS, 'hours')
      .unix();
    let requestsWithinWindow = data.filter(entry => {
      return entry.requestTimeStamp > windowStartTimestamp;
    });
    console.log('requestsWithinWindow', requestsWithinWindow);
    let totalWindowRequestsCount = requestsWithinWindow.reduce((accumulator, entry) => {
      return accumulator + entry.requestCount;
    }, 0);
    // if number of requests made is greater than or equal to the desired maximum, return error
    if (totalWindowRequestsCount >= MAX_WINDOW_REQUEST_COUNT) {
      res.status(429)
        .send(
          `You have exceeded the ${MAX_WINDOW_REQUEST_COUNT} requests in ${WINDOW_SIZE_IN_HOURS} hrs limit!`
        );
    } else {
      // if number of requests made is less than allowed maximum, log new entry
      let lastRequestLog = data[data.length - 1];
      let potentialCurrentWindowIntervalStartTimeStamp = currentRequestTime
        .subtract(WINDOW_LOG_INTERVAL_IN_HOURS, 'hours')
        .unix();
      //  if interval has not passed since last request log, increment counter
      if (lastRequestLog.requestTimeStamp > potentialCurrentWindowIntervalStartTimeStamp) {
        lastRequestLog.requestCount++;
        data[data.length - 1] = lastRequestLog;
      } else {
        //  if interval has passed, log new entry for current user and timestamp
        data.push({
          requestTimeStamp: currentRequestTime.unix(),
          requestCount: 1
        });
      }
      const setInfo = await postAsync(req.ip, JSON.stringify(data));
      next();
    }
  } catch (err) {
    next(err);
  }
}

module.exports = rateLimiter;
