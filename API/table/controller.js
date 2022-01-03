const {methods}=require("./service");

//getmethod for users
 const getTodo =(req,res)=>
   {
   methods.todoList().then((data)=>{ res.json(data); })
   }


//post a user
const postTodo= (req,res)=>
   {
    methods.addTodo(req.body).then((data)=>res.json(data))
    
   }
//delete a user

const deleteTodo= (req,res)=>
  {
   methods.deleteTodo(req.body).then((data)=>res.json(data))
  }

 module.exports.controllers={getTodo,postTodo,deleteTodo}