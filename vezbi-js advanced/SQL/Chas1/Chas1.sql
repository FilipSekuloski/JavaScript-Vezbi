create database EShop;
use EShop
create table Korisnik(
Id int not null,
[Name] nvarchar(255) not null,  --char(10)/varchar(10)/nchar/nvarchar //char e so fiksen length, fiksen length, kolku bukvi kje ima/
IsActive bit not null,          --0 if false;1 if true --varchar moze od 0 do kolku setirame--char samo latinica podrzuva//nvachar gi podrzuva site jazici i karakteri
Balance decimal(10,2),          --1234345432,93 --10kata znaci kolkav broj moze da ima, a 2kata e kolku moze posle zapirkata broevi da ima
Age int not null,
)

create table Product(
Id int not null,
Ime nvarchar(255) not null,
Kolicina int not null,
Cena decimal(18,2) not null,
Proizveduvac nvarchar(255) not null,
)

create table [Order](            --Order e klucen zbor vo sql, i zatoa go stavame vo square brackets
CustomerId int not null,         --gi povrzuvame Id od korisnik i ova CustomerId, i mora od isti tip da se
ProductId int not null,
Quantity int not null default 1, --default 1 proizvod kje naracame vo quantity
Ordered datetime2 not null,      --datetime2 e najprecizno zema vremeto, a datetime ne
)

Insert into Korisnik([Name],Id,IsActive,Balance,Age)--kazuvame koi koloni kje insertirame
Values('Jovan',1,1,40,25);                       --kazuvame koi vrednosti

Insert into Korisnik--moze i da ne kazeme koi koloni gi insertirame, i odat po redosled kako shto se definirani
Values(2,'Bojane',0,50,25);
Insert into Korisnik
Values(3,'Jovan',0,50,25);

select[id],[Name],[Age] from Korisnik--ne mora da se vo brackets id name i age, ali podobro e da gi stavame da se zastitime od greski

Alter table Korisnik
drop column Created--add dodava kolona, drop brise

Update Korisnik--shto updejtirame
set Age=30--se menuva Age na site, ako ne stavime where za shto
where [Name]='Jovan'--site shto se so ime Jovan kje promenat age

Update Korisnik--shto updejtirame
set Age=4--se menuva Age na site, ako ne stavime where za shto
where Id=3--se menuva spored Id

create table Comments
(
	Id int identity(1,1),    --pocni od 1 i za sekoj nareden zgolemi se za 1
	[Text] nvarchar,         --ako ne stavime default kje bide 1 karakter
	CustomerId int not null, --da vidime koj korisnik go napisal ovoj komentar imame CustomerId, pravime relacija so drugite tabeli
	Created datetime2 not null default GetDate()
)
Alter table Comments--Alter ja menuva tabelata Comments
drop column Text;
Alter table Comments
add[Text]nvarchar(MAX) not null default '';--mroa da ima nvarchar MAX za maximum karakteri--posle kje stavime Text 'produktot e dobar'- a default beshe 1 karakter, i mora da smenime vo MAX
                                           --ako nema not null i default '', kje dodade Text, i site redici kje bidat null
insert into Comments([Text],CustomerId)--sekogash nadjobro e redosledot na kolonite da go pisuvame
Values('produktot e dobar',1)--za Id ne stavame value, sql sam si stava, znaci koga koristime identity sam sql si stava id number
select * from Comments-- *(dzvezdicka) znaci semi se od Comments

Alter table Comments
add Likes int not null default 0-- ako addnuvame novi redici, mora default 0

insert into Comments(CustomerId, Created,[Text])
Values(2,GETDATE(),'Produktot e mnogu losh')
select * from Comments

--ALTER NA STRUKTURA, UPDATE NA PODATOCI se koristi

delete Korisnik
where Id=3

