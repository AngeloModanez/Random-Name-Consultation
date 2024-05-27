create database RandName
go

use RandName
create table firstName(
ID int IDENTITY(1,1) Primary Key,
fName varchar (50));

create table lastName(
ID int IDENTITY(1,1) Primary Key,
lName varchar(50));

create table completeName(
cName varchar(100));
