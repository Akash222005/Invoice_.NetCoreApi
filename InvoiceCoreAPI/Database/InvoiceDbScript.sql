USE [invoice]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Vendor_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_UpdateLastLogin]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByUserName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetByEmail]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Users_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Itemmaster_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Customer_Delete]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Update]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetPaged]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetById]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_GetAll]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP PROCEDURE IF EXISTS [dbo].[sp_Category_Delete]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [FK_Itemmaster_Category]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__CreatedD__0B5CAFEA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsDelete__0A688BB1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [DF__Vendor__IsActive__09746778]
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
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
ALTER TABLE [dbo].[Itemmaster] DROP CONSTRAINT IF EXISTS [DF_Itemmaster_CategoryId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__Create__7849DB76]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsDele__7755B73D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [DF__Customer__IsActi__76619304]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_CreatedDate]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [DF_Category_IsActive]
GO
/****** Object:  Index [UQ__Vendor__10C18F5CB687F248]    Script Date: 23-08-2026 08:59:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
ALTER TABLE [dbo].[Vendor] DROP CONSTRAINT IF EXISTS [UQ__Vendor__10C18F5CB687F248]
GO
/****** Object:  Index [UQ__Customer__066785217F109AB8]    Script Date: 23-08-2026 08:59:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
ALTER TABLE [dbo].[Customer] DROP CONSTRAINT IF EXISTS [UQ__Customer__066785217F109AB8]
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 08:59:45 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
ALTER TABLE [dbo].[Category] DROP CONSTRAINT IF EXISTS [UQ_Category_Code]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP TABLE IF EXISTS [dbo].[Vendor]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP TABLE IF EXISTS [dbo].[Users]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP TABLE IF EXISTS [dbo].[Itemmaster]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP TABLE IF EXISTS [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 08:59:45 PM ******/
DROP TABLE IF EXISTS [dbo].[Category]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](20) NOT NULL,
	[CustomerName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Customer__3214EC070A7E820B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[PasswordHash] [nvarchar](500) NOT NULL,
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
	[LastLoginDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Users__3214EC076D6C9B3B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VendorCode] [varchar](20) NOT NULL,
	[VendorName] [nvarchar](100) NOT NULL,
	[ContactPerson] [nvarchar](100) NULL,
	[MobileNo] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Address1] [nvarchar](200) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[ZipCode] [varchar](20) NULL,
	[GstNo] [varchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK__Vendor__3214EC07611AEB2E] PRIMARY KEY CLUSTERED 
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
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'AK002', N'Sriga Stores', N'Suresh', N'9876543211', N'suresh@lakshmistores.com', N'45 Market Street', N'Opp Railway Station', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'641001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.930' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T18:42:38.650' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'AK003', N'Green Foods', N'Manojkumar', N'9876543212', N'manoj@greenfoods.com', N'78 Main Road', N'Near Temple', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'625001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.930' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T12:45:41.853' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'SIP005', N'Royal Distributors', N'akash', N'9876543214', N'prakash@royaldist.com', N'22 Bazaar Road', N'Near Post Office', N'Erode', N'Tamil Nadu', N'India', N'638001', N'638001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.930' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T12:46:16.893' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'SIP006', N'Vijaya Agencies', N'Arun', N'9876543215', N'arun@vijayaagencies.com', N'55 Cross Street', N'Near School', N'Trichy', N'Tamil Nadu', N'india', N'620001', N'620001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.933' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T16:14:05.760' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'SIP007', N'Modern Mart', N'Dineshkumar', N'9876543216', N'dinesh@modernmart.com', N'67 Lake View', N'Near Park', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'632001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.933' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T12:49:43.383' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'AB008', N'Fresh Choice', N'Vignesh', N'9876543217', N'vignesh@freshchoice.com', N'89 Ring Road', N'Near Hospital', N'Tirunelveli', N'Tamil Nadu', N'US', N'627001', N'627001', 1, 1, N'sa', CAST(N'2026-06-26T22:12:44.933' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T16:13:43.920' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'AB009', N'Shree Exports', N'Balaji', N'9876543218', N'balaji@shreeexports.com', N'14 Industrial Estate', N'Phase 1', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'635109', 0, 1, N'sa', CAST(N'2026-06-26T22:12:44.933' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T18:48:04.003' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'ANXC010', N'PERFUMESHOP', N'yogesh', N'9994298521', N'yogi@eliteretail.com', N'105 MG Road', N'Shopping Mall', N'Bengaluru', N'Kerala', N'India', N'560001', N'560001', 0, 1, N'sa', CAST(N'2026-06-26T22:12:44.933' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T16:13:35.230' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'alajdjub', N'sriing', N'string', N'7598354889', N'string', N'string', N'string', N'villupuram', N'TN', N'string', N'string', N'string', 0, 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T12:51:27.610' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T15:52:54.917' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [CustomerCode], [CustomerName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', 1, 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T18:30:59.827' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
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
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'OI009', 63, 6, N'oil0010', N'OIL', N'SVS oil', N'LTR', CAST(150.00 AS Decimal(18, 2)), CAST(80.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 0, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-04-26T17:05:22.413' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-08-16T14:40:25.113' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'oi989', 65, 4, N'bao98', N'oil', N'cocount oil', N'LTR', CAST(500.00 AS Decimal(18, 2)), CAST(89.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-05-17T16:49:37.280' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-08-16T15:58:47.737' AS DateTime))
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'TEST001', 67, 1, N'ITM001', N'Rice', N'ponni rice', N'KG', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-08-09T20:33:14.880' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'TEST001', 68, 1, N'ITM001', N'Rice', N'seraga rice', N'KG', CAST(100.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 1, N'sa', CAST(N'2026-08-16T12:52:26.483' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Itemmaster] ([ItemBarCode], [Id], [CategoryId], [ItemCode], [ItemName], [Description], [Uom], [Rate], [MinimumStock], [MaximumStock], [IsActive], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (N'OI002', 69, 4, N'OILOO3', N'Oil', N'sunflower oil', N'LTR', CAST(120.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-08-16T14:30:44.080' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Itemmaster] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'akash001', N'akashnd009@gmail.com', N'Hash123', N'Akash', NULL, N'N', N'Akash N', N'7598354889', NULL, N'12 Main Road', NULL, N'Villupuram', N'Tamil Nadu', N'605602', N'India', NULL, 1, 0, CAST(N'2026-08-23T07:27:08.240' AS DateTime), N'Admin', CAST(N'2026-08-23T07:00:46.350' AS DateTime), N'Admin', CAST(N'2026-08-23T13:48:00.653' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'joseph', N'joseph@gmail.com', N'Joseph234', N'Joseph', NULL, N'Raj', N'Joseph Raj', N'9876543212', NULL, N'45, Anna Nagar', NULL, N'Chennai', N'Tamil Nadu', N'600040', N'India', CAST(N'2000-06-15' AS Date), 0, 1, NULL, N'Akash', CAST(N'2026-08-23T07:16:53.263' AS DateTime), N'Admin', CAST(N'2026-08-23T07:20:22.353' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'string', N'string', N'ajith234', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, CAST(N'2026-08-23T07:31:17.457' AS DateTime), N'Akash', CAST(N'2026-08-23T07:29:45.047' AS DateTime), N'null', CAST(N'2026-08-23T14:58:01.993' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'akash', N'akashakash50022@gmail.com', N'AQAAAAIAAYagAAAAED4fXTVnwtWWgyz1oxOS2It1hMmXsnGrqrhHq0RSYrfv1eMYzBGY19t6eWQO6cdomA==', N'Akash', N'', N'N', N'Akash N', N'7598354889', N'9626479263', N'Mariamman kovil street,Virattikuppam', N'', N'Villupuram', N'Tamilnadu', N'605602', N'India', CAST(N'2005-03-22' AS Date), 1, 0, CAST(N'2026-08-23T14:10:41.980' AS DateTime), N'Akash', CAST(N'2026-08-23T12:32:56.540' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'pooja', N'poojapooja10@gmail.com', N'AQAAAAIAAYagAAAAEAPkjopClGwpCeG5ifC8anzQQXN21a72Ib3K7MoeN0ThYJ5haA8l21DeyzaxK7Z+rg==', N'Pooja', N'', N'N', N'Pooja N', N'9787128038', N'1234567899', N'Alathur', N'', N'Villupuram', N'tamilnadu', N'605302', N'India', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'Akash', CAST(N'2026-08-23T12:48:25.993' AS DateTime), N'Admin', CAST(N'2026-08-23T13:17:01.633' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'vidk', N'strivojdng', N'AQAAAAIAAYagAAAAEC8MXvcT2xaVYInVk7WkAgrAT8BTr4RBc+ADxpURXG3R09iaZXibKSq0/qbZ2F0ByA==', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T14:59:30.413' AS DateTime), N'null', CAST(N'2026-08-23T14:59:55.250' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'vdslk', N'vpe', N'AQAAAAIAAYagAAAAEKhpOdBKK/8aKySRZKPa3d6Z63ILzea5EFdphTpOVXqXStjUACJz8kKa0npMpHLJnA==', N'string', N'string', N'string', N'vjoed', N'strivojvlng', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T15:03:06.543' AS DateTime), N'null', CAST(N'2026-08-23T15:03:37.307' AS DateTime))
GO
INSERT [dbo].[Users] ([Id], [UserName], [Email], [PasswordHash], [FirstName], [MiddleName], [LastName], [DisplayName], [PhoneNumber], [AlternatePhone], [AddressLine1], [AddressLine2], [City], [State], [ZipCode], [Country], [DateOfBirth], [IsActive], [IsDeleted], [LastLoginDate], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'abi', N'abiabi@gmail.com', N'AQAAAAIAAYagAAAAECNTYNEqu9cn1pxlhccJ12Qu1BnsOZt3Rgd1ixg/qXGsH81tSXws0FoHIDg25f4Zqg==', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'string', N'villupuram', N'tamilnadu', N'string', N'string', CAST(N'2026-08-23' AS Date), 0, 1, NULL, N'string', CAST(N'2026-08-23T15:19:07.103' AS DateTime), N'akash', CAST(N'2026-08-23T15:21:05.080' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'VEND001', N'Aavin Dairy', N'Murugan', N'9876543301', N'murugan@aavin.com', N'12 Milk Colony', N'Near Dairy Plant', N'Chennai', N'Tamil Nadu', N'India', N'600010', N'33AAACA1234A1Z5', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.390' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'VEND002', N'Britannia Distributors', N'Kumar', N'9876543302', N'kumar@britannia.com', N'45 Industrial Area', N'Phase 1', N'Coimbatore', N'Tamil Nadu', N'India', N'641001', N'33BBBCA2345B1Z6', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'VEND003', N'Sun Oil Suppliers', N'Ravi', N'9876543303', N'ravi@sunoil.com', N'78 Market Road', N'Near Bus Stand', N'Madurai', N'Tamil Nadu', N'India', N'625001', N'33CCCCA3456C1Z7', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'VEND004', N'Fresh Farm Foods', N'Sathish', N'9876543304', N'sathish@freshfarm.com', N'10 Farmers Street', N'Near Temple', N'Salem', N'Tamil Nadu', N'India', N'636001', N'33DDDCA4567D1Z8', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'VEND005', N'Golden Rice Traders', N'Prakash', N'9876543305', N'prakash@goldenrice.com', N'22 Rice Market', N'Godown Area', N'Erode', N'Tamil Nadu', N'India', N'638001', N'33EEECA5678E1Z9', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'VEND006', N'Elite Beverages', N'Arun', N'9876543306', N'arun@elitebev.com', N'55 Beverage Park', N'Near Highway', N'Trichy', N'Tamil Nadu', N'India', N'620001', N'33FFFCA6789F1Y1', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'VEND007', N'Modern Snacks Pvt Ltd', N'Dinesh', N'9876543307', N'dinesh@modernsnacks.com', N'67 Food Street', N'Industrial Estate', N'Vellore', N'Tamil Nadu', N'India', N'632001', N'33GGGCA7890G1Y2', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'VEND008', N'Shree Pulses Agency', N'Balaji', N'9876543308', N'balaji@shreepulses.com', N'89 Wholesale Market', N'Near Railway Station', N'Tirunelveli', N'Tamil Nadu', N'India', N'627001', N'33HHHCA8901H1Y3', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'VEND009', N'Royal Consumer Goods', N'Hari', N'9876543309', N'hari@royalcg.com', N'14 Commercial Complex', N'Phase 2', N'Hosur', N'Tamil Nadu', N'India', N'635109', N'33IIICA9012I1Y4', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.393' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'VEND011', N'Prime Agro Suppliers', N'Rajesh', N'9876543321', N'rajesh@primeagro.com', N'25 Gandhi Nagar', N'Near Vegetable Market', N'Namakkal', N'Tamil Nadu', N'India', N'637001', N'33KLMNO1234P1Z6', 1, 1, N'sa', CAST(N'2026-06-26T22:19:36.397' AS DateTime), N'sa', CAST(N'2026-06-26T22:20:31.197' AS DateTime))
GO
INSERT [dbo].[Vendor] ([Id], [VendorCode], [VendorName], [ContactPerson], [MobileNo], [Email], [Address1], [Address2], [City], [State], [Country], [ZipCode], [GstNo], [IsActive], [IsDeleted], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'apj0019', N'royal enfiled', N'akash', N'7598354889', N'qKAKJDG@GMAIL.COM', N'eryikdjcvfbnmcc', N'string', N'VPM', N'kerela', N'string', N'6050298', N'string', 1, 1, N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-06-28T17:44:15.293' AS DateTime), N'DESKTOP-L49SQD0\AKASH', CAST(N'2026-08-02T12:14:02.747' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Category_Code]    Script Date: 23-08-2026 08:59:45 PM ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Customer__066785217F109AB8]    Script Date: 23-08-2026 08:59:45 PM ******/
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [UQ__Customer__066785217F109AB8] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Vendor__10C18F5CB687F248]    Script Date: 23-08-2026 08:59:45 PM ******/
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [UQ__Vendor__10C18F5CB687F248] UNIQUE NONCLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsActi__76619304]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__7755B73D]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__7849DB76]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsActive__625A9A57]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__634EBE90]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreatedDa__6442E2C9]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsActive__09746778]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsDelete__0A688BB1]  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__CreatedD__0B5CAFEA]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Delete]

