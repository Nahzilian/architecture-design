const express = require('express');
const dotenv = require('dotenv');
const leaky = require('./leaky-bucket/leaky');
dotenv.config();

const app = express();

const PORT = process.env.PORT || 5555;

app.use(leaky);

app.get('/', (req, res) => {
    res.send('Hello world')
})

app.listen(PORT, (err) => {
    if (err) {
        console.error(err)
        process.exit(1)
    } else {
        console.log(`Running on ${PORT}`)
    }
})