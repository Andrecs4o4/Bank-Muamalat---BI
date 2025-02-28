USE [master]
GO
/****** Object:  Database [Rakamin]    Script Date: 03/02/2025 16:55:30 ******/
CREATE DATABASE [Rakamin]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Rakamin', FILENAME = N'D:\Sql server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Rakamin.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Rakamin_log', FILENAME = N'D:\Sql server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Rakamin_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Rakamin] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Rakamin].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Rakamin] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Rakamin] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Rakamin] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Rakamin] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Rakamin] SET ARITHABORT OFF 
GO
ALTER DATABASE [Rakamin] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Rakamin] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Rakamin] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Rakamin] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Rakamin] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Rakamin] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Rakamin] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Rakamin] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Rakamin] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Rakamin] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Rakamin] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Rakamin] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Rakamin] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Rakamin] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Rakamin] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Rakamin] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Rakamin] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Rakamin] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Rakamin] SET  MULTI_USER 
GO
ALTER DATABASE [Rakamin] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Rakamin] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Rakamin] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Rakamin] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Rakamin] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Rakamin] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Rakamin] SET QUERY_STORE = ON
GO
ALTER DATABASE [Rakamin] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Rakamin]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03/02/2025 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [float] NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[CustomerEmail] [nvarchar](255) NULL,
	[CustomerPhone] [nvarchar](255) NULL,
	[CustomerAddress] [nvarchar](255) NULL,
	[CustomerCity] [nvarchar](255) NULL,
	[CustomerState] [nvarchar](255) NULL,
	[CustomerZip] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetailPenjualan]    Script Date: 03/02/2025 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailPenjualan](
	[Date] [date] NULL,
	[CustomerID] [int] NULL,
	[FirstName] [varchar](255) NULL,
	[LastName] [varchar](255) NULL,
	[CustomerEmail] [varchar](255) NULL,
	[CustomerState] [varchar](255) NULL,
	[OrderID] [int] NULL,
	[ProdNumber] [varchar](255) NULL,
	[ProdName] [varchar](255) NULL,
	[CategoryAbbreviation] [varchar](255) NULL,
	[CategoryName] [varchar](255) NULL,
	[Price] [decimal](10, 2) NULL,
	[Quantity] [int] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[Profit] [decimal](10, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 03/02/2025 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [float] NULL,
	[Date] [datetime] NULL,
	[CustomerID] [float] NULL,
	[ProdNumber] [nvarchar](255) NULL,
	[Quantity] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 03/02/2025 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[CategoryID] [float] NULL,
	[CategoryName] [nvarchar](255) NULL,
	[CategoryAbbreviation] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/02/2025 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProdNumber] [nvarchar](255) NULL,
	[ProdName] [nvarchar](255) NULL,
	[Category] [float] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Rakamin] SET  READ_WRITE 
GO