(
@Id INT
)
AS 
BEGIN

DELETE FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetAll]

AS
BEGIN

SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Customer

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetById]
(
@Id INT
)
AS 
BEGIN

SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_GetPaged]
(
@CustomerCode VARCHAR(20) = NULL,
@CustomerName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@PageNumber INT =1,
@Pagesize INT =10
)

AS 
BEGIN

	SET NOCOUNT ON;

	IF (@PageNumber <=0) SET @PageNumber =1;
	IF (@pageSize <=0) SET @pageSize =10;

	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;

    SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,State,Country,ZipCode,GstNo,
    IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,

COUNT(*) OVER() AS TotalRecords

FROM Customer

WHERE
(@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')AND
(@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

ORDER BY Id ASC
OFFSET @offset ROWS

FETCH NEXT @PageSize ROWS ONLY;

SELECT

COUNT (1) AS TotalRecords

FROM Customer

WHERE
(@CustomerCode IS NULL OR CustomerCode LIKE '%' + @CustomerCode + '%')AND
(@CustomerName IS NULL OR CustomerName LIKE '%' + @CustomerName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_Customer_Insert]
(
@CustomerCode varchar(20),
@CustomerName nvarchar(100),
@ContactPerson nvarchar(100)= NULL,
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL
)

AS 
BEGIN
SET NOCOUNT ON;
INSERT INTO Customer
(
CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,CreatedBy,UpdatedBy,UpdatedDate
)
VALUES
(
@CustomerCode,@CustomerName,@ContactPerson,@MobileNo,@Email,@Address1,@Address2,@City,@State,@Country,@ZipCode,@GstNo,SYSTEM_USER,
NULL,NULL
)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Customer_Update]
(
@Id INT,
@CustomerCode varchar(20),
@CustomerName nvarchar(20),
@ContactPerson nvarchar(100)= NULL,
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL,
@IsActive BIT
)
AS 
BEGIN

Update Customer
SET
CustomerCode=@CustomerCode,
CustomerName=@CustomerName,
ContactPerson=@ContactPerson,
MobileNo=@MobileNo,
Email=@Email,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
Country=@Country,
ZipCode=@ZipCode,
GstNo=@GstNo,
IsActive = @IsActive,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
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
	 SELECT @Id AS Id;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll]
