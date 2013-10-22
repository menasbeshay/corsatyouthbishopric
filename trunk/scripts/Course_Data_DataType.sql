
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
