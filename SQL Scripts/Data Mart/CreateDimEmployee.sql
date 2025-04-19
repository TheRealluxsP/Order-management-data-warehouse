IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimEmployee')
BEGIN
	CREATE TABLE [dbo].[DimEmployee](
		[EmployeeKey] [int] IDENTITY(1,1) NOT NULL,
		[EmployeeID] [int] NOT NULL,
		[Name] [nvarchar](50) NOT NULL,
		[Title] [nvarchar](30) NOT NULL,
		[BirthDate] [date] NOT NULL,
		[HireDate] [date] NOT NULL,
		[Address] [nvarchar](60) NOT NULL,
		[City] [nvarchar](20) NOT NULL,
		[Region] [nchar](50) NOT NULL,
		[PostalCode] [nvarchar](10) NOT NULL,
		[HomePhone] [nvarchar](24) NOT NULL,
		[Extension] [nvarchar](4) NOT NULL,
		[Obs] [ntext] NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL
	CONSTRAINT [PK_DimEmployee] PRIMARY KEY CLUSTERED 
	(
		[EmployeeKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-EmployeeID] ON [dbo].[DimEmployee]
	(
		[EmployeeID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)

END