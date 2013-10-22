
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
