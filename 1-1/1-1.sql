create database Automotor
go
use Automotor
go
create table Autos(
	ID int not null primary key,
	Patente char(7) not null,
	Marca char(15) not null,
	Modelo char(15) not null,
	Color char(15) not null
)
go
Create table Motor(
	ID int not null primary key foreign key references Autos(ID),
	Numero int not null,
	Nombre char (20) not null,
	Tipo char (20) not null,
	Cilindrada int not null,
	Cilindros int not null
)