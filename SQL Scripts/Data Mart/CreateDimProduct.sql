IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')
BEGIN
	CREATE TABLE [dbo].[DimProduct](
		[ProductKey] [int] IDENTITY(1,1) NOT NULL,
		[ProductID] [int] NOT NULL,
		[ProductName] [nvarchar](40) NOT NULL,
		[CategoryName] [nvarchar](15) NOT NULL,
		[CategoryDescription] [ntext] NOT NULL,
		[QuantityPerUnit] [nchar](20) NOT NULL,
		[UnitPrice] [money] NOT NULL,
		[UnitsInStock] [smallint] NOT NULL,
		[UnitsOnOrder] [smallint] NOT NULL,
		[ReorderLevel] [smallint] NOT NULL,
		[Discontinued] [nvarchar](3) NOT NULL,
		[EffectiveDate] [datetime] NOT NULL,
		[ExpiredDate] [datetime] NULL
	CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]

	CREATE NONCLUSTERED INDEX [NonClusteredIndex-ProductID] ON [dbo].[DimProduct]
	(
		[ProductID] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)

END