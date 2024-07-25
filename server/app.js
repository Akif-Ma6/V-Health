import express from 'express';
import mongoose from 'mongoose';
import router from './routes/user-rotes';
import blogRouter from './routes/blog-routes';
import cors from 'cors';

const PORT = 8080;
const DB_URI = 'mongodb+srv://admin:Cusbay6kr0@cluster0.3ydusfz.mongodb.net/';

const app = express();

// Use CORS middleware
app.use(cors());

// Parse JSON bodies
app.use(express.json());

// Use routers
app.use("/api/user", router);
app.use("/api/blog", blogRouter);

// Connect to MongoDB and start the server
mongoose.connect(DB_URI)
  .then(() => app.listen(PORT))
  .then(() => {
    console.log(`Connected to database and listening to port ${PORT}`);
  })
  .catch((err) => {
    console.log(err);
  });
