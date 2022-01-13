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
      try{ const Created= await prisma.downloads.create({data: { filetype:filetype,surveyid:surveyid,downloadid:downloadid }})
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
   

        
    module.exports.downloads={getDownload,deleteDownload,addDownload,findDownload}