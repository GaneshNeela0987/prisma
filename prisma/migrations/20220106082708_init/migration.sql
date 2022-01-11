/*
  Warnings:

  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "User";

-- CreateTable
CREATE TABLE "Login" (
    "Loginid" INTEGER NOT NULL,
    "projectid_1" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "reportid" INTEGER NOT NULL,
    "downloadid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "username" VARCHAR(20) NOT NULL,
    "password" VARCHAR(20) NOT NULL,
    "logintype" INTEGER NOT NULL,
    "clientid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "logo" VARCHAR(100) NOT NULL,

    CONSTRAINT "Login_pkey" PRIMARY KEY ("Loginid")
);

-- CreateTable
CREATE TABLE "Project" (
    "projectid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "reportid" INTEGER NOT NULL,
    "downloadid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "categoryid" INTEGER NOT NULL,
    "mapid" INTEGER NOT NULL,
    "projectname" VARCHAR(30) NOT NULL,
    "areas_acres" INTEGER NOT NULL,
    "location" VARCHAR(25) NOT NULL,
    "state" VARCHAR(25) NOT NULL,

    CONSTRAINT "Project_pkey" PRIMARY KEY ("projectid")
);

-- CreateTable
CREATE TABLE "Basemap" (
    "mapid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "reportid" INTEGER NOT NULL,
    "downloadid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "mapname" VARCHAR(30) NOT NULL,
    "maplink" VARCHAR(50) NOT NULL,

    CONSTRAINT "Basemap_pkey" PRIMARY KEY ("mapid")
);

-- CreateTable
CREATE TABLE "Survey" (
    "surveyid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "reportid" INTEGER NOT NULL,
    "downloadid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "lat" DOUBLE PRECISION NOT NULL,
    "long" DOUBLE PRECISION NOT NULL,
    "surveyname" VARCHAR(20) NOT NULL,
    "date_of_survey" TIMESTAMP(3) NOT NULL,
    "zoom" DOUBLE PRECISION NOT NULL,
    "zoom_min" DOUBLE PRECISION NOT NULL,
    "zoom_max" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Survey_pkey" PRIMARY KEY ("surveyid")
);

-- CreateTable
CREATE TABLE "ProjectCategory" (
    "categoryid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "reportid" INTEGER NOT NULL,
    "downloadid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "categoryname" VARCHAR(30) NOT NULL,
    "domain" VARCHAR(50) NOT NULL,

    CONSTRAINT "ProjectCategory_pkey" PRIMARY KEY ("categoryid")
);

-- CreateTable
CREATE TABLE "Sources" (
    "sourceid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "datatype" VARCHAR(10) NOT NULL,
    "source_name" VARCHAR(30) NOT NULL,
    "source_link" VARCHAR(50) NOT NULL,
    "d_source" VARCHAR(50) NOT NULL,

    CONSTRAINT "Sources_pkey" PRIMARY KEY ("sourceid")
);

-- CreateTable
CREATE TABLE "Reports" (
    "reportid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "report_type" VARCHAR(15) NOT NULL,

    CONSTRAINT "Reports_pkey" PRIMARY KEY ("reportid")
);

-- CreateTable
CREATE TABLE "Vectorlayer" (
    "layerid" INTEGER NOT NULL,
    "pointlayerid" INTEGER NOT NULL,
    "linestringlayerid" INTEGER NOT NULL,
    "polygonlayerid" INTEGER NOT NULL,
    "sourceid" INTEGER NOT NULL,
    "vectortype" VARCHAR(10) NOT NULL,
    "layername" VARCHAR(20) NOT NULL,
    "displayname" VARCHAR(30) NOT NULL,
    "visibility" INTEGER NOT NULL,

    CONSTRAINT "Vectorlayer_pkey" PRIMARY KEY ("layerid")
);

-- CreateTable
CREATE TABLE "Downloads" (
    "downloadid" INTEGER NOT NULL,
    "surveyid" INTEGER NOT NULL,
    "filetype" VARCHAR(10) NOT NULL,

    CONSTRAINT "Downloads_pkey" PRIMARY KEY ("downloadid")
);

-- CreateTable
CREATE TABLE "Point" (
    "pointlayerid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "color" VARCHAR(10) NOT NULL,
    "radius" INTEGER NOT NULL,
    "textfield" TEXT NOT NULL,

    CONSTRAINT "Point_pkey" PRIMARY KEY ("pointlayerid")
);

-- CreateTable
CREATE TABLE "Linestring" (
    "linestringlayerid" INTEGER NOT NULL,
    "linewidth" INTEGER NOT NULL,
    "color" VARCHAR(10) NOT NULL,
    "attribute" TEXT NOT NULL,

    CONSTRAINT "Linestring_pkey" PRIMARY KEY ("linestringlayerid")
);

-- CreateTable
CREATE TABLE "Polygon" (
    "polygonlayerid" INTEGER NOT NULL,
    "layerid" INTEGER NOT NULL,
    "linewidth" INTEGER NOT NULL,
    "linecolor" VARCHAR(10) NOT NULL,
    "fillcolor" VARCHAR(10) NOT NULL,
    "fillopacity" INTEGER NOT NULL,
    "areaattribute" VARCHAR(10) NOT NULL,
    "hover" INTEGER NOT NULL,
    "textfield" TEXT NOT NULL,

    CONSTRAINT "Polygon_pkey" PRIMARY KEY ("polygonlayerid")
);

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_projectid_1_fkey" FOREIGN KEY ("projectid_1") REFERENCES "Project"("projectid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_surveyid_fkey" FOREIGN KEY ("surveyid") REFERENCES "Survey"("surveyid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_sourceid_fkey" FOREIGN KEY ("sourceid") REFERENCES "Sources"("sourceid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_reportid_fkey" FOREIGN KEY ("reportid") REFERENCES "Reports"("reportid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_downloadid_fkey" FOREIGN KEY ("downloadid") REFERENCES "Downloads"("downloadid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Login" ADD CONSTRAINT "Login_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_surveyid_fkey" FOREIGN KEY ("surveyid") REFERENCES "Survey"("surveyid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_sourceid_fkey" FOREIGN KEY ("sourceid") REFERENCES "Sources"("sourceid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_reportid_fkey" FOREIGN KEY ("reportid") REFERENCES "Reports"("reportid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_downloadid_fkey" FOREIGN KEY ("downloadid") REFERENCES "Downloads"("downloadid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Project" ADD CONSTRAINT "Project_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_projectid_fkey" FOREIGN KEY ("projectid") REFERENCES "Project"("projectid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_surveyid_fkey" FOREIGN KEY ("surveyid") REFERENCES "Survey"("surveyid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_sourceid_fkey" FOREIGN KEY ("sourceid") REFERENCES "Sources"("sourceid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_reportid_fkey" FOREIGN KEY ("reportid") REFERENCES "Reports"("reportid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_downloadid_fkey" FOREIGN KEY ("downloadid") REFERENCES "Downloads"("downloadid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Basemap" ADD CONSTRAINT "Basemap_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey" ADD CONSTRAINT "Survey_sourceid_fkey" FOREIGN KEY ("sourceid") REFERENCES "Sources"("sourceid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey" ADD CONSTRAINT "Survey_reportid_fkey" FOREIGN KEY ("reportid") REFERENCES "Reports"("reportid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey" ADD CONSTRAINT "Survey_downloadid_fkey" FOREIGN KEY ("downloadid") REFERENCES "Downloads"("downloadid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey" ADD CONSTRAINT "Survey_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey" ADD CONSTRAINT "Survey_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_projectid_fkey" FOREIGN KEY ("projectid") REFERENCES "Project"("projectid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_surveyid_fkey" FOREIGN KEY ("surveyid") REFERENCES "Survey"("surveyid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_sourceid_fkey" FOREIGN KEY ("sourceid") REFERENCES "Sources"("sourceid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_reportid_fkey" FOREIGN KEY ("reportid") REFERENCES "Reports"("reportid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_downloadid_fkey" FOREIGN KEY ("downloadid") REFERENCES "Downloads"("downloadid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProjectCategory" ADD CONSTRAINT "ProjectCategory_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sources" ADD CONSTRAINT "Sources_layerid_fkey" FOREIGN KEY ("layerid") REFERENCES "Vectorlayer"("layerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sources" ADD CONSTRAINT "Sources_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sources" ADD CONSTRAINT "Sources_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Sources" ADD CONSTRAINT "Sources_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vectorlayer" ADD CONSTRAINT "Vectorlayer_pointlayerid_fkey" FOREIGN KEY ("pointlayerid") REFERENCES "Point"("pointlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vectorlayer" ADD CONSTRAINT "Vectorlayer_linestringlayerid_fkey" FOREIGN KEY ("linestringlayerid") REFERENCES "Linestring"("linestringlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Vectorlayer" ADD CONSTRAINT "Vectorlayer_polygonlayerid_fkey" FOREIGN KEY ("polygonlayerid") REFERENCES "Polygon"("polygonlayerid") ON DELETE RESTRICT ON UPDATE CASCADE;
