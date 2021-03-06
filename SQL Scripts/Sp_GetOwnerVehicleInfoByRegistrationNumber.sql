USE [LocalDBDemo]
GO
/****** Object:  StoredProcedure [dbo].[GetOwnerVehicleInfoByRegistrationNumber]    Script Date: 2/19/2020 5:53:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[GetOwnerVehicleInfoByRegistrationNumber]
@RegistrationNumber nvarchar(50)
AS
SET NOCOUNT ON
Select V.VehicleId,V.Make,V.Color,V.Model,V.RegistrationNumber,V.RegistrationDate,O.FirstName,O.LastName,O.ApartmentNumber,O.Email,O.PhoneNumber,O.UnitNumber,O.OwnerId 
from dbo.Vehicle V inner join dbo.Owner O on O.OwnerId = V.OwnerId where V.RegistrationNumber = @RegistrationNumber
