--Vezba
create table BLOG
(
	Id int identity(1,1) Primary Key,
	Post nvarchar(MAX)
)

create table COMMENT
(
	Id int identity(1,1) Primary Key,
	Comment nvarchar(MAX),
	BlogId int Foreign Key references Blog(id)
)
select * from BLOG
Insert into COMMENT(Comment,BlogId)
Values('sfa42141fa',2)

insert into BLOG
Values
('Prv post'),
('Vtor post')
select * from BLOG
select * from COMMENT