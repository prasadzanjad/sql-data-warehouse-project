/*
===============================================================
Create Database and Schemas
===============================================================
Script Purpose:
	This Script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the Database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze','silver','gold'.

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All the data in the database will be permanantly deleted. Proceed with caution and 
	ensure you have proper backup before running the script.
*/

USE master;
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO


-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
