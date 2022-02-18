const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getcategory= async(req,res)=>
        {
            const get = await  prisma.projectCategory.findMany()
            res.send(get);
        }
//find one
const findcategory=async(req,res)=> 
       {
        const {categoryid}=req.body;
        try{
        const find= await prisma.projectCategory.findFirst({ where : { categoryid : categoryid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addcategory= async(req,res)=>
        {
       const { categoryid,categoryname,domain}=req.body;
      try{ const Created= await prisma.projectCategory.create({data: { categoryid:categoryid,categoryname:categoryname,domain:domain} })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updateCategory= async(req,res)=>{

            try{
            const updated = await prisma.projectCategory.update({
                where: {
                    categoryid: req.body.categoryid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//deleteproject
const deletecategory=async(req,res)=> 
       {
        const {categoryid}=req.body;
       try
       { const Deleted= await prisma.projectCategory.delete({ where : { categoryid : categoryid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.category={getcategory,deletecategory,addcategory,findcategory,updateCategory}