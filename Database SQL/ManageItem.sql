USE [ManageItem]
GO
/****** Object:  Table [Account]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](200) NULL,
	[FullName] [nvarchar](200) NULL,
	[DisplayName] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NULL,
	[Password] [nvarchar](255) NULL,
	[Type] [int] NULL,
	[UserRoleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Bill]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Bill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[ItemID] [int] NOT NULL,
	[SaleTime] [date] NULL,
	[Quantity] [float] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[TotalPriceBill] [float] NULL,
	[StatisticID] [int] NOT NULL,
	[NumberBill] [int] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC,
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Item]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Item](
	[ItemID] [int] IDENTITY(1,1) NOT NULL,
	[NameItem] [nvarchar](200) NULL,
	[EntryPriceItem] [float] NULL,
	[ExportPriceItem] [float] NULL,
	[QuantityItem] [float] NULL,
	[Unit] [nvarchar](200) NULL,
	[Note] [nvarchar](200) NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ItemCategory]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ItemCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](255) NULL,
 CONSTRAINT [PK__ItemCate__19093A2B719C5404] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ItemReturn]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ItemReturn](
	[ItemReturnID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [float] NULL,
	[ItemID] [int] NULL,
	[Price] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ShowItemTemp]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ShowItemTemp](
	[BillIdTemp] [int] IDENTITY(1,1) NOT NULL,
	[ItemIDTemp] [int] NOT NULL,
	[SaleTimeTemp] [date] NULL,
	[QuantityTemp] [float] NULL,
	[PriceTemp] [float] NULL,
	[DiscountTemp] [float] NULL,
	[TotalPriceBillTemp] [float] NULL,
	[StatisticIDTemp] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Statistic]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Statistic](
	[StatisticID] [int] NOT NULL,
	[DatePurchase] [date] NULL,
	[ItemReturn] [float] NULL,
	[TotalPrice] [float] NULL,
	[AccountID] [int] NULL,
	[NumberBill] [int] NULL,
 CONSTRAINT [PK_Statistic] PRIMARY KEY CLUSTERED 
(
	[StatisticID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [UserRole]    Script Date: 12/26/2022 3:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Account] ON 

INSERT [Account] ([AccountID], [UserName], [FullName], [DisplayName], [Phone], [Password], [Type], [UserRoleID]) VALUES (12, N'admin', N'admin', N'admin', N'0902783436', N'0', 1, 1)
INSERT [Account] ([AccountID], [UserName], [FullName], [DisplayName], [Phone], [Password], [Type], [UserRoleID]) VALUES (14, N'staff', N'Truong Tan du', N'du truong', N'12312312', N'0', 1, 1)
SET IDENTITY_INSERT [Account] OFF
GO
SET IDENTITY_INSERT [Bill] ON 

INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (2057, 1, CAST(N'2022-12-20' AS Date), 1, 4000, 0, 4000, 1, 1)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (2058, 2, CAST(N'2022-12-20' AS Date), 2, 8000, 0, 16000, 2, 1)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (2059, 3, CAST(N'2022-12-20' AS Date), 3, 15000, 0, 45000, 3, 1)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (2060, 4, CAST(N'2022-12-20' AS Date), 4, 10000, 0, 40000, 4, 1)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (2061, 1, CAST(N'2022-12-24' AS Date), 1, 4000, 0, 4000, 5, 2)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (3047, 1, CAST(N'2022-12-25' AS Date), 2, 4000, 0, 8000, 6, 3)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (3048, 2, CAST(N'2022-12-25' AS Date), 1, 8000, 0, 8000, 7, 3)
INSERT [Bill] ([BillID], [ItemID], [SaleTime], [Quantity], [Price], [Discount], [TotalPriceBill], [StatisticID], [NumberBill]) VALUES (3049, 4, CAST(N'2022-12-25' AS Date), 3, 10000, 0, 30000, 8, 4)
SET IDENTITY_INSERT [Bill] OFF
GO
SET IDENTITY_INSERT [Item] ON 

INSERT [Item] ([ItemID], [NameItem], [EntryPriceItem], [ExportPriceItem], [QuantityItem], [Unit], [Note], [CategoryID]) VALUES (1, N'Hảo Hảo', 3000, 4000, 400, N'Thùng', N'Note2', 1)
INSERT [Item] ([ItemID], [NameItem], [EntryPriceItem], [ExportPriceItem], [QuantityItem], [Unit], [Note], [CategoryID]) VALUES (2, N'Sting', 4998, 8000, 400, N'Lon', N'note', 2)
INSERT [Item] ([ItemID], [NameItem], [EntryPriceItem], [ExportPriceItem], [QuantityItem], [Unit], [Note], [CategoryID]) VALUES (3, N'hamburger', 10000, 15000, 100, N'Cái', N'hamburger note', 4)
INSERT [Item] ([ItemID], [NameItem], [EntryPriceItem], [ExportPriceItem], [QuantityItem], [Unit], [Note], [CategoryID]) VALUES (4, N'snack', 6998, 10000, 1982, N'Cái', N'snack', 4)
SET IDENTITY_INSERT [Item] OFF
GO
SET IDENTITY_INSERT [ItemCategory] ON 

INSERT [ItemCategory] ([CategoryID], [NameCategory]) VALUES (1, N'Thức Ăn')
INSERT [ItemCategory] ([CategoryID], [NameCategory]) VALUES (2, N'Nước Ngọt')
INSERT [ItemCategory] ([CategoryID], [NameCategory]) VALUES (4, N'FastFood')
SET IDENTITY_INSERT [ItemCategory] OFF
GO
SET IDENTITY_INSERT [ItemReturn] ON 

INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (13, 1, 9, 36000)
INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (14, 2, 7, 56000)
INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (15, 1, 50, 200000)
INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (12, 3, 84, 1260000)
INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (16, 2, 20, 160000)
INSERT [ItemReturn] ([ItemReturnID], [Quantity], [ItemID], [Price]) VALUES (17, 3, 10, 150000)
SET IDENTITY_INSERT [ItemReturn] OFF
GO
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (1, CAST(N'2022-12-20' AS Date), 0, 4000, 12, 1)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (2, CAST(N'2022-12-20' AS Date), 0, 16000, 12, 1)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (3, CAST(N'2022-12-20' AS Date), 0, 45000, 12, 1)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (4, CAST(N'2022-12-20' AS Date), 0, 40000, 12, 1)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (5, CAST(N'2022-12-24' AS Date), 0, 4000, 12, 2)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (6, CAST(N'2022-12-25' AS Date), 0, 8000, 12, 3)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (7, CAST(N'2022-12-25' AS Date), 0, 8000, 12, 3)
INSERT [Statistic] ([StatisticID], [DatePurchase], [ItemReturn], [TotalPrice], [AccountID], [NumberBill]) VALUES (8, CAST(N'2022-12-25' AS Date), 0, 30000, 12, 4)
GO
SET IDENTITY_INSERT [UserRole] ON 

INSERT [UserRole] ([UserRoleID], [DisplayName]) VALUES (1, N'admin')
INSERT [UserRole] ([UserRoleID], [DisplayName]) VALUES (2, N'staff')
SET IDENTITY_INSERT [UserRole] OFF
GO
ALTER TABLE [Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [UserRole] ([UserRoleID])
GO
ALTER TABLE [Account] CHECK CONSTRAINT [FK_Account_UserRole]
GO
ALTER TABLE [Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Item] FOREIGN KEY([ItemID])
REFERENCES [Item] ([ItemID])
GO
ALTER TABLE [Bill] CHECK CONSTRAINT [FK_Bill_Item]
GO
ALTER TABLE [Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Statistic] FOREIGN KEY([StatisticID])
REFERENCES [Statistic] ([StatisticID])
GO
ALTER TABLE [Bill] CHECK CONSTRAINT [FK_Bill_Statistic]
GO
ALTER TABLE [Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_ItemCategory] FOREIGN KEY([CategoryID])
REFERENCES [ItemCategory] ([CategoryID])
GO
ALTER TABLE [Item] CHECK CONSTRAINT [FK_Item_ItemCategory]
GO
ALTER TABLE [Statistic]  WITH CHECK ADD  CONSTRAINT [FK_Statistic_Account1] FOREIGN KEY([AccountID])
REFERENCES [Account] ([AccountID])
GO
ALTER TABLE [Statistic] CHECK CONSTRAINT [FK_Statistic_Account1]
GO
/****** Object:  StoredProcedure [USP_GetListBillByDate]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [USP_GetListBillByDate]
@datefrom date, @dateto date
as
Begin 
	SELECT st.StatisticID , st.DatePurchase , it.NameItem , b.Quantity , it.ExportPriceItem , st.TotalPrice , st.ItemReturn , ac.DisplayName ,st.NumberBill 
	FROM Statistic st, account ac , bill b ,Item it WHERE ac.AccountID= st.AccountID  and st.StatisticID =b.StatisticID and b.ItemID =it.ItemID
	and DatePurchase >= @datefrom and DatePurchase <= @dateto


end 
GO
/****** Object:  StoredProcedure [USP_GetListStatisticByDate]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [USP_GetListStatisticByDate]
@datefrom date, @dateto date
as
Begin 
	SELECT st.StatisticID , st.DatePurchase , it.NameItem , b.Quantity , st.TotalPrice , st.ItemReturn , ac.DisplayName ,st.NumberBill 
	FROM Statistic st, account ac , bill b ,Item it WHERE ac.AccountID= st.AccountID  and st.StatisticID =b.StatisticID and b.ItemID =it.ItemID and DatePurchase >= @datefrom and DatePurchase <= @dateto
end 
GO
/****** Object:  StoredProcedure [USP_GetListStatisticByNameItemandDate]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [USP_GetListStatisticByNameItemandDate]
@datefrom date, @dateto date ,@nameitem NVARCHAR(1000)
as
Begin 
	SELECT st.StatisticID , st.DatePurchase , it.NameItem , b.Quantity , it.ExportPriceItem , st.TotalPrice , st.ItemReturn , ac.DisplayName ,st.NumberBill 
	FROM Statistic st, account ac , bill b ,Item it WHERE ac.AccountID= st.AccountID  and st.StatisticID =b.StatisticID and b.ItemID =it.ItemID
	and DatePurchase >= @datefrom and DatePurchase <= @dateto and it.NameItem = @nameitem


end 
GO
/****** Object:  StoredProcedure [USP_GetListStatisticByNameItemandDateandseller]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [USP_GetListStatisticByNameItemandDateandseller]
@datefrom date, @dateto date ,@nameitem NVARCHAR(1000),@seller NVARCHAR(1000)
as
Begin 
	SELECT st.StatisticID , st.DatePurchase , it.NameItem , b.Quantity , it.ExportPriceItem , st.TotalPrice , st.ItemReturn , ac.DisplayName ,st.NumberBill 
	FROM Statistic st, account ac , bill b ,Item it WHERE ac.AccountID= st.AccountID  and st.StatisticID =b.StatisticID and b.ItemID =it.ItemID
	and DatePurchase >= @datefrom and DatePurchase <= @dateto and it.NameItem = @nameitem and ac.DisplayName =@seller


end 
GO
/****** Object:  StoredProcedure [USP_GetListStatisticByseller]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [USP_GetListStatisticByseller]
@datefrom date, @dateto date ,@seller NVARCHAR(1000)
as
Begin 
	SELECT st.StatisticID , st.DatePurchase , it.NameItem , b.Quantity , it.ExportPriceItem , st.TotalPrice , st.ItemReturn , ac.DisplayName ,st.NumberBill 
	FROM Statistic st, account ac , bill b ,Item it WHERE ac.AccountID= st.AccountID  and st.StatisticID =b.StatisticID and b.ItemID =it.ItemID
	and DatePurchase >= @datefrom and DatePurchase <= @dateto  and ac.DisplayName =@seller


end 
GO
/****** Object:  StoredProcedure [USP_InsertBill]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [USP_InsertBill]
@ItemID INT,
@Quantity float,
@Price float,
@Discount float,
@TotalPriceBill float,
@StatisticID int,
@NumberBill int

AS
BEGIN
	INSERT dbo.Bill 
	        ( ItemID,
			  SaleTime,
			  Quantity,
			  Price,
	          Discount,
			  TotalPriceBill,
			  StatisticID,
			  NumberBill
			
	        )
	VALUES  ( 
	          @ItemID , 
			  GETDATE() , 
			  @Quantity,
			  @Price,
	          @Discount,
			  @TotalPriceBill,
			  @StatisticID,
			  @NumberBill
	        )
END
GO
/****** Object:  StoredProcedure [USP_InsertBillTemp]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [USP_InsertBillTemp]
@ItemIDTemp INT,
@TotalPriceBillTemp float,
@PriceTemp float,
@QuantityTemp float,
@StatisticIDTemp int
AS
BEGIN
	INSERT dbo.ShowItemTemp 
	        ( ItemIDTemp,
			  SaleTimeTemp,
			  QuantityTemp,
			  PriceTemp,
	          DiscountTemp,
			  TotalPriceBillTemp,
			  StatisticIDTemp
			
	        )
	VALUES  ( 
	          @ItemIDTemp , 
			  GETDATE() , 
			  @QuantityTemp,
			  @PriceTemp,
	          0,
			  @TotalPriceBillTemp,
			  @StatisticIDTemp
	        )
END
GO
/****** Object:  StoredProcedure [USP_InsertIDstatistic]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [USP_InsertIDstatistic]
@StatisticID INT

AS
BEGIN
	INSERT dbo.Statistic 
	        ( StatisticID
			
			
	        )
	VALUES  ( 
	          @StatisticID
	        )
END
GO
/****** Object:  StoredProcedure [USP_InsertItemReturn]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [USP_InsertItemReturn]
@ItemID INT,
@Quantity float,
@TotalPrice float
AS
BEGIN
	INSERT dbo.ItemReturn 
	        ( Quantity,
			  ItemID,
			  Price
	        )
	VALUES  ( @Quantity,
			  @ItemID,
			  @TotalPrice
	        )
END
GO
/****** Object:  StoredProcedure [USP_Login]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [USP_Login]
@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @userName AND PassWord = @passWord
END
GO
/****** Object:  StoredProcedure [USP_UpdateAccount]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [USP_UpdateAccount]
@userName NVARCHAR(100), @displayName NVARCHAR(100), @password NVARCHAR(100), @newPassword NVARCHAR(100)
AS
BEGIN
	DECLARE @isRightPass INT = 0
	
	SELECT @isRightPass = COUNT(*) FROM dbo.Account WHERE USERName = @userName AND PassWord = @password
	
	IF (@isRightPass = 1)
	BEGIN
		IF (@newPassword = NULL OR @newPassword = '')
		BEGIN
			UPDATE dbo.Account SET DisplayName = @displayName  WHERE UserName = @userName 
		END		
		ELSE
			UPDATE dbo.Account SET DisplayName = @displayName , PassWord = @newPassword WHERE UserName = @userName
	end
END
GO
/****** Object:  StoredProcedure [USP_UpdateBillTemp]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [USP_UpdateBillTemp]
@itemIDTemp INT,
@totalPriceBillTemp float,
@quantityTemp float
AS
BEGIN
	update dbo.ShowItemTemp
	set QuantityTemp += @quantityTemp , TotalPriceBillTemp += @totalPriceBillTemp
	where ItemIDTemp = @itemIDTemp 
		
END

GO
/****** Object:  StoredProcedure [USP_UpdateStatistic]    Script Date: 12/26/2022 3:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [USP_UpdateStatistic]
@StatisticID INT,
@TotalPrice float,
@billid int,
@AccountID int 


AS
BEGIN
	update dbo.Statistic
	set TotalPrice = @TotalPrice , DatePurchase = GETDATE() ,ItemReturn =0 ,NumberBill = @billid,AccountID = @AccountID
	where StatisticID = @StatisticID 
		
END

GO
