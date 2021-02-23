const express = require('express');
const app = express();
const customers = require('./query/api')

const port = process.env.PORT || 5500;

app.use(customers);

app.listen(port, (err) => {
    if (err) {
        console.error(err)
        process.exit(1)
    } else {
        console.log(`Running on ${port}`)
    }
})