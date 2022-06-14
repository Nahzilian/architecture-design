const express = require('express')
const app = express()
const cors = require('cors')

const port = 8000
app.use(cors())

function generateNewData(num) {
    let data = []
    for (let i = num * 100; i < (num + 1) * 100; i++) {
        data.push({
            userid: i,
            username: `user-name-${i}`
        })
    }

    return data
}

app.get('/', (_, res) => {
    res.redirect('/0')
})

app.get('/:num', (req, res) => {
    let count = parseInt(req.params["num"]);
    return res.send(generateNewData(count))
})

app.listen(port, () => { console.log(`Listening on port ${port}`) })