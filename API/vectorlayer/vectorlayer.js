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
      try{ const Created= await prisma.vectorlayer.create({data:  { sourceid:sourceid, layerid:layerid,vectortype:vectortype,layername:layername,visibility:visibility,displayname:displayname} })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

//  const updateProject= async(req,res)=>
//         {
//        const { projectid,categoryid,mapid,projectname,areas_acres,location,state}=req.body;
//       try{ const Created= await prisma.project.update({data: { projectid:projectid,categoryid:categoryid,mapid:mapid,projectname:projectname,areas_acres:areas_acres,location:location,state:state} })
//        res.json(Created);}
//        catch(error){
//         res.send(error)
//     }
//         }
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
   

        
    module.exports.vectorlayer={getVector,deleteVector,addVector,findVector}