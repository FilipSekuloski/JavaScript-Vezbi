create database TMobile
use Tmobile

create table Customer(
	Id int identity(1,1) Primary key,
	[Name] nvarchar(50)
)

Create table Tarifa
(
	Id int identity(1,1) Primary key,
	CustomerId int Foreign key references Customer(Id),
	Name nvarchar(50)
)
insert into Customer values('Jovan Gjorgjiev');
select * from Customer

insert into Tarifa values(1,'Magenta1')
insert into Tarifa values(1,'Magenta2')
select * from Tarifa

