IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactOrders')
	CREATE TABLE [dbo].[FactOrders](
		[ProductKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[OrderDateKey] [int] NOT NULL,
		[RequiredDateKey] [int] NOT NULL,
		[ShippedDateKey] [int] NOT NULL,
		[EmployeeKey] [int] NOT NULL,
		[OrderID] [int] NOT NULL,
		[UnitPrice][money] NOT NULL,
		[Quantity][smallint] NOT NULL,
		[Discount][float] NOT NULL,
		[totalPrice][money] NOT NULL
	CONSTRAINT [PK_FactOrders] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC,
		[CustomerKey] ASC,
		[OrderDateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]


