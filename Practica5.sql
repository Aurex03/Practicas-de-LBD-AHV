USE [master]
GO
/****** Object:  Database [PuntoDeVenta]    Script Date: 13/04/2019 22:32:22 ******/
CREATE DATABASE [PuntoDeVenta]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PuntoDeVenta', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PuntoDeVenta.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PuntoDeVenta_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\PuntoDeVenta_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PuntoDeVenta] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PuntoDeVenta].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ARITHABORT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PuntoDeVenta] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PuntoDeVenta] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PuntoDeVenta] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PuntoDeVenta] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET RECOVERY FULL 
GO
ALTER DATABASE [PuntoDeVenta] SET  MULTI_USER 
GO
ALTER DATABASE [PuntoDeVenta] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PuntoDeVenta] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PuntoDeVenta] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PuntoDeVenta] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PuntoDeVenta] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PuntoDeVenta', N'ON'
GO
ALTER DATABASE [PuntoDeVenta] SET QUERY_STORE = OFF
GO
USE [PuntoDeVenta]
GO
/****** Object:  Table [dbo].[articulo]    Script Date: 13/04/2019 22:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articulo](
	[IdArticulo] [bigint] NOT NULL,
	[Codigo] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Descripcion] [text] NOT NULL,
	[Imagen] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/04/2019 22:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [bigint] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Sexo] [text] NULL,
	[Telefono] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 13/04/2019 22:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[IdVenta] [bigint] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio_Venta] [int] NOT NULL,
	[Descuento] [int] NOT NULL,
	[IdDetalle] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 13/04/2019 22:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdTrabajador] [varchar](50) NULL,
	[Monto_Pago] [money] NULL,
	[Dia_Pago] [date] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 13/04/2019 22:32:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[IdTrabajador] [bigint] NULL,
	[Nombre] [varchar](50) NULL,
	[Apellidos] [varchar](50) NULL,
	[Hora_Entrada] [time](7) NULL,
	[Hora_Salida] [time](7) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (1849, 31, N'Leche', N'Es leche', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (1849, 31, N'Leche', N'Es leche', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (9189, 10, N'Jamon', N'Rico y bueno', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (9139, 11, N'Lechuga', N'Exquisita', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (5289, 12, N'Riko Pollo', N'a 5 pesitos', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (1189, 13, N'Pañales', N'pa lo que ocupes', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (4819, 14, N'Pañales', N'pa lo que ocupes', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (4919, 15, N'Abanico', N'pa este buen calorsito', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (5829, 16, N'Esclavo', N'pa que te hagan los mandados', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (4899, 17, N'Semillas del Ermitaño', N'te curan jsjs', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (4555, 18, N'Dulces', N'tan bien buenos', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (4135, 19, N'Camisas', N'pa que tengas ropa jsjsjs', NULL)
INSERT [dbo].[articulo] ([IdArticulo], [Codigo], [Nombre], [Descripcion], [Imagen]) VALUES (1111, 20, N'20 Pesos', N'orale que te caiga el 20 jsjsjs', NULL)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (1, N'DANIEL', N'OVALLE', N'Masculino', 811747232)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (2, N'DANIELA', N'SAGAON', N'Diosa', 811747252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (3, N'CYNTHIA', N'RIVERA', N'HERMOSA', 811747252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (4, N'Ana', N'Lugo', N'Femenina', 815747252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (5, N'Aurelio', N'Hernandez', N'Masculino', 811647252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (6, N'Carlos', N'Tadeo', N'Masculino', 811647452)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (7, N'Goku', N'Kakaroto', N'Sayayin', 816747252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (8, N'Vegeta', N'Principe', N'Sayayin', 819747252)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (9, N'Naruto', N'Uzumaki', N'Masculino', 811947212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (10, N'Sasuke', N'Uchiha', N'Masculino', 111947212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (11, N'Itachi', N'Uchiha', N'Masculino', 111647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (12, N'Minato', N'Namikaze', N'Masculino', 112647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (13, N'Peter', N'Parker', N'Masculino', 212647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (14, N'Peter', N'Parker', N'Masculino', 212647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (15, N'Norman', N'Osborn', N'Masculino', 512647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (16, N'Gwen', N'esteisi', N'Femenino', 552647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (17, N'Vanessa', N'Morales', N'Femenino', 558647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (18, N'Miles', N'Morales', N'Masculino', 758647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (19, N'Hulk', N'Aplasta', N'Masculino', 458647212)
INSERT [dbo].[Cliente] ([Id], [Nombre], [Apellidos], [Sexo], [Telefono]) VALUES (20, N'Tony', N'Stark', N'Masculino', 458147272)
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (1931, 5, 100, 25, N'Quesos')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (1111, 4, 20, 25, N'Quesos')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (2222, 6, 592, 30, N'Jamones')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (3333, 8, 458, 50, N'Sillas')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (4444, 1, 413, 42, N'Cerveza')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (5555, 4, 621, 11, N'Ropa')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (6666, 2, 884, 40, N'Abanico')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (7777, 9, 423, 90, N'Calcetas')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (8888, 4, 513, 53, N'Bolsas')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (9999, 71, 100, 30, N'Sabritas')
INSERT [dbo].[detalle_venta] ([IdVenta], [Cantidad], [Precio_Venta], [Descuento], [IdDetalle]) VALUES (0, 12, 300, 20, N'Peluches')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1928', 5000.0000, NULL, N'Aurelio', N'Hernandez')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1928', 5000.0000, NULL, N'Aurelio', N'Hernandez')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'4820', 5000.0000, NULL, N'Barry', N'Allen')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'4829', 5000.0000, NULL, N'Natasha', N'Romanoff')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1813', 5000.0000, NULL, N'Bruce', N'Banner')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'3413', 5000.0000, NULL, N'Peter', N'Parker')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'3443', 5000.0000, NULL, N'Daniela', N'Panabeiker')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1991', 5000.0000, NULL, N'Sara', N'Tamez')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1941', 5000.0000, NULL, N'Eliseo', N'Torres')
INSERT [dbo].[Pagos] ([IdTrabajador], [Monto_Pago], [Dia_Pago], [Nombre], [Apellidos]) VALUES (N'1391', 5000.0000, NULL, N'Elisa', N'Gonzales')
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (182013, N'Oscar', N'Burgos', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (183313, N'Zack', N'Cody', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (141413, N'Hedwing', N'Etc', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (121413, N'Edgar', N'Ross', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (148921, N'Rick', N'Herdenson', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (148341, N'Jorge', N'Curioso', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (284019, N'Bob', N'el Constructor', NULL, NULL)
INSERT [dbo].[Trabajador] ([IdTrabajador], [Nombre], [Apellidos], [Hora_Entrada], [Hora_Salida]) VALUES (481019, N'Bob', N'Esponja', NULL, NULL)
USE [master]
GO
ALTER DATABASE [PuntoDeVenta] SET  READ_WRITE 
GO
