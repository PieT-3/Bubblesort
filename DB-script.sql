USE [master]
GO
/****** Object:  Database [Karteikartensystem]    Script Date: 12.02.2021 08:04:26 ******/
CREATE DATABASE [Karteikartensystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karteikartensystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Karteikartensystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karteikartensystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Karteikartensystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Karteikartensystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karteikartensystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karteikartensystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karteikartensystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karteikartensystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karteikartensystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karteikartensystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karteikartensystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karteikartensystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karteikartensystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karteikartensystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karteikartensystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karteikartensystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karteikartensystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karteikartensystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karteikartensystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karteikartensystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Karteikartensystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karteikartensystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karteikartensystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karteikartensystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karteikartensystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karteikartensystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karteikartensystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karteikartensystem] SET RECOVERY FULL 
GO
ALTER DATABASE [Karteikartensystem] SET  MULTI_USER 
GO
ALTER DATABASE [Karteikartensystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karteikartensystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karteikartensystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karteikartensystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karteikartensystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Karteikartensystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karteikartensystem', N'ON'
GO
ALTER DATABASE [Karteikartensystem] SET QUERY_STORE = OFF
GO
/****** Object:  Login [NT-AUTORITÄT\SYSTEM]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT-AUTORITÄT\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/****** Object:  Login [DESKTOP-T0HF2L1\Tabea]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [DESKTOP-T0HF2L1\Tabea] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[Deutsch]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'rz8/o5fUOE2B65S8crKj6ngTl/KfiYtH2/BpSwY7I+I=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 12.02.2021 08:04:26 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'uAPvZNWnNOQaLEutuHgH6nor5JHr70N9PJDYeQiz/2I=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[Karteikartensystem] TO [DESKTOP-T0HF2L1\Tabea]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-T0HF2L1\Tabea]
GO
USE [Karteikartensystem]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  Table [dbo].[tb_Eintrag]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Eintrag](
	[EintragID] [int] IDENTITY(1,1) NOT NULL,
	[A_SeiteID] [int] NOT NULL,
	[B_SeiteID] [int] NOT NULL,
	[Abfragedatum] [date] NOT NULL,
	[KastenID] [int] NOT NULL,
	[RND_Mischwert] [float] NOT NULL,
 CONSTRAINT [PK_tb_Eintrag] PRIMARY KEY CLUSTERED 
(
	[EintragID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Eintrag] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_AnzahlLernEinträge]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_AnzahlLernEinträge]
AS
SELECT        COUNT(Abfragedatum) AS Anzahl
FROM            dbo.tb_Eintrag
GO
ALTER AUTHORIZATION ON [dbo].[View_AnzahlLernEinträge] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Lernfeld]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Lernfeld](
	[LernfeldID] [int] IDENTITY(1,1) NOT NULL,
	[Lernfeldname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Lernfeld] PRIMARY KEY CLUSTERED 
(
	[LernfeldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Lernfeld] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Unterkategorie]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Unterkategorie](
	[UnterkategorieID] [int] IDENTITY(1,1) NOT NULL,
	[Unterkategoriename] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Unterkategorie] PRIMARY KEY CLUSTERED 
(
	[UnterkategorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Unterkategorie] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_ZuordnungLernfeldUnterkategorie]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ZuordnungLernfeldUnterkategorie](
	[ZuordnungLernfeldUnterkategorieID] [int] IDENTITY(1,1) NOT NULL,
	[LernfeldID] [int] NOT NULL,
	[UnterkategorieID] [int] NOT NULL,
 CONSTRAINT [PK_ZuordnungLernfeldUnterkategorie] PRIMARY KEY CLUSTERED 
(
	[ZuordnungLernfeldUnterkategorieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_ZuordnungLernfeldUnterkategorie] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_Unterkategorien]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Unterkategorien]
AS
SELECT        dbo.tb_Unterkategorie.Unterkategoriename AS Unterkategorie
FROM            dbo.tb_Unterkategorie INNER JOIN
                         dbo.tb_ZuordnungLernfeldUnterkategorie ON dbo.tb_Unterkategorie.UnterkategorieID = dbo.tb_ZuordnungLernfeldUnterkategorie.UnterkategorieID INNER JOIN
                         dbo.tb_Lernfeld ON dbo.tb_ZuordnungLernfeldUnterkategorie.LernfeldID = dbo.tb_Lernfeld.LernfeldID
WHERE        (dbo.tb_Lernfeld.Lernfeldname = N'Englisch')
GO
ALTER AUTHORIZATION ON [dbo].[View_Unterkategorien] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_ZuordnungUnterkategorieEintrag]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ZuordnungUnterkategorieEintrag](
	[ZuordnungUnterkategorieEintragID] [int] IDENTITY(1,1) NOT NULL,
	[UnterkategorieID] [int] NOT NULL,
	[EintragID] [int] NOT NULL,
 CONSTRAINT [PK_tb_ZuordnungUnterkategorieEintrag] PRIMARY KEY CLUSTERED 
(
	[ZuordnungUnterkategorieEintragID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_ZuordnungUnterkategorieEintrag] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_B_Seite]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_B_Seite](
	[B_SeiteID] [int] IDENTITY(1,1) NOT NULL,
	[B_SeiteInhalt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_B_Seite] PRIMARY KEY CLUSTERED 
(
	[B_SeiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_B_Seite] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_A_Seite]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_A_Seite](
	[A_SeiteID] [int] IDENTITY(1,1) NOT NULL,
	[A_SeiteInhalt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_A_Seite] PRIMARY KEY CLUSTERED 
(
	[A_SeiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_A_Seite] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_SeitenEinträge]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_SeitenEinträge]
AS
SELECT        dbo.tb_A_Seite.A_SeiteInhalt AS [A-Seite], dbo.tb_B_Seite.B_SeiteInhalt AS [B-Seite]
FROM            dbo.tb_A_Seite INNER JOIN
                         dbo.tb_Eintrag ON dbo.tb_A_Seite.A_SeiteID = dbo.tb_Eintrag.A_SeiteID INNER JOIN
                         dbo.tb_B_Seite ON dbo.tb_Eintrag.B_SeiteID = dbo.tb_B_Seite.B_SeiteID INNER JOIN
                         dbo.tb_ZuordnungUnterkategorieEintrag ON dbo.tb_Eintrag.EintragID = dbo.tb_ZuordnungUnterkategorieEintrag.EintragID INNER JOIN
                         dbo.tb_Unterkategorie ON dbo.tb_ZuordnungUnterkategorieEintrag.UnterkategorieID = dbo.tb_Unterkategorie.UnterkategorieID INNER JOIN
                         dbo.tb_ZuordnungLernfeldUnterkategorie ON dbo.tb_Unterkategorie.UnterkategorieID = dbo.tb_ZuordnungLernfeldUnterkategorie.UnterkategorieID INNER JOIN
                         dbo.tb_Lernfeld ON dbo.tb_ZuordnungLernfeldUnterkategorie.LernfeldID = dbo.tb_Lernfeld.LernfeldID
WHERE        (dbo.tb_Unterkategorie.Unterkategoriename = N'Essen') AND (dbo.tb_Lernfeld.Lernfeldname = N'Englisch') AND (dbo.tb_Eintrag.Abfragedatum <= GETDATE())
GO
ALTER AUTHORIZATION ON [dbo].[View_SeitenEinträge] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_Aktuell_Lernen]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Aktuell_Lernen]
AS
SELECT        TOP (100) PERCENT dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename, dbo.tb_A_Seite.A_SeiteInhalt, dbo.tb_B_Seite.B_SeiteInhalt, dbo.tb_Eintrag.Abfragedatum, dbo.tb_Eintrag.KastenID, 
                         dbo.tb_Eintrag.RND_Mischwert
FROM            dbo.tb_ZuordnungLernfeldUnterkategorie INNER JOIN
                         dbo.tb_Unterkategorie ON dbo.tb_ZuordnungLernfeldUnterkategorie.UnterkategorieID = dbo.tb_Unterkategorie.UnterkategorieID INNER JOIN
                         dbo.tb_Lernfeld ON dbo.tb_ZuordnungLernfeldUnterkategorie.LernfeldID = dbo.tb_Lernfeld.LernfeldID INNER JOIN
                         dbo.tb_ZuordnungUnterkategorieEintrag ON dbo.tb_Unterkategorie.UnterkategorieID = dbo.tb_ZuordnungUnterkategorieEintrag.UnterkategorieID INNER JOIN
                         dbo.tb_Eintrag INNER JOIN
                         dbo.tb_A_Seite ON dbo.tb_Eintrag.A_SeiteID = dbo.tb_A_Seite.A_SeiteID INNER JOIN
                         dbo.tb_B_Seite ON dbo.tb_Eintrag.B_SeiteID = dbo.tb_B_Seite.B_SeiteID ON dbo.tb_ZuordnungUnterkategorieEintrag.EintragID = dbo.tb_Eintrag.EintragID
ORDER BY dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename
GO
ALTER AUTHORIZATION ON [dbo].[View_Aktuell_Lernen] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[tb_Kasten]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Kasten](
	[KastenID] [int] IDENTITY(1,1) NOT NULL,
	[Kastennummer] [int] NOT NULL,
 CONSTRAINT [PK_tb_Kasten] PRIMARY KEY CLUSTERED 
(
	[KastenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[tb_Kasten] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_DB-Übersicht]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_DB-Übersicht]
AS
SELECT        TOP (100) PERCENT dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename, dbo.tb_A_Seite.A_SeiteInhalt, dbo.tb_B_Seite.B_SeiteInhalt, dbo.tb_Eintrag.Abfragedatum, dbo.tb_Kasten.Kastennummer, 
                         dbo.tb_Eintrag.RND_Mischwert
FROM            dbo.tb_ZuordnungLernfeldUnterkategorie INNER JOIN
                         dbo.tb_Lernfeld ON dbo.tb_ZuordnungLernfeldUnterkategorie.LernfeldID = dbo.tb_Lernfeld.LernfeldID INNER JOIN
                         dbo.tb_Unterkategorie ON dbo.tb_ZuordnungLernfeldUnterkategorie.UnterkategorieID = dbo.tb_Unterkategorie.UnterkategorieID INNER JOIN
                         dbo.tb_ZuordnungUnterkategorieEintrag ON dbo.tb_Unterkategorie.UnterkategorieID = dbo.tb_ZuordnungUnterkategorieEintrag.UnterkategorieID INNER JOIN
                         dbo.tb_A_Seite INNER JOIN
                         dbo.tb_Eintrag ON dbo.tb_A_Seite.A_SeiteID = dbo.tb_Eintrag.A_SeiteID INNER JOIN
                         dbo.tb_B_Seite ON dbo.tb_Eintrag.B_SeiteID = dbo.tb_B_Seite.B_SeiteID INNER JOIN
                         dbo.tb_Kasten ON dbo.tb_Eintrag.KastenID = dbo.tb_Kasten.KastenID ON dbo.tb_ZuordnungUnterkategorieEintrag.EintragID = dbo.tb_Eintrag.EintragID
ORDER BY dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename, dbo.tb_A_Seite.A_SeiteInhalt, dbo.tb_Eintrag.Abfragedatum
GO
ALTER AUTHORIZATION ON [dbo].[View_DB-Übersicht] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[View_Lernfeld_Unterkategorie]    Script Date: 12.02.2021 08:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Lernfeld_Unterkategorie]
AS
SELECT        TOP (100) PERCENT dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename
FROM            dbo.tb_Lernfeld INNER JOIN
                         dbo.tb_ZuordnungLernfeldUnterkategorie ON dbo.tb_Lernfeld.LernfeldID = dbo.tb_ZuordnungLernfeldUnterkategorie.LernfeldID INNER JOIN
                         dbo.tb_Unterkategorie ON dbo.tb_ZuordnungLernfeldUnterkategorie.UnterkategorieID = dbo.tb_Unterkategorie.UnterkategorieID
ORDER BY dbo.tb_Lernfeld.Lernfeldname, dbo.tb_Unterkategorie.Unterkategoriename
GO
ALTER AUTHORIZATION ON [dbo].[View_Lernfeld_Unterkategorie] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[tb_A_Seite] ON 

INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (1, N'Apfel')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (2, N'Schokolade')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (3, N'Reis')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (4, N'Fisch')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (5, N'Bohrung')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (6, N'fräsen')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (7, N'polieren')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (8, N'gelb')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (9, N'blau')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (10, N'rot')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (11, N'grün')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (12, N'orange')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (13, N'malen')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (14, N'schreiben')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (15, N'Klavier spielen')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (16, N'Hallo')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (17, N'Danke')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (18, N'Bitte')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (19, N'Was ist eine Entwicklungsumgebung?')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (20, N'Was ist eine Methode?')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (21, N'Unterschied .Net Core und .Net Framework?')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (22, N'Nenne die Hauptnährstoffe')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (23, N'Lagerung Zucchini')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (24, N'Lagerung Äpfel')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (25, N'Lagerung Paprika')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (26, N'Lagerung Lauchzwiebeln')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (27, N'Lagerung Orangen')
INSERT [dbo].[tb_A_Seite] ([A_SeiteID], [A_SeiteInhalt]) VALUES (28, N'Lagerung Karotten')
SET IDENTITY_INSERT [dbo].[tb_A_Seite] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_B_Seite] ON 

INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (1, N'apple')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (2, N'chocolate')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (3, N'rice')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (4, N'fish')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (5, N'hole')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (6, N'milling')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (7, N'polish')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (8, N'yellow')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (9, N'blue')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (10, N'red')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (11, N'green')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (12, N'orange')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (13, N'painting')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (14, N'writing')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (15, N'playing piano')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (16, N'hello')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (17, N'thanks')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (18, N'please')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (19, N'Eine Entwicklungsumgebung dient der Erstellung von Quellcode durch ein Hilfsprogramm.')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (20, N'Eine Methode beschreibt eine Fähigkeit.')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (21, N'.Net Core ist plattformunabhängig und .Net Framework ist nur für Windowsprogramme')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (22, N'Proteine, Kohlenhydrate, Fett und Wasser')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (23, N'8-10 °C')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (24, N'2-6 °C')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (25, N'kühl und dunkel (Kühlschrank)')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (26, N'Kühlschrank')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (27, N'0-9 °C (Im Kühlschrank verlieren sie Aroma)')
INSERT [dbo].[tb_B_Seite] ([B_SeiteID], [B_SeiteInhalt]) VALUES (28, N'Kühlschrank')
SET IDENTITY_INSERT [dbo].[tb_B_Seite] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Eintrag] ON 

INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (1, 1, 1, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (2, 2, 2, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (3, 3, 3, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (4, 4, 4, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (5, 5, 5, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (6, 6, 6, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (7, 7, 7, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (8, 8, 8, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (9, 9, 9, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (10, 10, 10, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (11, 11, 11, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (12, 12, 12, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (13, 13, 13, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (14, 14, 14, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (15, 15, 15, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (16, 16, 16, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (17, 17, 17, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (18, 18, 18, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (19, 19, 19, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (20, 20, 20, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (21, 21, 21, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (22, 22, 22, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (23, 23, 23, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (24, 24, 24, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (25, 25, 25, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (26, 26, 26, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (27, 27, 27, CAST(N'2021-02-01' AS Date), 1, 1)
INSERT [dbo].[tb_Eintrag] ([EintragID], [A_SeiteID], [B_SeiteID], [Abfragedatum], [KastenID], [RND_Mischwert]) VALUES (28, 28, 28, CAST(N'2021-02-01' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[tb_Eintrag] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Kasten] ON 

INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (1, 1)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (2, 3)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (3, 7)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (4, 25)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (5, 50)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (6, 80)
INSERT [dbo].[tb_Kasten] ([KastenID], [Kastennummer]) VALUES (7, 120)
SET IDENTITY_INSERT [dbo].[tb_Kasten] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Lernfeld] ON 

INSERT [dbo].[tb_Lernfeld] ([LernfeldID], [Lernfeldname]) VALUES (1, N'Englisch')
INSERT [dbo].[tb_Lernfeld] ([LernfeldID], [Lernfeldname]) VALUES (2, N'IT')
INSERT [dbo].[tb_Lernfeld] ([LernfeldID], [Lernfeldname]) VALUES (3, N'Ernährung')
INSERT [dbo].[tb_Lernfeld] ([LernfeldID], [Lernfeldname]) VALUES (4, N'Sport')
SET IDENTITY_INSERT [dbo].[tb_Lernfeld] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_Unterkategorie] ON 

INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (1, N'Essen')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (2, N'Technik')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (3, N'Farben')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (4, N'Hobbys')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (5, N'Allgemeines')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (6, N'.NET')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (7, N'Webentwicklung')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (8, N'Nährstoffe')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (9, N'Lagerung')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (10, N'Muskeln')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (11, N'Übungen')
INSERT [dbo].[tb_Unterkategorie] ([UnterkategorieID], [Unterkategoriename]) VALUES (12, N'Allgemeines')
SET IDENTITY_INSERT [dbo].[tb_Unterkategorie] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ON 

INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (2, 1, 1)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (3, 1, 2)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (4, 1, 3)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (5, 1, 4)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (6, 1, 5)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (7, 2, 12)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (8, 2, 6)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (9, 2, 7)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (10, 3, 8)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (11, 3, 9)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (12, 4, 10)
INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] ([ZuordnungLernfeldUnterkategorieID], [LernfeldID], [UnterkategorieID]) VALUES (13, 4, 11)
SET IDENTITY_INSERT [dbo].[tb_ZuordnungLernfeldUnterkategorie] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ON 

INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (1, 1, 1)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (2, 1, 2)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (3, 1, 3)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (4, 1, 4)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (5, 2, 5)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (6, 2, 6)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (7, 2, 7)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (8, 3, 8)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (9, 3, 9)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (10, 3, 10)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (11, 3, 11)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (12, 3, 12)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (13, 4, 13)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (14, 4, 14)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (15, 4, 15)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (16, 5, 16)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (17, 5, 17)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (18, 5, 18)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (19, 12, 19)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (20, 12, 20)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (21, 6, 21)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (22, 8, 22)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (23, 9, 23)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (24, 9, 24)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (25, 9, 25)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (26, 9, 26)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (27, 9, 27)
INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] ([ZuordnungUnterkategorieEintragID], [UnterkategorieID], [EintragID]) VALUES (28, 9, 28)
SET IDENTITY_INSERT [dbo].[tb_ZuordnungUnterkategorieEintrag] OFF
GO
ALTER TABLE [dbo].[tb_Eintrag] ADD  CONSTRAINT [DF_tb_Eintrag_Abfragedatum]  DEFAULT (getdate()) FOR [Abfragedatum]
GO
ALTER TABLE [dbo].[tb_Eintrag] ADD  CONSTRAINT [DF_tb_Eintrag_KastenID]  DEFAULT ((1)) FOR [KastenID]
GO
ALTER TABLE [dbo].[tb_Eintrag] ADD  CONSTRAINT [DF_Table_1_RND-Mischwert]  DEFAULT ((1)) FOR [RND_Mischwert]
GO
ALTER TABLE [dbo].[tb_Eintrag]  WITH CHECK ADD  CONSTRAINT [FK_tb_Eintrag_tb_A_Seite] FOREIGN KEY([A_SeiteID])
REFERENCES [dbo].[tb_A_Seite] ([A_SeiteID])
GO
ALTER TABLE [dbo].[tb_Eintrag] CHECK CONSTRAINT [FK_tb_Eintrag_tb_A_Seite]
GO
ALTER TABLE [dbo].[tb_Eintrag]  WITH CHECK ADD  CONSTRAINT [FK_tb_Eintrag_tb_B_Seite] FOREIGN KEY([B_SeiteID])
REFERENCES [dbo].[tb_B_Seite] ([B_SeiteID])
GO
ALTER TABLE [dbo].[tb_Eintrag] CHECK CONSTRAINT [FK_tb_Eintrag_tb_B_Seite]
GO
ALTER TABLE [dbo].[tb_Eintrag]  WITH CHECK ADD  CONSTRAINT [FK_tb_Eintrag_tb_Kasten] FOREIGN KEY([KastenID])
REFERENCES [dbo].[tb_Kasten] ([KastenID])
GO
ALTER TABLE [dbo].[tb_Eintrag] CHECK CONSTRAINT [FK_tb_Eintrag_tb_Kasten]
GO
ALTER TABLE [dbo].[tb_ZuordnungLernfeldUnterkategorie]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZuordnungLernfeldUnterkategorie_tb_Lernfeld] FOREIGN KEY([LernfeldID])
REFERENCES [dbo].[tb_Lernfeld] ([LernfeldID])
GO
ALTER TABLE [dbo].[tb_ZuordnungLernfeldUnterkategorie] CHECK CONSTRAINT [FK_tb_ZuordnungLernfeldUnterkategorie_tb_Lernfeld]
GO
ALTER TABLE [dbo].[tb_ZuordnungLernfeldUnterkategorie]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZuordnungLernfeldUnterkategorie_tb_Unterkategorie] FOREIGN KEY([UnterkategorieID])
REFERENCES [dbo].[tb_Unterkategorie] ([UnterkategorieID])
GO
ALTER TABLE [dbo].[tb_ZuordnungLernfeldUnterkategorie] CHECK CONSTRAINT [FK_tb_ZuordnungLernfeldUnterkategorie_tb_Unterkategorie]
GO
ALTER TABLE [dbo].[tb_ZuordnungUnterkategorieEintrag]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZuordnungUnterkategorieEintrag_tb_Eintrag] FOREIGN KEY([EintragID])
REFERENCES [dbo].[tb_Eintrag] ([EintragID])
GO
ALTER TABLE [dbo].[tb_ZuordnungUnterkategorieEintrag] CHECK CONSTRAINT [FK_tb_ZuordnungUnterkategorieEintrag_tb_Eintrag]
GO
ALTER TABLE [dbo].[tb_ZuordnungUnterkategorieEintrag]  WITH CHECK ADD  CONSTRAINT [FK_tb_ZuordnungUnterkategorieEintrag_tb_Unterkategorie] FOREIGN KEY([UnterkategorieID])
REFERENCES [dbo].[tb_Unterkategorie] ([UnterkategorieID])
GO
ALTER TABLE [dbo].[tb_ZuordnungUnterkategorieEintrag] CHECK CONSTRAINT [FK_tb_ZuordnungUnterkategorieEintrag_tb_Unterkategorie]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_ZuordnungLernfeldUnterkategorie"
            Begin Extent = 
               Top = 0
               Left = 486
               Bottom = 113
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Unterkategorie"
            Begin Extent = 
               Top = 222
               Left = 920
               Bottom = 318
               Right = 1117
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lernfeld"
            Begin Extent = 
               Top = 104
               Left = 942
               Bottom = 200
               Right = 1109
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungUnterkategorieEintrag"
            Begin Extent = 
               Top = 148
               Left = 495
               Bottom = 261
               Right = 770
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Eintrag"
            Begin Extent = 
               Top = 124
               Left = 306
               Bottom = 254
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tb_A_Seite"
            Begin Extent = 
               Top = 102
               Left = 65
               Bottom = 198
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_B_Seite"
            Begin Extent = 
               Top = 223
               Left = 50
               Bottom = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Aktuell_Lernen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'319
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2310
         Alias = 900
         Table = 2085
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Aktuell_Lernen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Aktuell_Lernen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Eintrag"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AnzahlLernEinträge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_AnzahlLernEinträge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_ZuordnungLernfeldUnterkategorie"
            Begin Extent = 
               Top = 18
               Left = 748
               Bottom = 131
               Right = 1029
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lernfeld"
            Begin Extent = 
               Top = 9
               Left = 524
               Bottom = 105
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Unterkategorie"
            Begin Extent = 
               Top = 186
               Left = 846
               Bottom = 282
               Right = 1043
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungUnterkategorieEintrag"
            Begin Extent = 
               Top = 212
               Left = 464
               Bottom = 325
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_A_Seite"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Eintrag"
            Begin Extent = 
               Top = 129
               Left = 265
               Bottom = 259
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tb_B_Seite"
            Begin Extent = 
               Top = 114
               Left = 23
               Bottom = 210' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_DB-Übersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Kasten"
            Begin Extent = 
               Top = 228
               Left = 13
               Bottom = 324
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_DB-Übersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_DB-Übersicht'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Lernfeld"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Unterkategorie"
            Begin Extent = 
               Top = 6
               Left = 243
               Bottom = 102
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungLernfeldUnterkategorie"
            Begin Extent = 
               Top = 6
               Left = 478
               Bottom = 119
               Right = 759
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Lernfeld_Unterkategorie'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Lernfeld_Unterkategorie'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_A_Seite"
            Begin Extent = 
               Top = 84
               Left = 18
               Bottom = 180
               Right = 185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Eintrag"
            Begin Extent = 
               Top = 177
               Left = 372
               Bottom = 307
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "tb_B_Seite"
            Begin Extent = 
               Top = 210
               Left = 19
               Bottom = 306
               Right = 186
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungUnterkategorieEintrag"
            Begin Extent = 
               Top = 3
               Left = 213
               Bottom = 116
               Right = 488
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Unterkategorie"
            Begin Extent = 
               Top = 0
               Left = 560
               Bottom = 96
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungLernfeldUnterkategorie"
            Begin Extent = 
               Top = 211
               Left = 673
               Bottom = 324
               Right = 954
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lernfeld"
            Begin Extent = 
               Top = 35
               Left = 867
               Bottom = 131
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SeitenEinträge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'             Right = 1034
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SeitenEinträge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SeitenEinträge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb_Unterkategorie"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 102
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_ZuordnungLernfeldUnterkategorie"
            Begin Extent = 
               Top = 6
               Left = 273
               Bottom = 119
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tb_Lernfeld"
            Begin Extent = 
               Top = 6
               Left = 592
               Bottom = 102
               Right = 759
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1440
         Table = 1800
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 3375
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Unterkategorien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Unterkategorien'
GO
USE [master]
GO
ALTER DATABASE [Karteikartensystem] SET  READ_WRITE 
GO
