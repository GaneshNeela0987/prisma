const { PrismaClient } =require('@prisma/client');
const res = require('express/lib/response');

const prisma = new PrismaClient()
//fetching all projects
const getsurvey= async(req,res)=>
        {
            const get = await prisma.survey.findMany()
            res.send(get);
        }
//find one
const findsurvey=async(req,res)=> 
       {
        const {surveyid}=req.body;
        try{
        const find= await prisma.survey.findFirst({ where : { surveyid : surveyid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addsurvey= async(req,res)=>
        {
       const { surveyid,projectid,lat,long,surveyname,date_of_survey,zoom,zoom_min,zoom_max}=req.body;
       
      try{ const Created= await prisma.survey.create({data: {surveyid:surveyid,projectid:projectid,lat:lat,long:long,surveyname:surveyname,date_of_survey:date_of_survey,zoom:zoom,zoom_min:zoom_min,zoom_max:zoom_max} })
      
      res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

const updatesurvey= async(req,res)=>{

            try{
            const updated = await prisma.survey.update({
                where: {
                    surveyid: req.body.surveyid,
                },
                data: req.body.data,
              })
              res.json(updated) }
              catch(error){
                  res.send(error)
              }
        
        }
//delete
const deletesurvey=async(req,res)=> 
       {
        const {surveyid }=req.body;
       try
       { const Deleted= await prisma.survey.delete({ where : {surveyid :surveyid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        // 400 //502 
    module.exports.survey={getsurvey,deletesurvey,addsurvey,findsurvey,updatesurvey}