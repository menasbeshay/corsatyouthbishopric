
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
