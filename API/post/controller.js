const {methods}=require("./service");

//getmethod for users
 const getPost =(req,res)=>
   {
   methods.getPost().then((data)=>{ res.json(data); })
   }


//post a user
const addPost= (req,res)=>
   {
    methods.addPost(req.body).then((data)=>res.json(data))
    
   }
//delete a user

const deletePost= (req,res)=>
  {
   methods.deletePost(req.body).then((data)=>res.json(data))
  }

 module.exports.Postcontrollers={getPost,addPost,deletePost}