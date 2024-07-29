import jwt from 'jsonwebtoken'

function verifyToken(req,res,next){
    const token = req.header('Authorization')
    if(!token){
        return res.status(401).send({
            error:"Access denied"
        })
    }
    try {
        const decode = jwt.verify(token,"secret");
        console.log("Decode",decode);
        req.user = decode;
        next();
    } catch (error) {
        return res.status(401).send({
            error:"Invalid token"
        })
    }
}

export const isCoach = (req,res,next) => {
    console.log("Request: ",req.body)
    if(req.user && req.user.isCoach){
        next();
    }else{
        return res.status(403).send({
            error:"Forbidden"
        }) 
    }
}

// module.exports = {verifyToken}
export default verifyToken;