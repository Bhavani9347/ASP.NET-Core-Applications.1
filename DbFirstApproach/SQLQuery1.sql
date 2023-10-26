Create Database OnlineshoppingChain
go
Drop database OnlineshoppingChain
go
---Customer Table
Create table Customers (CustomerId int Primary key not null,CustomerName Varchar(20) not null,CustomerAddress Varchar(30),CustomerPhoneno int not null)
Go

Drop Table Customers
go

---Vendor Table---
Create table Vendor(VendorId int Primary Key not null,VendorName varchar(20),VendorAddress varchar(30),	VendorEmail varchar(30) not null)
go

DROP table Vendor
go

---Product table---
Create table Product(ProductId int Primary key not null,ProductName varchar(20) not null,Price float not null,
VendorId int foreign key References Vendor(VendorId),
CategoryId int foreign key  References Category(CategoryId));
go

Drop table Product 
go

----Order Table-----
Create table Orders(OrderId int Primary key not null,Amount Float not null,
CustomerId int foreign key References Customers(CustomerId),
ProductId int foreign key References Product(ProductId),quantity float not null,Orderdate datetime  not null)
go

Drop Table Orders
go

-----Category table-----
Create table Category(
CategoryId int not null,CategoryName varchar(30) not null)
go

Drop table Category
go