/*
  Warnings:

  - You are about to drop the column `downloadid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `projectid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `reportid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `sourceid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `surveyid` on the `Basemap` table. All the data in the column will be lost.
  - You are about to drop the column `downloadid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `projectid_1` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `reportid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `sourceid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `surveyid` on the `Login` table. All the data in the column will be lost.
  - You are about to drop the column `downloadid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `reportid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `sourceid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `surveyid` on the `Project` table. All the data in the column will be lost.
  - You are about to drop the column `downloadid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `projectid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `reportid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `sourceid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `surveyid` on the `ProjectCategory` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `Sources` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `Sources` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Sources` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `Sources` table. All the data in the column will be lost.
  - You are about to drop the column `downloadid` on the `Survey` table. All the data in the column will be lost.
  - You are about to drop the column `layerid` on the `Survey` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Survey` table. All the data in the column will be lost.
  - You are about to drop the column `reportid` on the `Survey` table. All the data in the column will be lost.
  - You are about to drop the column `sourceid` on the `Survey` table. All the data in the column will be lost.
  - You are about to drop the column `linestringlayerid` on the `Vectorlayer` table. All the data in the column will be lost.
  - You are about to drop the column `pointlayerid` on the `Vectorlayer` table. All the data in the column will be lost.
  - You are about to drop the column `polygonlayerid` on the `Vectorlayer` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_downloadid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_layerid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_polygonlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_projectid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_reportid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_sourceid_fkey";

-- DropForeignKey
ALTER TABLE "Basemap" DROP CONSTRAINT "Basemap_surveyid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_downloadid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_layerid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_polygonlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_projectid_1_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_reportid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_sourceid_fkey";

-- DropForeignKey
ALTER TABLE "Login" DROP CONSTRAINT "Login_surveyid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_downloadid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_layerid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_polygonlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_reportid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_sourceid_fkey";

-- DropForeignKey
ALTER TABLE "Project" DROP CONSTRAINT "Project_surveyid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_downloadid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_layerid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_polygonlayerid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_projectid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_reportid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_sourceid_fkey";

-- DropForeignKey
ALTER TABLE "ProjectCategory" DROP CONSTRAINT "ProjectCategory_surveyid_fkey";

-- DropForeignKey
ALTER TABLE "Sources" DROP CONSTRAINT "Sources_layerid_fkey";

-- DropForeignKey
ALTER TABLE "Sources" DROP CONSTRAINT "Sources_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Sources" DROP CONSTRAINT "Sources_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Sources" DROP CONSTRAINT "Sources_polygonlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Survey" DROP CONSTRAINT "Survey_downloadid_fkey";

-- DropForeignKey
ALTER TABLE "Survey" DROP CONSTRAINT "Survey_layerid_fkey";

-- DropForeignKey
ALTER TABLE "Survey" DROP CONSTRAINT "Survey_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Survey" DROP CONSTRAINT "Survey_reportid_fkey";

-- DropForeignKey
ALTER TABLE "Survey" DROP CONSTRAINT "Survey_sourceid_fkey";

-- DropForeignKey
ALTER TABLE "Vectorlayer" DROP CONSTRAINT "Vectorlayer_linestringlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Vectorlayer" DROP CONSTRAINT "Vectorlayer_pointlayerid_fkey";

-- DropForeignKey
ALTER TABLE "Vectorlayer" DROP CONSTRAINT "Vectorlayer_polygonlayerid_fkey";

-- AlterTable
ALTER TABLE "Basemap" DROP COLUMN "downloadid",
DROP COLUMN "layerid",
DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid",
DROP COLUMN "projectid",
DROP COLUMN "reportid",
DROP COLUMN "sourceid",
DROP COLUMN "surveyid";

-- AlterTable
ALTER TABLE "Login" DROP COLUMN "downloadid",
DROP COLUMN "layerid",
DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid",
DROP COLUMN "projectid_1",
DROP COLUMN "reportid",
DROP COLUMN "sourceid",
DROP COLUMN "surveyid";

-- AlterTable
ALTER TABLE "Project" DROP COLUMN "downloadid",
DROP COLUMN "layerid",
DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid",
DROP COLUMN "reportid",
DROP COLUMN "sourceid",
DROP COLUMN "surveyid";

-- AlterTable
ALTER TABLE "ProjectCategory" DROP COLUMN "downloadid",
DROP COLUMN "layerid",
DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid",
DROP COLUMN "projectid",
DROP COLUMN "reportid",
DROP COLUMN "sourceid",
DROP COLUMN "surveyid";

-- AlterTable
ALTER TABLE "Sources" DROP COLUMN "layerid",
DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid";

-- AlterTable
ALTER TABLE "Survey" DROP COLUMN "downloadid",
DROP COLUMN "layerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "reportid",
DROP COLUMN "sourceid";

-- AlterTable
ALTER TABLE "Vectorlayer" DROP COLUMN "linestringlayerid",
DROP COLUMN "pointlayerid",
DROP COLUMN "polygonlayerid";
