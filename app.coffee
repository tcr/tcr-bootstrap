express = require("express")

app = express.createServer(express.logger())
app.use(express.bodyParser())

app.get "/", (req, res) ->
	res.send "Hello World!"

port = process.env.PORT or 3000
app.listen port, ->
	console.log "Listening on " + port
