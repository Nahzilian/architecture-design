/**
 * Leaky bucket algorithm
 */
const redis = require("redis");

const requestIp = require('request-ip');

const requestTimer = 1000;
const requestLimit = 3;


module.exports = function (req, res, next) {
    const client = redis.createClient();
    // Init prev time var (null), init current time (time now)
    var prev, cur = Date.now();

    // Get the current request IP for checking
    const curIP = requestIp.getClientIp(req).toString();

    var reply = [];
    var newConnection = false;
    // Get client from Redis cache
    client.get(curIP, function (err, rep) {
        if(rep) reply = JSON.parse(rep);
        else { 
            newConnection = true; 
            console.log("Here")
        }
        // If existed
        if (reply.length > 0) {
            // Push to the current array of val (the bucket)
            reply.push(cur);
            // If the length exceeded/ the bucket overflown
            if (reply.length >= requestLimit) {
                // Get the top value (FIFO)
                prev = reply.shift();

                // If the current time - previous time < than allowed, send error
                if (cur - prev <= requestTimer) {
                    res.status(503).json({ error: `Exceeded ${requestLimit} per ${requestTimer / 1000} second(s)` })
                    return
                }
            }
            // If IP doesn't exist
        } else {
            reply.push(cur)
        }
        // Set IP
        if (err) console.log(err);
    });
    if(newConnection) reply.push(cur)
    console.log(reply);
    client.set(curIP, () => {
        JSON.stringify(reply);
        //client.end(true);
    })
    next();
}
