use master 
create database Corsatwebsite_db
Go

Use Corsatwebsite_db
If Exists (select Name 
		   from sysobjects 
		   where name = 'Page' and
		        xtype = 'U')
Drop Table Page
Go
Create Table Page
(
	PageID int not null
			identity(1,1)
			Primary Key,
	Title Nvarchar(200),	
	Content Nvarchar(max),
	Name Nvarchar(200),
	InMenu bit, 
	ParentID int foreign key references Page(PageID)
)
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'TimePlan' and
		        xtype = 'U')
Drop Table TimePlan
Go
Create Table TimePlan
(
	TimePlanID int not null
			identity(1,1)
			Primary Key,
	Title Nvarchar(800),			
	IsVisible bit, 
	PublishedDate DateTime
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'Course' and
		        xtype = 'U')
Drop Table Course
Go
Create Table Course
(
	CourseID int not null
			identity(1,1)
			Primary Key,
	CourseLevel int,
	Name Nvarchar(200)
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'UserCourse' and
		        xtype = 'U')
Drop Table UserCourse
Go
Create Table UserCourse
(
	CourseID int not null
			foreign Key references Course(CourseID),
	Grade int,
	CourseDate DateTime,
	UserID UniqueIdentifier not null foreign key references aspnet_Users(UserId),
	Primary key (UserID, CourseID, CourseDate)
)
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'UserData' and
		        xtype = 'U')
Drop Table UserData
Go
Create Table UserData
(
	UserID UniqueIdentifier not null foreign key references aspnet_Users(UserId) Primary Key,
	FirstName Nvarchar(200),	
	LastName Nvarchar(200),	
	Tele Nvarchar(200),	
	Mobile Nvarchar(200),	
	Church Nvarchar(200),	
	Father Nvarchar(200)	
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'Course_Data_DataType' and
		        xtype = 'U')
Drop Table Course_Data_DataType
Go
Create Table Course_Data_DataType
(
	DataTypeID int not null
			identity(1,1)
			Primary Key,	
	Name Nvarchar(200)
)
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'Course_Data' and
		        xtype = 'U')
Drop Table Course_Data
Go
Create Table Course_Data
(
	DataID int not null primary key identity(1,1),
	DataTypeID int not null foreign key references Course_Data_DataType(DataTypeID),	
	CourseID int not null
			foreign Key references Course(CourseID),
	DataName Nvarchar(200),
	Data_Date DateTime, 
	Data_Path nvarchar(200),
	ThumbsPath nvarchar(200)	
)
Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'News' and
		        xtype = 'U')
Drop Table News
Go
Create Table News
(
	NewsID int not null
			identity(1,1)
			Primary Key,	
	Title Nvarchar(200),
	Brief Nvarchar(500),
	Body Nvarchar(max),	
	MainPicturePath nvarchar(200),
	--Tags nvarchar(500),
	PublishedDate DateTime
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'News_Tags' and
		        xtype = 'U')
Drop Table News_Tags
Go
Create Table News_Tags
(
	ID int identity (1,1) primary key,
	NewsID int foreign Key references News(NewsID),	
	Tag Nvarchar(200)
)
Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'Video' and
		        xtype = 'U')
Drop Table Video
Go
Create Table Video
(
	VideoID int not null
			identity(1,1)
			Primary Key,	
	Title Nvarchar(200),
	Brief Nvarchar(500),
	URL Nvarchar(max),	
	MainPicturePath nvarchar(200),
	--Tags nvarchar(500),
	PublishedDate DateTime
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'Video_Tags' and
		        xtype = 'U')
Drop Table Video_Tags
Go
Create Table Video_Tags
(
	ID int identity (1,1) primary key,
	Video_TagsID int foreign Key references Video(VideoID),	
	Tag Nvarchar(200)
)
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'Country' and
		        xtype = 'U')
Drop Table Country
Go
Create Table Country
(
	CountryID int not null
			identity(1,1)
			Primary Key,
	EnName Nvarchar(200),
	ArName Nvarchar(200),
	EnDescription Nvarchar(500),
	ArDescription Nvarchar(500)
)
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'City' and
		        xtype = 'U')
Drop Table City
Go
Create Table City
(
	CityID int not null
			identity(1,1)
			Primary Key,
	EnName Nvarchar(200),
	ArName Nvarchar(200),
	EnDescription Nvarchar(500),
	ArDescription Nvarchar(500),
	CountryID int foreign key references Country(CountryID)
)
Go
