USE [cutlery]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CtegoryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacture]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacture](
	[ManufactureID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Manufacture] PRIMARY KEY CLUSTERED 
(
	[ManufactureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[Code] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Order__C3905BAF7159400E] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK__OrderPro__817A2662AF602C87] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[OrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[OrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickUpPoint]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickUpPoint](
	[PickUpPointID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Sity] [nvarchar](max) NOT NULL,
	[StreetName] [nvarchar](max) NOT NULL,
	[StreetNum] [int] NULL,
 CONSTRAINT [PK_PickUpPoint] PRIMARY KEY CLUSTERED 
(
	[PickUpPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductPhoto] [image] NULL,
	[ProductManufacturerID] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductStatus] [nvarchar](max) NULL,
	[ProductProviderID] [int] NOT NULL,
	[MaxOnStock] [int] NOT NULL,
	[Units] [int] NOT NULL,
 CONSTRAINT [PK__Product__2EA7DCD54206F29E] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[UnitsID] [int] IDENTITY(1,1) NOT NULL,
	[UnitsName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Units] PRIMARY KEY CLUSTERED 
(
	[UnitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 03.04.2023 19:55:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryProduct] ON 

INSERT [dbo].[CategoryProduct] ([CategoryID], [CtegoryName]) VALUES (2, N'Вилки')
INSERT [dbo].[CategoryProduct] ([CategoryID], [CtegoryName]) VALUES (3, N'Ложки')
INSERT [dbo].[CategoryProduct] ([CategoryID], [CtegoryName]) VALUES (4, N'наборы')
INSERT [dbo].[CategoryProduct] ([CategoryID], [CtegoryName]) VALUES (5, N'ножи')
SET IDENTITY_INSERT [dbo].[CategoryProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufacture] ON 

INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (1, N'Alaska')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (2, N'Apollo')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (3, N'Attribute')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (4, N'Davinci')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (5, N'Doria')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (6, N'Mayer & Boch')
INSERT [dbo].[Manufacture] ([ManufactureID], [Name]) VALUES (7, N'Smart Home')
SET IDENTITY_INSERT [dbo].[Manufacture] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (1, 1, CAST(N'2022-05-22T00:00:00.000' AS DateTime), 1, 801, CAST(N'2022-05-16T00:00:00.000' AS DateTime), 20)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (2, 2, CAST(N'2022-05-22T00:00:00.000' AS DateTime), 14, 802, CAST(N'2022-05-16T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (3, 2, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 2, 803, CAST(N'2022-05-17T00:00:00.000' AS DateTime), 17)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (4, 2, CAST(N'2022-05-23T00:00:00.000' AS DateTime), 22, 804, CAST(N'2022-05-17T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (5, 2, CAST(N'2022-05-25T00:00:00.000' AS DateTime), 2, 805, CAST(N'2022-05-19T00:00:00.000' AS DateTime), 19)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (6, 2, CAST(N'2022-05-26T00:00:00.000' AS DateTime), 28, 806, CAST(N'2022-05-20T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (7, 2, CAST(N'2022-05-28T00:00:00.000' AS DateTime), 3, 807, CAST(N'2022-05-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (8, 2, CAST(N'2022-05-28T00:00:00.000' AS DateTime), 32, 808, CAST(N'2022-05-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (9, 2, CAST(N'2022-05-30T00:00:00.000' AS DateTime), 5, 809, CAST(N'2022-05-24T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Order] ([OrderID], [OrderStatus], [OrderDeliveryDate], [OrderPickupPoint], [Code], [OrderDate], [UserID]) VALUES (10, 2, CAST(N'2022-05-30T00:00:00.000' AS DateTime), 36, 810, CAST(N'2022-05-24T00:00:00.000' AS DateTime), 18)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (1, N'T793T4', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (2, N'F573T5', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (2, N'G387Y6', 16)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (3, N'B736H6', 20)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (3, N'D735T5', 20)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (4, N'H384H3', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (4, N'K437E6', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (5, N'E732R7', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (5, N'R836H6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (6, N'F839R6', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (6, N'G304H6', 4)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (7, N'C430T4', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (7, N'C946Y6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (8, N'B963H5', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (8, N'V403G6', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (9, N'V026J4', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (9, N'V727Y6', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (10, N'C635Y6', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [Count]) VALUES (10, N'W405G6', 2)
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatus]) VALUES (1, N'Завершен')
INSERT [dbo].[OrderStatus] ([OrderStatusID], [OrderStatus]) VALUES (2, N'Новый ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickUpPoint] ON 

INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (1, 344288, N'г. Талнах', N'ул. Чехова', 1)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (2, 614164, N'г.Талнах', N'ул. Степная', 30)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (3, 394242, N'г. Талнах', N'ул. Коммунистическая', 43)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (4, 660540, N'г. Талнах', N'ул. Солнечная', 25)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (5, 125837, N'г. Талнах', N'ул. Шоссейная', 40)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (6, 125703, N'г. Талнах', N'ул. Партизанская', 49)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (7, 625283, N'г. Талнах', N'ул. Победы', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (8, 614611, N'г. Талнах', N'ул. Молодежная', 50)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (9, 454311, N'г.Талнах', N'ул. Новая', 19)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (10, 660007, N'г.Талнах', N'ул. Октябрьская', 19)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (11, 603036, N'г. Талнах', N'ул. Садовая', 4)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (12, 450983, N'г.Талнах', N'ул. Комсомольская', 26)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (13, 394782, N'г. Талнах', N'ул. Чехова', 3)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (14, 603002, N'г. Талнах', N'ул. Дзержинского', 28)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (15, 450558, N'г. Талнах', N'ул. Набережная', 30)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (16, 394060, N'г.Талнах', N'ул. Фрунзе', 43)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (17, 410661, N'г. Талнах', N'ул. Школьная', 50)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (18, 625590, N'г. Талнах', N'ул. Коммунистическая', 20)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (19, 625683, N'г. Талнах', N'ул. 8 Марта', NULL)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (20, 400562, N'г. Талнах', N'ул. Зеленая', 32)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (21, 614510, N'г. Талнах', N'ул. Маяковского', 47)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (22, 410542, N'г. Талнах', N'ул. Светлая', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (23, 620839, N'г. Талнах', N'ул. Цветочная', 8)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (24, 443890, N'г. Талнах', N'ул. Коммунистическая', 1)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (25, 603379, N'г. Талнах', N'ул. Спортивная', 46)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (26, 603721, N'г. Талнах', N'ул. Гоголя', 41)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (27, 410172, N'г. Талнах', N'ул. Северная', 13)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (28, 420151, N'г. Талнах', N'ул. Вишневая', 32)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (29, 125061, N'г. Талнах', N'ул. Подгорная', 8)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (30, 630370, N'г. Талнах', N'ул. Шоссейная', 24)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (31, 614753, N'г. Талнах', N'ул. Полевая', 35)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (32, 426030, N'г. Талнах', N'ул. Маяковского', 44)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (33, 450375, N'г. Талнах', N'ул. Клубная', 44)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (34, 625560, N'г. Талнах', N'ул. Некрасова', 12)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (35, 630201, N'г. Талнах', N'ул. Комсомольская', 17)
INSERT [dbo].[PickUpPoint] ([PickUpPointID], [Number], [Sity], [StreetName], [StreetNum]) VALUES (36, 190949, N'г. Талнах', N'ул. Мичурина', 26)
SET IDENTITY_INSERT [dbo].[PickUpPoint] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'B736H6', N'Вилка столовая', N'Вилка столовая 21,2 см «Аляска бэйсик» сталь KunstWerk', 2, NULL, 1, CAST(220.0000 AS Decimal(19, 4)), 3, 4, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'B963H5', N'Ложка', N'Ложка 21 мм металлическая (медная) (Упаковка 10 шт)', 3, NULL, 7, CAST(800.0000 AS Decimal(19, 4)), 3, 8, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'C430T4', N'Набор на одну персону', N'Набор на одну персону (4 предмета) серия "Bistro", нерж. сталь, Was, Германия.', 4, NULL, 3, CAST(1600.0000 AS Decimal(19, 4)), 3, 6, NULL, 1, 30, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'C635Y6', N'Детский столовый набор', N'Детский столовый набор Fissman «Зебра» ', 4, NULL, 2, CAST(1000.0000 AS Decimal(19, 4)), 4, 25, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'C730R7', N'Ложка детская', N'Ложка детская столовая', 3, NULL, 7, CAST(300.0000 AS Decimal(19, 4)), 3, 17, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'C943G5', N'Набор чайных ложек', N'Attribute Набор чайных ложек Baguette 3 предмета серебристый', 4, NULL, 3, CAST(200.0000 AS Decimal(19, 4)), 4, 12, NULL, 2, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'C946Y6', N'Вилка столовая', N'Вилка детская столовая', 2, NULL, 2, CAST(300.0000 AS Decimal(19, 4)), 2, 16, NULL, 1, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'D735T5', N'Ложка чайная', N'Ложка чайная ALASKA Eternum', 3, NULL, 1, CAST(220.0000 AS Decimal(19, 4)), 2, 13, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'E732R7', N'Набор столовых приборов', N'Набор столовых приборов Smart Home20 Black в подарочной коробке, 4 шт', 4, NULL, 7, CAST(990.0000 AS Decimal(19, 4)), 5, 6, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'F392G6', N'Набор столовых приборов', N'Apollo Набор столовых приборов Chicago 4 предмета серебристый', 4, NULL, 2, CAST(490.0000 AS Decimal(19, 4)), 4, 9, NULL, 1, 10, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'F573T5', N'Вилки столовые', N'Вилки столовые на блистере / 6 шт.', 2, NULL, 4, CAST(650.0000 AS Decimal(19, 4)), 3, 4, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'F745K4', N'Столовые приборы для салата', N'Столовые приборы для салата Orskov Lava, 2шт', 4, NULL, 6, CAST(2000.0000 AS Decimal(19, 4)), 3, 2, NULL, 1, 10, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'F839R6', N'Ложка чайная', N'Ложка чайная DORIA Eternum', 3, NULL, 5, CAST(400.0000 AS Decimal(19, 4)), 2, 6, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'G304H6', N'Набор ложек', N'Набор ложек столовых APOLLO "Bohemica" 3 пр.', 3, NULL, 2, CAST(500.0000 AS Decimal(19, 4)), 4, 12, NULL, 2, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'G387Y6', N'Ложка столовая', N'Ложка столовая DORIA L=195/60 мм Eternum', 3, NULL, 5, CAST(441.0000 AS Decimal(19, 4)), 4, 23, NULL, 2, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'H384H3', N'Набор столовых приборов', N'Набор столовых приборов для торта Palette 7 предметов серебристый', 4, NULL, 2, CAST(600.0000 AS Decimal(19, 4)), 2, 9, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'H495H6', N'Набор стейковых ножей', N'Набор стейковых ножей 4 пр. в деревянной коробке', 5, NULL, 6, CAST(7000.0000 AS Decimal(19, 4)), 2, 15, NULL, 1, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'K437E6', N'Набор вилок', N'Набор вилок столовых APOLLO "Aurora" 3шт.', 4, NULL, 2, CAST(530.0000 AS Decimal(19, 4)), 3, 16, NULL, 2, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'L593H5', N'набор ножей', N'Набор ножей Mayer & Boch, 4 шт', 4, NULL, 6, CAST(1300.0000 AS Decimal(19, 4)), 5, 14, NULL, 2, 25, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'N493G6', N'Набор для серверовки', N'Набор для сервировки сыра Select', 4, NULL, 7, CAST(2550.0000 AS Decimal(19, 4)), 4, 6, NULL, 1, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'R836H6', N'Набор  столовых ножей', N'Attribute Набор столовых ножей Baguette 2 предмета серебристый', 5, NULL, 3, CAST(250.0000 AS Decimal(19, 4)), 3, 16, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'S394J5', N'Набор чайных ложек', N'Attribute Набор чайных ложек Chaplet 3 предмета серебристый', 4, NULL, 3, CAST(170.0000 AS Decimal(19, 4)), 3, 4, NULL, 1, 5, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'S395B5', N'Нож для стейка', N'Нож для стейка 11,5 см серебристый/черный', 5, NULL, 2, CAST(600.0000 AS Decimal(19, 4)), 4, 15, NULL, 1, 10, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'T793T4', N'Набор ложек', N'Набор столовых ложек Baguette 3 предмета серебристый', 3, NULL, 3, CAST(250.0000 AS Decimal(19, 4)), 3, 16, NULL, 1, 10, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'V026J4', N'набор ножей', N'абор ножей для стейка и пиццы Swiss classic 2 шт. желтый', 4, NULL, 2, CAST(700.0000 AS Decimal(19, 4)), 3, 9, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'V403G6', N'Ложка чайная', N'Ложка чайная DORIA Eternum', 3, NULL, 5, CAST(600.0000 AS Decimal(19, 4)), 5, 24, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'V727Y6', N'Набор десертных ложек', N'Набор десертных ложек на подставке Размер: 7*7*15 см', 3, NULL, 6, CAST(3000.0000 AS Decimal(19, 4)), 4, 8, NULL, 1, 10, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'W295Y5', N'Сервировочный набор для торта', N'Набор сервировочный для торта "Розанна"', 4, NULL, 3, CAST(1100.0000 AS Decimal(19, 4)), 2, 16, NULL, 2, 15, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'W405G6', N'Набор столовых приборов', N'Набор сервировочных столовых вилок Цветы', 4, NULL, 3, CAST(1300.0000 AS Decimal(19, 4)), 3, 4, NULL, 1, 25, 1)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductStatus], [ProductProviderID], [MaxOnStock], [Units]) VALUES (N'А112Т4', N'Набор вилок', N'Набор столовых вилок Davinci, 20 см 6 шт.', 2, NULL, 4, CAST(1600.0000 AS Decimal(19, 4)), 2, 6, NULL, 2, 30, 1)
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (1, N'LeroiMerlin')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (2, N'Максидом')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Клиент')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([UnitsID], [UnitsName]) VALUES (1, N'шт.
')
SET IDENTITY_INSERT [dbo].[Units] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (11, N'Савицкая', N'Арина', N'Саввична', N'1y3lj8w0viop@outlook.com', N'2L6KZG', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (12, N'Мартынов', N'Максим', N'Михайлович', N'3o698uk5c0rw@tutanota.com', N'uzWC67', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (13, N'Зубов', N'Александр', N'Дамирович', N'lx24fvrt1aip@yahoo.com', N'8ntwUp', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (14, N'Попов', N'Даниил', N'Олегович', N's8z076vku95j@gmail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (15, N'Семенов', N'Михаил', N'Никитич', N'n3bxm7f2q5i4@outlook.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (16, N'Дмитриева', N'Надежда', N'Вячеславовна', N'r7dztn8a5ihq@mail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (17, N'Воронцова', N'Виктория', N'Саввична', N'vofgck2m39hq@gmail.com', N'LdNyos', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (18, N'Софронов', N'Ярослав', N'Игоревич', N's6q9tevybado@yahoo.com', N'gynQMT', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (19, N'Егоров', N'Артём', N'Евгеньевич', N'p7wuls3dtq9v@yahoo.com', N'AtnDjr', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (20, N'Ситникова', N'Эмилия', N'Степановна', N'rdn04s1u2ckb@mail.com', N'JlFRCZ', 3)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[OrderStatus] ([OrderStatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickUpPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickUpPoint] ([PickUpPointID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickUpPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Order__2D27B809] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Order__2D27B809]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK__OrderProd__Produ__2E1BDC42] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK__OrderProd__Produ__2E1BDC42]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[CategoryProduct] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacture] FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[Manufacture] ([ManufactureID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacture]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Provider] FOREIGN KEY([ProductProviderID])
REFERENCES [dbo].[Provider] ([ProviderID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Provider]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Units] FOREIGN KEY([Units])
REFERENCES [dbo].[Units] ([UnitsID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Units]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
