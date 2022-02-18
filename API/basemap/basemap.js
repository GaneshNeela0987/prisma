const { PrismaClient } =require('@prisma/client');
const prisma = new PrismaClient()
//fetching all projects
const getBasemap= async(req,res)=>
        {
            const basemap = await  prisma.basemap.findMany()
            res.send(basemap);
        }
//find one
const findBasemap=async(req,res)=> 
       {
        const {mapid}=req.body;
        try{
        const find= await prisma.basemap.findFirst({ where : { mapid : mapid }  })
        res.json(find)}
        catch(error){
            res.send(error)
        }
      }
   //adding new project
const addBasemap= async(req,res)=>
        {
       const {maplink,mapname,mapid}=req.body;
       console.log(req.body)
      try{ const Created= await prisma.basemap.create({data: req.body })
       res.json(Created);}
       catch(error){
        res.send(error)
    }
        }

//update
const updateBasemap= async(req,res)=>{

    try{
    const updated = await prisma.basemap.update({
        where: {
          mapid: req.body.mapid,
        },
        data: req.body.data,
      })
      res.json(updated) }
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
const deleteBasemap=async(req,res)=> 
       {
        const {mapid}=req.body;
       try
       { const Deleted= await prisma.basemap.delete({ where : { mapid : mapid }  })
        res.json(Deleted)}
        catch(error){
            console.log(error)
            res.send(error)
        }
      }
   

        
    module.exports.basemap={getBasemap,deleteBasemap,addBasemap,findBasemap,updateBasemap}