const express = require('express');
const app = express();

const port = process.env.PORT || 5500;



app.listen(port, (err) => {
    if (err) {
        console.error(err)
        process.exit(1)
    } else {
        console.log(`Running on ${port}`)
    }
})