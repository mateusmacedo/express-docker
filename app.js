const express = require("express");
const app = express();
const router = express.Router();
const PORT = 3000;
const HOST = '0.0.0.0';
app.listen(PORT, function () {
    console.log('Example app listening on port 3000!')
});