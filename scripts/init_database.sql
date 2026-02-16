/*
==========================================
Create Database and Schemas
==========================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after cheking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehoue' database if it exists.
    Add data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script. 
    */

-- Create Database 'DataWarehouse'
Use master;
Go

--Drop and recreate the 'DataWarehouse' database
If exists (Select 1 from sys.databases where name = 'DataWarehouse')
Begin 
Alter Database DataWarehouse set SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
Go

Use DataWarehouse;
Go

--Create Schemas
Create Schema bronze;
Go

Create Schema silver;
Go

Create Schema gold;
Go
