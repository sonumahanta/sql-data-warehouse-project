/* 
=================================
CREATE DATABSE AND CHEMAS
=====================================
 SCRIPT PURPOSE:

THIS SCRIPT CTREATES A NEW DATABSE NAMED "DATAWAREHOUSE" AFTER CHECKING IF IT ALREADY EXITS.
IF THE DATAWAREHOUSE ALREADY EXISTS, IT IS DROPPED AND RECREATED. 
ADDITONALLY, THE SCRIPT SETS UP THREE SCHEMAS WITHIN THE DATABSE: "BRONZE"," SILVER", "GOLD".
=================================================================================================================

WARNING:

 RUNNING THIS SCRIPT  WILL DROP ENTIRE " Datawarehouse" datbase if it exits.
 all the data in the datbase will be permanently deleted.
 proceed with caution and ensure you have backups before running this scripts.
 ==============================================================================================================
/*

use master;

if exists ( select 1 from sys.databases where name = 'DataWarehouse')
BEGIN 
ALTER  DATABASE DataWarehouse set single_user with rollback immediate;
end;
go


create database DataWarehouse;
go

use DataWarehouse;
go

create schema bronze;
go 
create schema silver;
go
create schema gold;
go
