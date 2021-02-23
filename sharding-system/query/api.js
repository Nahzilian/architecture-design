const mysql = require('mysql');
const dotenv = require('dotenv');

const express = require('express');
const app = express();
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
dotenv.config();

var dbconn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD
});

dbconn.connect(function (err) {
    if (!err) {
        console.log("Connected to MySQL");
    } else if (err) {
        console.log(err);
    }
});

const executeQuery = (req, res) => {
    dbconn.query(res.sqlQuery, function (err, result) {
        if (err) throw err;
        if (req.method === "GET")
            res.json(result);
        else 
            res.json({"msg": "Successfully executed"})
    });
}

app.get('/api/customers', (req, res) => {
    try {
        res.sqlQuery = `SELECT * FROM SHARDING_DB.CUSTOMERS 
        UNION 
        SELECT * FROM SHARDING_DB2.CUSTOMERS
        ORDER BY CUSTOMER_ID`;
        executeQuery(req, res);
    } catch (err) {
        console.log(err);
        return res.status(403).send(`Error: ${err}`);
    }
})

app.post('/api/customers/add', (req, res) => {
    try {
        var dbname = 'SHARDING_DB';
        console.log(req.body)
        if(req.body.firstname.match(/^[a-gA-G]/ ))
            dbname = 'SHARDING_DB2';
        res.sqlQuery = `INSERT INTO ${dbname}.CUSTOMERS (CUSTOMER_FIRSTNAME, CUSTOMER_LASTNAME, CUSTOMER_TEL, CUSTOMER_EMAIL, CUSTOMER_ADDRESS) 
        values ('${req.body.firstname}', '${req.body.lastname}', '${req.body.tel}', '${req.body.email}', '${req.body.address}');
        UPDATE CENTRAL_SHARDING.DETAILS 
        SET RECORDS = RECORDS + 1
        WHERE SHARD_NAME = '${dbname}';
        `;
        executeQuery(req, res);
    } catch (err) {
        console.log(err);
        return res.status(403).send('Error');
    }
})

module.exports = app