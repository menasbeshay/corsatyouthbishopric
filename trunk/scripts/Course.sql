
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
