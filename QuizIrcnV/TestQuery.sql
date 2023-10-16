SELECT [FolderID], [CustomerID], [FolderName], [FolderImg], [Description], [privacry], [createdAt], [updatedAt] 
FROM [FolderCourse] AS [FolderCourse] WHERE [FolderCourse].[CustomerID] = N'CID00000005' AND [FolderCourse].[FolderID] = N'6'

SELECT * FROM CUSTOMER WHERE CustomerID = 'CID00000005' ORDER BY CustomerID

INSERT INTO dbo.CUSTOMER
(
    Account,
    Password,
    FullName,
    Mail,
    DateOfBirth,
    Gender,
    RoleCustomer,
    TimeEnjoy
)
VALUES
(   'AccountTest1',   -- Account - varchar(155)
    'PasswordTest1',   -- Password - varchar(155)
    N'Nguyễn Văn A',   -- FullName - nvarchar(255)
    'a@gmail.com',   -- Mail - varchar(255)
    GETDATE(),   -- DateOfBirth - date
    'male',   -- Gender - varchar(20)
    'customer',   -- RoleCustomer - varchar(20)
    DEFAULT -- TimeEnjoy - datetime
    )

INSERT INTO dbo.CUSTOMER
(
    Account,
    Password,
    FullName,
    Mail,
    DateOfBirth,
    Gender,
    RoleCustomer,
    TimeEnjoy
)
VALUES
(   'AccountTest2',   -- Account - varchar(155)
    'PasswordTest2',   -- Password - varchar(155)
    N'Nguyễn Văn B',   -- FullName - nvarchar(255)
    'B@gmail.com',   -- Mail - varchar(255)
    GETDATE(),   -- DateOfBirth - date
    'male',   -- Gender - varchar(20)
    'customer',   -- RoleCustomer - varchar(20)
    DEFAULT -- TimeEnjoy - datetime
    )
INSERT INTO dbo.CUSTOMER
(
    Account,
    Password,
    FullName,
    Mail,
    DateOfBirth,
    Gender,
    RoleCustomer,
    TimeEnjoy
)
VALUES
(   'AccountTest3',   -- Account - varchar(155)
    'PasswordTest3',   -- Password - varchar(155)
    N'Nguyễn Văn C',   -- FullName - nvarchar(255)
    'C@gmail.com',   -- Mail - varchar(255)
    GETDATE(),   -- DateOfBirth - date
    'female',   -- Gender - varchar(20)
    'customer',   -- RoleCustomer - varchar(20)
    DEFAULT -- TimeEnjoy - datetime
    )

	SELECT CustomerID, Account, Password, FullName, Mail, DateOfBirth, Gender, RoleCustomer, TimeEnjoy
	FROM dbo.CUSTOMER


	INSERT INTO dbo.CUSTOMER
	VALUES
	(   NULL,   -- Account - varchar(155)
	    NULL,   -- Password - varchar(155)
	    NULL,   -- FullName - nvarchar(255)
	    NULL,   -- Mail - varchar(255)
	    NULL,   -- DateOfBirth - date
	    NULL,   -- Gender - varchar(20)
	    NULL,   -- RoleCustomer - varchar(20)
	    DEFAULT -- TimeEnjoy - datetime
	    )

SELECT * FROM "CUSTOMER" WHERE CustomerID = 'CID00000007' ORDER BY "CUSTOMER"."ID" OFFSET 0 ROW FETCH NEXT 1 ROWS ONLY