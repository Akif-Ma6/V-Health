import User from '../models/User'
import bcrypt from 'bcryptjs'

export const getAllUser = async(req,res,next)=>{
    let users;
    try {
        users = await User.find();
    } catch (error) {
       return console.log(error);
    }

    if(!users){
        return res.status(404).json({message:"No users found."})
    }
    return res.status(200).json({users});
}

export const signup = async(req,res,next)=>{
    const {name,email,password} = req.body;
    console.log("Request: ",req.body);

    let existingUser;
    try {
        existingUser = await User.findOne({email});

    } catch (error) {
       return console.log(error);
    }

    if(existingUser){
        return res.status(400).json({message:"User already exists."})
    }
    const hashPswd = bcrypt.hashSync(password);

    const user = new User({
        name:name,
        email:email,
        password:hashPswd,
        blogs:[]
    })


    try {
      await user.save();
    } catch (error) {
       return console.log(error);
    }
    return res.status(201).json({user})
}

export const login = async(req,res,next)=>{
    const { email,password } = req.body;
    let userExist;
    try {
        userExist = await User.findOne({email});
    } catch (error) {
        console.log(error)
    }
    if(!userExist){
        return res.status(404).json({message:"User does not exist!"})
    }
    const isPasswordCorrect = bcrypt.compareSync(password,userExist.password);
    if(!isPasswordCorrect){
        return res.status(400).json({message:"Incorrect password"})
    }
    return res.status(200).json({message:"Login successful."})
}