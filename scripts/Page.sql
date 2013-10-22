
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
