const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getVector= async(req,res)=>
        {
            const get = await prisma.vectorlayer.findMany()
            res.send(get);
        }
//find one
const findVector=async(req,res)=> 
       {
        const {layerid}=req.body;
        try{
        const find= await prisma.vectorlayer.findFirst({ where : { layerid: layerid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addVector= async(req,res)=>
        {
       const { sourceid, layerid,vectortype,layername,visibility,displayname}=req.body;
      try{ const Created= await prisma.vectorlayer.create({data: req.body})
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updateVector= async(req,res)=>{

          try{
          const updated = await prisma.vectorlayer.update({
              where: {
                layerid: req.body.layerid,
              },
              data: req.body.data,
            })
            res.json(updated) }
            catch(error){
                res.send(error)
            }
      
      }
//deleteproject
const deleteVector=async(req,res)=> 
       {
        const {layerid}=req.body;
     try
       { const Deleted= await prisma.vectorlayer.delete({ where : {layerid : layerid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.vectorlayer={getVector,deleteVector,addVector,findVector,updateVector}