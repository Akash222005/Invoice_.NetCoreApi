CREATE TABLE [dbo].[ReceiptDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NOT NULL,
	[PurchaseOrderDetailId] [int] NOT NULL,
	[ItemmasterId] [int] NOT NULL,
	[ReceivedQuantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](5, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[LineTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ReceiptDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_ReceiptDetail_Receipt_POLine] UNIQUE NONCLUSTERED 
(
	[ReceiptId] ASC,
	[PurchaseOrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SalesInvoice]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesInvoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalesInvoice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [varchar](30) NOT NULL,
	[InvoiceDate] [datetime] NOT NULL,
	[DueDate] [datetime] NULL,
	[CustomerId] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_SalesInvoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_SalesInvoice_InvoiceNumber] UNIQUE NONCLUSTERED 
(
	[InvoiceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SalesInvoiceDetail]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SalesInvoiceDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesInvoiceId] [int] NOT NULL,
	[ItemmasterId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](5, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[LineTotal] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SalesInvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Itemmaster]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itemmaster]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Receipt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Receipt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptNumber] [varchar](30) NOT NULL,
	[ReceiptDate] [datetime] NOT NULL,
	[PurchaseOrderId] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Receipt_ReceiptNumber] UNIQUE NONCLUSTERED 
(
	[ReceiptNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  View [dbo].[vw_ItemStock]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_ItemStock]'))
EXEC dbo.sp_executesql @statement = N'
/* ============================================================
   E. STOCK  (derived: posted receipts - posted sales invoices)
   ============================================================ */
CREATE   VIEW [dbo].[vw_ItemStock]
AS
SELECT
    I.Id AS ItemmasterId,
    I.ItemCode AS ItemCode,
    I.ItemName AS ItemName,
    CAST(ISNULL(R.Qty, 0) AS DECIMAL(18,2)) AS ReceivedQuantity,
    CAST(ISNULL(S.Qty, 0) AS DECIMAL(18,2)) AS SoldQuantity,
    CAST(ISNULL(R.Qty, 0) - ISNULL(S.Qty, 0) AS DECIMAL(18,2)) AS OnHandQuantity
FROM dbo.Itemmaster I
LEFT JOIN
(
    SELECT D.ItemmasterId, SUM(D.ReceivedQuantity) AS Qty
    FROM dbo.ReceiptDetail D
    INNER JOIN dbo.Receipt H ON H.Id = D.ReceiptId
    WHERE H.Status = ''Posted'' AND H.IsDeleted = 0
    GROUP BY D.ItemmasterId
) R ON R.ItemmasterId = I.Id
LEFT JOIN
(
    SELECT D.ItemmasterId, SUM(D.Quantity) AS Qty
    FROM dbo.SalesInvoiceDetail D
    INNER JOIN dbo.SalesInvoice H ON H.Id = D.SalesInvoiceId
    WHERE H.Status = ''Posted'' AND H.IsDeleted = 0
    GROUP BY D.ItemmasterId
) S ON S.ItemmasterId = I.Id;
' 
GO
/****** Object:  Table [dbo].[Category]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Category_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Customer]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Customer__066785217F109AB8] UNIQUE NONCLUSTERED 
(
	[CustomerCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PONumber] [varchar](30) NOT NULL,
	[PODate] [datetime] NOT NULL,
	[VendorId] [int] NOT NULL,
	[Status] [varchar](20) NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[SubTotal] [decimal](18, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_PurchaseOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_PurchaseOrder_PONumber] UNIQUE NONCLUSTERED 
(
	[PONumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PurchaseOrderDetail]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PurchaseOrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderId] [int] NOT NULL,
	[ItemmasterId] [int] NOT NULL,
	[Quantity] [decimal](18, 2) NOT NULL,
	[Rate] [decimal](18, 2) NOT NULL,
	[DiscountAmount] [decimal](18, 2) NOT NULL,
	[TaxPercent] [decimal](5, 2) NOT NULL,
	[TaxAmount] [decimal](18, 2) NOT NULL,
	[LineTotal] [decimal](18, 2) NOT NULL,
	[ReceivedQuantity] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PurchaseOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Vendor]') AND type in (N'U'))
BEGIN
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Vendor__10C18F5CB687F248] UNIQUE NONCLUSTERED 
(
	[VendorCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Category_IsActive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_IsActive]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Category_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Customer__IsActi__76619304]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsActi__76619304]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Customer__IsDele__7755B73D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__IsDele__7755B73D]  DEFAULT ((1)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Customer__Create__7849DB76]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__Create__7849DB76]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Itemmaster_CategoryId]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Itemmaster] ADD  CONSTRAINT [DF_Itemmaster_CategoryId]  DEFAULT ((1)) FOR [CategoryId]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_Status]  DEFAULT ('Draft') FOR [Status]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_SubTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_SubTotal]  DEFAULT ((0)) FOR [SubTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_TotalAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_TotalAmount]  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrder_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrder] ADD  CONSTRAINT [DF_PurchaseOrder_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrderDetail_DiscountAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_DiscountAmount]  DEFAULT ((0)) FOR [DiscountAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrderDetail_TaxPercent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_TaxPercent]  DEFAULT ((0)) FOR [TaxPercent]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrderDetail_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrderDetail_LineTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_LineTotal]  DEFAULT ((0)) FOR [LineTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_PurchaseOrderDetail_ReceivedQuantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[PurchaseOrderDetail] ADD  CONSTRAINT [DF_PurchaseOrderDetail_ReceivedQuantity]  DEFAULT ((0)) FOR [ReceivedQuantity]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_Status]  DEFAULT ('Draft') FOR [Status]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_SubTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_SubTotal]  DEFAULT ((0)) FOR [SubTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_TotalAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_TotalAmount]  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Receipt_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Receipt] ADD  CONSTRAINT [DF_Receipt_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReceiptDetail_DiscountAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReceiptDetail] ADD  CONSTRAINT [DF_ReceiptDetail_DiscountAmount]  DEFAULT ((0)) FOR [DiscountAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReceiptDetail_TaxPercent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReceiptDetail] ADD  CONSTRAINT [DF_ReceiptDetail_TaxPercent]  DEFAULT ((0)) FOR [TaxPercent]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReceiptDetail_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReceiptDetail] ADD  CONSTRAINT [DF_ReceiptDetail_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ReceiptDetail_LineTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ReceiptDetail] ADD  CONSTRAINT [DF_ReceiptDetail_LineTotal]  DEFAULT ((0)) FOR [LineTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_Status]  DEFAULT ('Draft') FOR [Status]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_SubTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_SubTotal]  DEFAULT ((0)) FOR [SubTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_TotalAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_TotalAmount]  DEFAULT ((0)) FOR [TotalAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_IsDeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoice_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoice] ADD  CONSTRAINT [DF_SalesInvoice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoiceDetail_DiscountAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoiceDetail] ADD  CONSTRAINT [DF_SalesInvoiceDetail_DiscountAmount]  DEFAULT ((0)) FOR [DiscountAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoiceDetail_TaxPercent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoiceDetail] ADD  CONSTRAINT [DF_SalesInvoiceDetail_TaxPercent]  DEFAULT ((0)) FOR [TaxPercent]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoiceDetail_TaxAmount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoiceDetail] ADD  CONSTRAINT [DF_SalesInvoiceDetail_TaxAmount]  DEFAULT ((0)) FOR [TaxAmount]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_SalesInvoiceDetail_LineTotal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[SalesInvoiceDetail] ADD  CONSTRAINT [DF_SalesInvoiceDetail_LineTotal]  DEFAULT ((0)) FOR [LineTotal]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Users__IsActive__625A9A57]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsActive__625A9A57]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Users__IsDeleted__634EBE90]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__IsDeleted__634EBE90]  DEFAULT ((0)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Users__CreatedDa__6442E2C9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF__Users__CreatedDa__6442E2C9]  DEFAULT (getutcdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Vendor__IsActive__09746778]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsActive__09746778]  DEFAULT ((1)) FOR [IsActive]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Vendor__IsDelete__0A688BB1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__IsDelete__0A688BB1]  DEFAULT ((1)) FOR [IsDeleted]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Vendor__CreatedD__0B5CAFEA]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Vendor] ADD  CONSTRAINT [DF__Vendor__CreatedD__0B5CAFEA]  DEFAULT (getdate()) FOR [CreatedDate]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Itemmaster_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itemmaster]'))
ALTER TABLE [dbo].[Itemmaster]  WITH CHECK ADD  CONSTRAINT [FK_Itemmaster_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Itemmaster_Category]') AND parent_object_id = OBJECT_ID(N'[dbo].[Itemmaster]'))
ALTER TABLE [dbo].[Itemmaster] CHECK CONSTRAINT [FK_Itemmaster_Category]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrder_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]'))
ALTER TABLE [dbo].[PurchaseOrder]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrder_Vendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrder_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]'))
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [FK_PurchaseOrder_Vendor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrderDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_Itemmaster] FOREIGN KEY([ItemmasterId])
REFERENCES [dbo].[Itemmaster] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrderDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_Itemmaster]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrderDetail_PurchaseOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrder] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PurchaseOrderDetail_PurchaseOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [FK_PurchaseOrderDetail_PurchaseOrder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Receipt_PurchaseOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_PurchaseOrder] FOREIGN KEY([PurchaseOrderId])
REFERENCES [dbo].[PurchaseOrder] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Receipt_PurchaseOrder]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_PurchaseOrder]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Receipt_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [FK_Receipt_Vendor] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Receipt_Vendor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [FK_Receipt_Vendor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Itemmaster] FOREIGN KEY([ItemmasterId])
REFERENCES [dbo].[Itemmaster] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Itemmaster]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_PurchaseOrderDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_PurchaseOrderDetail] FOREIGN KEY([PurchaseOrderDetailId])
REFERENCES [dbo].[PurchaseOrderDetail] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_PurchaseOrderDetail]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_PurchaseOrderDetail]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_Receipt]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptDetail_Receipt] FOREIGN KEY([ReceiptId])
REFERENCES [dbo].[Receipt] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ReceiptDetail_Receipt]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [FK_ReceiptDetail_Receipt]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoice_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoice_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoice_Customer]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice] CHECK CONSTRAINT [FK_SalesInvoice_Customer]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoiceDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoiceDetail_Itemmaster] FOREIGN KEY([ItemmasterId])
REFERENCES [dbo].[Itemmaster] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoiceDetail_Itemmaster]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail] CHECK CONSTRAINT [FK_SalesInvoiceDetail_Itemmaster]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoiceDetail_SalesInvoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesInvoiceDetail_SalesInvoice] FOREIGN KEY([SalesInvoiceId])
REFERENCES [dbo].[SalesInvoice] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SalesInvoiceDetail_SalesInvoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail] CHECK CONSTRAINT [FK_SalesInvoiceDetail_SalesInvoice]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_PurchaseOrder_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]'))
ALTER TABLE [dbo].[PurchaseOrder]  WITH NOCHECK ADD  CONSTRAINT [CK_PurchaseOrder_Status] CHECK  (([Status]='Cancelled' OR [Status]='Received' OR [Status]='PartiallyReceived' OR [Status]='Approved' OR [Status]='Draft'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_PurchaseOrder_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrder]'))
ALTER TABLE [dbo].[PurchaseOrder] CHECK CONSTRAINT [CK_PurchaseOrder_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_PurchaseOrderDetail_ReceivedQuantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail]  WITH CHECK ADD  CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQuantity] CHECK  (([ReceivedQuantity]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_PurchaseOrderDetail_ReceivedQuantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[PurchaseOrderDetail]'))
ALTER TABLE [dbo].[PurchaseOrderDetail] CHECK CONSTRAINT [CK_PurchaseOrderDetail_ReceivedQuantity]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Receipt_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt]  WITH CHECK ADD  CONSTRAINT [CK_Receipt_Status] CHECK  (([Status]='Cancelled' OR [Status]='Posted' OR [Status]='Draft'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Receipt_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Receipt]'))
ALTER TABLE [dbo].[Receipt] CHECK CONSTRAINT [CK_Receipt_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ReceiptDetail_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail]  WITH CHECK ADD  CONSTRAINT [CK_ReceiptDetail_Quantity] CHECK  (([ReceivedQuantity]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ReceiptDetail_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[ReceiptDetail]'))
ALTER TABLE [dbo].[ReceiptDetail] CHECK CONSTRAINT [CK_ReceiptDetail_Quantity]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoice_DueDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice]  WITH CHECK ADD  CONSTRAINT [CK_SalesInvoice_DueDate] CHECK  (([DueDate] IS NULL OR [DueDate]>=[InvoiceDate]))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoice_DueDate]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice] CHECK CONSTRAINT [CK_SalesInvoice_DueDate]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoice_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice]  WITH CHECK ADD  CONSTRAINT [CK_SalesInvoice_Status] CHECK  (([Status]='Cancelled' OR [Status]='Posted' OR [Status]='Draft'))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoice_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoice]'))
ALTER TABLE [dbo].[SalesInvoice] CHECK CONSTRAINT [CK_SalesInvoice_Status]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail]  WITH CHECK ADD  CONSTRAINT [CK_SalesInvoiceDetail_Discount] CHECK  (([DiscountAmount]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Discount]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail] CHECK CONSTRAINT [CK_SalesInvoiceDetail_Discount]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail]  WITH CHECK ADD  CONSTRAINT [CK_SalesInvoiceDetail_Quantity] CHECK  (([Quantity]>(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Quantity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail] CHECK CONSTRAINT [CK_SalesInvoiceDetail_Quantity]
GO
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Rate]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail]  WITH CHECK ADD  CONSTRAINT [CK_SalesInvoiceDetail_Rate] CHECK  (([Rate]>=(0)))
GO
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_SalesInvoiceDetail_Rate]') AND parent_object_id = OBJECT_ID(N'[dbo].[SalesInvoiceDetail]'))
ALTER TABLE [dbo].[SalesInvoiceDetail] CHECK CONSTRAINT [CK_SalesInvoiceDetail_Rate]
GO
/****** Object:  StoredProcedure [dbo].[sp_AI_CategoryItemCount]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_AI_CategoryItemCount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_AI_CategoryItemCount] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_AI_CategoryItemCount]
    @CategoryName NVARCHAR(25),
    @CategoryActiveOnly BIT,
    @ItemActiveOnly BIT
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT
        c.Name AS CategoryName,
        c.IsActive AS CategoryIsActive,
        COUNT(i.Id) AS ItemCount
    FROM Category c
    LEFT JOIN Itemmaster i
        ON i.CategoryId = c.Id
        AND (
            @ItemActiveOnly IS NULL
            OR i.IsActive = @ItemActiveOnly
        )
    WHERE
        c.Name = @CategoryName
        AND (
            @CategoryActiveOnly = 0
            OR c.IsActive = 1
        )
    GROUP BY
        c.Name,
        c.IsActive;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_Delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_Delete]

(

    @Id INT

)

AS

BEGIN

    DELETE FROM Category

    WHERE Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_GetAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_GetAll]

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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_GetById] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_GetById]

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
/****** Object:  StoredProcedure [dbo].[sp_Category_GetByName]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_GetByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_GetByName] AS' 
END
GO
ALTER   PROCEDURE [dbo].[sp_Category_GetByName]
    @Name NVARCHAR(25)
AS
BEGIN
    SET NOCOUNT ON;
 
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
    FROM dbo.Category
    WHERE Name = @Name;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Category_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_GetPaged] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_GetPaged]
 
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
/****** Object:  StoredProcedure [dbo].[sp_Category_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_Insert]

(

    @Code VARCHAR(5),

    @Name VARCHAR(25),

    @Description VARCHAR(100),

    @IsActive BIT

    

)

AS

BEGIN
SET NOCOUNT ON;

    INSERT INTO Category

    (

        Code,

        Name,

        Description,

        IsActive,

        CreatedBy,

        CreatedDate

    )
	OUTPUT INSERTED.Id

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
/****** Object:  StoredProcedure [dbo].[sp_Category_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Category_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Category_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Category_Update]

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
/****** Object:  StoredProcedure [dbo].[sp_Customer_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_Delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Customer_Delete]

(
@Id INT
)
AS 
BEGIN

DELETE FROM Customer

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_GetAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Customer_GetAll]

AS
BEGIN

SELECT Id,CustomerCode,CustomerName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Customer

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_GetById] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Customer_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_GetPaged] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Customer_GetPaged]
(
@CustomerCode VARCHAR(20) = NULL,
@CustomerName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@IsActive BIT = NULL,
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
AND
(
    @IsActive IS NULL
    OR IsActive = @IsActive
)

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
AND
(
    @IsActive IS NULL
    OR IsActive = @IsActive
)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Customer_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_Insert] AS' 
END
GO
ALTER procedure [dbo].[sp_Customer_Insert]
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
/****** Object:  StoredProcedure [dbo].[sp_Customer_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Customer_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Customer_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Customer_Update]
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
@IsActive BIT,
@IsDeleted BIT
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
IsDeleted = @IsDeleted,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_Delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_Delete]
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetActiveCountByCategory]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_GetActiveCountByCategory]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_GetActiveCountByCategory] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_GetActiveCountByCategory]
    @CategoryId INT
AS
BEGIN
    SET NOCOUNT ON;
 
    SELECT COUNT(*)
    FROM dbo.Itemmaster
    WHERE CategoryId = @CategoryId
      AND IsActive = 1;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_GetAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_GetAll]
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_GetById] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_GetPaged] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_GetPaged]
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_Insert]
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
/****** Object:  StoredProcedure [dbo].[sp_Itemmaster_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Itemmaster_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Itemmaster_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Itemmaster_Update]
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
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_Approve]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_Approve]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_Approve] AS' 
END
GO

-- A6. Approve (Draft -> Approved)
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_Approve]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status
    FROM dbo.PurchaseOrder WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        THROW 51404, 'Purchase order not found.', 1;

    IF @Current <> 'Draft'
        THROW 51411, 'Only Draft purchase orders can be approved.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.PurchaseOrderDetail WHERE PurchaseOrderId = @Id)
        THROW 51413, 'A purchase order without lines cannot be approved.', 1;

    UPDATE dbo.PurchaseOrder
    SET Status = 'Approved', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_Cancel]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_Cancel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_Cancel] AS' 
END
GO

-- A7. Cancel (Draft/Approved -> Cancelled, only when nothing is received and no open receipt exists)
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_Cancel]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status
    FROM dbo.PurchaseOrder WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        THROW 51404, 'Purchase order not found.', 1;

    IF @Current NOT IN ('Draft', 'Approved')
        THROW 51414, 'Only Draft or Approved purchase orders can be cancelled. Cancel the posted receipts first.', 1;

    IF EXISTS (SELECT 1 FROM dbo.Receipt WHERE PurchaseOrderId = @Id AND IsDeleted = 0 AND Status IN ('Draft','Posted'))
        THROW 51415, 'This purchase order has open receipts. Cancel or delete them first.', 1;

    UPDATE dbo.PurchaseOrder
    SET Status = 'Cancelled', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_Delete] AS' 
END
GO

-- A5. Delete: only Draft or Cancelled POs
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_Delete]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status
    FROM dbo.PurchaseOrder
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;

    IF @Current NOT IN ('Draft', 'Cancelled')
        THROW 51410, 'Only Draft or Cancelled purchase orders can be deleted.', 1;

    UPDATE dbo.PurchaseOrder
    SET IsDeleted = 1,
        UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_GetAll] AS' 
END
GO
--===  GetAll Purchase Order ===
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        PONumber,
        PODate,
        VendorId,
        Status,
        Notes,
        SubTotal,
        TaxAmount,
        TotalAmount,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.PurchaseOrder
    WHERE IsDeleted = 0
    ORDER BY Id DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_GetById] AS' 
END
GO
--===  Get PO by ID =============
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        Id,
        PONumber,
        PODate,
        VendorId,
        Status,
        Notes,
        SubTotal,
        TaxAmount,
        TotalAmount,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.PurchaseOrder
    WHERE Id = @Id
      AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_GetPaged] AS' 
END
GO
-- ==== GetPaged PO ======
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_GetPaged]
(
    @PONumber       VARCHAR(30) = NULL,
    @VendorId       INT = NULL,
    @Status         VARCHAR(20) = NULL,
    @PageNumber     INT = 1,
    @PageSize       INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    -- Safety
    IF @PageNumber < 1
        SET @PageNumber = 1;

    IF @PageSize < 1
        SET @PageSize = 10;

    DECLARE @Offset INT;

    SET @Offset =
        (@PageNumber - 1) * @PageSize;

    -- ============================================================
    -- RESULT SET 1 - PAGED DATA
    -- ============================================================

    SELECT
        Id,
        PONumber,
        PODate,
        VendorId,
        Status,
        Notes,
        SubTotal,
        TaxAmount,
        TotalAmount,
        IsDeleted,
        CreatedBy,
        CreatedDate,
        UpdatedBy,
        UpdatedDate
    FROM dbo.PurchaseOrder
    WHERE IsDeleted = 0

      AND
      (
          @PONumber IS NULL
          OR PONumber LIKE '%' + @PONumber + '%'
      )

      AND
      (
          @VendorId IS NULL
          OR VendorId = @VendorId
      )

      AND
      (
          @Status IS NULL
          OR Status = @Status
      )

    ORDER BY Id DESC

    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;


    -- ============================================================
    -- RESULT SET 2 - TOTAL RECORDS
    -- ============================================================

    SELECT COUNT(*) AS TotalRecords
    FROM dbo.PurchaseOrder
    WHERE IsDeleted = 0

      AND
      (
          @PONumber IS NULL
          OR PONumber LIKE '%' + @PONumber + '%'
      )

      AND
      (
          @VendorId IS NULL
          OR VendorId = @VendorId
      )

      AND
      (
          @Status IS NULL
          OR Status = @Status
      );
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_Insert] AS' 
END
GO
-- ====  Purchase Order Insert ======= 
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_Insert]
(
    @PONumber       VARCHAR(30),
    @PODate         DATETIME,
    @VendorId       INT,
    @Status         VARCHAR(20),
    @Notes          NVARCHAR(500) = NULL,
    @SubTotal       DECIMAL(18,2),
    @TaxAmount      DECIMAL(18,2),
    @TotalAmount    DECIMAL(18,2),
    @CreatedBy      VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.PurchaseOrder
    (
        PONumber,
        PODate,
        VendorId,
        Status,
        Notes,
        SubTotal,
        TaxAmount,
        TotalAmount,
        IsDeleted,
        CreatedBy,
        CreatedDate
    )
    VALUES
    (
        @PONumber,
        @PODate,
        @VendorId,
        @Status,
        @Notes,
        @SubTotal,
        @TaxAmount,
        @TotalAmount,
        0,
        @CreatedBy,
        GETDATE()
    );

    -- Return newly created Purchase Order Id
    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_RefreshReceiptStatus]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_RefreshReceiptStatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_RefreshReceiptStatus] AS' 
END
GO

/* ============================================================
   F. RECEIPT PROCEDURES
   ============================================================ */

-- Internal helper: recompute PO status from its line quantities
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_RefreshReceiptStatus]
(
    @PurchaseOrderId INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @AnyReceived BIT = 0, @AnyOpen BIT = 0;

    IF EXISTS (SELECT 1 FROM dbo.PurchaseOrderDetail WHERE PurchaseOrderId = @PurchaseOrderId AND ReceivedQuantity > 0)
        SET @AnyReceived = 1;

    IF EXISTS (SELECT 1 FROM dbo.PurchaseOrderDetail WHERE PurchaseOrderId = @PurchaseOrderId AND ReceivedQuantity < Quantity)
        SET @AnyOpen = 1;

    UPDATE dbo.PurchaseOrder
    SET Status = CASE
                    WHEN @AnyReceived = 0 THEN 'Approved'
                    WHEN @AnyOpen = 1     THEN 'PartiallyReceived'
                    ELSE 'Received'
                 END,
        UpdatedBy = @UpdatedBy,
        UpdatedDate = GETDATE()
    WHERE Id = @PurchaseOrderId
      AND Status IN ('Approved', 'PartiallyReceived', 'Received');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrder_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrder_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrder_Update] AS' 
