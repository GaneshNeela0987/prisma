const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getpolygon= async(req,res)=>
        {
            const get = await prisma.polygon.findMany()
            res.send(get);
        }
//find one
const findpolygon=async(req,res)=> 
       {
        const {polygonlayerid}=req.body;
        try{
        const find= await prisma.polygon.findFirst({ where : { polygonlayerid: polygonlayerid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addpolygon= async(req,res)=>
        {
       const { polygonlayerid, layerid,linecolor,fillcolor,fillopacity,areaattribute,hover,linewidth,textfield}=req.body;
       console.log(req.body)
      try{ const Created= await prisma.polygon.create({data: { polygonlayerid:polygonlayerid, layerid:layerid,linecolor:linecolor,fillcolor:fillcolor,fillopacity:fillopacity,areaattribute:areaattribute,hover:hover,linewidth:linewidth,textfield:textfield} })
       res.json(Created);}
       catch(error){
           console.log(error)
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
const deletepolygon=async(req,res)=> 
       {
        const {polygonlayerid}=req.body
       try
       { const Deleted= await prisma.polygon.delete({ where : {polygonlayerid : polygonlayerid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.polygon={getpolygon,deletepolygon,addpolygon,findpolygon}