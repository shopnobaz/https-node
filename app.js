var express = require("express");
var fs = require("fs");
var https = require("https");
var app = express();

app.get("/",(req, res) => {
    res.send('<h1>HTTPS is working! Easy process</h1>');
  });
  

  app.get("/health", (req, res)=>{
    res.status(200);
    res.send("healthy");
  });

  const options = {
    key: fs.readFileSync("server.key"),
    cert: fs.readFileSync("server.cert"),
  };


const port = 3000;

https.createServer(options, app).listen(port, () => {
    console.log('Server listening on port ' + port);
});