END
GO

-- A4. Header update: only Draft POs are editable; status can only be Draft/Approved here
ALTER   PROCEDURE [dbo].[sp_PurchaseOrder_Update]
(
    @Id             INT,
    @PONumber       VARCHAR(30),
    @PODate         DATETIME,
    @VendorId       INT,
    @Status         VARCHAR(20),
    @Notes          NVARCHAR(500) = NULL,
    @SubTotal       DECIMAL(18,2),
    @TaxAmount      DECIMAL(18,2),
    @TotalAmount    DECIMAL(18,2),
    @UpdatedBy      VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status
    FROM dbo.PurchaseOrder
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;                                   -- not found => 0 rows affected

    IF @Current <> 'Draft'
        THROW 51409, 'Only Draft purchase orders can be edited.', 1;

    IF @Status NOT IN ('Draft', 'Approved')
        THROW 51400, 'Status can only be set to Draft or Approved here. Use the Approve / Cancel actions.', 1;

    UPDATE dbo.PurchaseOrder
    SET PONumber = @PONumber,
        PODate = @PODate,
        VendorId = @VendorId,
        Status = @Status,
        Notes = @Notes,
        SubTotal = @SubTotal,
        TaxAmount = @TaxAmount,
        TotalAmount = @TotalAmount,
        UpdatedBy = @UpdatedBy,
        UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_Delete] AS' 