AS
BEGIN
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    ORDER BY I.Id ASC;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 23-08-2026 08:59:45 PM ******/
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
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
    FROM dbo.Itemmaster I
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
    WHERE I.Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
(
    @CategoryId INT = NULL,
    @ItemBarCode VARCHAR(25) = NULL,
    @ItemCode VARCHAR(10) = NULL,
    @ItemName VARCHAR(100) = NULL,
    @Uom VARCHAR(3) = NULL,
    @IsActive BIT = NULL,
    @PageNumber INT = 1,
    @PageSize INT = 10
)
AS
BEGIN
    SET NOCOUNT OFF;
 
    -- Default paging values
    IF (@PageNumber <= 0)
        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)
        SET @PageSize = 10;
 
    DECLARE @Offset INT;
 
    SET @Offset = (@PageNumber - 1) * @PageSize;
 
 
    ------------------------------------------------------------
    -- RESULT SET 1 : PAGED ITEMMASTER DATA
    ------------------------------------------------------------
 
    SELECT
        I.Id,
        I.CategoryId,
 
        C.Code AS CategoryCode,
        C.Name AS CategoryName,
 
        I.ItemBarCode,
        I.Itemcode,
        I.Itemname,
        I.Description,
        I.Uom,
        I.Rate,
        I.Minimumstock,
        I.Maximumstock,
        I.IsActive,
        I.Createdby,
        I.Createddate,
        I.Updatedby,
        I.Updateddate
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive)
 
    ORDER BY I.Id DESC
 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
 
 
    ------------------------------------------------------------
    -- RESULT SET 2 : TOTAL RECORD COUNT
    ------------------------------------------------------------
 
    SELECT
        COUNT(1) AS TotalRecords
 
    FROM dbo.Itemmaster I
 
    INNER JOIN dbo.Category C
        ON I.CategoryId = C.Id
 
    WHERE
        (@CategoryId IS NULL
            OR I.CategoryId = @CategoryId)
 
        AND (@ItemBarCode IS NULL
            OR I.ItemBarCode LIKE '%' + @ItemBarCode + '%')
 
        AND (@ItemCode IS NULL
            OR I.Itemcode LIKE '%' + @ItemCode + '%')
 
        AND (@ItemName IS NULL
            OR I.Itemname LIKE '%' + @ItemName + '%')
 
        AND (@Uom IS NULL
            OR I.Uom LIKE '%' + @Uom + '%')
 
        AND (@IsActive IS NULL
            OR I.IsActive = @IsActive);
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert]
(
    @CategoryId INT,
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
)
AS
BEGIN
    INSERT INTO Itemmaster
    (
        CategoryId, 
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
		Updateddate
    )
    VALUES
    (
        @CategoryId, 
		@ItemBarCode, 
		@Itemcode, 
		@Itemname,
        @Description, 
		@Uom, 
		@Rate,
        @Minimumstock, 
		@Maximumstock,
        @IsActive, 
		SYSTEM_USER,
		GETDATE(),
        NULL, 
		NULL
    )
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Itemmaster_Update]
(
    @Id INT,
    @CategoryId INT,
    @ItemBarCode VARCHAR(25),
    @Itemcode VARCHAR(10),
    @Itemname VARCHAR(100),
    @Description VARCHAR(250),
    @Uom VARCHAR(3),
    @Rate DECIMAL(18,2),
    @Minimumstock DECIMAL(18,2),
    @Maximumstock DECIMAL(18,2),
    @IsActive BIT
)
AS
BEGIN
    SET NOCOUNT OFF;
 
    UPDATE dbo.Itemmaster
    SET
        CategoryId = @CategoryId,
        ItemBarCode = @ItemBarCode,
        Itemcode = @Itemcode,
        Itemname = @Itemname,
        Description = @Description,
        Uom = @Uom,
        Rate = @Rate,
        Minimumstock = @Minimumstock,
        Maximumstock = @Maximumstock,
        IsActive = @IsActive,
        Updatedby = SYSTEM_USER,
        Updateddate = GETDATE()
    WHERE Id = @Id;
 
    SELECT @Id AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Delete]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Delete]
