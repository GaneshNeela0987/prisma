const { PrismaClient } =require('@prisma/client');
const prisma = new PrismaClient();


const getUser = async (req, res)=>{
try {
         const allUsers = await prisma.user.findMany();
         res.send(allUsers)
}
catch(e){
      res.send(e)
}

}

const addUser = async (req, res)=>{
    try {
           let userData = req.body; 
           console.log(userData,"request body user data")
             const allUsers = await prisma.user.create({
                  data: {
                      name : userData.name,
                      password: userData.password ,
                      id : userData.id
                  }
             });
             res.send(allUsers)
    }
    catch(e){
      console.log(e)
          res.send(e)
    }
    
    }


const deleteUser = async(req,res)=>{

      try {       
                  // let userId = req.query 
                  let userId = req.params;
                  console.log(userId)
                  let deleteUser = await prisma.user.delete({
                        where : {
                              id : Number(userId.id)
                        }
                  })
                  console.log(deleteUser, "test")
                  res.send(deleteUser)

      }

      catch(e){
          console.log(e,"error")
          res.send(e)

      }


}



const updateUser = async(req,res)=>{

 try {
       let updatedData = req.body
       let updatedUser = await prisma.user.update({

             where: { id: req.body.id },
             data: {
                  name : req.body.name
             }

       }
       )
 res.send(updatedUser)

 }
 catch(e){
 res.send(e)
 }


}


const addRole = async (req,res)=>{
 try{
          let roleData = req.body ;
      //     let addRole = await prisma.roleModel.create({
      //    data : {   roleName : 'admin',
      //       userId : 6 }
      //     })

      let getRole = await prisma.roleModel.findMany({
            include :{
                  userName : true
            }
      })

          res.send(getRole)
 }
 catch(e){
      console.log(e)
        res.send(e)
 }



}








module.exports.users = { getUser,addUser,deleteUser,updateUser,addRole }