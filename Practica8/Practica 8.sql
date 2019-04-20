---Practica 8---
---Aurelio Hernandez Valdes #1820112---


use PuntoDeVenta

---    SP    1---
create procedure NuevoCliente(
	@Id bigint,
	@Nombre varchar(50),
	@Apellidos varchar(50),
	@Sexo text,
	@Telefono int
)
as
begin 
	insert into Cliente (Id,Nombre,Apellidos,Sexo,Telefono)
	values (@Id,@Nombre,@Apellidos,@Sexo,@Telefono)
end
	exec NuevoCliente @Id=13, @Nombre='Aurelio',@Apellidos='Hernandez',@Sexo=Masculino,@Telefono=811

---    SP    2---

	create procedure  articulos(
	@IdArticulo bigint
	)
	as 
		select *from articulo
		where IdArticulo=@IdArticulo
	go
		exec articulos 242

---    SP    3---
	create procedure  codigoss(
	@Codigo int
	)
	as 
		select *from articulo
		where Codigo=@Codigo
	go
		exec codigoss 4023
---    SP    4---

create procedure CantidadDeVenta(
	@Cantidad int
)
as
begin 
	insert into detalle_venta(Cantidad)
	values (@Cantidad)
end
	exec CantidadDeVenta @Cantidad=100

---    SP    5---
	create procedure  Pagoss(
	@Monto_Pago money
	)
	as 
		select *from Pagos
		where Monto_Pago=@Monto_Pago
	go
		exec Pagoss 40000

---    SP    6---
	create procedure Trabajadorr(
	@IdTrabajador bigint
	)
	as 
		select *from Trabajador
		where IdTrabajador=@IdTrabajador
	go
		exec Trabajadorr 1842
---    SP    7---
	create procedure NombrePagos(
	@Nombre varchar(50)
	)
	as 
		select *from Pagos
		where Nombre=@Nombre
	go
		exec NombrePagos Aurelio

---    SP    8---

create procedure ApellidosPagos(
	@Apellidos varchar(50)
	)
	as 
		select *from Pagos
		where Apellidos=@Apellidos
	go
		exec ApellidosPagos Hernandez

---    SP    9---

create procedure TrabajadorApellidos(
	@Apellidos varchar(50)
	)
	as 
		select *from Trabajador
		where Apellidos=@Apellidos
	go
		exec TrabajadorApellidos Hernandez

---    SP    10---

create procedure TrabajadorNombre(
	@Nombre varchar(50)
	)
	as 
		select *from Trabajador
		where Nombre=@Nombre
	go
		exec TrabajadorNombre Aurelio






---Funciones---
select *from  function  EstadoAutobuses

create function ArticulosA(@estado varchar)
returns varchar (50)
as 
begin
	declare @cdg int;
	declare @Nom varchar(50);

	set @cdg=(select o.codigo from articulo as o where o.codigo=@estado);

	if(@cdg=1)
		begin 
			set @Nom='Si Existe cantidad';
			end
	else if(@cdg=2)
		begin 
			set @Nom='No existe cantidad';
			end
	else if(@cdg=3)
		begin 
			set @Nom='LLLENO';
			end
		return @Nom
	end
go		

	

--Primer Triggers--
select *from articulo

create trigger AR
on articulo
instead of insert 
as
begin 
	select *
	from articulo
	end

--Segundo Triggers--
select *from Cliente

create trigger CE
on cliente
instead of insert 
as
begin 
	select *
	from cliente
	end
