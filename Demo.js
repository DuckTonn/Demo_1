const express = require('express');
const app = express();

app.get('/', function (req, res) {
  res.send('Hello World from Node.js via ngrok');
});

const PORT = process.env.PORT || 3000;
app.listen(PORT);
console.log(`Server is listening on port ${PORT}`);