END
GO
--====  PO Details Delete =======
ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_Delete]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DELETE FROM dbo.PurchaseOrderDetail
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_DeleteByPurchaseOrderId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_DeleteByPurchaseOrderId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_DeleteByPurchaseOrderId] AS' 
END
GO
--====  Delete PO Details by PO ID =====
ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_DeleteByPurchaseOrderId]
(
    @PurchaseOrderId INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DELETE FROM dbo.PurchaseOrderDetail
    WHERE PurchaseOrderId = @PurchaseOrderId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_GetById] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, PurchaseOrderId, ItemmasterId, Quantity, Rate, DiscountAmount,
           TaxPercent, TaxAmount, LineTotal, ReceivedQuantity
    FROM dbo.PurchaseOrderDetail
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_GetByPurchaseOrderId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_GetByPurchaseOrderId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_GetByPurchaseOrderId] AS' 
END
GO

-- A3. PO detail reads now return ReceivedQuantity
ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_GetByPurchaseOrderId]
(
    @PurchaseOrderId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, PurchaseOrderId, ItemmasterId, Quantity, Rate, DiscountAmount,
           TaxPercent, TaxAmount, LineTotal, ReceivedQuantity
    FROM dbo.PurchaseOrderDetail
    WHERE PurchaseOrderId = @PurchaseOrderId
    ORDER BY Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_Insert] AS' 
