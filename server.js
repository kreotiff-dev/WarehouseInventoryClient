// Load the express module (a web application framework for Node.js)
const express = require('express');

// Create an instance of express
const app = express();

// Define the port to run the server on
const PORT = process.env.PORT || 3000;

// Define a route handler for GET requests to the root URL ('/')
app.get('/', (req, res) => {
  res.send('Hello World from WarehouseInventoryClient!');
});

// Start the server listening for requests
app.listen(PORT, () => console.log(`Server running on http://localhost:${PORT}`));
