const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getsource= async(req,res)=>
        {
            const get = await prisma.sources.findMany()
            res.send(get);
        }
//find one
const findsource=async(req,res)=> 
       {
        const {sourceid}=req.body;
        try{
        const find= await prisma.sources.findFirst({ where : { sourceid : sourceid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addsource= async(req,res)=>
        {
       const { sourceid,surveyid,datatype,source_name,source_link,d_source}=req.body;
      try{ const Created= await prisma.sources.create({data: { sourceid:sourceid,source_name:source_name,datatype:datatype,surveyid:surveyid,source_link:source_link,d_source:d_source} })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updatesource= async(req,res)=>{

            try{
            const updated = await prisma.sources.update({
                where: {
                    sourceid: req.body.sourceid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//deleteproject
const deletesource=async(req,res)=> 
       {
        const {sourceid}=req.body;
       try
       { const Deleted= await prisma.sources.delete({ where : {sourceid : sourceid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.source={getsource,deletesource,addsource,findsource,updatesource}