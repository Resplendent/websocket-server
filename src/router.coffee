

sockets = new Array()

newSocket = (name) ->
    wsServer = new WebSocketServer
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

        