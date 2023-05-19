create database TMobile2

use TMobile2

create table Customer
(
	Id int identity(1,1) primary key,
	Name nvarchar(50)
)
create table Tarifa
(
	Id int identity(1,1) primary key,
	Name nvarchar(50)
)

create table CustomerTarifa
(
	Id int identity (1,1) primary key,
	CustomerId int foreign key references Customer(Id),
	TarifaId int foreign key references Tarifa(Id)
)

insert into Customer values('Jovan'),('Hristijan')

insert into Tarifa values('Magenta1'),('Magenta2')

insert into CustomerTarifa values(1,1)

select * from CustomerTarifa