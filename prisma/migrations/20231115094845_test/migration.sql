-- CreateTable
CREATE TABLE "Users" (
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "role" TEXT,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("username")
);

-- CreateTable
CREATE TABLE "Login" (
    "Loginid" INTEGER NOT NULL,
    "username" VARCHAR(20) NOT NULL,
    "password" TEXT NOT NULL,
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
    "mapname" VARCHAR(30) NOT NULL,
    "maplink" VARCHAR(50) NOT NULL,

    CONSTRAINT "Basemap_pkey" PRIMARY KEY ("mapid")
);

-- CreateTable
CREATE TABLE "Survey" (
    "surveyid" INTEGER NOT NULL,
    "projectid" INTEGER NOT NULL,
    "lat" DOUBLE PRECISION NOT NULL,
    "long" DOUBLE PRECISION NOT NULL,
    "surveyname" VARCHAR(20) NOT NULL,
    "date_of_survey" TEXT NOT NULL,
    "zoom" DOUBLE PRECISION NOT NULL,
    "zoom_min" DOUBLE PRECISION NOT NULL,
    "zoom_max" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Survey_pkey" PRIMARY KEY ("surveyid")
);

-- CreateTable
CREATE TABLE "ProjectCategory" (
    "categoryid" INTEGER NOT NULL,
    "categoryname" VARCHAR(30) NOT NULL,
    "domain" VARCHAR(50) NOT NULL,

    CONSTRAINT "ProjectCategory_pkey" PRIMARY KEY ("categoryid")
);

-- CreateTable
CREATE TABLE "Sources" (
    "sourceid" INTEGER NOT NULL,
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
