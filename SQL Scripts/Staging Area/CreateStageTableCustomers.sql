IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers')
	CREATE TABLE [dbo].[Customers]
			(
				[CustomerID] [nchar](5),
				[CompanyName] [nvarchar](40),
				[ContactName] [nvarchar](30),
				[ContactTitle][nvarchar](30),
				[Address][nvarchar](60),
				[City][nvarchar](20),
				[RegionID] [int],
				[PostalCode][nvarchar](10),
				[Country][nvarchar](30),
				[Phone][nvarchar](24),
				[Fax][nvarchar](24)
			)
	ELSE
		TRUNCATE TABLE [Customers]