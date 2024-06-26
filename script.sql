/****** Object:  Database [WebAppDb]    Script Date: 22/05/2024 3:01:16 PM ******/
CREATE DATABASE [WebAppDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebAppDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebAppDb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebAppDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\WebAppDb_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebAppDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebAppDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebAppDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebAppDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebAppDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebAppDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebAppDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebAppDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebAppDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebAppDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebAppDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebAppDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebAppDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebAppDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebAppDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebAppDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebAppDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebAppDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebAppDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebAppDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebAppDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebAppDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebAppDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebAppDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebAppDb] SET RECOVERY FULL 
GO
ALTER DATABASE [WebAppDb] SET  MULTI_USER 
GO
ALTER DATABASE [WebAppDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebAppDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebAppDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebAppDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebAppDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebAppDb', N'ON'
GO
USE [WebAppDb]
GO
/****** Object:  User [LZAHID]    Script Date: 22/05/2024 3:01:16 PM ******/
CREATE USER [LZAHID] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreatedAt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Corporate_Customer_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Corporate_Customer_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[MeetingAgenda] [nvarchar](max) NOT NULL,
	[AgendaDate] [datetime2](7) NOT NULL,
	[AgendaTime] [nvarchar](max) NOT NULL,
	[Discussion] [nvarchar](max) NOT NULL,
	[MeetingPlace] [nvarchar](max) NOT NULL,
	[AttendsFromClientSide] [nvarchar](max) NOT NULL,
	[Decision] [nvarchar](max) NOT NULL,
	[AttendsFromHostSide] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Corporate_Customer_Tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Individual_Customer_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual_Customer_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[MeetingAgenda] [nvarchar](max) NOT NULL,
	[AgendaDate] [datetime2](7) NOT NULL,
	[AgendaTime] [nvarchar](max) NOT NULL,
	[Discussion] [nvarchar](max) NOT NULL,
	[MeetingPlace] [nvarchar](max) NOT NULL,
	[AttendsFromClientSide] [nvarchar](max) NOT NULL,
	[Decision] [nvarchar](max) NOT NULL,
	[AttendsFromHostSide] [nvarchar](max) NOT NULL,
	[CustomerType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Individual_Customer_Tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meeting_Minutes_Details_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Minutes_Details_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Meeting_Minutes_Master_Tbl] [int] NOT NULL,
	[InterestedProductServiceName] [nvarchar](max) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Meeting_Minutes_Details_Tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meeting_Minutes_Master_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meeting_Minutes_Master_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerType] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[MeetingDate] [datetime2](7) NOT NULL,
	[MeetingTime] [nvarchar](max) NOT NULL,
	[MeetingPlace] [nvarchar](max) NOT NULL,
	[AttendsFromClientSide] [nvarchar](max) NOT NULL,
	[AttentsFromHostSide] [nvarchar](max) NOT NULL,
	[MeetingAgenda] [nvarchar](max) NOT NULL,
	[MeetingDiscussion] [nvarchar](max) NOT NULL,
	[MeetingDecision] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Meeting_Minutes_Master_Tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products_Service_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Service_Tbl](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Quantity] [float] NOT NULL,
	[Unit] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Products_Service_Tbl] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519020427_InitialCreate', N'6.0.30')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519032243_test', N'6.0.30')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519051242_MeetingMinutes', N'6.0.30')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519051809_MeetingMinutes', N'6.0.30')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240519080430_MeetingMinutes', N'6.0.30')
GO
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] ON 

