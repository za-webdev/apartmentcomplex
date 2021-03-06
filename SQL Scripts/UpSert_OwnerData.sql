USE [LocalDBDemo]
GO
/****** Object:  StoredProcedure [dbo].[UpSert_OwnerData]    Script Date: 2/19/2020 7:07:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UpSert_OwnerData]
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