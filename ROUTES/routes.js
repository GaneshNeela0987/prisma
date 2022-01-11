const express = require('express');
const router = express.Router();
const {controllers} = require('../api/table/controller');
//const {Postcontrollers}= require("../api/post/controller");
const {Auth }= require("../api/Authentication/controller")
const {methods}=require("../common/common");

router.post('/signin',Auth.create)
router.post('/login',Auth.login)
router.get("/welcome",methods.middleware,(req,res)=>{
    res.json(req.user)
})
router.get("/project",methods.middleware,(req,res)=>{
    res.send("you have project access")
})


router.get("/user/get",controllers.getTodo)
router.post('/user/post',controllers.postTodo);
router.post('/user/delete',controllers.deleteTodo);
// router.get('/post/get',Postcontrollers.getPost);
// router.post('/post/add',Postcontrollers.addPost);
// router.post('/post/delete',Postcontrollers.deletePost);
 module.exports=router;