GO
INSERT [dbo].[Corporate_Customer_Tbl] ([Id], [Name], [MeetingAgenda], [AgendaDate], [AgendaTime], [Discussion], [MeetingPlace], [AttendsFromClientSide], [Decision], [AttendsFromHostSide]) VALUES (1, N'Md. Saddam Hossain', N'Saddam', CAST(N'2024-01-01 00:00:00.0000000' AS DateTime2), N'12:23Pm', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[Corporate_Customer_Tbl] ([Id], [Name], [MeetingAgenda], [AgendaDate], [AgendaTime], [Discussion], [MeetingPlace], [AttendsFromClientSide], [Decision], [AttendsFromHostSide]) VALUES (2, N'Md. Jkir Hossain', N'Saddam', CAST(N'2024-01-01 00:00:00.0000000' AS DateTime2), N'12:23Pm', N'', N'', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Corporate_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] ON 

GO
INSERT [dbo].[Individual_Customer_Tbl] ([Id], [Name], [MeetingAgenda], [AgendaDate], [AgendaTime], [Discussion], [MeetingPlace], [AttendsFromClientSide], [Decision], [AttendsFromHostSide], [CustomerType]) VALUES (1, N'Md Rahim', N'', CAST(N'2024-03-02 00:00:00.0000000' AS DateTime2), N'11:02p,', N'', N'', N'', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Individual_Customer_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Details_Tbl] ON 

GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (97, 12, N'Clean', 324, N'2')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (98, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (99, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (100, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (101, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (102, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (103, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (104, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (105, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (106, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (107, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (108, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (109, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (110, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (111, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (112, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (113, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (114, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (115, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (116, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (117, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (118, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (119, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (120, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (121, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (122, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (123, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (124, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (125, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (126, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (127, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (128, 12, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (129, 13, N'Clean', 0, N'')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (130, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (131, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (132, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (133, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (134, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (135, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (136, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (137, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (138, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (139, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (140, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (141, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (142, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (143, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (144, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (145, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (146, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (147, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (148, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (149, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (150, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (151, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (152, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (153, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (154, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (155, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (156, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (157, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (158, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (159, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (160, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (161, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (162, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (163, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (164, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (165, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (166, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (167, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (168, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (169, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (170, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (171, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (172, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (173, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (174, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (175, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (176, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (177, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (178, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (179, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (180, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (181, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (182, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (183, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (184, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (185, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (186, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (187, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (188, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (189, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (190, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (191, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (192, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (193, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (194, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (195, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (196, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (197, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (198, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (199, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (200, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (201, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (202, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (203, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (204, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (205, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (206, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (207, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (208, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (209, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (210, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (211, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (212, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (213, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (214, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (215, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (216, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (217, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (218, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (219, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (220, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (221, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (222, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (223, 13, N'as', 43, N'asdf')
GO
INSERT [dbo].[Meeting_Minutes_Details_Tbl] ([Id], [Meeting_Minutes_Master_Tbl], [InterestedProductServiceName], [Quantity], [Unit]) VALUES (224, 16, N'Clean', 0, N'')
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Details_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbl] ON 

GO
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([Id], [CustomerType], [CustomerName], [MeetingDate], [MeetingTime], [MeetingPlace], [AttendsFromClientSide], [AttentsFromHostSide], [MeetingAgenda], [MeetingDiscussion], [MeetingDecision]) VALUES (12, N'Corporate', N'select customer name', CAST(N'2024-05-19 00:00:00.0000000' AS DateTime2), N'select customer name', N'select customer name', N'select customer name', N'select customer name', N'select customer name', N'select customer name', N'select customer name')
GO
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([Id], [CustomerType], [CustomerName], [MeetingDate], [MeetingTime], [MeetingPlace], [AttendsFromClientSide], [AttentsFromHostSide], [MeetingAgenda], [MeetingDiscussion], [MeetingDecision]) VALUES (13, N'', N'select customer name', CAST(N'2024-05-19 00:00:00.0000000' AS DateTime2), N'', N'', N'', N'', N'', N'', N'')
GO
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([Id], [CustomerType], [CustomerName], [MeetingDate], [MeetingTime], [MeetingPlace], [AttendsFromClientSide], [AttentsFromHostSide], [MeetingAgenda], [MeetingDiscussion], [MeetingDecision]) VALUES (14, N'', N'Md. Saddam Hossain', CAST(N'2024-05-19 00:00:00.0000000' AS DateTime2), N'01:30 AM', N'', N'a', N's', N'', N'', N'')
GO
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([Id], [CustomerType], [CustomerName], [MeetingDate], [MeetingTime], [MeetingPlace], [AttendsFromClientSide], [AttentsFromHostSide], [MeetingAgenda], [MeetingDiscussion], [MeetingDecision]) VALUES (15, N'', N'Md. Saddam Hossain', CAST(N'2024-05-19 00:00:00.0000000' AS DateTime2), N'01:30 AM', N'', N'a', N's', N'', N'', N'')
GO
INSERT [dbo].[Meeting_Minutes_Master_Tbl] ([Id], [CustomerType], [CustomerName], [MeetingDate], [MeetingTime], [MeetingPlace], [AttendsFromClientSide], [AttentsFromHostSide], [MeetingAgenda], [MeetingDiscussion], [MeetingDecision]) VALUES (16, N'', N'Md. Saddam Hossain', CAST(N'2024-05-19 00:00:00.0000000' AS DateTime2), N'01:30 AM', N'', N'a', N's', N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Meeting_Minutes_Master_Tbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Products_Service_Tbl] ON 

GO
INSERT [dbo].[Products_Service_Tbl] ([Id], [Name], [Quantity], [Unit]) VALUES (1, N'Clean', 2, N'Pcs')
GO
INSERT [dbo].[Products_Service_Tbl] ([Id], [Name], [Quantity], [Unit]) VALUES (2, N'Rent', 3, N'Unit')
GO
SET IDENTITY_INSERT [dbo].[Products_Service_Tbl] OFF
GO
/****** Object:  Index [IX_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl]    Script Date: 22/05/2024 3:01:16 PM ******/
CREATE NONCLUSTERED INDEX [IX_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl] ON [dbo].[Meeting_Minutes_Details_Tbl]
(
	[Meeting_Minutes_Master_Tbl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Meeting_Minutes_Details_Tbl]  WITH CHECK ADD  CONSTRAINT [FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_Meeting_Minutes_Master_Tbl] FOREIGN KEY([Meeting_Minutes_Master_Tbl])
REFERENCES [dbo].[Meeting_Minutes_Master_Tbl] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Meeting_Minutes_Details_Tbl] CHECK CONSTRAINT [FK_Meeting_Minutes_Details_Tbl_Meeting_Minutes_Master_Tbl_Meeting_Minutes_Master_Tbl]
GO
/****** Object:  StoredProcedure [dbo].[Meeting_Minutes _Details_Save_SP]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[Meeting_Minutes _Details_Save_SP] (@InterestedProductServiceName varchar(150), @Quantity money, @Unit varchar(150))

AS
BEGIN
	DECLARE @Meeting_Minutes_Master_Tbl INT;
	select max(Id) AS Id INTO #z from Meeting_Minutes_Master_Tbl;

	select  @Meeting_Minutes_Master_Tbl = a.Id from #z a;
	select @Meeting_Minutes_Master_Tbl

	INSERT INTO Meeting_Minutes_Details_tbl(Meeting_Minutes_Master_Tbl, InterestedProductServiceName, Quantity, Unit)
	vALUES(@Meeting_Minutes_Master_Tbl, @InterestedProductServiceName, @Quantity, @Unit)
END
GO
/****** Object:  StoredProcedure [dbo].[Meeting_Minutes_Details_Save_SP]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Meeting_Minutes_Details_Save_SP] (@InterestedProductServiceName varchar(150), @Quantity money, @Unit varchar(150))

AS
BEGIN
	DECLARE @Meeting_Minutes_Master_Tbl INT;
	select max(Id) AS Id INTO #z from Meeting_Minutes_Master_Tbl;

	select  @Meeting_Minutes_Master_Tbl = a.Id from #z a;
	select @Meeting_Minutes_Master_Tbl

	INSERT INTO Meeting_Minutes_Details_tbl(Meeting_Minutes_Master_Tbl, InterestedProductServiceName, Quantity, Unit)
	vALUES(@Meeting_Minutes_Master_Tbl, @InterestedProductServiceName, @Quantity, @Unit)
END
GO
/****** Object:  StoredProcedure [dbo].[Meeting_Minutes_Master_Save_SP]    Script Date: 22/05/2024 3:01:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[Meeting_Minutes_Master_Save_SP] (@Id INT OUTPUT, @CustomerType varchar(150), @CustomerName varchar(150), @MeetingDate date, @MeetingTime varchar(150), @MeetingPlace varchar(250), @AttendsFromClientSide varchar(250), @AttentsFromHostSide varchar(250), @MeetingAgenda varchar(250), @MeetingDiscussion varchar(250), @MeetingDecision varchar(250))

AS
BEGIN

	INSERT INTO Meeting_Minutes_Master_Tbl(CustomerType, CustomerName, MeetingDate, MeetingTime, MeetingPlace, AttendsFromClientSide, 
	AttentsFromHostSide, MeetingAgenda, MeetingDiscussion, MeetingDecision)
	vALUES(@CustomerType, @CustomerName, @MeetingDate, @MeetingTime, @MeetingPlace, @AttendsFromClientSide, 
	@AttentsFromHostSide, @MeetingAgenda, @MeetingDiscussion, @MeetingDecision)

	set @Id = 15;
END

GO
USE [master]
GO
ALTER DATABASE [WebAppDb] SET  READ_WRITE 
GO
