const express = require("express");
const res = require("express/lib/response");
const router = require("./routes/routes");
const cors = require("cors")
const app= express();
//const routes= require("./ROUTES/routes")
app.use(express.json());
app.use(cors())
app.use("/",router)
app.listen(4000,()=>{
    console.log(`server running at 4000`);
})