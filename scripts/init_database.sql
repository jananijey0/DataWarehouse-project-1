
-- drop and create the DataWarehouse database
if exists (select 1 from sys.databases where name ='DataWarehouse')
begin
alter database DataWarehouse set single user with rollback immediate;
use DataWarehouse;


/*
create database and schemas
script purpose:
	this script creates a new database named 'DataWarehouse' After chencking if it already exists . 
  if the database exists , it is dropped and recreated. Additionally, the script sets up three schemas within the database :
   "bronze","Silver","Gold".
*/
create schema bronze;
create schema gold;
create schema silver;
