const express = require('express');
const app = express();

// Round robin strategy

const port = process.env.PORT || 8080;

app.listen(port, () => console.log(`Listening on port ${port}`));

app.get('/',(req, res) => {
    console.log(req.headers);
    res.send(`Hello from port ${port}`);
})