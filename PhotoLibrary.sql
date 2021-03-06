USE [master]
GO
/****** Object:  Database [PhotoLibrary]    Script Date: 28-Jul-17 1:20:50 AM ******/
CREATE DATABASE [PhotoLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PhotoLibrary', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PhotoLibrary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PhotoLibrary_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\PhotoLibrary_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PhotoLibrary] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PhotoLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PhotoLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PhotoLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PhotoLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PhotoLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PhotoLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [PhotoLibrary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PhotoLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PhotoLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PhotoLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PhotoLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PhotoLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PhotoLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PhotoLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PhotoLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PhotoLibrary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PhotoLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PhotoLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PhotoLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PhotoLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PhotoLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PhotoLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PhotoLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PhotoLibrary] SET RECOVERY FULL 
GO
ALTER DATABASE [PhotoLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [PhotoLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PhotoLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PhotoLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PhotoLibrary] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PhotoLibrary] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'PhotoLibrary', N'ON'
GO
ALTER DATABASE [PhotoLibrary] SET QUERY_STORE = OFF
GO
USE [PhotoLibrary]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PhotoLibrary]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CityName] [nvarchar](50) NULL,
	[PhotographerId] [int] NOT NULL,
	[StateId] [int] NULL,
	[ZIP] [int] NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Address__3214EC0734049479] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Community]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Community](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Communit__3214EC079197CEDF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [int] NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Country__3214EC07C4FD6278] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Gender]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Gender__3214EC0783535123] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LibraryUser]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibraryUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[RoleId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__LibraryU__3214EC07A12B0A61] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permission]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Permissi__3214EC07BC41BA33] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PersonalPhoto]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonalPhoto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PhotographerId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Personal__3214EC07E314FBC7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phone]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phone](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[PhotographerId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Phone__3213E83F9E921916] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photo]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[PhotographerId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Photo__3214EC077247770C] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Photographer]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photographer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NULL,
	[WebSite] [nvarchar](100) NULL,
	[DefaultPersonalPhoto] [int] NULL,
	[DateOfBirth] [date] NULL,
	[GenderId] [int] NULL,
	[UserId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Photogra__3214EC07CAC94AD1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotographersCommunity]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotographersCommunity](
	[PhotographerId] [int] NOT NULL,
	[CommunityId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotographerId] ASC,
	[CommunityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhotoTheme]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotoTheme](
	[PhotoId] [int] NOT NULL,
	[ThemeId] [int] NOT NULL,
	[CreatedDate] [date] NULL,
	[LastChanged] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC,
	[ThemeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RolePermission]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermission](
	[PermissionId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__RolePerm__570957CE4ADA93F1] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryId] [int] NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__State__3214EC07A6F905CC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Theme]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Theme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ThemeImage] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__Theme__3214EC07EFAA4A08] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ThemeImage]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThemeImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK_ThemeImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 28-Jul-17 1:20:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[DateCreated] [date] NULL,
	[LastChanged] [date] NULL,
 CONSTRAINT [PK__UserRole__3214EC07C322BFCB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([Id], [Name], [Code], [DateCreated], [LastChanged]) VALUES (1, N'Egypt', 20, CAST(N'2017-07-28' AS Date), CAST(N'2017-07-28' AS Date))
INSERT [dbo].[Country] ([Id], [Name], [Code], [DateCreated], [LastChanged]) VALUES (2, N'USA', 1, CAST(N'2017-07-28' AS Date), CAST(N'2017-07-28' AS Date))
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([Id], [Name], [DateCreated], [LastChanged]) VALUES (1, N'Male', CAST(N'2017-07-28' AS Date), CAST(N'2017-07-28' AS Date))
INSERT [dbo].[Gender] ([Id], [Name], [DateCreated], [LastChanged]) VALUES (2, N'Female', CAST(N'2017-07-28' AS Date), CAST(N'2017-07-28' AS Date))
SET IDENTITY_INSERT [dbo].[Gender] OFF
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Community] ADD  CONSTRAINT [DF_Community_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Community] ADD  CONSTRAINT [DF_Community_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF_Gender_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Gender] ADD  CONSTRAINT [DF_Gender_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[LibraryUser] ADD  CONSTRAINT [DF_LibraryUser_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[LibraryUser] ADD  CONSTRAINT [DF_LibraryUser_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Permission] ADD  CONSTRAINT [DF_Permission_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Permission] ADD  CONSTRAINT [DF_Permission_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[PersonalPhoto] ADD  CONSTRAINT [DF_PersonalPhoto_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[PersonalPhoto] ADD  CONSTRAINT [DF_PersonalPhoto_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Phone] ADD  CONSTRAINT [DF_Phone_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Phone] ADD  CONSTRAINT [DF_Phone_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Photo] ADD  CONSTRAINT [DF_Photo_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Photo] ADD  CONSTRAINT [DF_Photo_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Photographer] ADD  CONSTRAINT [DF_Photographer_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Photographer] ADD  CONSTRAINT [DF_Photographer_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[PhotographersCommunity] ADD  CONSTRAINT [DF_PhotographersCommunity_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[PhotographersCommunity] ADD  CONSTRAINT [DF_PhotographersCommunity_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[PhotoTheme] ADD  CONSTRAINT [DF_PhotoTheme_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PhotoTheme] ADD  CONSTRAINT [DF_PhotoTheme_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[RolePermission] ADD  CONSTRAINT [DF_RolePermission_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[RolePermission] ADD  CONSTRAINT [DF_RolePermission_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[State] ADD  CONSTRAINT [DF_State_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Theme] ADD  CONSTRAINT [DF_Theme_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Theme] ADD  CONSTRAINT [DF_Theme_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[ThemeImage] ADD  CONSTRAINT [DF_ThemeImage_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[ThemeImage] ADD  CONSTRAINT [DF_ThemeImage_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_LastChanged]  DEFAULT (getdate()) FOR [LastChanged]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK__Address__Photogr__3F466844] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[Photographer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK__Address__Photogr__3F466844]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_State] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_State]
GO
ALTER TABLE [dbo].[LibraryUser]  WITH CHECK ADD  CONSTRAINT [FK__LibraryUs__RoleI__38996AB5] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LibraryUser] CHECK CONSTRAINT [FK__LibraryUs__RoleI__38996AB5]
GO
ALTER TABLE [dbo].[PersonalPhoto]  WITH CHECK ADD  CONSTRAINT [FK__PersonalP__Photo__47DBAE45] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[Photographer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PersonalPhoto] CHECK CONSTRAINT [FK__PersonalP__Photo__47DBAE45]
GO
ALTER TABLE [dbo].[Phone]  WITH CHECK ADD  CONSTRAINT [FK__Phone__Photograp__44FF419A] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[Photographer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Phone] CHECK CONSTRAINT [FK__Phone__Photograp__44FF419A]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK__Photo__Photograp__4E88ABD4] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[Photographer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK__Photo__Photograp__4E88ABD4]
GO
ALTER TABLE [dbo].[Photographer]  WITH CHECK ADD  CONSTRAINT [FK__Photograp__Gende__3B75D760] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photographer] CHECK CONSTRAINT [FK__Photograp__Gende__3B75D760]
GO
ALTER TABLE [dbo].[Photographer]  WITH CHECK ADD  CONSTRAINT [FK__Photograp__UserI__3C69FB99] FOREIGN KEY([UserId])
REFERENCES [dbo].[LibraryUser] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Photographer] CHECK CONSTRAINT [FK__Photograp__UserI__3C69FB99]
GO
ALTER TABLE [dbo].[PhotographersCommunity]  WITH CHECK ADD  CONSTRAINT [FK__Photograp__Photo__4AB81AF0] FOREIGN KEY([PhotographerId])
REFERENCES [dbo].[Photographer] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhotographersCommunity] CHECK CONSTRAINT [FK__Photograp__Photo__4AB81AF0]
GO
ALTER TABLE [dbo].[PhotographersCommunity]  WITH CHECK ADD  CONSTRAINT [FK_PhotographersCommunity_Community] FOREIGN KEY([CommunityId])
REFERENCES [dbo].[Community] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhotographersCommunity] CHECK CONSTRAINT [FK_PhotographersCommunity_Community]
GO
ALTER TABLE [dbo].[PhotoTheme]  WITH CHECK ADD  CONSTRAINT [FK__PhotoThem__Photo__5165187F] FOREIGN KEY([PhotoId])
REFERENCES [dbo].[Photo] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhotoTheme] CHECK CONSTRAINT [FK__PhotoThem__Photo__5165187F]
GO
ALTER TABLE [dbo].[PhotoTheme]  WITH CHECK ADD  CONSTRAINT [FK__PhotoThem__Theme__52593CB8] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Theme] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhotoTheme] CHECK CONSTRAINT [FK__PhotoThem__Theme__52593CB8]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK__RolePermi__Permi__34C8D9D1] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK__RolePermi__Permi__34C8D9D1]
GO
ALTER TABLE [dbo].[RolePermission]  WITH CHECK ADD  CONSTRAINT [FK__RolePermi__RoleI__35BCFE0A] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermission] CHECK CONSTRAINT [FK__RolePermi__RoleI__35BCFE0A]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK__State__CountryId__276EDEB3] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK__State__CountryId__276EDEB3]
GO
ALTER TABLE [dbo].[Theme]  WITH CHECK ADD  CONSTRAINT [FK_Theme_ThemeImage] FOREIGN KEY([ThemeImage])
REFERENCES [dbo].[ThemeImage] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Theme] CHECK CONSTRAINT [FK_Theme_ThemeImage]
GO
USE [master]
GO
ALTER DATABASE [PhotoLibrary] SET  READ_WRITE 
GO
