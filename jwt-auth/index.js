const express = require('express');
const app = express();
const mongoose = require('mongoose');
const dotenv = require('dotenv');
const authRoute = require('./routes/auth');
const privRoute = require('./routes/api');
const cors = require('cors');

dotenv.config();

// Connect to db

mongoose.connect(process.env.DB_ADDRESS, {useNewUrlParser: true}, (console.log('Connected to db')));

const PORT = process.env.PORT || 5500;

const corsOptions = {
    exposedHeaders: ['Authorization','x-auth-token']
};
// Route middleware
app.use(cors(corsOptions));
app.use(express.json());
app.use('/api/user', authRoute);
app.use('/api/data', privRoute);


app.listen(PORT,() => console.log(`Listening on port ${PORT}`));