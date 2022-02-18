const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();
const bcrypt = require("bcryptjs");
const { Console } = require('console');
//fetching all users
const getLogin = async (req, res) => {
    const get = await prisma.login.findMany()
    res.send(get);
}
//find one
const findLogin = async (req, res) => {
    const { loginid } = req.body;
    try {
        const find = await prisma.login.findFirst({ where: { loginid: loginid } })
        res.json(find)
    }
    catch (error) {
        res.send(error)
    }
}
//adding new user
const addLogin = async (req, res) => {
    var { username, password, categoryid, Loginid, projectid, logo, clientid, logintype } = req.body;
    // console.log(req.body,username)
    username = username.toLowerCase();
    encryptedPassword = await bcrypt.hash(password, 10);
    req.body.password = encryptedPassword;
    req.body.username = username;
    console.log(req.body)
    try {
        const Created = await prisma.login.create({ data: req.body })
        res.json(Created);
    }
    catch (error) {
        console.log(error)
        res.send(error)
    }
}

const updateLogin = async (req, res) => {

    try {
        const updated = await prisma.login.update({
            where: {
                loginid: req.body.loginid,
            },
            data: req.body.data,
        })
        res.json(updated)
    }
    catch (error) {
        res.send(error)
    }

}
//deleteuser
const deleteLogin = async (req, res) => {
    const { Loginid } = req.body;
    try {
        const Deleted = await prisma.login.delete({ where: { Loginid: Loginid } })
        res.json(Deleted)
    }
    catch (error) {
        console.log(error)
        res.send(error)
    }
}


const login = async (req, res) => {
    //console.log(req.headers["Authorization"],req.headers.Authorization)
    const b64auth = (req.headers.authorization || '').split(' ')[1] || ''
    //const [login, password] = Buffer.from(b64auth, 'base64').toString().split(':')
    //console.log(Buffer.from(b64auth, 'base64').toString().split(':'), b64auth)
    const [username, password] = Buffer.from(b64auth, 'base64').toString().split(':')
    try {
        //console.log(username,password)
        const user = await prisma.login.findFirst({ where: { username: username } })
        if (user) {
            if(await bcrypt.compare(password, user.password))
            {
                res.send(user)}
            else {
            res.send("Invalid password")
            }
        }
        else {
            res.send("Invalid username")
        }
    }
    catch (error) {
        // console.log("usernot found")
        res.send("no user found")
    }
}
module.exports.login = { getLogin, deleteLogin, addLogin, findLogin, updateLogin, login }