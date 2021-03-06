USE [master]
GO
/****** Object:  Database [LocalDBDemo]    Script Date: 2/19/2020 7:12:56 PM ******/
CREATE DATABASE [LocalDBDemo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LocalDBDemo', FILENAME = N'C:\Users\jia\LocalDBDemo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LocalDBDemo_log', FILENAME = N'C:\Users\jia\LocalDBDemo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LocalDBDemo] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LocalDBDemo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LocalDBDemo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LocalDBDemo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LocalDBDemo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LocalDBDemo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LocalDBDemo] SET ARITHABORT OFF 
GO
ALTER DATABASE [LocalDBDemo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LocalDBDemo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LocalDBDemo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LocalDBDemo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LocalDBDemo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LocalDBDemo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LocalDBDemo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LocalDBDemo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LocalDBDemo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LocalDBDemo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LocalDBDemo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LocalDBDemo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LocalDBDemo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LocalDBDemo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LocalDBDemo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LocalDBDemo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LocalDBDemo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LocalDBDemo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LocalDBDemo] SET  MULTI_USER 
GO
ALTER DATABASE [LocalDBDemo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LocalDBDemo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LocalDBDemo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LocalDBDemo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LocalDBDemo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LocalDBDemo] SET QUERY_STORE = OFF
GO
USE [LocalDBDemo]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [LocalDBDemo]
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[OwnerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[UnitNumber] [nvarchar](50) NULL,
	[ApartmentNumber] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[Color] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[Make] [nvarchar](50) NULL,
	[RegistrationNumber] [nvarchar](50) NULL,
	[RegistrationDate] [datetime] NULL,
	[EditDate] [datetime] NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (1, N'Shawnn', N'Lee', N'000000', N'Lee@gmail.com', N'6', N'a3')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (2, N'Laila', N'Ben', N'0011211111', N'spen@gmail.com', N'9', N'021')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (3, N'Susan', N'Baker', N'000000', N'sue@gmail.com', N'6', N'b5')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (4, N'Jhon', N'powers', N'5716548879', N'Powers@outlook.com', N'8', N'546')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (5, N'Jhon', N'Ibrahim', N'2323232', N'john@gail.com', N'8', N'879')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (6, N'maria ', N'lee', N'45454 ', N'', N'', N'')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (7, N'maria ', N'lee', N'45454 ', N'', N'', N'')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (8, N'maria ', N'lee', N'45454 ', N'', N'', N'')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (9, N'maria ', N'lee', N'45454 ', N'', N'', N'')
INSERT [dbo].[Owner] ([OwnerId], [FirstName], [LastName], [PhoneNumber], [Email], [UnitNumber], [ApartmentNumber]) VALUES (10, N'maria ', N'lee', N'45454 ', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Owner] OFF
SET IDENTITY_INSERT [dbo].[Vehicle] ON 

INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1, N'red', N'2006', N'Honda', N'125487965', CAST(N'2020-02-18T22:30:53.170' AS DateTime), CAST(N'2020-02-18T22:31:24.550' AS DateTime), 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (2, N'silver', N'Corola', N'2000', N'023164', CAST(N'2020-02-18T22:44:08.073' AS DateTime), CAST(N'2020-02-19T17:35:34.630' AS DateTime), 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1002, N'Gold', N'siaon', N'2003', N'1234456', CAST(N'2020-02-19T17:45:43.233' AS DateTime), NULL, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1003, N'', N'', N'', N'', CAST(N'2020-02-19T18:00:36.433' AS DateTime), NULL, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1004, N'', N'', N'', N'', CAST(N'2020-02-19T18:01:26.060' AS DateTime), NULL, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1005, N'', N'', N'', N'', CAST(N'2020-02-19T18:01:31.630' AS DateTime), NULL, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1006, N'', N'Corola', N'', N'', CAST(N'2020-02-19T18:36:24.327' AS DateTime), NULL, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Color], [Model], [Make], [RegistrationNumber], [RegistrationDate], [EditDate], [OwnerId]) VALUES (1007, N'Gold', N'Civic', N'2003', N'1234669', CAST(N'2020-02-19T18:57:40.217' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owner] ([OwnerId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Owner]
GO
/****** Object:  StoredProcedure [dbo].[GetOwnerVehicleInfoByRegistrationNumber]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetOwnerVehicleInfoByRegistrationNumber]
@RegistrationNumber nvarchar(50)
AS
SET NOCOUNT ON
Select V.VehicleId,V.Make,V.Color,V.Model,V.RegistrationNumber,V.RegistrationDate,O.FirstName,O.LastName,O.ApartmentNumber,O.Email,O.PhoneNumber,O.UnitNumber,O.OwnerId 
from dbo.Vehicle V inner join dbo.Owner O on O.OwnerId = V.OwnerId where V.RegistrationNumber = @RegistrationNumber
GO
/****** Object:  StoredProcedure [dbo].[UpSert_OwnerData]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpSert_OwnerData]
    @OwnerID     int
  , @FirstName    nvarchar(50)
  , @LastName    nvarchar(50)
  , @PhoneNumber    nvarchar(50)
  , @Email    nvarchar(50)
  , @UnitNumber    nvarchar(50)
  , @ApartmentNumber   nvarchar(50)

AS
SET NOCOUNT ON;
MERGE INTO Owner AS O
USING
  (SELECT @OwnerID) AS src (id)
  ON O.OwnerId = src.id
WHEN MATCHED THEN
  UPDATE        
    SET
        FirstName = @FirstName
      , LastName = @LastName
	  ,	PhoneNumber = @PhoneNumber
	  , Email = @Email
	  , UnitNumber = @UnitNumber
	  , ApartmentNumber = @Apartmentnumber
WHEN NOT MATCHED THEN
  INSERT (
      FirstName
    , LastName
    , PhoneNumber
	, Email
	, UnitNumber
	, ApartmentNumber
  ) VALUES (
      @FirstName
    , @LastName
    , @PhoneNumber
	, @Email
	, @UnitNumber
	, @Apartmentnumber
  );
SET NOCOUNT OFF;
GO
/****** Object:  StoredProcedure [dbo].[UpSert_VehicleData]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpSert_VehicleData]
    @VehicleID				int
  , @Color					nvarchar(50)
  , @Model					nvarchar(50)
  , @Make					nvarchar(50)
  , @RegistrationNumber		nvarchar(50)
  , @OwnerId				int

AS
SET NOCOUNT ON;
MERGE INTO Vehicle AS V
USING
  (SELECT @VehicleID) AS src (id)
  ON V.VehicleId = src.id
WHEN MATCHED THEN
  UPDATE        
    SET
		Color = @Color
	  ,	Model = @Model
	  , Make = @Make
	  , RegistrationNumber = @RegistrationNumber
	  , Editdate = GetDate()

WHEN NOT MATCHED THEN
  INSERT (
      Color
    , Model
    , Make
	, RegistrationNumber
	, RegistrationDate
	,OwnerId
  ) VALUES (
      @Color
    , @Model
    , @Make
	, @RegistrationNumber
	, GetDate()
	, @OwnerId
  );
SET NOCOUNT OFF;
GO
/****** Object:  StoredProcedure [dbo].[ValidateOwnerInfo]    Script Date: 2/19/2020 7:12:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[ValidateOwnerInfo]
@Email nvarchar(50),
@ApartmentNumber nvarchar(50)

AS
SET NOCOUNT ON
begin
Select O.OwnerId from dbo.Owner O where O.Email = @Email and O.ApartmentNumber = @Apartmentnumber
END

GO
USE [master]
GO
ALTER DATABASE [LocalDBDemo] SET  READ_WRITE 
GO
