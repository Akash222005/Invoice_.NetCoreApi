USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF_Itemmaster_CategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_IsActive]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 08:05:00 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 08:05:00 PM ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](5) NOT NULL,
	[Name] [varchar](25) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[ItemBarCode] [varchar](25) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ItemCode] [varchar](10) NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[Description] [varchar](250) NULL,
	[Uom] [varchar](3) NOT NULL,
	[Rate] [decimal](18, 2) NULL,
	[MinimumStock] [decimal](18, 2) NULL,
	[MaximumStock] [decimal](18, 2) NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Itemmast__3214EC078F098DA1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'RI001', N'Rice', N'All types of rice', 1, N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime), N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VE001', N'Vegitables', N'All types of vegitables', 1, N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime), N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'SN001', N'Snacks', N'All types of snacks', 1, N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime), N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'OI001', N'Oil', N'All types of oils', 1, N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime), N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SO001', N'Soap', N'All types of soaps', 1, N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime), N'sa', CAST(N'2026-08-02T17:38:15.577' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'GN001', N'General', N'General Stores', 1, N'sa', CAST(N'2026-08-02T18:09:44.103' AS DateTime), N'sa', CAST(N'2026-08-02T18:09:44.103' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'Bar005', 2, 1, N'Food0005', N'Rice', N'White Rice', N'Kg', CAST(74.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'string', CAST(N'2026-03-08T13:18:34.573' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T17:12:09.627' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'Bar006', 3, 6, N'Food0006', N'Sugar', N'White Sugar', N'Kg', CAST(45.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'string', CAST(N'2026-03-08T13:19:00.393' AS DateTime), N'akash', CAST(N'2026-03-08T17:11:52.200' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'Bar004', 5, 3, N'lays0052', N'kurkure', N'snacks item', N'no', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-03-08T17:02:51.600' AS DateTime), N'sa', CAST(N'2026-03-08T17:28:44.850' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'BAR103', 6, 6, N'GR12', N'wheat', N' fine wheat flovour', N'kg', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-03-08T18:03:31.200' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-03-08T18:11:33.623' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1001', 10, 6, N'ITM001', N'Apple', N'Fresh apple', N'KG', CAST(120.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1002', 11, 6, N'ITM002', N'Banana', N'Yellow banana', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1003', 12, 6, N'ITM003', N'Orange', N'Juicy orange', N'KG', CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1004', 13, 6, N'ITM004', N'Grapes', N'Green grapes', N'KG', CAST(90.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1006', 15, 6, N'ITM006', N'Pineapple', N'Tropical fruit', N'KG', CAST(70.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1007', 16, 6, N'ITM007', N'Watermelon', N'Big fruit', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1008', 17, 6, N'ITM008', N'Papaya', N'Healthy fruit', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1009', 18, 6, N'ITM009', N'Guava', N'Fresh guava', N'KG', CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1010', 19, 6, N'ITM010', N'Strawberry', N'Red berry', N'KG', CAST(200.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1101', 20, 2, N'ITM011', N'Tomato', N'Fresh tomato', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1102', 21, 2, N'ITM012', N'Potato', N'Raw potato', N'KG', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1103', 22, 2, N'ITM013', N'Onion', N'Red onion', N'KG', CAST(35.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1104', 23, 2, N'ITM014', N'Carrot', N'Orange carrot', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1105', 24, 2, N'ITM015', N'Beans', N'Green beans', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1106', 25, 2, N'ITM016', N'Cabbage', N'Leafy veg', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1107', 26, 2, N'ITM017', N'Cauliflower', N'White veg', N'KG', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1108', 27, 2, N'ITM018', N'Brinjal', N'Purple veg', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1109', 28, 2, N'ITM019', N'Chilli', N'Spicy', N'KG', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1110', 29, 2, N'ITM020', N'Pumpkin', N'Big veg', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1201', 30, 3, N'ITM021', N'Chips', N'Potato chips', N'PCS', CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1202', 31, 3, N'ITM022', N'Biscuits', N'Cream biscuits', N'PCS', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1203', 32, 3, N'ITM023', N'Popcorn', N'Butter popcorn', N'PCS', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1204', 33, 3, N'ITM024', N'Chocolate', N'Milk chocolate', N'PCS', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1205', 34, 3, N'ITM025', N'Namkeen', N'Spicy mix', N'PCS', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1206', 35, 3, N'ITM026', N'Crackers', N'Salt crackers', N'PCS', CAST(35.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1207', 36, 3, N'ITM027', N'Noodles', N'Instant noodles', N'PCS', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1208', 37, 3, N'ITM028', N'Burger', N'Veg burger', N'PCS', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1209', 38, 3, N'ITM029', N'Pizza', N'Cheese pizza', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1210', 39, 3, N'ITM030', N'Sandwich', N'Veg sandwich', N'PCS', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1301', 40, 3, N'ITM031', N'Tea', N'Green tea', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'string', 41, 6, N'string', N'string', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T19:51:07.127' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1303', 42, 3, N'ITM033', N'Juice', N'Orange juice', N'LTR', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1304', 43, 3, N'ITM034', N'Milkshake', N'Chocolate shake', N'LTR', CAST(120.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1305', 44, 3, N'ITM035', N'SoftDrink', N'Cola', N'LTR', CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1306', 45, 3, N'ITM036', N'Water', N'Mineral water', N'LTR', CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1307', 46, 3, N'ITM037', N'Lassi', N'Sweet lassi', N'LTR', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1308', 47, 3, N'ITM038', N'Buttermilk', N'Cool drink', N'LTR', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1309', 48, 3, N'ITM039', N'EnergyDrink', N'Boost drink', N'LTR', CAST(110.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1310', 49, 1, N'ITM040', N'Soda', N'Plain soda', N'LTR', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1401', 50, 6, N'ITM041', N'Milk', N'Fresh milk', N'LTR', CAST(50.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1402', 51, 6, N'ITM042', N'Curd', N'Fresh curd', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1403', 52, 6, N'ITM043', N'Butter', N'Salted butter', N'PCS', CAST(120.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1404', 53, 6, N'ITM044', N'Cheese', N'Cheddar cheese', N'PCS', CAST(200.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1405', 54, 6, N'ITM045', N'Paneer', N'Fresh paneer', N'KG', CAST(300.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1406', 55, 6, N'ITM046', N'Ghee', N'Pure ghee', N'LTR', CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1407', 56, 6, N'ITM047', N'Cream', N'Milk cream', N'PCS', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1408', 57, 3, N'ITM048', N'IceCream', N'Vanilla icecream', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1409', 58, 6, N'ITM049', N'FlavMilk', N'Flavored milk', N'LTR', CAST(70.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'1410', 59, 6, N'ITM050', N'Yogurt', N'Greek yogurt', N'PCS', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'2520', 62, 6, N'gold24', N'chain', N'gold', N'KGS', CAST(62000.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T12:13:53.297' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'ak064', 63, 6, N'mo009', N'billa', N'movie', N'LTR', CAST(100.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T17:05:22.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'ksk', 64, 6, N'hqy25', N'sfgh', N'ghj', N'NOS', CAST(17.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-05-17T13:05:42.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'ujg', 65, 6, N'sjhg', N'as', N'uh', N'DOZ', CAST(65.00 AS Decimal(18, 2)), CAST(87.00 AS Decimal(18, 2)), CAST(324.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-05-17T16:49:37.280' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'string', 66, 6, N'string', N'string', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T19:50:18.347' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 02-08-2026 08:05:00 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Delete]

(

    @Id INT

)

AS

BEGIN

    DELETE FROM Category

    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetAll]

AS

BEGIN

    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM Category

    ORDER BY Id DESC

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetById]

(

    @Id INT

)

AS

BEGIN

    SELECT

        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM Category

    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_GetPaged]
 
    @Code        VARCHAR(5) = NULL,

    @Name        VARCHAR(25) = NULL,

    @IsActive    BIT = NULL,

    @PageNumber  INT = 1,

    @PageSize    INT = 10
 
AS

BEGIN

    SET NOCOUNT ON;
 
    IF (@PageNumber <= 0) SET @PageNumber = 1;

    IF (@PageSize <= 0) SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    SELECT
 
        Id,

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate,
 
        COUNT(*) OVER() AS TotalRecords
 
    FROM Category
 
    WHERE
 
        (@Code IS NULL OR Code LIKE '%' + @Code + '%')
 
        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')
 
        AND (@IsActive IS NULL OR IsActive = @IsActive)
 
    ORDER BY Id ASC

    OFFSET @Offset ROWS

    FETCH NEXT @PageSize ROWS ONLY;
 
    SELECT
 
        COUNT(1) AS TotalRecords
 
    FROM Category
 
    WHERE
 
        (@Code IS NULL OR Code LIKE '%' + @Code + '%')
 
        AND (@Name IS NULL OR Name LIKE '%' + @Name + '%')
 
        AND (@IsActive IS NULL OR IsActive = @IsActive);
 
END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Insert]

(

    @Code VARCHAR(5),

    @Name VARCHAR(25),

    @Description VARCHAR(100),

    @IsActive BIT

    

)

AS

BEGIN

    INSERT INTO Category

    (

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate

    )

    VALUES

    (

        @Code,

        @Name,

        @Description,

        @IsActive,

        SYSTEM_USER,

        GETDATE()

    )

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 02-08-2026 08:05:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Category_Update]

(

    @Id INT,

    @Code VARCHAR(5),

    @Name VARCHAR(25),

    @Description VARCHAR(100),

    @IsActive BIT

    

)

AS

BEGIN

    UPDATE Category

    SET

        Code = @Code,

        Name = @Name,

        Description = @Description,

        IsActive = @IsActive,

        UpdatedBy = SYSTEM_USER,

        UpdatedDate = GETDATE()

    WHERE Id = @Id

END
GO
