const express = require('express');
const router = express.Router();
const {login}= require('../api/login/login')
const {projects}= require('../api/project/project')
const {basemap} = require('../api/basemap/basemap')
const {category} = require('../api/projectcategory/projectcategory')
const {source}= require("../api/sources/sources")
const {downloads}= require("../api/downloads/downloads")
const {reports}= require("../api/reports/reports")
const {survey} = require("../api/survey/survey")
const {point} = require("../api/point/point")
const {linestring}= require("../api/linestring/linestring")
const {vectorlayer} = require("../api/vectorlayer/vectorlayer")
const {polygon} = require("../api/polygon/polygon")
//const {Postcontrollers}= require("../api/post/controller");
const {Auth }= require("../api/authentication/controller")
const {methods}=require("../common/common");

// router.post('/signin',Auth.create)
// router.post('/login',Auth.login)
// router.get("/welcome",methods.middleware,(req,res)=>{
//     res.json(req.user)
// })
// router.get("/project",methods.middleware,(req,res)=>{
//     res.send("you have project access")
// })


//login 
router.get("/login/get",login.getLogin);
router.post("/login/find",login.findLogin);
router.post('/login/add',login.addLogin);
router.post('/login/update',login.updateLogin);
router.post('/login/delete',login.deleteLogin);
router.post('/login',login.login)
//project
router.get("/project/get",projects.getProjects);
router.post("/project/find",projects.findProject);
router.post('/project/add',projects.addProject);
router.post('/project/update',projects.updateProject);
router.post('/project/delete',projects.deleteProject);

//basemap
router.get("/basemap/get",basemap.getBasemap);
router.post("/basemap/update",basemap.updateBasemap)
router.post("/basemap/find",basemap.findBasemap);
router.post('/basemap/add',basemap.addBasemap);
router.post('/basemap/delete',basemap.deleteBasemap);

//category
router.get("/category/get",category.getcategory);
router.post("/category/find",category.findcategory);
router.post('/category/add',category.addcategory);
router.post('/category/update',category.updateCategory);
router.post('/category/delete',category.deletecategory);

//sources
router.get("/sources/get",source.getsource);
router.post("/sources/find",source.findsource);
router.post('/sources/add',source.addsource);
router.post('/sources/update',source.updatesource);
router.post('/sources/delete',source.deletesource);

//downloads
router.get("/downloads/get",downloads.getDownload);
router.post("/downloads/find",downloads.findDownload);
router.post('/downloads/add',downloads.addDownload);
router.post('/downloads/update',downloads.updateDownload);
router.post('/downloads/delete',downloads.deleteDownload);

//reports
router.get("/reports/get",reports.getreports);
router.post("/reports/find",reports.findreports);
router.post('/reports/add',reports.addreports);
router.post('/reports/update',reports.updatereports);
router.post('/reports/delete',reports.deletereports);

//survey
router.get("/survey/get",survey.getsurvey);
router.post("/survey/find",survey.findsurvey);
router.post('/survey/add',survey.addsurvey);
router.post('/survey/update',survey.updatesurvey);
router.post('/survey/delete',survey.deletesurvey);
//points
router.get("/point/get",point.getpoint);
router.post("/point/find",point.findpoint);
router.post('/point/add',point.addpoint);
router.post('/point/update',point.updatePoint);
router.post('/point/delete',point.deletepoint);

//linestring
router.get("/linestring/get",linestring.getLine);
router.post("/linestring/find",linestring.findLine);
router.post('/linestring/add',linestring.addLine);
router.post('/linestring/update',linestring.updateLine);
router.post('/linestring/delete',linestring.deleteLine);

//vectorlayer
router.get("/vectorlayer/get",vectorlayer.getVector);
router.post("/vectorlayer/find",vectorlayer.findVector);
router.post('/vectorlayer/add',vectorlayer.addVector);
router.post('/vectorlayer/update',vectorlayer.updateVector);
router.post('/vectorlayer/delete',vectorlayer.deleteVector);

//polygon
router.get("/polygon/get",polygon.getpolygon);
router.post("/polygon/find",polygon.findpolygon);
router.post('/polygon/add',polygon.addpolygon);
router.post('/polygon/update',polygon.updatePolygon);
router.post('/polygon/delete',polygon.deletepolygon);


 module.exports=router;