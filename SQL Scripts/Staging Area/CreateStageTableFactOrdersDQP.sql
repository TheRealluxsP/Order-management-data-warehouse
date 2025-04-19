IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrdersDQP')
	CREATE TABLE [dbo].[FactOrdersDQP]
		(
			[OrderID] int,
			[CustomerID][nchar](5),
			[EmployeeID] int,
			[OrderDate][datetime],
			[RequiredDate][datetime],
			[ShippedDate][datetime],
			[ProductID] int,
			[UnitPrice] [money],
			[Quantity] smallint,
			[Discount][float],
			DQP NVARCHAR(100)
		)
ELSE
	TRUNCATE TABLE [FactOrdersDQP]