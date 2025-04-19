IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderDetails')
	CREATE TABLE [dbo].[OrderDetails]
		(
			[OrderID] int,
			[ProductID] int,
			[UnitPrice] [money],
			[Quantity] smallint,
			[Discount][float]
		)
ELSE
	TRUNCATE TABLE [OrderDetails]