import Blog from '../models/Blog'
import User from '../models/User';
import mongoose from 'mongoose';

export const getAllBlogs = async(req,res,next)=>{
    let blogs;

    try {
        blogs =await Blog.find();
    } catch (error) {
        return console.log(error)
    }
    if(!blogs){
       return res.status(404).json({message:"No blogs found"})
    }
    return res.status(200).json({blogs})
}

export const createBlog = async(req,res,next)=>{
    const {title,description,image,user} = req.body;
    let existingUser;
    try {
        existingUser = await User.findById(user);
    } catch (error) {
        return console.log(error);
    }
    if(!existingUser){
        res.status(400).json({message:"Unable to find the user by this id"})
    }
    const blog = new Blog({
        title,
        description,
        image,
        user
    });
    try {
       const session = await mongoose.startSession();
       session.startTransaction();
       await blog.save({session});
       existingUser.blogs.push(blog);
       await existingUser.save({session})
       await session.commitTransaction();
    } catch (error) {
        return console.log(error)
        res.status(500).json({error})
    }

    return res.status(200).json({blog})
}

export const updateBlog = async(req,res,next)=>{
    const {title,description} = req.body;
    const blogId = req.params.id;
    let blog;
    let updatedBlog;
    try {
        blog = await Blog.findByIdAndUpdate(blogId,{
            title,
            description
        })

    } catch (error) {
        return console.log(error)
    }
    if(!blog){
        return res.status(500).json({message:"Unable to update the blog."})
    }
    return res.status(200).json({blog})
}

export const getBlogById = async(req,res,next)=>{
    const blogId = req.params.id;
    let blog;
    try {
        blog = await Blog.findById(blogId)
    } catch (error) {
        return console.log(error);
    }
    if(!blog){
       return res.status(400).json({message:"Blog not found"})
    }
    return res.status(200).json({blog})
}

export const deleteBlog = async(req,res,next)=>{
    const blogId = req.params.id;
    let blog;
    try {
        blog = await Blog.findByIdAndDelete(blogId).populate('user');
        await blog.user.blogs.pull(blog)
        await blog.user.save()
    } catch (error) {
        return console.log(error)
    }
    if(!blog){
        return res.staus(401).json({message:"Blog not found"})
    }
    return res.status(200).json({message:"Blog deleted successfully."})
}

export const getUserBlogs = async(req,res,next)=>{
    const userId = req.params.id;
    let userBlogs;
    try {
        userBlogs = await User.findById(userId).populate('blogs');

    } catch (error) {
        return console.log(error)
    }
    if(!userBlogs){
        return res.status(404).json({message:"No blogs found"})
    }
    return res.status(200).json({blogs:userBlogs})
}