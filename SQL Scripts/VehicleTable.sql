USE [LocalDBDemo]
GO

/****** Object:  Table [dbo].[Vehicle]    Script Date: 2/19/2020 7:10:00 PM ******/
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

ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_Owner] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Owner] ([OwnerId])
GO

ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_Owner]
GO


