import express from 'express';
import mongoose from 'mongoose';
import router from './routes/user-rotes';
import blogRouter from './routes/blog-routes';
const PORT = 8080;
const DB_URI = 'mongodb+srv://admin:Cusbay6kr0@cluster0.3ydusfz.mongodb.net/'


const app = express();
app.use(express.json());
app.use("/api/user",router)
app.use("/api/blog",blogRouter)

mongoose.connect(DB_URI)
.then(()=>app.listen(PORT))
.then(()=>{
    console.log(`Connected to database and listening to port ${PORT}`)
}).catch((err)=>{
    console.log(err)
})




//HwOmAIuQ72t0ScdU