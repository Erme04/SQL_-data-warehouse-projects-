/*
Create Database and Schemas 
-------------------------------
Scripts purpose: 
This scripts creates a new database named ' DataWarehouse'after checking if it already exists. 
If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas within
the database: 'bronze', 'silver' and 'gold'. 


WARNING: 
  Running this script will drop the entire "DataWarehouse' database if it exist. 
  All data in the database will be permanently deleted. Proceed with caution and ensure you have backups running this script. 
  */

USE master;
GO
---Drop and recreate the " Datawarehouse" database
  IF EXIST (SELECT 1 FROM sys.databases WHERE name =" DataWarehouse")
  BEGIN
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
     DROP DATABASE DataWarehouse ; 

--Create the "Datawarehouse"  database 
CREATE DATABASE DataWarehouse;

Use DataWarehouse; 

CREATE SCHEMA bronze;
go 
CREATE SCHEMA silver;
go
CREATE SCHEMA gold; 
go
