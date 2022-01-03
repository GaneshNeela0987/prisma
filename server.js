const express = require("express");
const router = require("./ROUTES/routes");
const app= express();
//const routes= require("./ROUTES/routes")
app.use(express.json());
app.use("/",router)
app.listen(3000,()=>{
    console.log(`server running at 3000`);
})