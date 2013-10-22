
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

/****** Object:  StoredProcedure [proc_CountryLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CountryLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CountryLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CountryLoadByPrimaryKey]
(
	@CountryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountryID],
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription]
	FROM [Country]
	WHERE
		([CountryID] = @CountryID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountryLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountryLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CountryLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CountryLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CountryLoadAll];
GO

CREATE PROCEDURE [proc_CountryLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CountryID],
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription]
	FROM [Country]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountryLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountryLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CountryUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CountryUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CountryUpdate];
GO

CREATE PROCEDURE [proc_CountryUpdate]
(
	@CountryID int,
	@EnName nvarchar(200) = NULL,
	@ArName nvarchar(200) = NULL,
	@EnDescription nvarchar(500) = NULL,
	@ArDescription nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Country]
	SET
		[EnName] = @EnName,
		[ArName] = @ArName,
		[EnDescription] = @EnDescription,
		[ArDescription] = @ArDescription
	WHERE
		[CountryID] = @CountryID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountryUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountryUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CountryInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CountryInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CountryInsert];
GO

CREATE PROCEDURE [proc_CountryInsert]
(
	@CountryID int = NULL output,
	@EnName nvarchar(200) = NULL,
	@ArName nvarchar(200) = NULL,
	@EnDescription nvarchar(500) = NULL,
	@ArDescription nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Country]
	(
		[EnName],
		[ArName],
		[EnDescription],
		[ArDescription]
	)
	VALUES
	(
		@EnName,
		@ArName,
		@EnDescription,
		@ArDescription
	)

	SET @Err = @@Error

	SELECT @CountryID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountryInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountryInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CountryDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CountryDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CountryDelete];
GO

CREATE PROCEDURE [proc_CountryDelete]
(
	@CountryID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Country]
	WHERE
		[CountryID] = @CountryID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CountryDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CountryDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CourseLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CourseLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CourseLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_CourseLoadByPrimaryKey]
(
	@CourseID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[CourseLevel],
		[Name]
	FROM [Course]
	WHERE
		([CourseID] = @CourseID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CourseLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_CourseLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CourseLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CourseLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CourseLoadAll];
GO

CREATE PROCEDURE [proc_CourseLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[CourseLevel],
		[Name]
	FROM [Course]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CourseLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_CourseLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CourseUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CourseUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CourseUpdate];
GO

CREATE PROCEDURE [proc_CourseUpdate]
(
	@CourseID int,
	@CourseLevel int = NULL,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Course]
	SET
		[CourseLevel] = @CourseLevel,
		[Name] = @Name
	WHERE
		[CourseID] = @CourseID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CourseUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_CourseUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_CourseInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CourseInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CourseInsert];
GO

CREATE PROCEDURE [proc_CourseInsert]
(
	@CourseID int = NULL output,
	@CourseLevel int = NULL,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Course]
	(
		[CourseLevel],
		[Name]
	)
	VALUES
	(
		@CourseLevel,
		@Name
	)

	SET @Err = @@Error

	SELECT @CourseID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CourseInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_CourseInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_CourseDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_CourseDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_CourseDelete];
GO

CREATE PROCEDURE [proc_CourseDelete]
(
	@CourseID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Course]
	WHERE
		[CourseID] = @CourseID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_CourseDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_CourseDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_DataLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_DataLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_DataLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_Course_DataLoadByPrimaryKey]
(
	@DataID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DataID],
		[DataTypeID],
		[CourseID],
		[DataName],
		[Data_Date],
		[Data_Path],
		[ThumbsPath]
	FROM [Course_Data]
	WHERE
		([DataID] = @DataID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_DataLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_DataLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_DataLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_DataLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_DataLoadAll];
GO

CREATE PROCEDURE [proc_Course_DataLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DataID],
		[DataTypeID],
		[CourseID],
		[DataName],
		[Data_Date],
		[Data_Path],
		[ThumbsPath]
	FROM [Course_Data]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_DataLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_DataLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_DataUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_DataUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_DataUpdate];
GO

CREATE PROCEDURE [proc_Course_DataUpdate]
(
	@DataID int,
	@DataTypeID int,
	@CourseID int,
	@DataName nvarchar(200) = NULL,
	@Data_Date datetime = NULL,
	@Data_Path nvarchar(200) = NULL,
	@ThumbsPath nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Course_Data]
	SET
		[DataTypeID] = @DataTypeID,
		[CourseID] = @CourseID,
		[DataName] = @DataName,
		[Data_Date] = @Data_Date,
		[Data_Path] = @Data_Path,
		[ThumbsPath] = @ThumbsPath
	WHERE
		[DataID] = @DataID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_DataUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_DataUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_Course_DataInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_DataInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_DataInsert];
GO

CREATE PROCEDURE [proc_Course_DataInsert]
(
	@DataID int = NULL output,
	@DataTypeID int,
	@CourseID int,
	@DataName nvarchar(200) = NULL,
	@Data_Date datetime = NULL,
	@Data_Path nvarchar(200) = NULL,
	@ThumbsPath nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Course_Data]
	(
		[DataTypeID],
		[CourseID],
		[DataName],
		[Data_Date],
		[Data_Path],
		[ThumbsPath]
	)
	VALUES
	(
		@DataTypeID,
		@CourseID,
		@DataName,
		@Data_Date,
		@Data_Path,
		@ThumbsPath
	)

	SET @Err = @@Error

	SELECT @DataID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_DataInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_DataInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_DataDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_DataDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_DataDelete];
GO

CREATE PROCEDURE [proc_Course_DataDelete]
(
	@DataID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Course_Data]
	WHERE
		[DataID] = @DataID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_DataDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_DataDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_Data_DataTypeLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_Data_DataTypeLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_Data_DataTypeLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_Course_Data_DataTypeLoadByPrimaryKey]
(
	@DataTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DataTypeID],
		[Name]
	FROM [Course_Data_DataType]
	WHERE
		([DataTypeID] = @DataTypeID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_Data_DataTypeLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_Data_DataTypeLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_Data_DataTypeLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_Data_DataTypeLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_Data_DataTypeLoadAll];
GO

CREATE PROCEDURE [proc_Course_Data_DataTypeLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DataTypeID],
		[Name]
	FROM [Course_Data_DataType]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_Data_DataTypeLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_Data_DataTypeLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_Data_DataTypeUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_Data_DataTypeUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_Data_DataTypeUpdate];
GO

CREATE PROCEDURE [proc_Course_Data_DataTypeUpdate]
(
	@DataTypeID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Course_Data_DataType]
	SET
		[Name] = @Name
	WHERE
		[DataTypeID] = @DataTypeID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_Data_DataTypeUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_Data_DataTypeUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_Course_Data_DataTypeInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_Data_DataTypeInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_Data_DataTypeInsert];
GO

CREATE PROCEDURE [proc_Course_Data_DataTypeInsert]
(
	@DataTypeID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Course_Data_DataType]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @DataTypeID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_Data_DataTypeInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_Data_DataTypeInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Course_Data_DataTypeDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Course_Data_DataTypeDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Course_Data_DataTypeDelete];
GO

CREATE PROCEDURE [proc_Course_Data_DataTypeDelete]
(
	@DataTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Course_Data_DataType]
	WHERE
		[DataTypeID] = @DataTypeID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Course_Data_DataTypeDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_Course_Data_DataTypeDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_NewsLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_NewsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_NewsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_NewsLoadByPrimaryKey]
(
	@NewsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[NewsID],
		[Title],
		[Brief],
		[Body],
		[MainPicturePath],
		[PublishedDate]
	FROM [News]
	WHERE
		([NewsID] = @NewsID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_NewsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_NewsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_NewsLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_NewsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_NewsLoadAll];
GO

CREATE PROCEDURE [proc_NewsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[NewsID],
		[Title],
		[Brief],
		[Body],
		[MainPicturePath],
		[PublishedDate]
	FROM [News]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_NewsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_NewsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_NewsUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_NewsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_NewsUpdate];
GO

CREATE PROCEDURE [proc_NewsUpdate]
(
	@NewsID int,
	@Title nvarchar(200) = NULL,
	@Brief nvarchar(500) = NULL,
	@Body nvarchar(MAX) = NULL,
	@MainPicturePath nvarchar(200) = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [News]
	SET
		[Title] = @Title,
		[Brief] = @Brief,
		[Body] = @Body,
		[MainPicturePath] = @MainPicturePath,
		[PublishedDate] = @PublishedDate
	WHERE
		[NewsID] = @NewsID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_NewsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_NewsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_NewsInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_NewsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_NewsInsert];
GO

CREATE PROCEDURE [proc_NewsInsert]
(
	@NewsID int = NULL output,
	@Title nvarchar(200) = NULL,
	@Brief nvarchar(500) = NULL,
	@Body nvarchar(MAX) = NULL,
	@MainPicturePath nvarchar(200) = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [News]
	(
		[Title],
		[Brief],
		[Body],
		[MainPicturePath],
		[PublishedDate]
	)
	VALUES
	(
		@Title,
		@Brief,
		@Body,
		@MainPicturePath,
		@PublishedDate
	)

	SET @Err = @@Error

	SELECT @NewsID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_NewsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_NewsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_NewsDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_NewsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_NewsDelete];
GO

CREATE PROCEDURE [proc_NewsDelete]
(
	@NewsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [News]
	WHERE
		[NewsID] = @NewsID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_NewsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_NewsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_News_TagsLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_News_TagsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_News_TagsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_News_TagsLoadByPrimaryKey]
(
	@ID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ID],
		[NewsID],
		[Tag]
	FROM [News_Tags]
	WHERE
		([ID] = @ID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_News_TagsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_News_TagsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_News_TagsLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_News_TagsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_News_TagsLoadAll];
GO

CREATE PROCEDURE [proc_News_TagsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ID],
		[NewsID],
		[Tag]
	FROM [News_Tags]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_News_TagsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_News_TagsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_News_TagsUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_News_TagsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_News_TagsUpdate];
GO

CREATE PROCEDURE [proc_News_TagsUpdate]
(
	@ID int,
	@NewsID int = NULL,
	@Tag nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [News_Tags]
	SET
		[NewsID] = @NewsID,
		[Tag] = @Tag
	WHERE
		[ID] = @ID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_News_TagsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_News_TagsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_News_TagsInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_News_TagsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_News_TagsInsert];
GO

CREATE PROCEDURE [proc_News_TagsInsert]
(
	@ID int = NULL output,
	@NewsID int = NULL,
	@Tag nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [News_Tags]
	(
		[NewsID],
		[Tag]
	)
	VALUES
	(
		@NewsID,
		@Tag
	)

	SET @Err = @@Error

	SELECT @ID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_News_TagsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_News_TagsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_News_TagsDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_News_TagsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_News_TagsDelete];
GO

CREATE PROCEDURE [proc_News_TagsDelete]
(
	@ID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [News_Tags]
	WHERE
		[ID] = @ID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_News_TagsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_News_TagsDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_PageLoadByPrimaryKey]
(
	@PageID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PageID],
		[Title],
		[Content],
		[Name],
		[InMenu],
		[ParentID]
	FROM [Page]
	WHERE
		([PageID] = @PageID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageLoadAll];
GO

CREATE PROCEDURE [proc_PageLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PageID],
		[Title],
		[Content],
		[Name],
		[InMenu],
		[ParentID]
	FROM [Page]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageUpdate];
GO

CREATE PROCEDURE [proc_PageUpdate]
(
	@PageID int,
	@Title nvarchar(200) = NULL,
	@Content nvarchar(MAX) = NULL,
	@Name nvarchar(200) = NULL,
	@InMenu bit = NULL,
	@ParentID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Page]
	SET
		[Title] = @Title,
		[Content] = @Content,
		[Name] = @Name,
		[InMenu] = @InMenu,
		[ParentID] = @ParentID
	WHERE
		[PageID] = @PageID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_PageInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageInsert];
GO

CREATE PROCEDURE [proc_PageInsert]
(
	@PageID int = NULL output,
	@Title nvarchar(200) = NULL,
	@Content nvarchar(MAX) = NULL,
	@Name nvarchar(200) = NULL,
	@InMenu bit = NULL,
	@ParentID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Page]
	(
		[Title],
		[Content],
		[Name],
		[InMenu],
		[ParentID]
	)
	VALUES
	(
		@Title,
		@Content,
		@Name,
		@InMenu,
		@ParentID
	)

	SET @Err = @@Error

	SELECT @PageID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_PageDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_PageDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_PageDelete];
GO

CREATE PROCEDURE [proc_PageDelete]
(
	@PageID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Page]
	WHERE
		[PageID] = @PageID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_PageDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_PageDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TimePlanLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TimePlanLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TimePlanLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_TimePlanLoadByPrimaryKey]
(
	@TimePlanID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimePlanID],
		[Title],
		[IsVisible],
		[PublishedDate]
	FROM [TimePlan]
	WHERE
		([TimePlanID] = @TimePlanID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TimePlanLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_TimePlanLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TimePlanLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TimePlanLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TimePlanLoadAll];
GO

CREATE PROCEDURE [proc_TimePlanLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimePlanID],
		[Title],
		[IsVisible],
		[PublishedDate]
	FROM [TimePlan]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TimePlanLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_TimePlanLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TimePlanUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TimePlanUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TimePlanUpdate];
GO

CREATE PROCEDURE [proc_TimePlanUpdate]
(
	@TimePlanID int,
	@Title nvarchar(800) = NULL,
	@IsVisible bit = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [TimePlan]
	SET
		[Title] = @Title,
		[IsVisible] = @IsVisible,
		[PublishedDate] = @PublishedDate
	WHERE
		[TimePlanID] = @TimePlanID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TimePlanUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_TimePlanUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_TimePlanInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TimePlanInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TimePlanInsert];
GO

CREATE PROCEDURE [proc_TimePlanInsert]
(
	@TimePlanID int = NULL output,
	@Title nvarchar(800) = NULL,
	@IsVisible bit = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [TimePlan]
	(
		[Title],
		[IsVisible],
		[PublishedDate]
	)
	VALUES
	(
		@Title,
		@IsVisible,
		@PublishedDate
	)

	SET @Err = @@Error

	SELECT @TimePlanID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TimePlanInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_TimePlanInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_TimePlanDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_TimePlanDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_TimePlanDelete];
GO

CREATE PROCEDURE [proc_TimePlanDelete]
(
	@TimePlanID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [TimePlan]
	WHERE
		[TimePlanID] = @TimePlanID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_TimePlanDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_TimePlanDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserCourseLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserCourseLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserCourseLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_UserCourseLoadByPrimaryKey]
(
	@CourseID int,
	@CourseDate datetime,
	@UserID uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[Grade],
		[CourseDate],
		[UserID]
	FROM [UserCourse]
	WHERE
		([CourseID] = @CourseID) AND
		([CourseDate] = @CourseDate) AND
		([UserID] = @UserID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserCourseLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserCourseLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserCourseLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserCourseLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserCourseLoadAll];
GO

CREATE PROCEDURE [proc_UserCourseLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[Grade],
		[CourseDate],
		[UserID]
	FROM [UserCourse]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserCourseLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserCourseLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserCourseUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserCourseUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserCourseUpdate];
GO

CREATE PROCEDURE [proc_UserCourseUpdate]
(
	@CourseID int,
	@Grade int = NULL,
	@CourseDate datetime,
	@UserID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [UserCourse]
	SET
		[Grade] = @Grade
	WHERE
		[CourseID] = @CourseID
	AND	[CourseDate] = @CourseDate
	AND	[UserID] = @UserID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserCourseUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserCourseUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_UserCourseInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserCourseInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserCourseInsert];
GO

CREATE PROCEDURE [proc_UserCourseInsert]
(
	@CourseID int,
	@Grade int = NULL,
	@CourseDate datetime,
	@UserID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserID IS NULL
		 SET @UserID = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [UserCourse]
	(
		[CourseID],
		[Grade],
		[CourseDate],
		[UserID]
	)
	VALUES
	(
		@CourseID,
		@Grade,
		@CourseDate,
		@UserID
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserCourseInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserCourseInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserCourseDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserCourseDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserCourseDelete];
GO

CREATE PROCEDURE [proc_UserCourseDelete]
(
	@CourseID int,
	@CourseDate datetime,
	@UserID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [UserCourse]
	WHERE
		[CourseID] = @CourseID AND
		[CourseDate] = @CourseDate AND
		[UserID] = @UserID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserCourseDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserCourseDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserDataLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserDataLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserDataLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_UserDataLoadByPrimaryKey]
(
	@UserID uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserID],
		[FirstName],
		[LastName],
		[Tele],
		[Mobile],
		[Church],
		[Father]
	FROM [UserData]
	WHERE
		([UserID] = @UserID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDataLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDataLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserDataLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserDataLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserDataLoadAll];
GO

CREATE PROCEDURE [proc_UserDataLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserID],
		[FirstName],
		[LastName],
		[Tele],
		[Mobile],
		[Church],
		[Father]
	FROM [UserData]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDataLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDataLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserDataUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserDataUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserDataUpdate];
GO

CREATE PROCEDURE [proc_UserDataUpdate]
(
	@UserID uniqueidentifier,
	@FirstName nvarchar(200) = NULL,
	@LastName nvarchar(200) = NULL,
	@Tele nvarchar(200) = NULL,
	@Mobile nvarchar(200) = NULL,
	@Church nvarchar(200) = NULL,
	@Father nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [UserData]
	SET
		[FirstName] = @FirstName,
		[LastName] = @LastName,
		[Tele] = @Tele,
		[Mobile] = @Mobile,
		[Church] = @Church,
		[Father] = @Father
	WHERE
		[UserID] = @UserID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDataUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDataUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_UserDataInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserDataInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserDataInsert];
GO

CREATE PROCEDURE [proc_UserDataInsert]
(
	@UserID uniqueidentifier,
	@FirstName nvarchar(200) = NULL,
	@LastName nvarchar(200) = NULL,
	@Tele nvarchar(200) = NULL,
	@Mobile nvarchar(200) = NULL,
	@Church nvarchar(200) = NULL,
	@Father nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserID IS NULL
		 SET @UserID = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [UserData]
	(
		[UserID],
		[FirstName],
		[LastName],
		[Tele],
		[Mobile],
		[Church],
		[Father]
	)
	VALUES
	(
		@UserID,
		@FirstName,
		@LastName,
		@Tele,
		@Mobile,
		@Church,
		@Father
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDataInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDataInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_UserDataDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_UserDataDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_UserDataDelete];
GO

CREATE PROCEDURE [proc_UserDataDelete]
(
	@UserID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [UserData]
	WHERE
		[UserID] = @UserID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_UserDataDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_UserDataDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_VideoLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_VideoLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_VideoLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_VideoLoadByPrimaryKey]
(
	@VideoID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[VideoID],
		[Title],
		[Brief],
		[URL],
		[MainPicturePath],
		[PublishedDate]
	FROM [Video]
	WHERE
		([VideoID] = @VideoID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_VideoLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_VideoLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_VideoLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_VideoLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_VideoLoadAll];
GO

CREATE PROCEDURE [proc_VideoLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[VideoID],
		[Title],
		[Brief],
		[URL],
		[MainPicturePath],
		[PublishedDate]
	FROM [Video]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_VideoLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_VideoLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_VideoUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_VideoUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_VideoUpdate];
GO

CREATE PROCEDURE [proc_VideoUpdate]
(
	@VideoID int,
	@Title nvarchar(200) = NULL,
	@Brief nvarchar(500) = NULL,
	@URL nvarchar(MAX) = NULL,
	@MainPicturePath nvarchar(200) = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Video]
	SET
		[Title] = @Title,
		[Brief] = @Brief,
		[URL] = @URL,
		[MainPicturePath] = @MainPicturePath,
		[PublishedDate] = @PublishedDate
	WHERE
		[VideoID] = @VideoID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_VideoUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_VideoUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_VideoInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_VideoInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_VideoInsert];
GO

CREATE PROCEDURE [proc_VideoInsert]
(
	@VideoID int = NULL output,
	@Title nvarchar(200) = NULL,
	@Brief nvarchar(500) = NULL,
	@URL nvarchar(MAX) = NULL,
	@MainPicturePath nvarchar(200) = NULL,
	@PublishedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Video]
	(
		[Title],
		[Brief],
		[URL],
		[MainPicturePath],
		[PublishedDate]
	)
	VALUES
	(
		@Title,
		@Brief,
		@URL,
		@MainPicturePath,
		@PublishedDate
	)

	SET @Err = @@Error

	SELECT @VideoID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_VideoInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_VideoInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_VideoDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_VideoDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_VideoDelete];
GO

CREATE PROCEDURE [proc_VideoDelete]
(
	@VideoID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Video]
	WHERE
		[VideoID] = @VideoID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_VideoDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_VideoDelete Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Video_TagsLoadByPrimaryKey]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Video_TagsLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Video_TagsLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_Video_TagsLoadByPrimaryKey]
(
	@ID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ID],
		[Video_TagsID],
		[Tag]
	FROM [Video_Tags]
	WHERE
		([ID] = @ID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Video_TagsLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_Video_TagsLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Video_TagsLoadAll]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Video_TagsLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Video_TagsLoadAll];
GO

CREATE PROCEDURE [proc_Video_TagsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ID],
		[Video_TagsID],
		[Tag]
	FROM [Video_Tags]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Video_TagsLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_Video_TagsLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Video_TagsUpdate]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Video_TagsUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Video_TagsUpdate];
GO

CREATE PROCEDURE [proc_Video_TagsUpdate]
(
	@ID int,
	@Video_TagsID int = NULL,
	@Tag nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Video_Tags]
	SET
		[Video_TagsID] = @Video_TagsID,
		[Tag] = @Tag
	WHERE
		[ID] = @ID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Video_TagsUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_Video_TagsUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_Video_TagsInsert]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Video_TagsInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Video_TagsInsert];
GO

CREATE PROCEDURE [proc_Video_TagsInsert]
(
	@ID int = NULL output,
	@Video_TagsID int = NULL,
	@Tag nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Video_Tags]
	(
		[Video_TagsID],
		[Tag]
	)
	VALUES
	(
		@Video_TagsID,
		@Tag
	)

	SET @Err = @@Error

	SELECT @ID = SCOPE_IDENTITY()

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Video_TagsInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_Video_TagsInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_Video_TagsDelete]    Script Date: 10/18/2013 3:23:49 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_Video_TagsDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_Video_TagsDelete];
GO

CREATE PROCEDURE [proc_Video_TagsDelete]
(
	@ID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Video_Tags]
	WHERE
		[ID] = @ID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_Video_TagsDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_Video_TagsDelete Error on Creation'
GO
