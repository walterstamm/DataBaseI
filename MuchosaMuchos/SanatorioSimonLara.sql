GO
CREATE DATABASE ObraSocial
GO
USE ObraSocial
GO

CREATE TABLE Empresa(
	Cuit bigint not null primary key,
	RazonSocial varchar(30) not null,
	FechaInicioAct date not null check(FechaInicioAct < getdate() ),
	PorcentajeAporte decimal not null check(PorcentajeAporte > 0),
	PorcentajeContribucion decimal not null check (PorcentajeContribucion > 0),
	Localidad varchar (30) not null,
	Provincia varchar(20) not null,
	Rubro varchar(20) not null,
	Sindicato varchar(30) not null
)

GO

CREATE TABLE ObraSocial(
	Cuit bigint not null primary key,
	RazonSocial varchar(25) not null,
	Prepaga bit not null,
	FechaInicioAct date not null check (FechaInicioAct < getdate() ),
	Rubro varchar(30) not null,
	DireccionFiscal varchar(30) not null,
	Localidad varchar (20) not null,
	Provincia varchar(20) not null
)

GO

CREATE TABLE SanatorioSimonLara(
	CuitEmpresa bigint not null foreign key references Empresa(Cuit),
	CuitObraSocial bigint not null foreign key references ObraSocial(Cuit),
	primary key(CuitEmpresa,CuitObraSocial),
	Direccion varchar(30) not null
)