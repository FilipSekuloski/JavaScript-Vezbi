select * from Employees
where FirstName='Goran';

select * from Employees
where LastName Like 'S%';--starts with S

select * from Employees
where LastName Like '%I';--ends with I

select * from Employees
where LastName Like '%A%';--kade shto sodrzi bukva A


select * from Employees
where LastName Like '%A%' and FirstName Like 'M%'--Sodrzi A vo prezimeto, i pocnuva na M imeto

select * from Employees
where FirstName Like 'M___';-- pocnuva na M i ma ushte 3 karakteri posle toa, so 4ri bukvi e imeto

select * from Employees
where DateOfBirth > '01.01.1986';--rodeni posle 1.1.1986

select * from Employees
where Gender ='M';--site maski

select * from Employees
where HireDate >= '01.01.1998' and HireDate <= '01.31.1998';

select * from Employees
where LastName like 'S%' and HireDate >='01.01.2019' and HireDate <='01.31.2019'

select * from Employees
where FirstName ='Aleksandar'--ascending
Order by LastName


select * from Employees
where FirstName ='Aleksandar'--descending
Order by LastName desc

select * from Employees
Order by FirstName --po azbucen red site vraboteni

select * from Employees
where Gender = 'M'
Order by HireDate desc


select [NAME] from BusinessEntities
UNION ALL
select [NAME] from Customers--site podatoci prikazani zaedno vo results



select [NAME],Id from BusinessEntities
UNION ALL
select [NAME],Id from Customers


select Id from BusinessEntities
UNION ALL
select Id from Customers

select Region from BusinessEntities
Intersect
select RegionName from Customers--intersect e zaednickoto

Alter Table OrderDetails
add constraint FK_OrderDetails_Orders
Foreign Key(OrderId) references [Orders](Id)

Alter Table OrderDetails
add constraint FK_OrderDetails_Products
Foreign Key(ProductId) references Products(Id)

Alter Table Orders
add constraint FK_Orders_BusinessEntities
Foreign Key(BusinessEntityId) references BusinessEntities(Id)

Alter table Orders
Add constraint FK_Orders_Employees
Foreign Key(EmployeeId) references Employees(Id)