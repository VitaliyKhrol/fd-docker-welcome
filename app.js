const express = require('express');

const app = express();

app.use((req, res, next) => {
    res.send('Hahahah')
});

module.exports = app;