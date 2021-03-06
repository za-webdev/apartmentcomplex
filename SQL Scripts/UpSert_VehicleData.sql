USE [LocalDBDemo]
GO
/****** Object:  StoredProcedure [dbo].[UpSert_VehicleData]    Script Date: 2/19/2020 7:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UpSert_VehicleData]
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