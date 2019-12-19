const http = require('http');
const fs = require('fs')

http.createServer((request, response) => {
    console.log("Incoming request");
    response.writeHead(200, {'Content-Type': 'application/json'});
    var fileResponse = fs.readFileSync('/app/src/response.json')
    response.end(fileResponse);
}).listen(9140);

console.log("Server started.");