END
GO
--====  PO Details insert ===
ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_Insert]
(
    @PurchaseOrderId   INT,
    @ItemmasterId      INT,
    @Quantity          DECIMAL(18,2),
    @Rate              DECIMAL(18,2),
    @DiscountAmount    DECIMAL(18,2),
    @TaxPercent        DECIMAL(5,2),
    @TaxAmount         DECIMAL(18,2),
    @LineTotal         DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.PurchaseOrderDetail
    (
        PurchaseOrderId,
        ItemmasterId,
        Quantity,
        Rate,
        DiscountAmount,
        TaxPercent,
        TaxAmount,
        LineTotal
    )
    VALUES
    (
        @PurchaseOrderId,
        @ItemmasterId,
        @Quantity,
        @Rate,
        @DiscountAmount,
        @TaxPercent,
        @TaxAmount,
        @LineTotal
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_PurchaseOrderDetail_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_PurchaseOrderDetail_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_PurchaseOrderDetail_Update] AS' 
END
GO
--===  PO Details update ====  
ALTER   PROCEDURE [dbo].[sp_PurchaseOrderDetail_Update]
(
    @Id                INT,
    @ItemmasterId      INT,
    @Quantity          DECIMAL(18,2),
    @Rate              DECIMAL(18,2),
    @DiscountAmount    DECIMAL(18,2),
    @TaxPercent        DECIMAL(5,2),
    @TaxAmount         DECIMAL(18,2),
    @LineTotal         DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT OFF;

    UPDATE dbo.PurchaseOrderDetail
    SET
        ItemmasterId = @ItemmasterId,
        Quantity = @Quantity,
        Rate = @Rate,
        DiscountAmount = @DiscountAmount,
        TaxPercent = @TaxPercent,
        TaxAmount = @TaxAmount,
        LineTotal = @LineTotal
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_Cancel]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_Cancel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_Cancel] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_Cancel]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;
    SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;   -- stock check must not race with sales invoice posting

    BEGIN TRANSACTION;

    DECLARE @Status VARCHAR(20), @PoId INT;

    SELECT @Status = Status, @PoId = PurchaseOrderId
    FROM dbo.Receipt WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Receipt not found.', 1;

    IF @Status = 'Cancelled'
        THROW 51428, 'The receipt is already cancelled.', 1;

    IF @Status = 'Posted'
    BEGIN
        DECLARE @Msg NVARCHAR(400) = NULL;

        SELECT TOP (1)
            @Msg = 'Cannot cancel: stock of item ' + S.ItemCode + ' has already been sold (on hand '
                   + CAST(S.OnHandQuantity AS VARCHAR(30)) + ', receipt quantity ' + CAST(R.Qty AS VARCHAR(30)) + ').'
        FROM
        (
            SELECT ItemmasterId, SUM(ReceivedQuantity) AS Qty
            FROM dbo.ReceiptDetail
            WHERE ReceiptId = @Id
            GROUP BY ItemmasterId
        ) R
        INNER JOIN dbo.vw_ItemStock S ON S.ItemmasterId = R.ItemmasterId
        WHERE S.OnHandQuantity - R.Qty < 0;

        IF @Msg IS NOT NULL
            THROW 51427, @Msg, 1;

        UPDATE PD
        SET PD.ReceivedQuantity = PD.ReceivedQuantity - RD.ReceivedQuantity
        FROM dbo.PurchaseOrderDetail PD
        INNER JOIN dbo.ReceiptDetail RD ON RD.PurchaseOrderDetailId = PD.Id
        WHERE RD.ReceiptId = @Id;
    END

    UPDATE dbo.Receipt
    SET Status = 'Cancelled', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    IF @Status = 'Posted'
        EXEC dbo.sp_PurchaseOrder_RefreshReceiptStatus @PoId, @UpdatedBy;

    COMMIT TRANSACTION;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_Delete] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_Delete]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status FROM dbo.Receipt WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;

    IF @Current <> 'Draft'
        THROW 51421, 'Only Draft receipts can be deleted. Cancel a posted receipt instead.', 1;

    UPDATE dbo.Receipt
    SET IsDeleted = 1, UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_GetAll] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, ReceiptNumber, ReceiptDate, PurchaseOrderId, VendorId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.Receipt
    WHERE IsDeleted = 0
    ORDER BY Id DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_GetById] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, ReceiptNumber, ReceiptDate, PurchaseOrderId, VendorId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.Receipt
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_GetPaged] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_GetPaged]
(
    @ReceiptNumber   VARCHAR(30) = NULL,
    @PurchaseOrderId INT = NULL,
    @VendorId        INT = NULL,
    @Status          VARCHAR(20) = NULL,
    @PageNumber      INT = 1,
    @PageSize        INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    IF @PageNumber < 1 SET @PageNumber = 1;
    IF @PageSize < 1 SET @PageSize = 10;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT Id, ReceiptNumber, ReceiptDate, PurchaseOrderId, VendorId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.Receipt
    WHERE IsDeleted = 0
      AND (@ReceiptNumber IS NULL OR ReceiptNumber LIKE '%' + @ReceiptNumber + '%')
      AND (@PurchaseOrderId IS NULL OR PurchaseOrderId = @PurchaseOrderId)
      AND (@VendorId IS NULL OR VendorId = @VendorId)
      AND (@Status IS NULL OR Status = @Status)
    ORDER BY Id DESC
    OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;

    SELECT COUNT(*) AS TotalRecords
    FROM dbo.Receipt
    WHERE IsDeleted = 0
      AND (@ReceiptNumber IS NULL OR ReceiptNumber LIKE '%' + @ReceiptNumber + '%')
      AND (@PurchaseOrderId IS NULL OR PurchaseOrderId = @PurchaseOrderId)
      AND (@VendorId IS NULL OR VendorId = @VendorId)
      AND (@Status IS NULL OR Status = @Status);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_Insert] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Receipt_Insert]
