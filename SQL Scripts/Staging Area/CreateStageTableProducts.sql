IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Products')
	CREATE TABLE [dbo].[Products]
		(
			[ProductID] int,
			[ProductName][nvarchar](40),
			[CategoryID] int,
			[QuantityPerUnit][nchar](20),
			[UnitPrice][money],
			[UnitsInStock]smallint,
			[UnitsOnOrder] smallint,
			[ReorderLevel] smallint,
			[Discontinued][bit]
		)
ELSE
	TRUNCATE TABLE [Products]