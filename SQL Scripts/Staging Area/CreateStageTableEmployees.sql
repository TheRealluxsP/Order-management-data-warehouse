IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Employees')
	CREATE TABLE [dbo].[Employees]
			(
				[EmployeeID] int,
				[Name] [nvarchar](50),
				[Title] [nvarchar](30),
				[BirthDate][date],
				[HireDate][date],
				[Address][nvarchar](60),
				[City] [nvarchar](20),
				[RegionID] int,
				[PostalCode][nvarchar](10),
				[HomePhone][nvarchar](24),
				[Extension][nvarchar](4),
				[Obs][nvarchar](MAX)
			)
	ELSE
		TRUNCATE TABLE [Employees]