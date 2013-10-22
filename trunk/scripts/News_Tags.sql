
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
