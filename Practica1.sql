USE [master]
GO

/****** Object:  Database [PuntoDeVenta]    Script Date: 12/04/2019 18:54:23 ******/
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

ALTER DATABASE [PuntoDeVenta] SET QUERY_STORE = OFF
GO

ALTER DATABASE [PuntoDeVenta] SET  READ_WRITE 
GO

