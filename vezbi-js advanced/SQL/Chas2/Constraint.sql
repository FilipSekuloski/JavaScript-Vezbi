--Constraint ogranicuva podatoci, kako validacija, da vidi dali se brojki,bukvi,stava default values
ALTER TABLE BusinessEntity
add constraint DF_Region--DF za default
default 'Skopski' FOR Region

insert into BusinessEntity([Name],Region,Size,Zipcode)
values('Ime','Skopski','Small','asf')
select * from BusinessEntity

alter table BusinessEntity
with nocheck
add constraint CK_ZipCode--CK za check
check(IsNumeric(Zipcode)=1)

delete from BusinessEntity
where isnumeric(Zipcode)=0--isnumeric e funkcija vo SQL da proveri dali value se brojki
----------------------------------------------------
alter table Product
add constraint CK_Price
check(Price>0)

select * from Product

alter table Products
add constraint UQ_Code
UNIQUE(Code)

 create table test
(
	Id int identity(1,1)--primary key
)
select * from Test
alter table test
add [Name] nvarchar(10)

insert into test
values('asf');

create table test2
(
	Id int identity Primary Key,--identitet na tabelata e primary key IDto
	testId int not null Foreign Key references Test(Id)--foreign key e samo referenca za kogo e
)

alter table test2
add constraint FK_TestId
foreign key(testId) references test(Id)--TestId tabelata referencira kon Id tabelata vo test prvata tabela shto ja napraivme

Insert into test2(TestId)
Values(1)

select * from [Order]

alter table [Order]
Add constraint FK_Customer
Foreign key (CustomerId) references Customers(Id)--primarnata redica CustomerId referencira kon tabelata Customers(id) tabelata

