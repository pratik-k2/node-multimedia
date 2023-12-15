const express = require("express");
const multer = require('multer');

const app = express();

app.use(express.json());

const records = {};

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './uploads')
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname)
  }
});
const upload = multer({ storage: storage });

app.post('/upload', upload.single('file'), function(req,res) {
  console.log(req.file);
  res.status(200).send('File uploaded successfully');
});

app.listen(4000, () => {
  console.log("Server is running on port 4000");
});