(
    @ReceiptNumber   VARCHAR(30) = NULL,
    @ReceiptDate     DATETIME,
    @PurchaseOrderId INT,
    @Notes           NVARCHAR(500) = NULL,
    @SubTotal        DECIMAL(18,2),
    @TaxAmount       DECIMAL(18,2),
    @TotalAmount     DECIMAL(18,2),
    @CreatedBy       VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @VendorId INT, @PoStatus VARCHAR(20);

    SELECT @VendorId = VendorId, @PoStatus = Status
    FROM dbo.PurchaseOrder
    WHERE Id = @PurchaseOrderId AND IsDeleted = 0;

    IF @VendorId IS NULL
        THROW 51404, 'Purchase order not found.', 1;

    IF @PoStatus NOT IN ('Approved', 'PartiallyReceived')
        THROW 51412, 'Goods can be received only against an Approved or PartiallyReceived purchase order.', 1;

    IF @ReceiptNumber IS NULL OR LTRIM(RTRIM(@ReceiptNumber)) = ''
        SET @ReceiptNumber = 'GRN-' + RIGHT('000000' + CAST(NEXT VALUE FOR dbo.seq_ReceiptNumber AS VARCHAR(10)), 6);

    INSERT INTO dbo.Receipt
    (
        ReceiptNumber, ReceiptDate, PurchaseOrderId, VendorId, Status, Notes,
        SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate
    )
    VALUES
    (
        @ReceiptNumber, @ReceiptDate, @PurchaseOrderId, @VendorId, 'Draft', @Notes,
        @SubTotal, @TaxAmount, @TotalAmount, 0, @CreatedBy, GETDATE()
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_Post]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_Post]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_Post] AS' 
END
GO

-- ---------------- Receipt workflow ----------------

ALTER   PROCEDURE [dbo].[sp_Receipt_Post]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRANSACTION;

    DECLARE @Status VARCHAR(20), @PoId INT, @PoStatus VARCHAR(20);

    SELECT @Status = Status, @PoId = PurchaseOrderId
    FROM dbo.Receipt WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Receipt not found.', 1;

    IF @Status <> 'Draft'
        THROW 51425, 'Only Draft receipts can be posted.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.ReceiptDetail WHERE ReceiptId = @Id)
        THROW 51426, 'A receipt without lines cannot be posted.', 1;

    SELECT @PoStatus = Status
    FROM dbo.PurchaseOrder WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @PoId AND IsDeleted = 0;

    IF @PoStatus IS NULL OR @PoStatus NOT IN ('Approved', 'PartiallyReceived')
        THROW 51412, 'Goods can be received only against an Approved or PartiallyReceived purchase order.', 1;

    IF EXISTS
    (
        SELECT 1
        FROM dbo.ReceiptDetail RD
        INNER JOIN dbo.PurchaseOrderDetail PD WITH (UPDLOCK) ON PD.Id = RD.PurchaseOrderDetailId
        WHERE RD.ReceiptId = @Id
          AND PD.ReceivedQuantity + RD.ReceivedQuantity > PD.Quantity
    )
        THROW 51424, 'Received quantity exceeds the outstanding quantity of the purchase order line.', 1;

    UPDATE PD
    SET PD.ReceivedQuantity = PD.ReceivedQuantity + RD.ReceivedQuantity
    FROM dbo.PurchaseOrderDetail PD
    INNER JOIN dbo.ReceiptDetail RD ON RD.PurchaseOrderDetailId = PD.Id
    WHERE RD.ReceiptId = @Id;

    EXEC dbo.sp_PurchaseOrder_RefreshReceiptStatus @PoId, @UpdatedBy;

    UPDATE dbo.Receipt
    SET Status = 'Posted', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    COMMIT TRANSACTION;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Receipt_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Receipt_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Receipt_Update] AS' 
