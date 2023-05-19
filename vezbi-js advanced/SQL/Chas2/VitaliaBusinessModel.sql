CREATE DATABASE SEDC
use SEDC

create table BusinessEntity
(
	Id int identity(1,1),
	[Name] nvarchar(255) not null,
	[Region] nvarchar(255) not null,
	Zipcode char(4) not null,
	Size nvarchar(10) not null,
)

create table Employee
(
	Id int identity(1,1),
	FirstName nvarchar(100) not null,
	LastName nvarchar(100) not null,
	DateOfBirth datetime2,
	Gender char(1),--F ili M kje stavime, moze i char i nchar, nchar za kineski bukvi ako koristime
	HireDate datetime2,
	NationalIdNumber char(15)--maticen broj
)

alter table Employee
drop column NationalIdNumber

alter table Employee
add NationalIdNumber char(13)

insert into BusinessEntity([Name],Region,Zipcode,Size)
values('Vitalija Skopje','Skopski',1000,'Large')

select * from BusinessEntity

create table Product
(
	Id int identity(1,1),
	Code nvarchar(50),
	[Name] nvarchar(100),
	[Description] nvarchar(MAX),
	Price decimal(18,2),
	Cost decimal(18,2),
)

create table Customer
(
Id int identity(1,1),
[Name] nvarchar(100) not null,
AccountNumber nvarchar(100),
City nvarchar(100),
RegionName nvarchar(100),
CustomerSize nvarchar(10),
PhoneNumber nvarchar(20),
IsActive bit not null
)

create table [Order]
(
	Id int identity(1,1),
	OrderDate datetime2,
	[Status] smallint,
	BusinessEntityId int,
	EmployeeId int,
	TotalPrice decimal(18,2),
	Comment nvarchar(MAX)
)
Alter table [Order]
drop column Id

Alter table [Order]
add Id bigint identity(1,1)--bigint e kako long vo c#

create table OrderDetails
(
	Id bigint identity(1,1),
	OrderId bigint,
	ProductId int,
	Quantity int,
	Price decimal(18,2)
)

