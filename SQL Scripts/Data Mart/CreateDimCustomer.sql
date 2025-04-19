IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')
BEGIN
	CREATE TABLE [dbo].[DimCustomer](
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[CustomerID] [nchar](5) NOT NULL,
		[CompanyName] [nvarchar](40) NOT NULL,
		[ContactName] [nvarchar](30) NOT NULL,
		[ContactTitle] [nvarchar](30) NOT NULL,
		[Address] [nvarchar](60) NOT NULL,
		[City] [nvarchar](20) NOT NULL,
		[Region] [nchar](50) NOT NULL,
		[PostalCode] [nvarchar](10) NOT NULL,
		[Country] [nvarchar](30) NOT NULL,
		[Phone] [nvarchar](24) NOT NULL,
		[Fax] [nvarchar](24) NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL
	CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-CustomerID] ON [dbo].[DimCustomer]
	(
		[CustomerID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)

END