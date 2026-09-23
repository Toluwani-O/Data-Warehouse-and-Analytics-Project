/* =========================================================
   DATA WAREHOUSE PROJECT
   Database Initialization & Schema Setup
   =========================================================
   
   Author: [Ojikutu Mary]
   Project: End-to-End Data Warehouse & Analytics
   Description:
   This script creates the data warehouse database and
   establishes the Bronze, Silver, and Gold schemas used
   throughout the ETL and analytics process.

   Architecture:
   Bronze  → Raw Data
   Silver  → Cleaned & Transformed Data
   Gold    → Business-Ready Data & Analytics
   ========================================================= */


/* =========================================================
   STEP 1: CREATE DATA WAREHOUSE DATABASE
   =========================================================
   
   Creates the main database that will store all data
   warehouse objects, including tables, views, and
   analytical datasets.
   ========================================================= */

USE master;

CREATE DATABASE DataWarehouse;


/* =========================================================
   STEP 2: SELECT DATA WAREHOUSE DATABASE
   =========================================================
   
   Switches the active database context from the master
   database to the newly created DataWarehouse database.
   ========================================================= */

USE DataWarehouse;


/* =========================================================
   STEP 3: CREATE DATA WAREHOUSE SCHEMAS
   =========================================================
   
   Creates three schemas based on the Medallion Architecture:

   Bronze:
   Stores raw data as received from source systems.

   Silver:
   Stores cleaned, validated, and transformed data.

   Gold:
   Stores business-ready data used for reporting,
   analytics, and dashboards.
   ========================================================= */

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
