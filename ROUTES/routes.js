const express = require('express');
const router = express.Router();
const {controllers} = require('../API/table/controller');
const {Postcontrollers}= require("../API/post/controller")
router.get("/user/get",controllers.getTodo)
router.post('/user/post',controllers.postTodo);
router.post('/user/delete',controllers.deleteTodo);
router.get('/post/get',Postcontrollers.getPost);
router.post('/post/add',Postcontrollers.addPost);
router.post('/post/delete',Postcontrollers.deletePost);
module.exports=router;