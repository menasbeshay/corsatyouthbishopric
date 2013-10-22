
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