(
    @Id        INT,
    @UpdatedBy NVARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Id = @Id
          AND IsDeleted = 0
    )
    BEGIN
        SELECT CAST(0 AS BIT) AS Success;
        RETURN;
    END;
 
    UPDATE dbo.Users
    SET
        IsDeleted  = 1,
        IsActive   = 0,
        UpdatedBy  = @UpdatedBy,
        UpdatedDate = GETUTCDATE()
    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetAll]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetAll]

AS

BEGIN

    SET NOCOUNT ON;
 
    SELECT

        Id,

        UserName,

        Email,

        FirstName,

        MiddleName,

        LastName,

        DisplayName,

        PhoneNumber,

        AlternatePhone,

        AddressLine1,

        AddressLine2,

        City,

        State,

        ZipCode,

        Country,

        DateOfBirth,

        IsActive,

        IsDeleted,

        LastLoginDate,

        CreatedBy,

        CreatedDate,

        UpdatedBy,

        UpdatedDate

    FROM dbo.Users

    WHERE IsDeleted = 0

    ORDER BY Id;

END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByEmail]    Script Date: 23-08-2026 08:59:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByEmail]
(
    @Email VARCHAR(255)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        LastName,
        DisplayName,
        IsActive,
        IsDeleted
    FROM dbo.Users
    WHERE Email = @Email;
END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetById]    Script Date: 23-08-2026 08:59:46 PM ******/
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
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        LastLoginDate,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.Users
    WHERE Id = @Id
      AND IsDeleted = 0;
