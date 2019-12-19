const http = require('http');
const mongoClient = require('mongodb').MongoClient;

async function fetchOneDocumentFromDatabase() {
    const db = await mongoClient.connect("mongodb://nosql-db:27017");
    const dbo = db.db('chatbot');
    const result = await dbo.collection('config').find({}).toArray();
    return result[0];
}

const toJsonString = data => JSON.stringify(data);

async function handler(request, response) {
    console.log("Incoming request");
    
    var document = await fetchOneDocumentFromDatabase()

    console.log("Fetched document :", document)
    response.writeHead(200, {'Content-Type': 'application/json'});
    response.end(toJsonString(document));
}

http.createServer(handler).listen(9140);

console.log("Server started.");