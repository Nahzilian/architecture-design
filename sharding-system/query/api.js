const mysql = require('mysql');
const dotenv = require('dotenv');

const express = require('express');
const app = express();

dotenv.config();

var dbconn = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USERNAME,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

dbconn.connect(function(err) {
    if ( !err ) {
        console.log("Connected to MySQL");
    } else if ( err ) {
        console.log(err);
    }
});

const executeQuery = (req, res) => {
    dbconn.query(res.sqlQuery, function (err, result) {
        if (err) throw err;
        console.log(result)
        res.json(result)
    });
}

app.get('/api/customers', (req, res) => {
    try{
        res.sqlQuery = `SELECT * FROM CUSTOMERS`;
        executeQuery(req, res);
    }catch(err){
        console.log(err);
        return res.status(403).send('Error');
    }
})


module.exports = app