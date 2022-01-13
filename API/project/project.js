const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getProjects= async(req,res)=>
        {
            const projects = await  prisma.project.findMany()
            res.send(projects);
        }
//find one
const findProject=async(req,res)=> 
       {
        const {projectid}=req.body;
        try{
        const find= await prisma.project.findFirst({ where : { projectid : projectid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addProject= async(req,res)=>
        {
       const { projectid,categoryid,mapid,projectname,areas_acres,location,state}=req.body;
      try{ const Created= await prisma.project.create({data: { projectid:projectid,categoryid:categoryid,mapid:mapid,projectname:projectname,areas_acres:areas_acres,location:location,state:state} })
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
const deleteProject=async(req,res)=> 
       {
        const {projectid}=req.body;
       try
       { const Deleted= await prisma.project.delete({ where : {projectid : projectid}  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.projects={getProjects,deleteProject,addProject,findProject}