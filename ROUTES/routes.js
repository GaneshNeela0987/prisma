const express = require('express');
const router = express.Router();

const { users } = require('../API/user/user');

// router.post('/signin',Auth.create)
// router.post('/login',Auth.login)
// router.get("/welcome",methods.middleware,(req,res)=>{
//     res.json(req.user)
// })
// router.get("/project",methods.middleware,(req,res)=>{
//     res.send("you have project access")
// })

//users 

router.get("/getUsers", users.getUser)
router.post('/addUsers', users.addUser)
router.delete('/deleteUser/:id', users.deleteUser)
router.post('/updateUser',users.updateUser)

router.post('/addRole',users.addRole) 

