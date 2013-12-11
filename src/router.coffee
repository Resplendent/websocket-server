

sockets = new Array()

WebSocketServer = require('websocket').server;
http = require('http');

newSocket = (name) ->
    wsServer = new WebSocketServer
        server = http.createServer, (request, response) ->
            console.log((new Date()) + ' Received request for ' + request.url);
            response.writeHead(404);
            response.end();
            
        server.listen(8080, function() {
            console.log((new Date()) + ' Server is listening on port 8080');
    })
        
        
        httpServer: server,
        autoAcceptConnections: false

module.exports = (app) ->
    app.post '/createSocket', (req, res) ->
        socketName = req.body.socketname
        console.log "need to juggle sockets still"
        socket = "ah!"
        sockets.push
            key: socketName
            value: socket
            res.json 200, 
                success : yes
                name : socketName

        