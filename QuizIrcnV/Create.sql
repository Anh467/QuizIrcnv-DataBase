--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ db.MongoDB $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
--mongodb sẽ lưu
/*
CustomerID{
	img: "path image avatar {regex: src/img/CustomerID}"
	config: {},
	Folder: {
		[
			FolderID1:{
				img: "path image folder {regex: src/img/FolderID1}",
				option: [ CustomerID1, CustomerID2, CustomerID3,...]
			},
			FolderID2:{
				img: "path image folder {regex: src/img/FolderID2}",
				option: [ CustomerID1, CustomerID2, CustomerID3,...]
			},
			FolderID3:{
				img: "path image folder {regex: src/img/FolderID3}",
				option: [ CustomerID1, CustomerID2, CustomerID3,...]
			}
		]
	}
}
*/

--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ db.Mssql $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
CREATE DATABASE QuizIrcnV
USE QuizIrcnV
/*
	dbo.CUSTOMER
	*CustomerID: nvarchar(11)
	------------ data of customer will be in nosql ------------
	Address NVARCHAR(255),
	PhoneNumber VARCHAR(15),
	Nation NVARCHAR(255),
	ImageUser NVARCHAR(255),
	ImageBackGround NVARCHAR(255),
	NumFriend INT DEFAULT 0,
	NumPost INT DEFAULT 0,
	TimeCreate DATETIME DEFAULT GETDATE(),
*/ 
--############################################# dbo.CUSTOMER #############################################

CREATE TABLE CUSTOMER(
	ID INT IDENTITY(1,1) NOT NULL,
	CustomerID AS 'CID' + RIGHT('00000000' + CAST(ID AS VARCHAR(8)), 8) persisted PRIMARY KEY, 
	Account VARCHAR(155) UNIQUE,
	Password VARCHAR(155),
	CustomerName NVARCHAR(255),
	CustomerImg varchar(200),
	Mail VARCHAR(255),
	DateOfBirth DATE,
	Gender VARCHAR(20),
	RoleCustomer VARCHAR(20),
	-- TEACHER - STUDENT - LECTURER - PARENT - ADMIN
	createdAt DATETIME default getdate(),
	updatedAt DATETIME default getdate(),
)
-- $$$$$$$$$$$$$$--CHANGE--$$$$$$$$$$$$$$
-- 16/10/2023 22:40 : Field[Intro] add new Field[Intro] for introduce (his/her)self
	alter table dbo.CUSTOMER
	add Intro nvarchar(500);
-- 16/10/2023 22:50 : Field[Intro] with length 500 i think not enough
	ALTER TABLE dbo.CUSTOMER
	ALTER COLUMN Intro nvarchar(1000);
-- 16/10/2023 22:50 : Field[Intro] when insert auto set default is ''
	ALTER TABLE dbo.CUSTOMER
	ADD CONSTRAINT Intro DEFAULT '' FOR Intro;
-- 16/10/2023 23:05 : add new Field [numFollow], [numFolderCourse], [numCourse] and [numQuiz]
	ALTER TABLE dbo.CUSTOMER
	ADD numFollow int default 0;
	-- number {folder course user `dbo.FolderCourse`} create
	ALTER TABLE dbo.CUSTOMER
	ADD numFolderCourse int default 0; 
	-- number         {course `dbo.Course`}           user create
	ALTER TABLE dbo.CUSTOMER
	ADD numCourse int default 0;
	-- number			{quiz `dbo.Quiz`}             user create
	ALTER TABLE dbo.CUSTOMER
	ADD numQuiz int default 0;
--############################################# dbo.FolderCourse #############################################
create table FolderCourse(
	FolderID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	CustomerID VARCHAR(11),
	CONSTRAINT fk_CustomerID_FolderCourse FOREIGN KEY (CustomerID) REFERENCES dbo.CUSTOMER(CustomerID),
	FolderName nvarchar(50),
	FolderImg varchar(200),
	Description nvarchar(500),
	UNIQUE (FolderName, CustomerID),
-- public private option
-- với option sẽ được check trong mongodb
	privacry varchar(10),
	createdAt DATETIME default getdate(),
	updatedAt DATETIME default getdate(),
)


--############################################# dbo.Course #############################################
create table Course(
	CourseID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
	FolderID INT,
	CONSTRAINT fk_FolderID_Course FOREIGN KEY (FolderID) REFERENCES dbo.FolderCourse(FolderID),
	CourseName nvarchar(50),
	CourseImg varchar(200),
	Description nvarchar(500),
	UNIQUE (FolderID, CourseName),
-- public private option
-- với option sẽ được check trong mongodb
	privacry varchar(10),
	createdAt DATETIME default getdate(),
	updatedAt DATETIME default getdate(),
)
