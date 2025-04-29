USE [TwinsDream]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Costumers]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costumers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[Mail] [nvarchar](max) NULL,
	[Birthday] [date] NOT NULL,
 CONSTRAINT [PK_Costumers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[GenderId] [int] NOT NULL,
	[Inventory] [int] NOT NULL,
	[Image] [image] NULL,
	[LastUpdatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[ShoppingId] [int] NULL,
 CONSTRAINT [PK_PurchaseDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingBaskets]    Script Date: 05/02/2025 14:32:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingBaskets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CostumerId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Date] [date] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShoppingBaskets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250122133825_m', N'9.0.1')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'בגדי תינוקות')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'בגדי ילדים')
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'עגלות')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([Id], [Name]) VALUES (1, N'gerty')
GO
INSERT [dbo].[Companies] ([Id], [Name]) VALUES (2, N'happy child')
GO
INSERT [dbo].[Companies] ([Id], [Name]) VALUES (3, N'fox')
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[Costumers] ON 
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (1, N'John Doe', N'+1234567890', N'johndoe@example.com', CAST(N'2006-03-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (2, N'chaim', N'02589674', N'chaim@gmail.com', CAST(N'2015-05-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (3, N'shalom', N'0528587487', N'shalom@gmail.com', CAST(N'1995-05-04' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (4, N'sari', N'0526563232', N'sari@gmail.com', CAST(N'2015-05-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (5, N'shlomo', N'0504171414', N'shlomo@gmail.com', CAST(N'1950-06-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (6, N'Doe', N'+1234567890', N'doe@example.com', CAST(N'2006-03-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (7, N'string', N'string', N'string', CAST(N'2020-05-06' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (8, N'fegi', N'025669858', N'fegi@gmail.com', CAST(N'2000-03-06' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (11, N'beni', N'025663265', N'beni@gmail.com', CAST(N'2000-03-15' AS Date))

GO
SET IDENTITY_INSERT [dbo].[Costumers] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 
GO
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (1, N'בנים')
GO
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (2, N'בנות')
GO
INSERT [dbo].[Genders] ([Id], [Name]) VALUES (3, N'בן בת')
GO
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [CompanyId], [GenderId], [Inventory], [Image], [LastUpdatedDate]) VALUES (2, N'אוברול ', N'יפיפה', 100, 1, 1, 1, 50, NULL, CAST(N'2020-01-01' AS Date))
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [CompanyId], [GenderId], [Inventory], [Image], [LastUpdatedDate]) VALUES (3, N'זוג מוצצים', N'0-6', 40, 2, 2, 2, 300, NULL, CAST(N'2022-12-01' AS Date))
GO
INSERT [dbo].[Products] ([Id], [Name], [Description], [Price], [CategoryId], [CompanyId], [GenderId], [Inventory], [Image], [LastUpdatedDate]) VALUES (6, N'עגלת תאומים', N'חזק במיוחד!', 3000, 3, 3, 3, 50, NULL, CAST(N'2024-12-12' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[PurchaseDetails] ON 
GO
INSERT [dbo].[PurchaseDetails] ([Id], [ProductId], [Amount], [ShoppingId]) VALUES (15, 6, 1, 24)
GO
INSERT [dbo].[PurchaseDetails] ([Id], [ProductId], [Amount], [ShoppingId]) VALUES (16, 3, 2, 24)
GO
INSERT [dbo].[PurchaseDetails] ([Id], [ProductId], [Amount], [ShoppingId]) VALUES (17, 6, 1, 25)
GO
INSERT [dbo].[PurchaseDetails] ([Id], [ProductId], [Amount], [ShoppingId]) VALUES (18, 3, 1, 25)
GO
SET IDENTITY_INSERT [dbo].[PurchaseDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingBaskets] ON 
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (1, 5, 0, CAST(N'2025-02-04' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (2, 5, 0, CAST(N'2025-02-04' AS Date), NULL)

GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (7, 1, 3040, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (9, 2, 2660, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (10, 3, 2755, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (11, 4, 220, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (12, 5, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (13, 6, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (14, 7, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (15, 8, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (16, 11, 2945, CAST(N'2025-02-05' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[ShoppingBaskets] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Companies_CompanyId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Genders_GenderId] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Genders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Genders_GenderId]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_PurchaseDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PurchaseDetails] CHECK CONSTRAINT [FK_PurchaseDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[ShoppingBaskets]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingBaskets_Costumers_CostumerId] FOREIGN KEY([CostumerId])
REFERENCES [dbo].[Costumers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingBaskets] CHECK CONSTRAINT [FK_ShoppingBaskets_Costumers_CostumerId]
GO
