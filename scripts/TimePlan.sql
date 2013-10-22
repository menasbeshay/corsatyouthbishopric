
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
