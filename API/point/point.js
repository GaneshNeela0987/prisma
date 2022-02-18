const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getpoint= async(req,res)=>
        {
            const get = await prisma.point.findMany()
            res.send(get);
        }
//find one
const findpoint=async(req,res)=> 
       {
        const {pointlayerid}=req.body;
        try{
        const find= await prisma.point.findFirst({ where : { pointlayerid: pointlayerid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addpoint= async(req,res)=>
        {
       const { pointlayerid, layerid,color,radius,textfield}=req.body;
      try{ const Created= await prisma.point.create({data:  { pointlayerid:pointlayerid, layerid:layerid,color:color,radius:radius,textfield:textfield} })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updatePoint= async(req,res)=>{

            try{
            const updated = await prisma.point.update({
                where: {
                  pointlayerid: req.body.pointlayerid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//delete
const deletepoint=async(req,res)=> 
       {
        const {pointlayerid}=req.body
       try
       { const Deleted= await prisma.point.delete({ where : {pointlayerid : pointlayerid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.point={getpoint,deletepoint,addpoint,findpoint,updatePoint}