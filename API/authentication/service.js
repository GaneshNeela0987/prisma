const { PrismaClient } =require('@prisma/client');
const jwt = require("jsonwebtoken");
const bcrypt = require("bcryptjs");

const prisma = new PrismaClient();
const addUser=(data)=>
    {
    return new Promise( async(resolve)=>
        {
       var {username,password}=data;
       username=username.toLowerCase();
       encryptedPassword = await bcrypt.hash(password, 10);
       const token = jwt.sign(
        {username},
        "mysterykeytokengeneratedrandomly",
        {
          expiresIn: "15m",
        }
         );
       const Created= await prisma.users.create({data: {username:username,password:encryptedPassword,token:token} })
       resolve(Created);
        })
    }



const  userlogin=(data)=>
        { 
          return new Promise( async(resolve)=>{
             var {username,password}= data;
             username=username.toLowerCase();
             const user = await prisma.users.findFirst( {where :{username: username}})
             if(user && (await bcrypt.compare(password,user.password))  ){
                const token = jwt.sign(
                    {username},
                    "mysterykeytokengeneratedrandomly",
                    {
                      expiresIn: "15m",
                    }
                  );
                  resolve({user:username,token:token})
             }
             else {
               resolve("error Invalid credentials")
             }
            })
        }
    
  
    module.exports.methods={addUser,userlogin}