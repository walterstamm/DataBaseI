create database Haberes
go
use Haberes
go
create table Personas(
		Cuil varchar(11) not null primary key,
		Apellido_Nombre varchar(50) not null,
		Destino varchar(30),
		Cargo varchar(30)
)
go
create table Haberes(
		Cuil varchar(11) not null foreign key references Personas(Cuil),
		Mes_Anio varchar(6) not null,
		Bruto money check(Bruto > 0),
		Descuento money check(Descuento >0),
		Neto money check(Neto >0),
		Aportes money check(Aportes >0),
		Contribuciones money check(Contribuciones >0)
)
