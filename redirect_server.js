var fs = require("fs");
var http = require("http");

function onRequest (request, response){
    console.log(request.url)
    response.writeHead(302 , {
        'Location' : 'https://web.com' + request.url
    });
    response.end();
}

http.createServer(onRequest).listen(80);
