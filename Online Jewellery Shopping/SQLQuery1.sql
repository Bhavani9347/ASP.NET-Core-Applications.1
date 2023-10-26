--creating customer data table--
Create table Customerinfo (CustomerId int Primary key not null,CustomerName varchar(20) not null,CustomerAddress varchar(30) not null,CustomerPhoneno varchar(20) not null,CustomerEmail varchar(20) not null);
go



--creating flight schedules table---
Create table FlightSchedules(FlightID int Primary key not null,FlightName varchar(30) not null,FlightStartpoint varchar(20) not null,FlightDestination varchar(20) not null,FarePrice float not null)
go

---Creating reservation table---
Create table Reservations(ReservationId int Primary key not null,FlightID int Foreign key References FlightSchedules(FlightID),ReservationDate DateTime not null,
CustomerId int Foreign key References Customerinfo(CustomerId));
GO

----Creating Tickets Table----
Create table Tickets(TicketId int Primary key not null,ReservationId int Foreign Key References Reservations(ReservationID));
go


 