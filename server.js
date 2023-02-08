const http = require('http');
const app = require('./app.js');

const PORT = process.env.PORT || 5050;

const server = http.createServer(app);

server.listen(PORT, () => {
    console.log(`App started on port ${PORT}`);
})