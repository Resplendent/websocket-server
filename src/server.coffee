express = require 'express'

router = require './router'

runApp = () ->
    console.log "Relative execution path:#{process.cwd()}"
    app = express()
    app.set 'port', 80
    app.locals.pretty = true
    # app.set 'view engine', 'jade'
    # app.set 'views', './src/views/'
    app.use express.bodyParser()
    app.use express.cookieParser()
    app.use express.cookieSession(secret: 'sheldonisohsohandsome')
    # app.use express.session {secret: 'secretsecretsecret'}
    app.use app.router
    app.use express.logger()
    app.use(express.static "./public")
    # app.use(express.static "#{__dirname}/public")
    app.use express.errorHandler {dumpExceptions: true, showStack: true}

    router app
    
    port = process.env.port or 80
    app.listen port, () ->
        console.log "App Launched, Listening on #{port}"
