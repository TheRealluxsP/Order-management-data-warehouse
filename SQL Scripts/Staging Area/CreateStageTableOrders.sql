IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Orders')
	CREATE TABLE [dbo].[Orders]
		(
			[OrderID] int,
			[CustomerID][nchar](5),
			[EmployeeID] int,
			[OrderDate][datetime],
			[RequiredDate][datetime],
			[ShippedDate][datetime]
		)
ELSE
	TRUNCATE TABLE [Orders]