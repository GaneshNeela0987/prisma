const { PrismaClient } =require('@prisma/client');

const prisma = new PrismaClient()
//fetching all users
const todoList=()=>
    {
    return new Promise( async(resolve,reject)=>
        {
            const users = await  prisma.user.findMany()
            resolve(users);
        })
   }


   //adding new user
const addTodo=(data)=>
    {
    return new Promise( async(resolve,reject)=>
        {console.log(data)
       const { Name,email}=data;
       const Created= await prisma.user.create({data: {  name: Name,email: email} })
       resolve(Created);
        })
    }
    
//deleteuser
const deleteTodo=(data)=>
   {
   return new Promise( async(resolve,reject)=> 
       {
        const {Id}=data;
        const Deleted= await prisma.user.delete({ where : { id : Id }  })
        resolve(Deleted);
      })
   }

    module.exports.methods={addTodo,todoList,deleteTodo}