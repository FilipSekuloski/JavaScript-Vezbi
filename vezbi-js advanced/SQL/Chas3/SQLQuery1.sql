Create table [Address]
(
	Id int identity(1,1) Primary key,
	Street nvarchar(100) not null,
	EmployeeId int Foreign key references Employees(Id)--ja povrzuvame adresata so employee/foreign key se povrzuva sekogash so primary key
)
select * from Employees
select * from [Address]
insert into[Address]
values ('asafaf',100)

select * from Employees
inner join [Address] on Employees.Id=Address.EmployeeId--one to one relacija, spojuva employeeId to EmployeeId vo Address

Select [Name],Customers.Id,Orders.Id,Orders.CustomerId from Orders
inner join Customers on Orders.CustomerId=Customers.Id
where CustomerId=4

select * from Orders
inner join Customers on Orders.CustomerId=CustomerId
inner join BusinessEntities on Orders.BusinessEntityId=BusinessEntities.Id
where BusinessEntities.Name='Vitalia Skopje' and Customers.Name='Kam Bitola'

