const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getDownload= async(req,res)=>
        {
            const get = await prisma.downloads.findMany()
            res.send(get);
        }
//find one
const findDownload=async(req,res)=> 
       {
        const {downloadid}=req.body;
        try{
        const find= await prisma.downloads.findFirst({ where : { downloadid : downloadid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addDownload= async(req,res)=>
        {
       const { surveyid,downloadid,filetype}=req.body;
      try{ const Created= await prisma.downloads.createMany({data: req.body})
       res.json(Created);}
       catch(error){
         console.log(error)
        res.send(error)
    }
        }

       
        
            


//update

const updateDownload= async(req,res)=>{

    try{
    const updated = await prisma.downloads.update({
        where: {
          downloadid: req.body.downloadid,
        },
        data: req.body.data,
      })
      res.json(updated) }
      catch(error){
          res.send(error)
      }

    }
//delete
const deleteDownload=async(req,res)=> 
       {
        const {downloadid}=req.body;
       try
       { const Deleted= await prisma.downloads.delete({ where : {downloadid : downloadid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.downloads={getDownload,deleteDownload,addDownload,findDownload,updateDownload}