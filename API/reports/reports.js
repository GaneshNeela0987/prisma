const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getreports= async(req,res)=>
        {
            const get = await prisma.reports.findMany()
            res.send(get);
        }
//find one
const findreports=async(req,res)=> 
       {
        const {reportid}=req.body;
        try{
        const find= await prisma.reports.findFirst({ where : { reportid : reportid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addreports= async(req,res)=>
        {
       const { reportid,surveyid,projectid,report_type}=req.body;
      try{ const Created= await prisma.reports.create({data: { surveyid:surveyid,report_type:report_type,projectid:projectid,reportid:reportid} })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updatereports= async(req,res)=>{

            try{
            const updated = await prisma.reports.update({
                where: {
                    reportid: req.body.reportid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//deleteproject
const deletereports=async(req,res)=> 
       {
        const {reportid }=req.body;
       try
       { const Deleted= await prisma.reports.delete({ where : {reportid : reportid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.reports={getreports,deletereports,addreports,findreports,updatereports}