END
GO

-- Only date / notes / totals are editable. PO, vendor and number are fixed after creation.
ALTER   PROCEDURE [dbo].[sp_Receipt_Update]
(
    @Id          INT,
    @ReceiptDate DATETIME,
    @Notes       NVARCHAR(500) = NULL,
    @SubTotal    DECIMAL(18,2),
    @TaxAmount   DECIMAL(18,2),
    @TotalAmount DECIMAL(18,2),
    @UpdatedBy   VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status FROM dbo.Receipt WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;

    IF @Current <> 'Draft'
        THROW 51420, 'Only Draft receipts can be edited.', 1;

    UPDATE dbo.Receipt
    SET ReceiptDate = @ReceiptDate,
        Notes = @Notes,
        SubTotal = @SubTotal,
        TaxAmount = @TaxAmount,
        TotalAmount = @TotalAmount,
        UpdatedBy = @UpdatedBy,
        UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_Delete] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_Delete]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = R.Status
    FROM dbo.ReceiptDetail D
    INNER JOIN dbo.Receipt R ON R.Id = D.ReceiptId
    WHERE D.Id = @Id;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51420, 'Only Draft receipts can be edited.', 1;

    DELETE FROM dbo.ReceiptDetail WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_DeleteByReceiptId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_DeleteByReceiptId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_DeleteByReceiptId] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_DeleteByReceiptId]
(
    @ReceiptId INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = Status FROM dbo.Receipt WHERE Id = @ReceiptId;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51420, 'Only Draft receipts can be edited.', 1;

    DELETE FROM dbo.ReceiptDetail WHERE ReceiptId = @ReceiptId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_GetById] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, ReceiptId, PurchaseOrderDetailId, ItemmasterId, ReceivedQuantity,
           Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    FROM dbo.ReceiptDetail
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_GetByReceiptId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_GetByReceiptId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_GetByReceiptId] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_GetByReceiptId]
(
    @ReceiptId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, ReceiptId, PurchaseOrderDetailId, ItemmasterId, ReceivedQuantity,
           Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    FROM dbo.ReceiptDetail
    WHERE ReceiptId = @ReceiptId
    ORDER BY Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_Insert] AS' 
END
GO

-- ---------------- Receipt detail ----------------

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_Insert]
(
    @ReceiptId             INT,
    @PurchaseOrderDetailId INT,
    @ItemmasterId          INT,
    @ReceivedQuantity      DECIMAL(18,2),
    @Rate                  DECIMAL(18,2),
    @DiscountAmount        DECIMAL(18,2),
    @TaxPercent            DECIMAL(5,2),
    @TaxAmount             DECIMAL(18,2),
    @LineTotal             DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Status VARCHAR(20), @PoId INT;

    SELECT @Status = Status, @PoId = PurchaseOrderId
    FROM dbo.Receipt
    WHERE Id = @ReceiptId AND IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Receipt not found.', 1;

    IF @Status <> 'Draft'
        THROW 51420, 'Only Draft receipts can be edited.', 1;

    DECLARE @PoLineQty DECIMAL(18,2), @PoLineReceived DECIMAL(18,2), @PoLineItem INT;

    SELECT @PoLineQty = Quantity, @PoLineReceived = ReceivedQuantity, @PoLineItem = ItemmasterId
    FROM dbo.PurchaseOrderDetail
    WHERE Id = @PurchaseOrderDetailId AND PurchaseOrderId = @PoId;

    IF @PoLineQty IS NULL
        THROW 51422, 'The purchase order line does not belong to the receipt''s purchase order.', 1;

    IF @PoLineItem <> @ItemmasterId
        THROW 51423, 'The item does not match the purchase order line.', 1;

    IF @ReceivedQuantity > (@PoLineQty - @PoLineReceived)
        THROW 51424, 'Received quantity exceeds the outstanding quantity of the purchase order line.', 1;

    INSERT INTO dbo.ReceiptDetail
    (
        ReceiptId, PurchaseOrderDetailId, ItemmasterId, ReceivedQuantity,
        Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    )
    VALUES
    (
        @ReceiptId, @PurchaseOrderDetailId, @ItemmasterId, @ReceivedQuantity,
        @Rate, @DiscountAmount, @TaxPercent, @TaxAmount, @LineTotal
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ReceiptDetail_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_ReceiptDetail_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_ReceiptDetail_Update] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_ReceiptDetail_Update]
(
    @Id               INT,
    @ReceivedQuantity DECIMAL(18,2),
    @Rate             DECIMAL(18,2),
    @DiscountAmount   DECIMAL(18,2),
    @TaxPercent       DECIMAL(5,2),
    @TaxAmount        DECIMAL(18,2),
    @LineTotal        DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20), @PoDetailId INT;

    SELECT @Status = R.Status, @PoDetailId = D.PurchaseOrderDetailId
    FROM dbo.ReceiptDetail D
    INNER JOIN dbo.Receipt R ON R.Id = D.ReceiptId
    WHERE D.Id = @Id AND R.IsDeleted = 0;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51420, 'Only Draft receipts can be edited.', 1;

    IF EXISTS (SELECT 1 FROM dbo.PurchaseOrderDetail WHERE Id = @PoDetailId AND @ReceivedQuantity > (Quantity - ReceivedQuantity))
        THROW 51424, 'Received quantity exceeds the outstanding quantity of the purchase order line.', 1;

    UPDATE dbo.ReceiptDetail
    SET ReceivedQuantity = @ReceivedQuantity,
        Rate = @Rate,
        DiscountAmount = @DiscountAmount,
        TaxPercent = @TaxPercent,
        TaxAmount = @TaxAmount,
        LineTotal = @LineTotal
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_Cancel]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_Cancel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_Cancel] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_Cancel]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = Status
    FROM dbo.SalesInvoice WITH (UPDLOCK, ROWLOCK)
    WHERE Id = @Id AND IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Sales invoice not found.', 1;

    IF @Status = 'Cancelled'
        THROW 51445, 'The sales invoice is already cancelled.', 1;

    -- Cancelling a Posted invoice returns the stock automatically (vw_ItemStock only counts Posted invoices)
    UPDATE dbo.SalesInvoice
    SET Status = 'Cancelled', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_Delete] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_Delete]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status FROM dbo.SalesInvoice WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;

    IF @Current <> 'Draft'
        THROW 51441, 'Only Draft sales invoices can be deleted. Cancel a posted invoice instead.', 1;

    UPDATE dbo.SalesInvoice
    SET IsDeleted = 1, UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_GetAll] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_GetAll]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, InvoiceNumber, InvoiceDate, DueDate, CustomerId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.SalesInvoice
    WHERE IsDeleted = 0
    ORDER BY Id DESC;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_GetById] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, InvoiceNumber, InvoiceDate, DueDate, CustomerId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.SalesInvoice
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_GetPaged] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_GetPaged]
(
    @InvoiceNumber VARCHAR(30) = NULL,
    @CustomerId    INT = NULL,
    @Status        VARCHAR(20) = NULL,
    @PageNumber    INT = 1,
    @PageSize      INT = 10
)
AS
BEGIN
    SET NOCOUNT ON;

    IF @PageNumber < 1 SET @PageNumber = 1;
    IF @PageSize < 1 SET @PageSize = 10;

    DECLARE @Offset INT = (@PageNumber - 1) * @PageSize;

    SELECT Id, InvoiceNumber, InvoiceDate, DueDate, CustomerId, Status, Notes,
           SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate, UpdatedBy, UpdatedDate
    FROM dbo.SalesInvoice
    WHERE IsDeleted = 0
      AND (@InvoiceNumber IS NULL OR InvoiceNumber LIKE '%' + @InvoiceNumber + '%')
      AND (@CustomerId IS NULL OR CustomerId = @CustomerId)
      AND (@Status IS NULL OR Status = @Status)
    ORDER BY Id DESC
    OFFSET @Offset ROWS FETCH NEXT @PageSize ROWS ONLY;

    SELECT COUNT(*) AS TotalRecords
    FROM dbo.SalesInvoice
    WHERE IsDeleted = 0
      AND (@InvoiceNumber IS NULL OR InvoiceNumber LIKE '%' + @InvoiceNumber + '%')
      AND (@CustomerId IS NULL OR CustomerId = @CustomerId)
      AND (@Status IS NULL OR Status = @Status);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_Insert] AS' 
