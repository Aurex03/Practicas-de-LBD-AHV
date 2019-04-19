--Practica 6 
--Aurelio Hernandez Valdes #1820112
use PuntoDeVenta

--Mostrar articulo que se llame Galleta
select  IdArticulo,Codigo, Nombre, Descripcion, Imagen from articulo as e where e.Nombre='Galleta'

--Mostrar Cliente llamado Aurelio
select  Id,Nombre,Apellidos,Sexo,Telefono from Cliente as p where p.Nombre='Aurelio'

--Mostrar la cantidad mayor a 100
select IdVenta,Cantidad,Precio_Venta,Descuento,IdDetalle from detalle_venta as m where m.Cantidad>100


--Mostrar el pago mayor a 2000
select IdTrabajador,Monto_Pago,Dia_Pago,Nombre,Apellidos from Pagos as r where r.Monto_Pago>2000

--Mostrar trabajador que se llame Aurelito
select  IdTrabajador,Nombre,Apellidos,Hora_Entrada,Hora_Salida from Trabajador as s where s.Nombre='Aurelito'


