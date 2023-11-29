// server.js
const express = require('express');
const app = express();

// The port that the server will listen on, defaulting to 3001
const PORT = process.env.PORT || 3001;

app.get('/', (req, res) => {
  res.send('Hello World from WarehouseInventoryClient on port 3001!');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
