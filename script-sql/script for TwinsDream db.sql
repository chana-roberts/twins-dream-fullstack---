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
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (10, N'חנה רוברטס', N'025002758', N'chani2758@gmail.com', CAST(N'2000-03-05' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (11, N'beni', N'025663265', N'beni@gmail.com', CAST(N'2000-03-15' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (12, N'pol', N'0521477748', N'pol@gmail.com', CAST(N'2011-08-06' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (13, N'tvth', N'5367524', N'ft@3gmail.vcom', CAST(N'2004-06-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (14, N'xfegc', N'fcgt', N'cfev', CAST(N'2000-03-02' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (15, N'8kh', N'8jih', N'hih5', CAST(N'1990-08-02' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (16, N'fku', N'025002758', N'gbdsfdas', CAST(N'2011-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (17, N'yuk', N'kre', N'f,u', CAST(N'1099-06-02' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (18, N'fds', N'sfd', N'fds', CAST(N'2001-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (19, N'dwqe', N'fqfr', N'rfd', CAST(N'1999-05-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (20, N'3rf', N'rf', N'wR', CAST(N'2001-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (21, N'btj y', N'br', N'bh', CAST(N'2001-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (22, N'ghnrj', N'hj', N'ghj', CAST(N'2000-05-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (23, N'ggdhfgewr', N'feqwe', N'cdefbwrht ', CAST(N'1989-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (24, N'eryj', N'ethwyju4tre', N'etrh26q', CAST(N'5000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (25, N'afgsfhjn', N'rftghnm', N'drfgvhbn ', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (26, N'ewrgtfhj', N'ertyh', N'wertfhj', CAST(N'1000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (27, N'sdf', N'wef', N'we', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (28, N'rfetgethr', N'erty', N'ewrty', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (29, N'yukht', N'hgf', N'tyfd', CAST(N'2000-02-01' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (30, N'sdfg', N'we', N'werg', CAST(N'2025-02-05' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (31, N'sdfgw', N'we', N'werg', CAST(N'2025-02-05' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (32, N'qwe', N'werw', N'ee', CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (33, N'yuk', N'ghjk', N'ghjhk', CAST(N'2025-02-24' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (34, N'ASDFG', N'ASDFGH', N'ASDF', CAST(N'2025-02-19' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (35, N'ASDFGasdf', N'ASDFGH', N'ASDF', CAST(N'2025-02-19' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (36, N'yui', N'tgyu', N'ui', CAST(N'2025-02-25' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (37, N'ASDFG', N'dfgh', N'sdfgh', CAST(N'2025-02-10' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (38, N'חנה רוברטסsd', N'025002758', N'sdfg', CAST(N'2025-03-26' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (39, N'cd', N'gh', N'vbh', CAST(N'2025-02-25' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (40, N'qwerg', N'erg', N'erg', CAST(N'2025-01-15' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (41, N'yui', N'yu', N'tyuk', CAST(N'2025-02-18' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (42, N'asdf', N'sdfg', N'fgh', CAST(N'2025-02-19' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (43, N'cv', N'fg', N'fvb', CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (44, N'cverr', N'fg', N'fvb', CAST(N'2025-01-27' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (45, N'sdf', N'sdf', N'fd', CAST(N'2025-01-29' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (46, N'e3rt2', N'343', N'45', CAST(N'2025-02-13' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (47, N'e3rt2wer', N'343', N'45', CAST(N'2025-02-13' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (48, N'34567', N'456u', N'456u', CAST(N'2025-02-04' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (49, N'ghj', N'fg', N'ghj', CAST(N'2025-02-03' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (50, N'asdfg', N'asfg', N'dfghn', CAST(N'2025-02-25' AS Date))
GO
INSERT [dbo].[Costumers] ([Id], [Name], [PhoneNumber], [Mail], [Birthday]) VALUES (51, N'asdfgas', N'asfg', N'dfghn', CAST(N'2025-02-25' AS Date))
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
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (3, 28, 2660, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (4, 29, 2755, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (5, 31, 2755, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (6, 31, 2755, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (7, 32, 3040, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (9, 33, 2660, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (10, 37, 2755, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (11, 38, 220, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (12, 39, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (13, 39, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (14, 39, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (15, 39, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (16, 40, 2945, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (17, 41, 190, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (18, 42, 95, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (19, 43, 120, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (20, 43, 120, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (21, 44, 260, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (22, 45, 240, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (23, 47, 5415, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (24, 48, 2660, CAST(N'2025-02-05' AS Date), NULL)
GO
INSERT [dbo].[ShoppingBaskets] ([Id], [CostumerId], [Price], [Date], [Remark]) VALUES (25, 51, 2660, CAST(N'2025-02-05' AS Date), NULL)
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
