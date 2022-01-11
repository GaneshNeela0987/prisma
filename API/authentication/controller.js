
const {methods}=require("./service");

const create = (req,res)=>{
    methods.addUser(req.body).then((data)=>res.json(data))
    }

const login =(req,res)=>{
methods.userlogin(req.body).then((data)=>res.json(data))
}



module.exports.Auth={create,login}