IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Categories')
	CREATE TABLE [dbo].[Categories]
		(
			[CategoryID] int,
			[CategoryName] [nvarchar](15),
			[Description] [ntext]
		)
ELSE
	TRUNCATE TABLE [Categories]