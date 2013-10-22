
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
