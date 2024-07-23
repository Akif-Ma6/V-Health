import express from 'express';
import { getAllBlogs,createBlog,updateBlog,getBlogById,deleteBlog,getUserBlogs } from '../controllers/blog-controller';

const blogRouter = express.Router();

blogRouter.get("/",getAllBlogs)
blogRouter.post("/add",createBlog)
blogRouter.put("/update/:id",updateBlog)
blogRouter.get("/:id",getBlogById)
blogRouter.delete("/delete/:id",deleteBlog)
blogRouter.get("/user/:id",getUserBlogs)

export default blogRouter;