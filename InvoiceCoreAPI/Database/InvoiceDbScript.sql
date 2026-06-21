USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__CreatedDa__6442E2C9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsDeleted__634EBE90]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
ALTER TABLE [dbo].[Users] DROP CONSTRAINT IF EXISTS [DF__Users__IsActive__625A9A57]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_IsActive]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 07:38:36 PM ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 21-06-2026 07:38:36 PM ******/
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
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 21-06-2026 07:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemmaster](
	[CatCode] [varchar](50) NULL,
	[ItemBarCode] [varchar](25) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 21-06-2026 07:38:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[DisplayName] [nvarchar](200) NULL,
	[PhoneNumber] [nvarchar](25) NULL,
	[AlternatePhone] [nvarchar](25) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](20) NULL,
	[Country] [nvarchar](100) NULL,
	[DateOfBirth] [date] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'C002', N'Oil', N'Cooking oils and related products', 0, N'Admin', CAST(N'2026-05-03T12:37:21.330' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T20:05:12.000' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'C003', N'Snacks', N'Ready-to-eat snack items', 1, N'Admin', CAST(N'2026-05-03T12:37:21.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'C004', N'Pulses', N'Dal, lentils and pulses', 1, N'Admin', CAST(N'2026-05-03T12:37:21.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'C005', N'Spices', N'Masala and spice powders', 1, N'Admin', CAST(N'2026-05-03T12:37:21.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'C006', N'Beverages', N'Drinks and juices', 1, N'Admin', CAST(N'2026-05-03T12:37:21.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'C007', N'Dairy', N'Milk and dairy products', 1, N'Admin', CAST(N'2026-05-03T12:37:21.333' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'ak47', N'akash', N'ak', 1, N'Admin', CAST(N'2026-05-03T12:37:21.337' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T19:32:36.213' AS DateTime))
GO
INSERT [dbo].[Category] ([Id], [Code], [Name], [Description], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'co19', N'pooja', N'string', 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-21T17:24:02.470' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] ON 
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'Food', N'Bar005', 2, N'Food0005', N'Rice', N'White Rice', N'Kg', CAST(74.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'string', CAST(N'2026-03-08T13:18:34.573' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T17:12:09.627' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'Food', N'Bar006', 3, N'Food0006', N'Sugar', N'White Sugar', N'Kg', CAST(45.00 AS Decimal(18, 2)), CAST(15.00 AS Decimal(18, 2)), CAST(120.00 AS Decimal(18, 2)), 1, N'string', CAST(N'2026-03-08T13:19:00.393' AS DateTime), N'akash', CAST(N'2026-03-08T17:11:52.200' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'snack', N'Bar004', 5, N'lays0052', N'kurkure', N'snacks item', N'no', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-03-08T17:02:51.600' AS DateTime), N'sa', CAST(N'2026-03-08T17:28:44.850' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'groce', N'BAR103', 6, N'GR12', N'wheat', N' fine wheat flovour', N'kg', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(150.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-03-08T18:03:31.200' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-03-08T18:11:33.623' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1001', 10, N'ITM001', N'Apple', N'Fresh apple', N'KG', CAST(120.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1002', 11, N'ITM002', N'Banana', N'Yellow banana', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1003', 12, N'ITM003', N'Orange', N'Juicy orange', N'KG', CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1004', 13, N'ITM004', N'Grapes', N'Green grapes', N'KG', CAST(90.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1006', 15, N'ITM006', N'Pineapple', N'Tropical fruit', N'KG', CAST(70.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1007', 16, N'ITM007', N'Watermelon', N'Big fruit', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.090' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1008', 17, N'ITM008', N'Papaya', N'Healthy fruit', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1009', 18, N'ITM009', N'Guava', N'Fresh guava', N'KG', CAST(50.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C010', N'1010', 19, N'ITM010', N'Strawberry', N'Red berry', N'KG', CAST(200.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1101', 20, N'ITM011', N'Tomato', N'Fresh tomato', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1102', 21, N'ITM012', N'Potato', N'Raw potato', N'KG', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1103', 22, N'ITM013', N'Onion', N'Red onion', N'KG', CAST(35.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1104', 23, N'ITM014', N'Carrot', N'Orange carrot', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1105', 24, N'ITM015', N'Beans', N'Green beans', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1106', 25, N'ITM016', N'Cabbage', N'Leafy veg', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1107', 26, N'ITM017', N'Cauliflower', N'White veg', N'KG', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1108', 27, N'ITM018', N'Brinjal', N'Purple veg', N'KG', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1109', 28, N'ITM019', N'Chilli', N'Spicy', N'KG', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C011', N'1110', 29, N'ITM020', N'Pumpkin', N'Big veg', N'KG', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1201', 30, N'ITM021', N'Chips', N'Potato chips', N'PCS', CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1202', 31, N'ITM022', N'Biscuits', N'Cream biscuits', N'PCS', CAST(30.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1203', 32, N'ITM023', N'Popcorn', N'Butter popcorn', N'PCS', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1204', 33, N'ITM024', N'Chocolate', N'Milk chocolate', N'PCS', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.097' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1205', 34, N'ITM025', N'Namkeen', N'Spicy mix', N'PCS', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1206', 35, N'ITM026', N'Crackers', N'Salt crackers', N'PCS', CAST(35.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1207', 36, N'ITM027', N'Noodles', N'Instant noodles', N'PCS', CAST(25.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1208', 37, N'ITM028', N'Burger', N'Veg burger', N'PCS', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1209', 38, N'ITM029', N'Pizza', N'Cheese pizza', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C012', N'1210', 39, N'ITM030', N'Sandwich', N'Veg sandwich', N'PCS', CAST(60.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1301', 40, N'ITM031', N'Tea', N'Green tea', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'string', N'string', 41, N'string', N'string', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T19:51:07.127' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1303', 42, N'ITM033', N'Juice', N'Orange juice', N'LTR', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1304', 43, N'ITM034', N'Milkshake', N'Chocolate shake', N'LTR', CAST(120.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1305', 44, N'ITM035', N'SoftDrink', N'Cola', N'LTR', CAST(80.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1306', 45, N'ITM036', N'Water', N'Mineral water', N'LTR', CAST(20.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.100' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1307', 46, N'ITM037', N'Lassi', N'Sweet lassi', N'LTR', CAST(50.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1308', 47, N'ITM038', N'Buttermilk', N'Cool drink', N'LTR', CAST(30.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1309', 48, N'ITM039', N'EnergyDrink', N'Boost drink', N'LTR', CAST(110.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C013', N'1310', 49, N'ITM040', N'Soda', N'Plain soda', N'LTR', CAST(40.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1401', 50, N'ITM041', N'Milk', N'Fresh milk', N'LTR', CAST(50.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1402', 51, N'ITM042', N'Curd', N'Fresh curd', N'KG', CAST(60.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1403', 52, N'ITM043', N'Butter', N'Salted butter', N'PCS', CAST(120.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1404', 53, N'ITM044', N'Cheese', N'Cheddar cheese', N'PCS', CAST(200.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.103' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1405', 54, N'ITM045', N'Paneer', N'Fresh paneer', N'KG', CAST(300.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1406', 55, N'ITM046', N'Ghee', N'Pure ghee', N'LTR', CAST(500.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1407', 56, N'ITM047', N'Cream', N'Milk cream', N'PCS', CAST(80.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1408', 57, N'ITM048', N'IceCream', N'Vanilla icecream', N'PCS', CAST(150.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1409', 58, N'ITM049', N'FlavMilk', N'Flavored milk', N'LTR', CAST(70.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'C014', N'1410', 59, N'ITM050', N'Yogurt', N'Greek yogurt', N'PCS', CAST(90.00 AS Decimal(18, 2)), CAST(30.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-04-05T10:25:13.107' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'jwels', N'2520', 62, N'gold24', N'chain', N'gold', N'KGS', CAST(62000.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), CAST(50.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T12:13:53.297' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'ak', N'ak064', 63, N'mo009', N'billa', N'movie', N'LTR', CAST(100.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T17:05:22.413' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'fgh', N'ksk', 64, N'hqy25', N'sfgh', N'ghj', N'NOS', CAST(17.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-05-17T13:05:42.500' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'ggfv', N'ujg', 65, N'sjhg', N'as', N'uh', N'DOZ', CAST(65.00 AS Decimal(18, 2)), CAST(87.00 AS Decimal(18, 2)), CAST(324.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-05-17T16:49:37.280' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([CatCode], [ItemBarCode], [Id], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'strin', N'string', 66, N'string', N'string', N'string', N'str', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-14T19:50:18.347' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (34, N'kumarselvam', N'kumarselvam@gmail.com', N'User@123', N'Kumar', N'Prabhu', N'Selvam', N'Kumar Prabhu Selvam', N'9876543212', N'9876543213', N'No 2 Anna Nagar', N'West Extension', N'Madurai', N'Tamil Nadu', N'625001', N'India', CAST(N'2001-02-15' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.697' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (35, N'ravikumar', N'ravikumar@gmail.com', N'User@123', N'Ravi', N'Mohan', N'Kumar', N'Ravi Mohan Kumar', N'9876543214', N'9876543215', N'No 3 Market Road', N'Opp Bus Stand', N'Coimbatore', N'Tamil Nadu', N'641001', N'India', CAST(N'2000-03-20' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (36, N'sureshbabu', N'sureshbabu@gmail.com', N'User@123', N'Suresh', N'Kannan', N'Babu', N'Suresh Kannan Babu', N'9876543216', N'9876543217', N'No 4 Main Road', N'Area 4', N'Salem', N'Tamil Nadu', N'636001', N'India', CAST(N'1999-04-25' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (37, N'priyadevi', N'priyadevi@gmail.com', N'User@123', N'Priya', N'Lakshmi', N'Devi', N'Priya Lakshmi Devi', N'9876543218', N'9876543219', N'No 5 Lake View', N'Near Temple', N'Trichy', N'Tamil Nadu', N'620001', N'India', CAST(N'2001-05-12' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (38, N'arunprakash', N'arunprakash@gmail.com', N'User@123', N'Arun', N'Karthik', N'Prakash', N'Arun Karthik Prakash', N'9876543220', N'9876543221', N'No 6 Temple Street', N'East Colony', N'Erode', N'Tamil Nadu', N'638001', N'India', CAST(N'2002-06-18' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (39, N'vigneshkumar', N'vigneshkumar@gmail.com', N'User@123', N'Vignesh', N'Raja', N'Kumar', N'Vignesh Raja Kumar', N'9876543222', N'9876543223', N'No 7 Park Road', N'Area 7', N'Tiruppur', N'Tamil Nadu', N'641601', N'India', CAST(N'2000-07-08' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (40, N'deepakraj', N'deepakraj@gmail.com', N'User@123', N'Deepak', N'Suresh', N'Raj', N'Deepak Suresh Raj', N'9876543224', N'9876543225', N'No 8 Gandhi Nagar', N'North Block', N'Vellore', N'Tamil Nadu', N'632001', N'India', CAST(N'1998-08-14' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (41, N'harikrishnan', N'harikrishnan@gmail.com', N'User@123', N'Hari', N'Prasad', N'Krishnan', N'Hari Prasad Krishnan', N'9876543226', N'9876543227', N'No 9 East Street', N'Near School', N'Thoothukudi', N'Tamil Nadu', N'628001', N'India', CAST(N'2003-09-05' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (42, N'manojkumar', N'manojkumar@gmail.com', N'User@123', N'Manoj', N'Kishore', N'Kumar', N'Manoj Kishore Kumar', N'9876543228', N'9876543229', N'No 10 South Street', N'Area 10', N'Nagercoil', N'Tamil Nadu', N'629001', N'India', CAST(N'2001-10-11' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (44, N'karthikvel', N'karthikvel@gmail.com', N'User@123', N'Karthik', N'Murugan', N'Vel', N'Karthik Murugan Vel', N'9876543232', N'9876543233', N'No 12 Cross Street', N'South Colony', N'Madurai', N'Tamil Nadu', N'625002', N'India', CAST(N'1999-12-09' AS Date), 1, 0, N'sa', CAST(N'2026-06-21T13:07:48.700' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (46, N'thamizh', N'string', N'string', N'string', N'string', N'string', N'string', N'2345678902', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-06-21' AS Date), 1, 0, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-21T17:38:21.843' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (48, N'thamizh', N'string', N'string', N'string', N'string', N'string', N'string', N'2345678902', N'string', N'string', N'string', N'villupuram', N'string', N'string', N'string', CAST(N'2026-06-21' AS Date), 1, 0, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-21T18:14:31.740' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [Password], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (49, N'string', N'string', N'string', N'thamiozselavan', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'tn', N'string', N'string', CAST(N'2026-06-21' AS Date), 1, 0, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-21T18:15:11.997' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-21T18:17:15.913' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 21-06-2026 07:38:37 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Delete]
(
    @Id INT
)
AS
BEGIN
    DELETE FROM Itemmaster
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT
        Id,
		CatCode,
		ItemBarCode,
        ItemCode,
        ItemName,
        Description,
		Uom,
        Rate,
        MinimumStock,
        MaximumStock,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Itemmaster
    ORDER BY Id DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT
        Id,
		CatCode,
		ItemBarCode,
        ItemCode,
        ItemName,
        Description,
		Uom,
        Rate,
        MinimumStock,
        MaximumStock,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM Itemmaster
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]

	@CatCode	VARCHAR(5) = NULL,

	@ItemName	VARCHAR(100) = NULL,

	@Uom		VARCHAR(3) = NULL,

    @PageNumber INT = 1,

    @PageSize   INT = 10

AS

BEGIN

    SET NOCOUNT ON;
 
    -- Default paging

    IF (@PageNumber <= 0) SET @PageNumber = 1;

    IF (@PageSize <= 0) SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    -- Main data

	SELECT 

		Id,

		CatCode,

		ItemBarCode,

		Itemcode,

		Itemname,

		Description,

		Uom,

		Rate,

		Minimumstock,

		Maximumstock,

		IsActive,

		Createdby,

		Createddate,

		Updatedby,

		Updateddate,

		COUNT(*) OVER() AS TotalRecords

	FROM dbo.Itemmaster

	WHERE 

		(@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

		AND (@ItemName IS NULL OR ItemName LIKE '%' + @ItemName + '%')

		AND (@Uom IS NULL OR Uom LIKE '%' + @Uom + '%')

	ORDER BY Id ASC

	OFFSET @Offset ROWS

	FETCH NEXT @PageSize ROWS ONLY;
 
	 -- Total count (for pagination UI)

SELECT 

     COUNT(1) AS TotalRecords

FROM dbo.Itemmaster

WHERE 

     (@CatCode IS NULL OR CatCode LIKE '%' + @CatCode + '%')

     AND (@ItemName IS NULL OR ItemName LIKE  '%'+@ItemName+'%')

     AND (@Uom IS NULL OR Uom LIKE '%'+@Uom+'%');
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
	@CatCode varchar (5),
	@ItemBarCode VARCHAR (25),
    @ItemCode VARCHAR(10),
    @ItemName VARCHAR(100),
    @Description VARCHAR(250),
	@Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @MinimumStock DECIMAL(18,2),
    @MaximumStock DECIMAL(18,2),
    @IsActive BIT
)    

AS
BEGIN
	
    INSERT INTO Itemmaster
    (
		CatCode,
		ItemBarCode,
        ItemCode,
        ItemName,
        Description,
		Uom,
        Rate,
        MinimumStock,
        MaximumStock,
        IsActive,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    )
    VALUES
    (
		@CatCode,
		@ItemBarCode,
        @ItemCode,
        @ItemName,
        @Description,
		@Uom,
        @Rate,
        @MinimumStock,
        @MaximumStock,
        @IsActive,
        SYSTEM_USER,
        GETDATE(),
		NULL,
		NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
	@CatCode VARCHAR (50),
	@ItemBarCode VARCHAR (25),
    @ItemCode VARCHAR(10),
    @ItemName VARCHAR(100),
    @Description VARCHAR(250),
	@Uom VARCHAR (3),
    @Rate DECIMAL(18,2),
    @MinimumStock DECIMAL(18,2),
    @MaximumStock DECIMAL(18,2),
    @IsActive BIT
   
)
AS
BEGIN
    UPDATE Itemmaster
    SET
	    CatCode = @CatCode,
        ItemBarCode = @ItemBarCode,
        ItemCode = @ItemCode,
        ItemName = @ItemName,
        Description = @Description,
		Uom = @Uom,
        Rate = @Rate,
        MinimumStock = @MinimumStock,
        MaximumStock = @MaximumStock,
        IsActive = @IsActive,
        UpdatedBy = SYSTEM_USER,
        UpdatedDate = GETDATE()
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Delete]
(
    @Id INT
   )
AS
BEGIN
	DELETE FROM Users
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetAll]
AS
BEGIN
   SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetById]
(
    @Id INT
)
AS
BEGIN
    SELECT Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,
State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate FROM Users

where id=@Id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]
(
   
@UserName VARCHAR(100) = NULL,
@FirstName VARCHAR(100) = NULL,
@LastName varchar(100) = null,
@PhoneNumber varchar(25) = null,
@City VARCHAR(100) = NULL,
@DateOfBirth date = null,
@IsActive BIT = NULL,
@PageNumber INT =1,
@pageSize INT =10
)
 
AS

BEGIN

	SET NOCOUNT ON;
 
	IF (@PageNumber <=0) SET @PageNumber =1;

	IF (@pageSize <=0) SET @pageSize =10;
 
	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;
 
	SELECT

Id,UserName,Email,Password,FirstName,MiddleName,LastName,DisplayName,PhoneNumber,AlternatePhone,AddressLine1,AddressLine2,City,

State,ZipCode,Country,DateOfBirth,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,
 
COUNT(*) OVER() AS TotalRecords
 
FROM Users
 
WHERE
 
(@UserName IS NULL OR Username LIKE '%' + @UserName +'%')

AND (@FirstName IS NULL OR FirstName LIKE '%' + @FirstName +'%')

AND(@LastName IS NULL OR LastName LIKE '%' + @LastName +'%')

AND(@PhoneNumber IS NULL OR PhoneNumber LIKE '%' + @PhoneNumber +'%')

AND(@City IS NULL OR City LIKE '%' + @City + '%')

AND(@DateOfBirth IS NULL OR DateOfBirth = @DateOfBirth)

AND (@IsActive IS NULL OR IsActive =@IsActive)
 
ORDER BY Id ASC

OFFSET @offset ROWS
 
FETCH NEXT @PageSize ROWS ONLY;
 
SELECT
 
COUNT (1) AS TotalRecords
 
FROM Users
 
WHERE
 
(@UserName IS NULL OR Username LIKE '%' + @UserName +'%')

AND (@FirstName IS NULL OR FirstName LIKE '%' + @FirstName +'%')

AND(@LastName IS NULL OR LastName LIKE '%' + @LastName +'%')

AND(@PhoneNumber IS NULL OR PhoneNumber LIKE '%' + @PhoneNumber +'%')

AND(@City IS NULL OR City LIKE '%' + @City + '%')

AND(@DateOfBirth IS NULL OR DateOfBirth = @DateOfBirth)

AND (@IsActive IS NULL OR IsActive =@IsActive)
 
END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Insert]
(
    @UserName NVARCHAR(100),
    @Email NVARCHAR(255),
    @Password NVARCHAR(500),
    @FirstName NVARCHAR(100),
    @MiddleName NVARCHAR(100) = NULL,
    @LastName NVARCHAR(100) ,
    @DisplayName NVARCHAR(200) ,
    @PhoneNumber NVARCHAR(25) ,
    @AlternatePhone NVARCHAR(25) = NULL,
    @AddressLine1 NVARCHAR(255) ,
    @AddressLine2 NVARCHAR(255) = NULL,
    @City NVARCHAR(100) ,
    @State NVARCHAR(100) ,
    @ZipCode NVARCHAR(20) ,
    @Country NVARCHAR(100) ,
    @DateOfBirth Date
    
)
AS
BEGIN
    INSERT INTO Users
    (
        UserName, Email, Password, FirstName, MiddleName,
        LastName, DisplayName, PhoneNumber, AlternatePhone,
        AddressLine1, AddressLine2, City, State,
        ZipCode, Country, DateOfBirth, CreatedBy,UpdatedBy,UpdatedDate
    )
    VALUES
    (
        @UserName, @Email, @Password, @FirstName, @MiddleName,
        @LastName, @DisplayName, @PhoneNumber, @AlternatePhone,
        @AddressLine1, @AddressLine2, @City, @State,
        @ZipCode, @Country, @DateOfBirth, SYSTEM_USER,NULL,NULL
    )

    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 21-06-2026 07:38:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Update]
(
    @Id INT,
    @UserName NVARCHAR(100),
    @Email NVARCHAR(255),
	@Password varchar(500),
    @FirstName NVARCHAR(100),
    @MiddleName NVARCHAR(100)=NULL,
    @LastName NVARCHAR(100)=NULL,
    @DisplayName NVARCHAR(200)=NULL,
    @PhoneNumber NVARCHAR(25)=NULL,
    @AlternatePhone NVARCHAR(25)=NULL,
    @AddressLine1 NVARCHAR(255)=NULL,
    @AddressLine2 NVARCHAR(255)=NULL,
    @City NVARCHAR(100)=NULL,
    @State NVARCHAR(100)=NULL,
    @ZipCode NVARCHAR(20)=NULL,
    @Country NVARCHAR(100)=NULL,
    @DateOfBirth DATE
    
)
AS
BEGIN
    UPDATE Users
    SET
        UserName = @UserName,
        Email = @Email,
		Password=@Password,
        FirstName = @FirstName,
        MiddleName = @MiddleName,
        LastName = @LastName,
        DisplayName = @DisplayName,
        PhoneNumber = @PhoneNumber,
        AlternatePhone = @AlternatePhone,
        AddressLine1 = @AddressLine1,
        AddressLine2 = @AddressLine2,
        City = @City,
        State = @State,
        ZipCode = @ZipCode,
        Country = @Country,
        DateOfBirth = @DateOfBirth,
        UpdatedBy =SYSTEM_USER,
        UpdatedDate = GETDATE()
    WHERE Id = @Id;
END
GO
