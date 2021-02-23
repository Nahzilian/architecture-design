const router = require('express').Router();
const verify = require('./verifytoken');
router.get('/', verify ,(req, res) => {
    res.json({test: "Test succeeded"});
})


module.exports = router;