const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getLine= async(req,res)=>
        {
            const get = await prisma.linestring.findMany()
            res.send(get);
        }
//find one
const findLine=async(req,res)=> 
       {
        const {linestringlayerid}=req.body;
        try{
        const find= await prisma.linestring.findFirst({ where : { linestringlayerid: linestringlayerid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addLine= async(req,res)=>
        {
       const { linestringlayerid, linewidth,color,attribute}=req.body;
      try{ const Created= await prisma.linestring.create({data:  { linestringlayerid:linestringlayerid, linewidth:linewidth,color:color,attribute:attribute}})
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updateLine= async(req,res)=>{

            try{
            const updated = await prisma.linestring.update({
                where: {
                    linestringlayerid: req.body.linestringlayerid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//delete
const deleteLine=async(req,res)=> 
       {
        const {linestringlayerid}=req.body
       try
       { const Deleted= await prisma.linestring.delete({ where : {linestringlayerid : linestringlayerid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.linestring={getLine,deleteLine,addLine,updateLine,findLine}