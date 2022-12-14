USE [FoodOrderOnline]
GO
/****** Object:  Table [dbo].[InTouch]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InTouch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NOT NULL,
	[Date] [varchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InTouch] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Category] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Pizza', N'Soft drinks, coffees, teas, beers, and ales1')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Humbergur', N'Thanh Hoai')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Shushi', N'Thanh Hoai')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Drinks', N'Thanh Hoai')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Jamia', N'Thanh Hoai')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Bimbim', N'Ha Noi')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Bananas', N'Me Linh')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  Table [dbo].[Supplier]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Supplier] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (1, N'Roomm', N'446 Waywood Way', N'0353890123', N'newgmail1@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (2, N'Voonte', N'80 Commercial Lane', N'0353890456', N'newgmail2@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (3, N'Voomm', N'33474 Garrison Circle', N'0353890789', N'newgmail3@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (4, N'Jabbertype', N'2 Erie Circle', N'0353890159', N'newgmail4@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (5, N'Fanoodle', N'223 Elmside Court', N'0353890852', N'newgmailUpdate@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (7, N'Demo Sup1', N'49 Gilbert St.', N'0353890146', N'newgmail5@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (8, N'Demo Sup2', N'49 Gilbert St.', N'0353890147', N'newgmail6@gmail.com')
INSERT [dbo].[Supplier] ([SupplierID], [CompanyName], [Address], [Phone], [Email]) VALUES (13, N'Demo Sup', N'49 Gilbert St.', N'0353890333', N'khacbao.1007@gmail.com')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
/****** Object:  Table [dbo].[Status]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Status] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[Status] ON
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'Wait')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'Process')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (3, N'Done')
SET IDENTITY_INSERT [dbo].[Status] OFF
/****** Object:  Table [dbo].[Shipper]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipper](
	[ShipperID] [int] IDENTITY(1,1) NOT NULL,
	[ShipperName] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Shipper] PRIMARY KEY CLUSTERED 
(
	[ShipperID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Shipper] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Shipper] ON
INSERT [dbo].[Shipper] ([ShipperID], [ShipperName], [Address], [Phone]) VALUES (1, N'Youopia', N'3 Macpherson Court', N'5633727880')
INSERT [dbo].[Shipper] ([ShipperID], [ShipperName], [Address], [Phone]) VALUES (2, N'Livetube', N'8909 Fairfield Park', N'7097283312')
INSERT [dbo].[Shipper] ([ShipperID], [ShipperName], [Address], [Phone]) VALUES (3, N'Photospace', N'61565 Almo Alley', N'3887710549')
INSERT [dbo].[Shipper] ([ShipperID], [ShipperName], [Address], [Phone]) VALUES (4, N'Avamm', N'43 Transport Circle', N'1555550353')
INSERT [dbo].[Shipper] ([ShipperID], [ShipperName], [Address], [Phone]) VALUES (5, N'Brainsphere', N'96 Fieldstone Circle', N'4229096577')
SET IDENTITY_INSERT [dbo].[Shipper] OFF
/****** Object:  Table [dbo].[Role]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Role] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[Role] ON
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Customer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Employee')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Shipper')
SET IDENTITY_INSERT [dbo].[Role] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[SupplierID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
	[Discount] [float] NULL,
	[UnitInStock] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[IsActive] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (2, N'Pizza Banaca', 2, 1, 2, 20.2, 0, 2, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0901996381-1.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (3, N'Pizza Viciga', 3, 1, 14, 22.2, 0.1, 11, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902421386-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (11, N'Drink Dragon', 5, 4, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050681807-1-476x476.jpg', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (12, N'Shushi Dragon', 5, 3, 10, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030737791-1-476x476.jpg', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (13, N'Humberger Hamaga', 5, 2, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1056586540-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (14, N'Drink Buruno', 3, 4, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050786752-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (15, N'Pizza Hamaga', 5, 1, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0901188784-1-476x476.jpg', 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (16, N'Pizza Luchicu', 5, 1, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902091382-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (17, N'Delicious Pizza12', 2, 5, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050812597-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (18, N'Drink Kakachoi', 1, 4, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050814060-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (19, N'Shushi Buruno', 5, 3, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030222824-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (20, N'Delicious Pizza15', 4, 5, 5, 15, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://technext.github.io/feane/images/f2.png', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (21, N'Pizza Manager', 5, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0949356538-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (22, N'Pizza Lucian', 4, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902061147-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (23, N'Shushi Kakachoi', 4, 3, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030050117-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (24, N'Pizza Leesin', 3, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902091382-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (26, N'Drink Manachi', 2, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050812597-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (27, N'Shushi Manachi', 4, 3, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030503090-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (28, N'Drink Manachi', 1, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050546169-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (29, N'Humberger Buruno', 4, 2, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0927393382-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (30, N'Drink Manachi', 4, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050541708-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (31, N'Pizza Ahri', 1, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902091382-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (32, N'Drink Manachi', 4, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050304633-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (33, N'Pizza Yassou', 2, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902744338-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (34, N'Humberger Kakachoi', 4, 2, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1009876767-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (35, N'Shushi Manachi', 3, 3, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030086168-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (36, N'Shushi Manachi', 1, 3, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1030239026-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (37, N'Drink Chikata', 4, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050487512-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (38, N'Pizza Jinx', 3, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://technext.github.io/feane/images/f2.png', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (39, N'Drink Hakani', 4, 4, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1050304633-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (40, N'Pizza Hakaca', 5, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902061147-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (41, N'Drink', 4, 5, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://technext.github.io/feane/images/f2.png', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (42, N'Humberger Manachi', 4, 2, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1000422914-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (43, N'Drink', 4, 5, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://technext.github.io/feane/images/f2.png', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (44, N'Shushi Manachi', 2, 3, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-1021251770-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (45, N'Drink', 4, 5, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://technext.github.io/feane/images/f2.png', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (46, N'Delicious Pizza41', 1, 5, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902744338-1-476x476.jpg', 1)
INSERT [dbo].[Product] ([ProductID], [ProductName], [SupplierID], [CategoryID], [Quantity], [UnitPrice], [Discount], [UnitInStock], [Description], [ImageURL], [IsActive]) VALUES (47, N'Pizza Chicaca', 4, 1, 4, 25, 0, 3, N'Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque', N'https://parkofideas.com/foodz/demo4/wp-content/uploads/2019/03/demo1-0902744338-1-476x476.jpg', 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Account]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[DisplayName] [varchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[Role] [int] NULL,
	[Gender] [int] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (1, N'admin', N'admin', N'AdminBaoNk', N'Thanh Hoai', N'Khacbao.1007@gmail.com', N'0353890333', N'https://scontent.fhan3-4.fna.fbcdn.net/v/t1.6435-9/170923903_3054184004813741_7399268118114580880_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=QQqO5jZdyjEAX-GltQX&_nc_ht=scontent.fhan3-4.fna&oh=00_AT98FbF9aEhJI99N2GRqtwEgMJWHPGWMfkq5zIc63ZK0tQ&oe=62F9A3B1', 3, 0)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (2, N'hmeasor1@ycombinator.com', N'GnRF7sR', N'Hercules Measor', N'2 Straubel Street', N'hmeasor1@craigslist.org', N'8231300548', N'http://dummyimage.com/200x173.png/5fa2dd/ffffff', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (3, N'ggobolos2@mail.ru', N'9sSJMfKGB', N'Goldia Gobolos', N'084 Dennis Lane', N'ggobolos2@paginegialle.it', N'7742557524', N'http://dummyimage.com/115x137.png/ff4444/ffffff', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (4, N'adixie3@mozilla.org', N'jqTuFt', N'Annecorinne Dixie', N'578 Myrtle Crossing', N'adixie3@e-recht24.de', N'5321456306', N'http://dummyimage.com/236x180.png/dddddd/000000', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (5, N'ejansson4@fema.gov', N'sEoDGRdp317Q', N'Erina Jansson', N'61645 Annamark Way', N'ejansson4@walmart.com', N'1255919562', N'http://dummyimage.com/167x237.png/ff4444/ffffff', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (6, N'employee', N'1', N'Bao', N'Thanh Hoa', N'abc@123', N'0123456789', N'http://dummyimage.com/167x237.png/ff4444/ffffff', 2, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (8, N'khacbao', N'1', N'BaoCheff', N'Thanh Hoai Thanh Khuong', N'khacbao.1007@gmail.com', N'0353890333', N'https://scontent.fhan2-2.fna.fbcdn.net/v/t39.30808-6/279966274_3345616639003808_2357553834940078365_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=bsjrXyq6HkoAX9xwSyd&_nc_ht=scontent.fhan2-2.fna&oh=00_AT_ZUaH0I5hwO2d06v4GHeYFqp7wrVpYpvPu2LJNq5ZiVQ&oe=62A4643C', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (9, N'khacbao2', N'1', N'Khacbao', N'Thanh Hoai', N'baonkhe151451@fpt.edu.vn', N'0123456123', N'https://scontent.fhan2-2.fna.fbcdn.net/v/t39.30808-6/279966274_3345616639003808_2357553834940078365_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=e3f864&_nc_ohc=bsjrXyq6HkoAX9xwSyd&_nc_ht=scontent.fhan2-2.fna&oh=00_AT_ZUaH0I5hwO2d06v4GHeYFqp7wrVpYpvPu2LJNq5ZiVQ&oe=62A4643C', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (10, N'datpv', N'1', N'Dat78', N'Me Linh', N'datpv@gmail.com', N'012345789', N'', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (11, N'khainn', N'1', N'Khai', N'Thanh Hoai', N'khainnhe151295@gpt.edu.vn', N'0353896102', N'https://scontent.fhan2-3.fna.fbcdn.net/v/t39.30808-6/279899523_1282481995609165_345003128066514205_n.jpg?stp=dst-jpg_p526x296&_nc_cat=108&ccb=1-7&_nc_sid=dbeb18&_nc_ohc=AhS1qvSD1skAX_VBkCl&_nc_ht=scontent.fhan2-3.fna&oh=00_AT8x__DuV_kR-4u1y2tCCMLPk3W3FEMB8sr7Br_D02lDfQ&oe=62A3ACE9', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (12, N'khai123', N'12', N'Khai12', N'thanh hoai', N'khai@gmail.com', N'0388219330', N'data:image/jpeg;base64,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', 1, 1)
INSERT [dbo].[Account] ([AccountID], [UserName], [Password], [DisplayName], [Address], [Email], [Phone], [ImageURL], [Role], [Gender]) VALUES (15, N'shipper', N'1', N'shipperName', N'Thanh Hoai', N'shipper@gmail.com', N'0353123456', NULL, 4, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[ShipperID] [int] NOT NULL,
	[OrderDate] [varchar](50) NULL,
	[Address] [varchar](50) NOT NULL,
	[Email] [varchar](50) NULL,
	[Status] [int] NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order] DISABLE CHANGE_TRACKING
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (1, 1, 1, N'2021-04-09', N'514 Bartillon Place', N'cspacey0@vimeo.com', 1, N'2894548878')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (2, 2, 2, N'2022-04-03', N'107 Hooker Court', N'gcockrem1@wunderground.com', 2, N'1079525132')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (3, 3, 3, N'2022-05-03', N'43784 Gerald Lane', N'npotts2@usa.gov', 3, N'3937223692')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (4, 4, 4, N'2021-07-05', N'565 Golf Trail', N'ekilfoyle3@sina.com.cn', 1, N'1392406719')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (5, 5, 5, N'2021-05-08', N'02360 Florence Lane', N'cwyrill4@ehow.com', 2, N'2904329759')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (6, 12, 1, NULL, N'thanh hoai', N'khai@gmail.com', 1, N'0388219330')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (8, 12, 1, N'Jun 21 2022 11:00AM', N'Thanh Hoai', N'khai@gmail.com', 1, N'0353890123')
INSERT [dbo].[Order] ([OrderID], [AccountID], [ShipperID], [OrderDate], [Address], [Email], [Status], [Phone]) VALUES (9, 12, 1, N'2022-07-11 19:23:53.429', N'Thanh Hoai', N'khai@gmail.com', 1, N'0353890333')
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[Mess]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mess](
	[IdCustomer] [int] NOT NULL,
	[IdEmployee] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_Mess] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC,
	[IdEmployee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mess] DISABLE CHANGE_TRACKING
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackContent] [nvarchar](max) NULL,
	[ProductID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[Feedbacktime] [datetime] NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feedback] DISABLE CHANGE_TRACKING
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON
INSERT [dbo].[Feedback] ([FeedbackID], [FeedbackContent], [ProductID], [AccountID], [Feedbacktime]) VALUES (1, N'Hay', 2, 2, CAST(0x0000AEAD00D901E8 AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [FeedbackContent], [ProductID], [AccountID], [Feedbacktime]) VALUES (2, N'khai', 2, 12, CAST(0x0000AEAD00FD77E4 AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
/****** Object:  Table [dbo].[Order Details]    Script Date: 07/19/2022 13:19:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order Details](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Discount] [float] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Order Details] DISABLE CHANGE_TRACKING
GO
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (2, 2, 41, 97, 19)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (3, 3, 75, 66, 17)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (6, 2, 20, 1, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (8, 2, 20.2, 2, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (8, 20, 15, 3, 0)
INSERT [dbo].[Order Details] ([OrderID], [ProductID], [Price], [Quantity], [Discount]) VALUES (9, 2, 20.2, 1, 0)
/****** Object:  Default [DF_Order_OrderDate]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
GO
/****** Object:  ForeignKey [FK_Product_Category]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
/****** Object:  ForeignKey [FK_Product_Supplier]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
/****** Object:  ForeignKey [FK_Account_Role]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
/****** Object:  ForeignKey [FK_Order_Account]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Account]
GO
/****** Object:  ForeignKey [FK_Order_Shipper]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Shipper] FOREIGN KEY([ShipperID])
REFERENCES [dbo].[Shipper] ([ShipperID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Shipper]
GO
/****** Object:  ForeignKey [FK_Order_Status]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
/****** Object:  ForeignKey [FK_Mess_Account]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Mess]  WITH CHECK ADD  CONSTRAINT [FK_Mess_Account] FOREIGN KEY([IdCustomer])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Mess] CHECK CONSTRAINT [FK_Mess_Account]
GO
/****** Object:  ForeignKey [FK_Mess_Account1]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Mess]  WITH CHECK ADD  CONSTRAINT [FK_Mess_Account1] FOREIGN KEY([IdEmployee])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Mess] CHECK CONSTRAINT [FK_Mess_Account1]
GO
/****** Object:  ForeignKey [FK_Feedback_Account]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Account]
GO
/****** Object:  ForeignKey [FK_Feedback_Product]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
/****** Object:  ForeignKey [FK_Order Details_Order]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Order]
GO
/****** Object:  ForeignKey [FK_Order Details_Product1]    Script Date: 07/19/2022 13:19:42 ******/
ALTER TABLE [dbo].[Order Details]  WITH CHECK ADD  CONSTRAINT [FK_Order Details_Product1] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Order Details] CHECK CONSTRAINT [FK_Order Details_Product1]
GO
