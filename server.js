const express = require("express");
const res = require("express/lib/response");
const router = require("./routes/routes");
const app= express();
//const routes= require("./ROUTES/routes")
app.use(express.json());
app.use("/",router)
app.listen(3000,()=>{
    console.log(`server running at 3000`);
})