END
 
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetByUserName]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetByUserName]
(
    @UserName VARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        Id,
        UserName,
        Email,
        PasswordHash,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        IsActive,
        IsDeleted,
        LastLoginDate
    FROM dbo.Users
    WHERE UserName = @UserName;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_GetPaged]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_GetPaged]
(
    @UserName    VARCHAR(100) = NULL,
    @Email       VARCHAR(255) = NULL,
    @FirstName   VARCHAR(100) = NULL,
    @LastName    VARCHAR(100) = NULL,
    @IsActive    BIT = NULL,
    @PageNumber  INT = 1,
    @PageSize    INT = 10
)
AS
BEGIN
    SET NOCOUNT OFF;
 
    IF (@PageNumber <= 0)
        SET @PageNumber = 1;
 
    IF (@PageSize <= 0)
        SET @PageSize = 10;
 
    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;
 
    /*
        ============================================================
        RESULT SET 1
        Paged User Records
        ============================================================
    */
 
    SELECT
        Id,
        UserName,
        Email,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        LastLoginDate,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate,
 
        COUNT(*) OVER() AS TotalRecords
 
    FROM dbo.Users
 
    WHERE
        IsDeleted = 0
 
        AND
        (
            @UserName IS NULL
            OR UserName LIKE '%' + @UserName + '%'
        )
 
        AND
        (
            @Email IS NULL
            OR Email LIKE '%' + @Email + '%'
        )
 
        AND
        (
            @FirstName IS NULL
            OR FirstName LIKE '%' + @FirstName + '%'
        )
 
        AND
        (
            @LastName IS NULL
            OR LastName LIKE '%' + @LastName + '%'
        )
 
        AND
        (
            @IsActive IS NULL
            OR IsActive = @IsActive
        )
 
    ORDER BY Id ASC
 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
 
 
    SELECT
        COUNT(1) AS TotalRecords
 
    FROM dbo.Users
 
    WHERE
        IsDeleted = 0
 
        AND
        (
            @UserName IS NULL
            OR UserName LIKE '%' + @UserName + '%'
        )
 
        AND
        (
            @Email IS NULL
            OR Email LIKE '%' + @Email + '%'
        )
 
        AND
        (
            @FirstName IS NULL
            OR FirstName LIKE '%' + @FirstName + '%'
        )
 
        AND
        (
            @LastName IS NULL
            OR LastName LIKE '%' + @LastName + '%'
        )
 
        AND
        (
            @IsActive IS NULL
            OR IsActive = @IsActive
        );
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Insert]
(
    @UserName       VARCHAR(100),
    @Email          VARCHAR(255),
    @PasswordHash   VARCHAR(500),
    @FirstName      VARCHAR(100),
    @MiddleName     VARCHAR(100) = NULL,
    @LastName       VARCHAR(100),
    @DisplayName    VARCHAR(200),
    @PhoneNumber    VARCHAR(25),
    @AlternatePhone VARCHAR(25) = NULL,
    @AddressLine1   VARCHAR(255),
    @AddressLine2   VARCHAR(255) = NULL,
    @City           VARCHAR(100),
    @State          VARCHAR(100),
    @ZipCode        VARCHAR(20),
    @Country        VARCHAR(100),
    @DateOfBirth    DATE = NULL,
    @IsActive       BIT = 1,
    @CreatedBy      NVARCHAR(100)
)
AS
BEGIN
    SET NOCOUNT ON;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE UserName = @UserName
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50001, 'Username already exists.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Email = @Email
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50002, 'Email already exists.', 1;
    END;
 
    INSERT INTO dbo.Users
    (
        UserName,
        Email,
        PasswordHash,
        FirstName,
        MiddleName,
        LastName,
        DisplayName,
        PhoneNumber,
        AlternatePhone,
        AddressLine1,
        AddressLine2,
        City,
        State,
        ZipCode,
        Country,
        DateOfBirth,
        IsActive,
        IsDeleted,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @UserName,
        @Email,
        @PasswordHash,
        @FirstName,
        @MiddleName,
        @LastName,
        @DisplayName,
        @PhoneNumber,
        @AlternatePhone,
        @AddressLine1,
        @AddressLine2,
        @City,
        @State,
        @ZipCode,
        @Country,
        @DateOfBirth,
        @IsActive,
        0,
        @CreatedBy,
        GETUTCDATE()
    );
 
    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Update]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_Update]
