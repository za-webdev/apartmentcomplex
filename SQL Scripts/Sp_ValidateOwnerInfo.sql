USE [LocalDBDemo]
GO
/****** Object:  StoredProcedure [dbo].[ValidateOwnerInfo]    Script Date: 2/19/2020 7:09:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[ValidateOwnerInfo]
@Email nvarchar(50),
@ApartmentNumber nvarchar(50)

AS
SET NOCOUNT ON
begin
Select O.OwnerId from dbo.Owner O where O.Email = @Email and O.ApartmentNumber = @Apartmentnumber
END