END
GO

/* ============================================================
   G. SALES INVOICE PROCEDURES
   ============================================================ */

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_Insert]
(
    @InvoiceNumber VARCHAR(30) = NULL,
    @InvoiceDate   DATETIME,
    @DueDate       DATETIME = NULL,
    @CustomerId    INT,
    @Notes         NVARCHAR(500) = NULL,
    @SubTotal      DECIMAL(18,2),
    @TaxAmount     DECIMAL(18,2),
    @TotalAmount   DECIMAL(18,2),
    @CreatedBy     VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM dbo.Customer WHERE Id = @CustomerId AND IsDeleted = 0 AND IsActive = 1)
        THROW 51430, 'Customer not found or inactive.', 1;

    IF @DueDate IS NOT NULL AND @DueDate < @InvoiceDate
        THROW 51431, 'Due date cannot be earlier than the invoice date.', 1;

    IF @InvoiceNumber IS NULL OR LTRIM(RTRIM(@InvoiceNumber)) = ''
        SET @InvoiceNumber = 'INV-' + RIGHT('000000' + CAST(NEXT VALUE FOR dbo.seq_SalesInvoiceNumber AS VARCHAR(10)), 6);

    INSERT INTO dbo.SalesInvoice
    (
        InvoiceNumber, InvoiceDate, DueDate, CustomerId, Status, Notes,
        SubTotal, TaxAmount, TotalAmount, IsDeleted, CreatedBy, CreatedDate
    )
    VALUES
    (
        @InvoiceNumber, @InvoiceDate, @DueDate, @CustomerId, 'Draft', @Notes,
        @SubTotal, @TaxAmount, @TotalAmount, 0, @CreatedBy, GETDATE()
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_Post]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_Post]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_Post] AS' 
END
GO

-- ---------------- Sales invoice workflow ----------------

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_Post]
(
    @Id INT,
    @UpdatedBy VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;
    SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;   -- two invoices must not both sell the last unit

    BEGIN TRANSACTION;

    DECLARE @Status VARCHAR(20), @CustomerOk BIT = 0;

    SELECT @Status = H.Status,
           @CustomerOk = CASE WHEN C.Id IS NULL THEN 0 ELSE 1 END
    FROM dbo.SalesInvoice H WITH (UPDLOCK, ROWLOCK)
    LEFT JOIN dbo.Customer C ON C.Id = H.CustomerId AND C.IsDeleted = 0 AND C.IsActive = 1
    WHERE H.Id = @Id AND H.IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Sales invoice not found.', 1;

    IF @Status <> 'Draft'
        THROW 51443, 'Only Draft sales invoices can be posted.', 1;

    IF @CustomerOk = 0
        THROW 51430, 'Customer not found or inactive.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.SalesInvoiceDetail WHERE SalesInvoiceId = @Id)
        THROW 51444, 'A sales invoice without lines cannot be posted.', 1;

    DECLARE @Msg NVARCHAR(400) = NULL;

    SELECT TOP (1)
        @Msg = 'Insufficient stock for item ' + S.ItemCode + ' (available '
               + CAST(S.OnHandQuantity AS VARCHAR(30)) + ', required ' + CAST(Q.Qty AS VARCHAR(30)) + ').'
    FROM
    (
        SELECT ItemmasterId, SUM(Quantity) AS Qty
        FROM dbo.SalesInvoiceDetail
        WHERE SalesInvoiceId = @Id
        GROUP BY ItemmasterId
    ) Q
    INNER JOIN dbo.vw_ItemStock S ON S.ItemmasterId = Q.ItemmasterId
    WHERE S.OnHandQuantity < Q.Qty
    ORDER BY S.ItemmasterId;

    IF @Msg IS NOT NULL
        THROW 51432, @Msg, 1;

    UPDATE dbo.SalesInvoice
    SET Status = 'Posted', UpdatedBy = @UpdatedBy, UpdatedDate = GETDATE()
    WHERE Id = @Id;

    COMMIT TRANSACTION;

    SELECT CAST(1 AS BIT) AS Success;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoice_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoice_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoice_Update] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoice_Update]
(
    @Id          INT,
    @InvoiceDate DATETIME,
    @DueDate     DATETIME = NULL,
    @CustomerId  INT,
    @Notes       NVARCHAR(500) = NULL,
    @SubTotal    DECIMAL(18,2),
    @TaxAmount   DECIMAL(18,2),
    @TotalAmount DECIMAL(18,2),
    @UpdatedBy   VARCHAR(100) = NULL
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Current VARCHAR(20);

    SELECT @Current = Status FROM dbo.SalesInvoice WHERE Id = @Id AND IsDeleted = 0;

    IF @Current IS NULL
        RETURN;

    IF @Current <> 'Draft'
        THROW 51440, 'Only Draft sales invoices can be edited.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.Customer WHERE Id = @CustomerId AND IsDeleted = 0 AND IsActive = 1)
        THROW 51430, 'Customer not found or inactive.', 1;

    IF @DueDate IS NOT NULL AND @DueDate < @InvoiceDate
        THROW 51431, 'Due date cannot be earlier than the invoice date.', 1;

    UPDATE dbo.SalesInvoice
    SET InvoiceDate = @InvoiceDate,
        DueDate = @DueDate,
        CustomerId = @CustomerId,
        Notes = @Notes,
        SubTotal = @SubTotal,
        TaxAmount = @TaxAmount,
        TotalAmount = @TotalAmount,
        UpdatedBy = @UpdatedBy,
        UpdatedDate = GETDATE()
    WHERE Id = @Id AND IsDeleted = 0;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_Delete] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_Delete]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = H.Status
    FROM dbo.SalesInvoiceDetail D
    INNER JOIN dbo.SalesInvoice H ON H.Id = D.SalesInvoiceId
    WHERE D.Id = @Id;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51440, 'Only Draft sales invoices can be edited.', 1;

    DELETE FROM dbo.SalesInvoiceDetail WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_DeleteBySalesInvoiceId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_DeleteBySalesInvoiceId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_DeleteBySalesInvoiceId] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_DeleteBySalesInvoiceId]
(
    @SalesInvoiceId INT
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = Status FROM dbo.SalesInvoice WHERE Id = @SalesInvoiceId;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51440, 'Only Draft sales invoices can be edited.', 1;

    DELETE FROM dbo.SalesInvoiceDetail WHERE SalesInvoiceId = @SalesInvoiceId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_GetById] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_GetById]