(
    @Id             INT,
    @UserName       VARCHAR(100),
    @Email          VARCHAR(255),
    @FirstName      VARCHAR(100),
    @MiddleName     VARCHAR(100) = NULL,
    @LastName       VARCHAR(100),
    @DisplayName    VARCHAR(200),
    @PhoneNumber    VARCHAR(25),
    @AlternatePhone VARCHAR(25) = NULL,
    @AddressLine1   VARCHAR(255),
    @AddressLine2   VARCHAR(255) = NULL,
    @City           VARCHAR(100),
    @State          VARCHAR(100),
    @ZipCode        VARCHAR(20),
    @Country        VARCHAR(100),
    @DateOfBirth    DATE = NULL,
    @IsActive       BIT,
    @UpdatedBy      NVARCHAR(100)
)
AS
BEGIN
   -- SET NOCOUNT ON;
 
    IF NOT EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Id = @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50003, 'User not found.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE UserName = @UserName
          AND Id <> @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50004, 'Username already exists.', 1;
    END;
 
    IF EXISTS
    (
        SELECT 1
        FROM dbo.Users
        WHERE Email = @Email
          AND Id <> @Id
          AND IsDeleted = 0
    )
    BEGIN
        THROW 50005, 'Email already exists.', 1;
    END;
 
    UPDATE dbo.Users
    SET
        UserName       = @UserName,
        Email          = @Email,
        FirstName      = @FirstName,
        MiddleName     = @MiddleName,
        LastName       = @LastName,
        DisplayName    = @DisplayName,
        PhoneNumber    = @PhoneNumber,
        AlternatePhone = @AlternatePhone,
        AddressLine1   = @AddressLine1,
        AddressLine2   = @AddressLine2,
        City           = @City,
        State          = @State,
        ZipCode        = @ZipCode,
        Country        = @Country,
        DateOfBirth    = @DateOfBirth,
        IsActive       = @IsActive,
        UpdatedBy      = @UpdatedBy,
        UpdatedDate    = GETUTCDATE()
    WHERE Id = @Id;
 
    SELECT CAST(1 AS BIT) AS Success;
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Users_UpdateLastLogin]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Users_UpdateLastLogin]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;
 
    UPDATE dbo.Users
    SET
        LastLoginDate = GETUTCDATE()
    WHERE Id = @Id
      AND IsDeleted = 0
      AND IsActive = 1;
 
    SELECT CAST(1 AS BIT) AS Success;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_Delete]
