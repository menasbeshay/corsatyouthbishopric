
USE [Corsatwebsite_db]
GO

/****** Object:  StoredProcedure [proc_CityLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CityLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CityLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CityLoadByPrimaryKey]
(
	@CityID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CityID],
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription],
		[CountryID]
	FROM [City]
	WHERE
		([CityID] = @CityID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CityLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CityLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CityLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CityLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CityLoadAll];
GO

CREATE PROCEDURE [proc_CityLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CityID],
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription],
		[CountryID]
	FROM [City]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CityLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CityLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CityUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CityUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CityUpdate];
GO

CREATE PROCEDURE [proc_CityUpdate]
(
	@CityID int,
	@EnName nvarchar(200) = NULL,
	@ArName nvarchar(200) = NULL,
	@EnDescription nvarchar(500) = NULL,
	@ArDescription nvarchar(500) = NULL,
	@CountryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [City]
	SET
		[EnName] = @EnName,
		[ArName] = @ArName,
		[EnDescription] = @EnDescription,
		[ArDescription] = @ArDescription,
		[CountryID] = @CountryID
	WHERE
		[CityID] = @CityID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CityUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CityUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CityInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CityInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CityInsert];
GO

CREATE PROCEDURE [proc_CityInsert]
(
	@CityID int = NULL output,
	@EnName nvarchar(200) = NULL,
	@ArName nvarchar(200) = NULL,
	@EnDescription nvarchar(500) = NULL,
	@ArDescription nvarchar(500) = NULL,
	@CountryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [City]
	(
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription],
		[CountryID]
	)
	VALUES
	(
		@EnName,
		@ArName,
		@EnDescription,
		@ArDescription,
		@CountryID
	)

	SET @Err = @@Error

	SELECT @CityID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CityInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CityInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CityDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CityDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CityDelete];
GO

CREATE PROCEDURE [proc_CityDelete]
(
	@CityID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [City]
	WHERE
		[CityID] = @CityID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CityDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CityDelete Error on Creation'
GO
