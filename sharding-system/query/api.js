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

const executeQuery = (sql) => {
    dbconn.query(sql, function (err, result) {
        if (err) throw err;
        return result;
    });
}

app.get('/api/customer', (req, res) => {
    var sqlCommand = `SELECT * FROM CUSTOMER`;
    try{
        var result = executeQuery(sqlCommand);
        return res.json(result);
    }catch(err){
        console.log(err);
        return res.status(403).send('Error');
    }
})