(
@Id INT
)
AS 
BEGIN

DELETE FROM Vendor

WHERE Id=@Id

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetAll]

AS
BEGIN

SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Vendor

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetById]
(
@Id INT
)

AS
BEGIN

SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Vendor
WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_GetPaged]
(
@VendorCode VARCHAR(20) = NULL,
@VendorName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@PageNumber INT =1,
@PageSize INT =10
)

AS 
BEGIN

	SET NOCOUNT ON;

	IF (@PageNumber <=0) SET @PageNumber =1;
	IF (@pageSize <=0) SET @pageSize =10;

	DECLARE @offset INT = ( @pageNumber -1) * @PageSize;

    SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,State,Country,ZipCode,GstNo,
    IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate,

COUNT(*) OVER() AS TotalRecords

FROM Vendor

WHERE
(@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')AND
(@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

ORDER BY Id ASC
OFFSET @offset ROWS

FETCH NEXT @PageSize ROWS ONLY;

SELECT

COUNT (1) AS TotalRecords

FROM Vendor

WHERE
(@VendorCode IS NULL OR VendorCode LIKE '%' + @VendorCode + '%')AND
(@VendorName IS NULL OR VendorName LIKE '%' + @VendorName + '%')AND
(@MobileNo IS NULL OR MobileNo LIKE '%' + @MobileNo + '%') AND
(@City IS NULL OR City LIKE '%' + @City + '%') 

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_Vendor_Insert]
(
@VendorCode varchar(20),
@VendorName nvarchar(100),
@ContactPerson nvarchar(100) = NULL,
@MobileNo varchar(20) = NULL,
@Email varchar(100) = NULL,
@Address1 nvarchar(200) = NULL,
@Address2 nvarchar(200) = NULL,
@City nvarchar(100) = NULL,
@State nvarchar(100) = NULL,
@Country nvarchar(100) = NULL,
@ZipCode varchar(20) = NULL,
@GstNo varchar(50) = NULL
)
AS
BEGIN

INSERT INTO Vendor
(
VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,CreatedBy,UpdatedBy,UpdatedDate
)
VALUES
(
@VendorCode,@VendorName,@ContactPerson,@MobileNo,@Email,@Address1,@Address2,@City,@State,@Country,@ZipCode,@GstNo,SYSTEM_USER,
NULL,NULL
)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 23-08-2026 08:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Vendor_Update]
(
@Id INT,
@VendorCode varchar(20),
@VendorName nvarchar(100),
@ContactPerson nvarchar(100),
@MobileNo varchar(20)= NULL,
@Email varchar(100)= NULL,
@Address1 nvarchar(200)= NULL,
@Address2 nvarchar(200)= NULL,
@City nvarchar(100)= NULL,
@State nvarchar(100)= NULL,
@Country nvarchar(100)= NULL,
@ZipCode varchar(20)= NULL,
@GstNo varchar(50)= NULL,
@IsActive BIT
)
AS 
BEGIN

UPDATE Vendor
SET

VendorCode=@VendorCode,
VendorName=@VendorName,
ContactPerson=@ContactPerson,
MobileNo=@MobileNo,
Email=@Email,
Address1=@Address1,
Address2=@Address2,
City=@City,
State=@State,
Country=@Country,
ZipCode=@ZipCode,
GstNo=@GstNo,
IsActive = @IsActive,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO
