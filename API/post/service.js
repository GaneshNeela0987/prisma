const { PrismaClient } =require('@prisma/client');

const prisma = new PrismaClient()
//fetching all users
const getPost=()=>
    {
    return new Promise( async(resolve,reject)=>
        {
            const users = await  prisma.post.findMany()
            resolve(users);
        })
   }


   //adding new user
const addPost=(data)=>
    {
    return new Promise( async(resolve,reject)=>
        {console.log(data)
       const { title,content}=data;
       const Created= await prisma.post.create({data: {  title: title ,content: content} })
       resolve(Created);
        })
    }

//deleteuser
const deletePost=(data)=>
   {
   return new Promise( async(resolve,reject)=> 
       {
        const {Id}=data;
        const Deleted= await prisma.post.delete({ where : { id : Id }  })
        resolve(Deleted);
      })
   }

    module.exports.methods={getPost,addPost,deletePost}