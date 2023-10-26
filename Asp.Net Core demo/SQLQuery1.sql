--creating product table
create table productinfo(
productid int not null primary key,
productname varchar(20),
price money,
quantity int);
go

 

--procedure for inserting product data
create procedure usp_insertproductinfo(@productid int,@productname varchar(20),@price money,@quantity int)
as
begin
insert into productinfo(productid,productname,price,quantity)values(@productid,@productname,@price,@quantity);
end
go

 

--retrieving product data
create procedure usp_selectproducts
as
begin
select * from productinfo;
end
go

 

--update procedure for products table

 

create procedure usp_updateproduct
as
begin
update productinfo 
set quantity=30
where quantity<10;
end
go

drop procedure usp_updateproduct;
go

 



 

--creating sales table
create table sales(salesid int not null primary key,
productid int foreign key references productinfo(productid),
quantity int,
price money);
go

--insert procedure for sales
create procedure usp_insertsales(@salesid int,@productid int,@quantity int,@price money)
as
begin
insert into sales(salesid,productid,quantity,price)values(@salesid,@productid,@quantity,@price);
end
go

 

Create procedure usp_retreivesales
as
begin
select * from sales;
end
go