(
    @Id INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, SalesInvoiceId, ItemmasterId, Quantity, Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    FROM dbo.SalesInvoiceDetail
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_GetBySalesInvoiceId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_GetBySalesInvoiceId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_GetBySalesInvoiceId] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_GetBySalesInvoiceId]
(
    @SalesInvoiceId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT Id, SalesInvoiceId, ItemmasterId, Quantity, Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    FROM dbo.SalesInvoiceDetail
    WHERE SalesInvoiceId = @SalesInvoiceId
    ORDER BY Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_Insert] AS' 
END
GO

-- ---------------- Sales invoice detail ----------------

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_Insert]
(
    @SalesInvoiceId INT,
    @ItemmasterId   INT,
    @Quantity       DECIMAL(18,2),
    @Rate           DECIMAL(18,2),
    @DiscountAmount DECIMAL(18,2),
    @TaxPercent     DECIMAL(5,2),
    @TaxAmount      DECIMAL(18,2),
    @LineTotal      DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = Status FROM dbo.SalesInvoice WHERE Id = @SalesInvoiceId AND IsDeleted = 0;

    IF @Status IS NULL
        THROW 51404, 'Sales invoice not found.', 1;

    IF @Status <> 'Draft'
        THROW 51440, 'Only Draft sales invoices can be edited.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.Itemmaster WHERE Id = @ItemmasterId AND IsActive = 1)
        THROW 51442, 'Item not found or inactive.', 1;

    INSERT INTO dbo.SalesInvoiceDetail
    (
        SalesInvoiceId, ItemmasterId, Quantity, Rate, DiscountAmount, TaxPercent, TaxAmount, LineTotal
    )
    VALUES
    (
        @SalesInvoiceId, @ItemmasterId, @Quantity, @Rate, @DiscountAmount, @TaxPercent, @TaxAmount, @LineTotal
    );

    SELECT CAST(SCOPE_IDENTITY() AS INT) AS Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SalesInvoiceDetail_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_SalesInvoiceDetail_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_SalesInvoiceDetail_Update] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_SalesInvoiceDetail_Update]
(
    @Id             INT,
    @ItemmasterId   INT,
    @Quantity       DECIMAL(18,2),
    @Rate           DECIMAL(18,2),
    @DiscountAmount DECIMAL(18,2),
    @TaxPercent     DECIMAL(5,2),
    @TaxAmount      DECIMAL(18,2),
    @LineTotal      DECIMAL(18,2)
)
AS
BEGIN
    SET NOCOUNT OFF;

    DECLARE @Status VARCHAR(20);

    SELECT @Status = H.Status
    FROM dbo.SalesInvoiceDetail D
    INNER JOIN dbo.SalesInvoice H ON H.Id = D.SalesInvoiceId
    WHERE D.Id = @Id AND H.IsDeleted = 0;

    IF @Status IS NULL
        RETURN;

    IF @Status <> 'Draft'
        THROW 51440, 'Only Draft sales invoices can be edited.', 1;

    IF NOT EXISTS (SELECT 1 FROM dbo.Itemmaster WHERE Id = @ItemmasterId AND IsActive = 1)
        THROW 51442, 'Item not found or inactive.', 1;

    UPDATE dbo.SalesInvoiceDetail
    SET ItemmasterId = @ItemmasterId,
        Quantity = @Quantity,
        Rate = @Rate,
        DiscountAmount = @DiscountAmount,
        TaxPercent = @TaxPercent,
        TaxAmount = @TaxAmount,
        LineTotal = @LineTotal
    WHERE Id = @Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Stock_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Stock_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Stock_GetAll] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Stock_GetAll]
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ItemmasterId, ItemCode, ItemName, ReceivedQuantity, SoldQuantity, OnHandQuantity
    FROM dbo.vw_ItemStock
    ORDER BY ItemmasterId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_Stock_GetByItemmasterId]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Stock_GetByItemmasterId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Stock_GetByItemmasterId] AS' 
END
GO

ALTER   PROCEDURE [dbo].[sp_Stock_GetByItemmasterId]
(
    @ItemmasterId INT
)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT ItemmasterId, ItemCode, ItemName, ReceivedQuantity, SoldQuantity, OnHandQuantity
    FROM dbo.vw_ItemStock
    WHERE ItemmasterId = @ItemmasterId;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_Delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_Delete]
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_GetAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_GetAll]

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
/****** Object:  StoredProcedure [dbo].[sp_User_GetByEmail]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_GetByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_GetByEmail] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_GetByEmail]
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_GetById] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetByUserName]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_GetByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_GetByUserName] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_GetByUserName]
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
/****** Object:  StoredProcedure [dbo].[sp_User_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_GetPaged] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_GetPaged]
(
    @UserName    VARCHAR(100) = NULL,
    @Email       VARCHAR(255) = NULL,
    @FirstName   VARCHAR(100) = NULL,
    @LastName    VARCHAR(100) = NULL,
	@City        VARCHAR(100) = NULL,
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
    @City IS NULL
    OR @City = ''
    OR City LIKE '%' + @City + '%'
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
    @City IS NULL
    OR @City = ''
    OR City LIKE '%' + @City + '%'
)
 
        AND
        (
            @IsActive IS NULL
            OR IsActive = @IsActive
        );
 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_User_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_Insert]
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
/****** Object:  StoredProcedure [dbo].[sp_User_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_Update] AS' 
END
GO
ALTER  PROCEDURE [dbo].[sp_User_Update]
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
/****** Object:  StoredProcedure [dbo].[sp_User_UpdateLastLogin]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_User_UpdateLastLogin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_User_UpdateLastLogin] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_User_UpdateLastLogin]
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
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Delete]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_Vendor_Delete]
(
@Id INT
)
AS 
BEGIN

DELETE FROM Vendor

WHERE Id=@Id

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetAll]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_GetAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_GetAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Vendor_GetAll]

AS
BEGIN

SELECT Id,VendorCode,VendorName,ContactPerson,MobileNo,Email,Address1,Address2,City,
State,Country,ZipCode,GstNo,IsActive,IsDeleted,CreatedBy,CreatedDate,UpdatedBy,UpdatedDate
FROM Vendor

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetById]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_GetById]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_GetById] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Vendor_GetById]
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
/****** Object:  StoredProcedure [dbo].[sp_Vendor_GetPaged]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_GetPaged]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_GetPaged] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Vendor_GetPaged]
(
@VendorCode VARCHAR(20) = NULL,
@VendorName VARCHAR(20) =NULL,
@MobileNo NVARCHAR(20) = NULL,
@City NVARCHAR(100) = NULL,
@IsActive BIT = NULL,
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
AND (@IsActive IS NULL OR IsActive = @IsActive)

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
AND (@IsActive IS NULL OR IsActive = @IsActive)

END
GO
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Insert]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_Insert] AS' 
END
GO

ALTER PROCEDURE [dbo].[sp_Vendor_Insert]
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
/****** Object:  StoredProcedure [dbo].[sp_Vendor_Update]    Script Date: 22-11-2026 07:25:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Vendor_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_Vendor_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_Vendor_Update]
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
@IsActive BIT,
@IsDeleted BIT
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
IsDeleted = @IsDeleted,
UpdatedBy=SYSTEM_USER,
UpdatedDate=GETDATE()

WHERE Id=@Id

END
GO
