select * from [Address]
right join Employees on [Address].EmployeeId=Employees.Id --od levo ne dava tie kje se null, tie od Employee shto se


select * from [Address] cross join Employees

--Exercises

select b.Name from BusinessEntities as b--b=BusinessEntities
cross join Customers as c

select distinct b.Name from BusinessEntities as b --distinct vadi samo edno ime od biznisite
inner join Orders as o
on b.Id=o.BusinessEntityId

select distinct b.Name from Orders as o--istiot rezultat e , dali kje pocneme od businesentities ili orders
inner join BusinessEntities as b
on b.Id =o.BusinessEntityId
--left e se od prvata table, right se od desnata,vtorata tabela
select b.Name from BusinessEntities as b
left join Orders as o
on b.Id=o.BusinessEntityId
where o.Id is null--za da vidime dali nema naracka

select b.Name from Orders as o
right join BusinessEntities b--ako staimer as ili ne posle BusinessEntities e isto
on B.Id = o.BusinessEntityId
where o.Id is null

select c.Name from Orders o
right join customers c
on c.Id=o.CustomerId
where o.Id is null

--kako da proverime site produkti shto se naracani, shto imaat relacija
select * from Products p
inner join OrderDetails od
on p.Id=od.ProductId--foreing key so primary key

--kako da vidime produkti shto nikogash ne bile naracani
--left e se od prvata table, right se od desnata,vtorata tabela
select * from Products p
left join OrderDetails od
on p.Id=od.ProductId
where od.Id is null

select * from OrderDetails od
right join Products p
on od.ProductId=p.Id--site order details shto imaat i nemaat product kje ni gi dade
where od.Id is null--tie shto nemaat prduct

--total amount of all orders

select count(*) from Employees--count e da broi redici

select CustomerId, sum(TotalPrice) from Orders--sum sobira
group by CustomerId

--total amount per businessEntity on all orders in the system

select BusinessEntityId,sum(TotalPRice) as TotalPrice from Orders--ako nema 'as TotalPrice' neka da ima ime kolonata
group by BusinessEntityId

select b.Name,sum(o.TotalPrice) as TotalPrice from Orders o
inner join BusinessEntities b
on b.Id=o.BusinessEntityId--vo b e foreign key
group by b.Name
order by sum(TotalPrice) desc--od najvisoko da odi kon najniska cena

--sekogash prvo se filtrira so where, pa se grupira!!!
select b.Name,sum(o.TotalPrice) as TotalPrice from Orders o
inner join BusinessEntities b
on b.Id=o.BusinessEntityId--vo b e foreign key
where CustomerId>20
group by b.Name
order by sum(TotalPrice) desc--od najvisoko da odi kon najniska cena


select b.Name, max(TotalPrice),avg(TotalPrice)from Orders
inner join BusinessEntities b
on b.Id=o.BusinessEntityId
group by b.Name

--HAVING e filtriranje vo grupata od koga kje ja napraime,vnatre vo nea
select b.Name, max(TotalPrice),avg(TotalPrice)from Orders
inner join BusinessEntities b
on b.Id=o.BusinessEntityId
group by b.Name
having sum(TotalPrice)>=631758
Order by sum(TotalPrice) desc


