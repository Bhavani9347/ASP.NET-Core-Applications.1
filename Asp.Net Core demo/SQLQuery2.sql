create table movieinfo(movieid int not null Primary key,title varchar(20) not null,releasedate date not null,genre varchar not null);
go

drop table movieinfo;
go

create table Ticketsales(salesid int not null Primary key,movieid int Foreign key references movieinfo(movieid),screeenno int not null,showtime datetime not null,quantity int,amount float,price float);
go

drop table Ticketsales;
go
--sp for inserting
Create Procedure insertmovieinfo(@movieid int,@title varchar(20),@releasedate date,@genre varchar)
AS
begin
Insert into movieinfo(movieid,title,releasedate,genre)Values(@movieid,@title,@releasedate,@genre);
End
go

--sp for inserting ticketssales
Create Procedure insertticketsales(@salesid int,@movieid int,@screeenno int,@showtime datetime,@quantity int,@amount float,@price float)
AS
begin
Insert into Ticketsales(salesid,movieid,screeenno,showtime,quantity,amount,price)Values(@salesid,@movieid,@screeenno,@showtime,@quantity,@amount,@price);
End
go

--sp for retrieve movieinfo
Create procedure gettickectsinfo
AS
begin
Select * from movieinfo;
end
go

--sp for retrieving the tickecsale
Create procedure getticketsales
as
begin
select *from Ticketsales;
end
go

drop table movieinfo;
go

drop table Ticketsales;
go



