
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
