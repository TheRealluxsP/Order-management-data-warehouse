IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Regions')
	CREATE TABLE [dbo].[Regions]
		(
			[RegionID] int,
			[RegionDescription] [nchar](50)
		)
ELSE
	TRUNCATE TABLE [Regions]