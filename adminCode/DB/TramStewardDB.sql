USE [TramStewardDB]
GO
/****** Object:  Table [dbo].[TS_Transaction]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_Transaction](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](30) NULL,
	[TrueName] [nvarchar](20) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Brand] [varchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Price] [decimal](18, 2) NULL,
	[Types] [nvarchar](20) NULL,
	[Category] [nvarchar](20) NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Clicks] [int] NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[isTop] [int] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_TS_TRANSACTION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Brand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型（二手车等）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Types'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶（1是、0否）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'isTop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Transaction', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_Transaction] ([Id], [Title], [TrueName], [ImageUrl], [Brand], [Phone], [Details], [Price], [Types], [Category], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateManId], [CreateTime], [UpdateTime], [Longitude], [Latitude], [isTop], [States], [isValid], [isDeleted], [geohash]) VALUES (N'a81fb98c-bdc1-4819-8da2-4bca2e218e48', N'wwww', N'12', NULL, N'1', N'12', N'<p>&nbsp;2323<span style="background-color: rgb(251, 213, 181);">232</span></p>', CAST(400.00 AS Decimal(18, 2)), NULL, N'0902', N'45', N'4501', N'450107', N'1', 2, 3, 4, N'56ebf7b5-c51a-4c69-84e3-893601305489', CAST(0x0000A56F00171114 AS DateTime), CAST(0x0000A57901036652 AS DateTime), 108.486753, 22.708143, 0, 0, 1, 0, NULL)
INSERT [dbo].[TS_Transaction] ([Id], [Title], [TrueName], [ImageUrl], [Brand], [Phone], [Details], [Price], [Types], [Category], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateManId], [CreateTime], [UpdateTime], [Longitude], [Latitude], [isTop], [States], [isValid], [isDeleted], [geohash]) VALUES (N'bc55a31e-a9fc-48f6-9b8c-6278a4e73dab', N'23', N'23', NULL, NULL, N'23', N'<p>&nbsp;2323有</p>', CAST(300.00 AS Decimal(18, 2)), NULL, N'0902', N'45', N'4501', N'450103', NULL, NULL, NULL, NULL, N'56ebf7b5-c51a-4c69-84e3-893601305489', NULL, CAST(0x0000A57901035A3B AS DateTime), 108.321465, 22.832497, 1, 1, 1, 0, NULL)
INSERT [dbo].[TS_Transaction] ([Id], [Title], [TrueName], [ImageUrl], [Brand], [Phone], [Details], [Price], [Types], [Category], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateManId], [CreateTime], [UpdateTime], [Longitude], [Latitude], [isTop], [States], [isValid], [isDeleted], [geohash]) VALUES (N'f0240045-38eb-4887-b3b9-64d528230258', N'小猫一只', N'22', N'/Upload/20151208115446_252.jpg', N'2', N'122121212', N'<p>&nbsp;椅枯</p>', CAST(500.00 AS Decimal(18, 2)), NULL, N'0901', N'45', N'4502', N'西乡塘区', N'北大路', 1, 2, 3, N'dcf4ba7d-d31d-4cd2-9651-4367b72e3b06', CAST(0x0000A57000171114 AS DateTime), CAST(0x0000A5790102F410 AS DateTime), 108.380775, 22.805903, 0, 0, 1, 0, NULL)
INSERT [dbo].[TS_Transaction] ([Id], [Title], [TrueName], [ImageUrl], [Brand], [Phone], [Details], [Price], [Types], [Category], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateManId], [CreateTime], [UpdateTime], [Longitude], [Latitude], [isTop], [States], [isValid], [isDeleted], [geohash]) VALUES (N'b2acb895-5576-4ceb-a30e-b8c9f04fda74', N' 台铃', N'12121211212', NULL, NULL, N'121212', N'<p>&nbsp;12</p>', CAST(200.00 AS Decimal(18, 2)), NULL, N'0901', N'44', N'4401', N'丰南区', NULL, NULL, NULL, NULL, N'dcf4ba7d-d31d-4cd2-9651-4367b72e3b06', NULL, CAST(0x0000A57901036CC0 AS DateTime), 110.098986, 22.652274, 1, -1, 1, 0, NULL)
/****** Object:  Table [dbo].[TS_ShopUserRole]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_ShopUserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TS_ShopUserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TS_ShopUserRole] ([Id], [UserId], [RoleId]) VALUES (N'69dbc814-84cd-4208-9c63-407555485cdf', N'268196c2-d4dd-472c-b848-64f54715f243', N'32039505-d3f6-4a21-af1b-89a04766f5b0')
INSERT [dbo].[TS_ShopUserRole] ([Id], [UserId], [RoleId]) VALUES (N'94ed06df-4007-4d7e-80ca-889ef26d6d0e', N'5f6b370b-42b2-436e-9cf9-dcc3e9283583', N'b8d45183-bf44-44df-b274-d58dc2703aca')
INSERT [dbo].[TS_ShopUserRole] ([Id], [UserId], [RoleId]) VALUES (N'c82e20e1-78ed-42c2-a4eb-909e0faca460', N'1e57d825-1552-4a5d-aab4-a0b04ea59168', N'd878b353-eb13-4c9b-b53d-50da6176408f')
INSERT [dbo].[TS_ShopUserRole] ([Id], [UserId], [RoleId]) VALUES (N'b31c87c3-ff0d-483b-a998-a28a601a63df', N'51d7d9d6-4439-4f24-b83d-63d65438b38a', N'38014f43-807c-44f9-a333-ab48bb494bfe')
INSERT [dbo].[TS_ShopUserRole] ([Id], [UserId], [RoleId]) VALUES (N'fb6f4021-ce91-4fec-87d2-dd340e8af4c0', N'098e3bda-9857-4179-a823-72fec23d23fa', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191')
/****** Object:  Table [dbo].[TS_ShopUser]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_ShopUser](
	[Id] [uniqueidentifier] NOT NULL,
	[ImgeUrl] [nvarchar](200) NULL,
	[TrueName] [nvarchar](20) NULL,
	[UserName] [nvarchar](20) NULL,
	[Pwd] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[Category] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[LocationUpdateTime] [datetime] NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_SHOPUSER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'ImgeUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'LocationUpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ShopUser', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'22c58b5b-0f67-457e-92fb-211b5c2107f3', NULL, N'212', NULL, NULL, NULL, NULL, N'长治市', N'襄垣县', NULL, N'0402', N'<p>&nbsp;12</p>', NULL, NULL, CAST(0x0000A5660005D1E9 AS DateTime), CAST(0x0000A5660005D1E9 AS DateTime), CAST(0x0000A5660005D1E9 AS DateTime), -1, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'93ad7f0e-4e3d-4da1-8200-21864e243b84', NULL, N'2xsd', N'23', N'23', NULL, NULL, N'阜阳市', N'临泉县', NULL, N'0401', N'', NULL, NULL, CAST(0x0000A566000663A7 AS DateTime), CAST(0x0000A566000663A7 AS DateTime), CAST(0x0000A566000663A7 AS DateTime), -1, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'f3fcf065-e81a-419c-8036-46f1eb1df198', NULL, N'12', N'12', N'12', N'12', NULL, NULL, NULL, N'11111', N'0401', N'<p>&nbsp;12212</p>', NULL, NULL, NULL, NULL, CAST(0x0000A56101875708 AS DateTime), NULL, 0, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'7400de53-7f9c-4351-a3a7-52c73a2cfa22', NULL, N'asasaasasas', N'asasas', NULL, NULL, NULL, NULL, NULL, NULL, N'0402', N'<p>&nbsp;asas</p>', NULL, NULL, CAST(0x0000A5660006818D AS DateTime), CAST(0x0000A5660006818D AS DateTime), CAST(0x0000A5660006818D AS DateTime), 0, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'51d7d9d6-4439-4f24-b83d-63d65438b38a', NULL, N'陈林林', N'server', N'123456', N'2333', N'45', N'4501', N'450102 ', N'23', N'0402', N'<p>&nbsp;32323</p>', NULL, NULL, NULL, NULL, CAST(0x0000A57600F3AB71 AS DateTime), 2, 0, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'268196c2-d4dd-472c-b848-64f54715f243', NULL, N'李师傅', N'reserver', N'123456', N'111', N'45', N'4502', N'林西镇', N'1212', N'0402', N'<p><span style="background-color: rgb(235, 241, 221);">&nbsp;12112</span></p>', NULL, NULL, NULL, NULL, CAST(0x0000A57600F9BBD1 AS DateTime), 2, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'098e3bda-9857-4179-a823-72fec23d23fa', N'/Upload/20151203124520_227.jpg', N'陈先生', N'shop', N'123456', N'1212', N'45', N'4501', N'450102 ', N'1111', N'0402', N'<p>&nbsp;12121212</p>', NULL, NULL, NULL, NULL, CAST(0x0000A57600F3704D AS DateTime), 2, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'f047e4ec-a7e2-49dd-8719-7e15274faf98', NULL, N'12', N'1', N'2', N'2', NULL, N'呼伦贝尔市', N'阿拉坦额莫勒镇', NULL, N'0402', N'<p>&nbsp;212</p>', NULL, NULL, CAST(0x0000A5660006453B AS DateTime), CAST(0x0000A5660006453B AS DateTime), CAST(0x0000A5660006453B AS DateTime), -1, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'1e57d825-1552-4a5d-aab4-a0b04ea59168', NULL, N'陈师傅', N'repair', N'123456', N'12222', N'45', N'4501', N'450102 ', N'12', N'0401', N'<p>&nbsp;1212121</p>', NULL, NULL, NULL, NULL, CAST(0x0000A57600F3E090 AS DateTime), 1, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'6aafff31-7c8b-4ee0-99b1-a12a1996b51e', NULL, N'12', NULL, NULL, NULL, NULL, N'重庆市', N'万州区', NULL, N'0402', N'', NULL, NULL, CAST(0x0000A56600061BBA AS DateTime), CAST(0x0000A56600061BBA AS DateTime), CAST(0x0000A56600061BBA AS DateTime), NULL, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'1b325293-287d-4241-b2ef-c5c264542930', NULL, N'12', N'12', N'12', N'12', NULL, N'长治市', N'古韩镇', NULL, N'0402', N'<p>&nbsp;122</p>', NULL, NULL, CAST(0x0000A56600075E70 AS DateTime), CAST(0x0000A56600075E70 AS DateTime), CAST(0x0000A56600075E70 AS DateTime), 0, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'da57a8e0-5feb-4237-b04c-d333fe25f492', NULL, N'1111111', N'212', N'121', N'212', NULL, N'呼伦贝尔市', N'那吉镇', N'12', N'0402', N'<p>&nbsp;1212</p>', NULL, NULL, CAST(0x0000A56600069D52 AS DateTime), CAST(0x0000A56600069D52 AS DateTime), CAST(0x0000A56600069D52 AS DateTime), -1, 1, 0, NULL)
INSERT [dbo].[TS_ShopUser] ([Id], [ImgeUrl], [TrueName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'5f6b370b-42b2-436e-9cf9-dcc3e9283583', N'/Upload/20151201115827_205.png', N'李大贵', N'shopS', N'123456', N'22', N'45', N'4501', N'450102 ', N'2333', N'0401', N'<p>232323</p>', NULL, NULL, NULL, NULL, CAST(0x0000A57600F44781 AS DateTime), 0, 1, 0, NULL)
/****** Object:  Table [dbo].[TS_Shop]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_Shop](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](30) NULL,
	[ImageUrlMax] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Star] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Category] [nvarchar](20) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Clicks] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_TS_SHOP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'ImageUrlMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Shop', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_Shop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'a7b1a111-4667-4099-b855-8a2958777970', N'11', N'/Upload/20151205112506_280.jpg', N'/Upload/20151205112514_434.jpg', 22, N'33', N'<p><span style="background-color: rgb(127, 127, 127);">&nbsp;222111</span></p>', N'0502', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450103', N'1212', 1, 2, 3, NULL, CAST(0x0000A575011A408D AS DateTime), NULL, NULL, 1, 1, 0, NULL)
INSERT [dbo].[TS_Shop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'bd9d5542-6e77-4a89-81a0-8f4a99ae7502', N'12', NULL, NULL, NULL, N'1211', N'<p>&nbsp;12</p>', N'0501', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450102 ', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A56F001699C5 AS DateTime), NULL, NULL, -1, 1, 0, NULL)
INSERT [dbo].[TS_Shop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'台铃电车专卖店', N'/Upload/20151210121522_301.jpg', N'/Upload/20151210121515_620.jpg', 1, N'23', N'<p>&nbsp;枯枯枯枯<img src="http://localhost:8044/Content/umditor/net/upload/2015-12-10/c1550d92-1269-401e-9ecd-3e5dda7572f3.png" _src="http://localhost:8044/Content/umditor/net/upload/2015-12-10/c1550d92-1269-401e-9ecd-3e5dda7572f3.png"/></p>', N'0502', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450107', NULL, 3, 3, 3, NULL, CAST(0x0000A57601038B8B AS DateTime), 108.315141, 22.810048, -1, 1, 0, NULL)
INSERT [dbo].[TS_Shop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'de618099-7424-4cf8-8547-d51b70bad1cd', N'1212', NULL, NULL, NULL, N'121', N'', N'0501', N'079654f1-5033-4207-8919-9a8bc3212735', N'省份', N'地级市', N'市、县级市', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A56A00036EE0 AS DateTime), NULL, NULL, NULL, 1, 0, NULL)
/****** Object:  Table [dbo].[TS_ServiceNew]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_ServiceNew](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](30) NULL,
	[ImageUrlMax] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Star] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Category] [nvarchar](20) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Clicks] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TS_ServiceNew] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'ImageUrlMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ServiceNew', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_ServiceNew] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'c918ac16-3ced-45ed-b7c3-5c1d35dd747f', N'1212', N'/Upload/20151215113158_567.jpg', N'/Upload/20151215113152_524.jpg', 1, N'1212', N'<p>&nbsp;1212</p>', N'0102', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450102 ', N'12', 1, 2, 3, NULL, CAST(0x0000A56F0183FFDD AS DateTime), 1, 1, 0)
INSERT [dbo].[TS_ServiceNew] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'ca75841c-9c79-4e9e-9899-a8fe937e73f5', N'台铃售后服务', NULL, NULL, 1, N'2', N'<p>&nbsp;121121212</p>', N'0101', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450107', N'台湾街', 1, 2, 3, CAST(0x0000A56F018545D1 AS DateTime), CAST(0x0000A56F018545D1 AS DateTime), 1, 1, 0)
/****** Object:  Table [dbo].[TS_Service]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_Service](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](30) NULL,
	[ImageUrlMax] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Star] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Types] [nvarchar](20) NULL,
	[Category] [nvarchar](20) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Clicks] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_TS_SERVICE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'ImageUrlMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型（充电站，租车）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Types'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Service', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'972515f4-a5d1-4c06-9a12-030a77a864e2', N'友爱租车', N'/Upload/20151208105433_632.jpg', N'/Upload/20151208105427_591.jpg', 4, N'1347555', N'<p>&nbsp;44<img src="http://localhost:8044/Content/umditor/net/upload/2015-12-08/3f9f923f-f10f-4e8f-8ccd-416b13b129f6.png" _src="http://localhost:8044/Content/umditor/net/upload/2015-12-08/3f9f923f-f10f-4e8f-8ccd-416b13b129f6.png"/></p>', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4502', N'遵化市', N'33', 2, 3, 5, NULL, CAST(0x0000A56F0016BD4D AS DateTime), 110.350813, 22.530897, -1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'6627f0b5-3fea-4b9d-83b6-2683fb0c54c2', N'玉林电车', NULL, N'/Upload/20151209114022_622.png', 23, N'232', N'<p>&nbsp;1212<span style="background-color: rgb(0, 0, 0);">12</span></p>', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450102 ', N'23', 12, 121, 12, NULL, CAST(0x0000A5750119B65A AS DateTime), 108.321465, 22.832497, 1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'0f46f2d9-e1c2-46cc-8901-50aa64720a83', N'33333', NULL, N'/Upload/20151210120010_490.jpg', NULL, N'22', N'', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450107', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A5750119A6FE AS DateTime), 108.321465, 22.832497, -1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'c068ca04-f3b4-4895-b561-57785e3b14c6', N'充电站', NULL, N'/Upload/20151222023305_953.png', 1, N'2', N'<p>&nbsp;棒棒<span style="background-color: rgb(146, 205, 220);">枯</span></p>', NULL, N'0701', N'079654f1-5033-4207-8919-9a8bc3212735', N'44', N'4401', N'西乡塘区', N'极大人人顶替', 1, 2, 3, NULL, CAST(0x0000A57600EFDC84 AS DateTime), 108.375938, 22.77496, -1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'68541067-9826-45d0-b44a-a94c3107433c', N'友爱租车', NULL, N'/Upload/20151222031306_354.jpg', 1, N'134811122', N'<p>232323</p>', NULL, N'0702', N'268196c2-d4dd-472c-b848-64f54715f243', N'45', N'4501', N'450102 ', N'2323', 0, 0, 0, CAST(0x0000A57600FADE49 AS DateTime), CAST(0x0000A57600FADE49 AS DateTime), 108.321465, 22.832497, 0, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'3e084c93-9c2d-459e-8d56-aba4e5f1cb66', N'122', NULL, N'/Upload/20151209114700_217.jpg', 11, N'2', N'<p>&nbsp;23232</p>', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450109', N'12', 1, 2, 2, NULL, CAST(0x0000A5750119ADA0 AS DateTime), 108.321465, 22.832497, -1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'2222', NULL, N'/Upload/20151209115759_290.jpg', 23, N'23', N'<p>&nbsp;232323</p>', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450107', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A56F0016CB88 AS DateTime), 108.321465, 22.832497, -1, 1, 0, NULL)
INSERT [dbo].[TS_Service] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [Types], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'4b71d779-fd28-4848-bcd9-cfd91b6e8367', N'1111', NULL, N'/Upload/20151209115054_534.jpg', NULL, N'112', N'<p>&nbsp;12122</p>', NULL, N'0702', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450109', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A56F000B5CF7 AS DateTime), 108.321465, 22.832497, -1, 1, 0, NULL)
/****** Object:  Table [dbo].[TS_RepairShop]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_RepairShop](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](30) NULL,
	[ImageUrlMax] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Star] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[IsRepair] [int] NULL,
	[Category] [nvarchar](20) NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Clicks] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_TS_REPAIRSHOP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'ImageUrlMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否提供抢修（1是，0否）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'IsRepair'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点击数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Clicks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairShop', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'7af33e88-71cc-4f7b-9e0a-05de71335ef6', N'最爱的电车', NULL, NULL, 1, N'222', N'<p>232323&nbsp;</p>', 0, N'0601', N'bf5ce36d-f8e7-4488-befa-809abe3d10c8', N'45', N'4501', N'450102 ', N'23', 0, 0, 0, CAST(0x0000A57D011C113C AS DateTime), CAST(0x0000A57D011C113C AS DateTime), 108.374357, 22.821838, 1, 1, 0, N'yrvpfpgzcxcx')
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'c0a7862c-f2b3-40ef-9f9b-0a4323bd9aa1', N'2', N'/Upload/20151205115727_263.jpg', N'/Upload/20151205115727_263.jpg', 3, N'23', N'class: 复制 class 名称，用于可修改 DOM 结构的场景，如点击 copy 图标旁的 class 按钮复制结果为 am-icon-copy', 1, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4502', N'450109', N'2', 32, 23, 37, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A570000E7C24 AS DateTime), 108.267868, 22.847358, 1, 1, 0, N'wkhcq7zzzzzzz')
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'9598472d-d489-4cd1-ac91-381442150fea', N'最后测试', NULL, NULL, 23, N'23', N'<p>&nbsp;23</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'350105', N'23dfdsfdfd', 5, 3, 4, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A57D011BACE0 AS DateTime), 109.269369, 22.685629, 0, 1, 0, N'yrvxyrzxbzfz')
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'7c55c1eb-b666-4393-a558-4a4832d4be72', N'2', N'/Upload/20151206123832_878.jpg', N'/Upload/20151206124019_709.jpg', 1, N'32121212', N'<p>&nbsp;2323</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4502', N'襄垣县', N'ere33', 1, 2, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A570000F336B AS DateTime), 108.267868, 22.7005004882813, -1, 1, 0, N'wkhcq7zzzzzzz')
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'2fdbbdba-7036-4ddd-ab62-9bb2ccd2d41a', N'小朋友黑', N'/Upload/20151206125626_542.jpg', N'/Upload/20151205115842_697.png', 1, N'2', N'<p>&nbsp;2323</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450103', N'2', 32, 3, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F0015243B AS DateTime), 108.21533203125, 22.74169921875, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'ede4356a-e041-4a97-945c-a1582fae9d38', N'12', NULL, NULL, NULL, N'12', N'<p>&nbsp;12121</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'44', N'4401', N'市、县级市', NULL, NULL, NULL, 14, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F0016770F AS DateTime), 108.267888, 22.847358, 1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'b3f068ee-538d-4ebb-934f-a4b54ca92c0c', N'小帅开的店', N'/Upload/20151209095126_846.jpg', N'/Upload/20151209095120_188.jpg', 1, N'2', N'<p>&nbsp;1212<span style="background-color: rgb(195, 214, 155);">1212</span></p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450107', N'12', 1, NULL, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F00168FDA AS DateTime), 108.295738, 22.848711, 0, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'ac5d19a5-8097-4c2d-97e7-b47556f73bcd', N'12', NULL, NULL, 22, N'23', N'<p>&nbsp;2323</p>', 1, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450109', NULL, NULL, NULL, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F00167D25 AS DateTime), 108.267898, 22.847358, 0, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'26ead434-3551-442a-8578-be0336288087', N'吃饭', N'/Upload/20151206120341_434.jpg', N'/Upload/20151206120341_434.jpg', 3, N'1243333232', N'<p>&nbsp;232</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450108', N'去玩', 1, 2, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F001626BE AS DateTime), 108.267568, 22.847358, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'c78182d8-078c-489e-9220-c3200367fee0', N'23', NULL, NULL, NULL, N'2323', N'<p>&nbsp;ererererukruyk</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450102 ', NULL, NULL, NULL, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A57000207A33 AS DateTime), 108.321465, 22.832497, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'51a84b74-9f8f-4248-bff5-d6a8245c35a1', N'友爱修车', NULL, N'/Upload/20151222030939_765.jpg', 1, N'123456', N'<p>12121212</p>', 0, N'0601', N'268196c2-d4dd-472c-b848-64f54715f243', N'45', N'4501', N'450107', N'友爱路100号', 0, 0, 0, CAST(0x0000A57600FA0578 AS DateTime), CAST(0x0000A57D011BB99F AS DateTime), 108.321465, 22.832497, 0, 1, 0, N'yrvpbzvrcpfr')
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'bb2e8f2b-8c3d-4e3f-a571-df06770b8545', N'2', N'/Upload/20151206125610_791.jpg', N'/Upload/20151205115811_534.jpg', 3, N'22', N'<p>&nbsp;2323</p>', 1, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'44', N'4401', N'徐汇区', N'erw we we', 23, 23, 223, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F00163259 AS DateTime), 108.267368, 22.847358, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'3f9d2d79-6af1-4eb8-ad83-f2bdd571979f', N'12', NULL, N'/Upload/20151222023341_163.jpg', 12, N'12', N'<p><span style="background-color: rgb(31, 73, 125);">&nbsp;121212</span></p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4502', N'市、县级市', NULL, NULL, NULL, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A57600EFFA84 AS DateTime), 108.267468, 22.847358, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'475214f2-1e1e-4218-8acb-f4dca68e74cd', N'12', NULL, NULL, 12, N'222', N'<p>&nbsp;12</p>', 1, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450108', NULL, 3, NULL, 12, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F00166F45 AS DateTime), 108.267268, 22.847358, 1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'5b53ab47-106a-487b-8d8a-f589d1ae5177', N'最的测试1', NULL, NULL, 2, N'31', N'<p>&nbsp;231</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450102 ', N'231', 2, 3, 23, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A57501189EA1 AS DateTime), 108.471263, 22.885991, -1, 1, 0, NULL)
INSERT [dbo].[TS_RepairShop] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Phone], [Details], [IsRepair], [Category], [CreateManId], [ProvinceCode], [CityCode], [AreaCode], [Address], [CallCount], [Praises], [Clicks], [CreateTime], [UpdateTime], [Longitude], [Latitude], [States], [isValid], [isDeleted], [geohash]) VALUES (N'1468e9f7-5b5f-41fd-8f94-f87e6dd1ced1', N'1lglggg', N'/Upload/20151206124243_183.jpg', N'/Upload/20151206120912_398.jpg', 2, N'3', N'<p>&nbsp;12121</p>', 0, N'0601', N'079654f1-5033-4207-8919-9a8bc3212735', N'45', N'4501', N'450109', N'21', 1, 2, 3, CAST(0x0000A56F0026B8E4 AS DateTime), CAST(0x0000A56F001668F2 AS DateTime), 108.267068, 22.847358, -1, 1, 0, NULL)
/****** Object:  Table [dbo].[TS_RepairMan]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_RepairMan](
	[Id] [uniqueidentifier] NOT NULL,
	[TrueName] [nvarchar](20) NULL,
	[IdentityCard] [nvarchar](40) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[State2] [int] NULL,
	[Category] [nvarchar](20) NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Star] [int] NULL,
	[Phone] [nvarchar](20) NULL,
	[CallCount] [int] NULL,
	[Praises] [int] NULL,
	[Details] [text] NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_TS_REPAIRMAN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'IdentityCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态2（空闲1，抢修中0，休假2）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'State2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'呼叫量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'CallCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_RepairMan', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
/****** Object:  Table [dbo].[TS_ClientUser]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_ClientUser](
	[Id] [uniqueidentifier] NOT NULL,
	[ImgeUrl] [nvarchar](200) NULL,
	[TrueName] [nvarchar](20) NULL,
	[NickName] [nvarchar](20) NULL,
	[UserName] [nvarchar](20) NULL,
	[Pwd] [nvarchar](20) NULL,
	[Phone] [nvarchar](20) NULL,
	[ProvinceCode] [nvarchar](20) NULL,
	[CityCode] [nvarchar](20) NULL,
	[AreaCode] [nvarchar](30) NULL,
	[Address] [nvarchar](200) NULL,
	[Category] [nvarchar](20) NULL,
	[Details] [text] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[LocationUpdateTime] [datetime] NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
	[geohash] [varchar](40) NULL,
 CONSTRAINT [PK_CLIENTUSER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'ImgeUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Pwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'ProvinceCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'CityCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'经度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'纬度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'LocationUpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_ClientUser', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_ClientUser] ([Id], [ImgeUrl], [TrueName], [NickName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'd7531c46-07ee-4318-8e3a-23ccc13e5880', NULL, NULL, NULL, N'ludycool2', N'123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A570016220CD AS DateTime), CAST(0x0000A570016220CD AS DateTime), CAST(0x0000A570016220CD AS DateTime), 0, NULL, 0, NULL)
INSERT [dbo].[TS_ClientUser] ([Id], [ImgeUrl], [TrueName], [NickName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'3e5cf31b-a0c9-4396-b98f-3a25726e4fdd', NULL, NULL, NULL, N'ludycool', N'123456', NULL, NULL, NULL, NULL, NULL, N'', NULL, NULL, NULL, CAST(0x0000A567015DCF40 AS DateTime), CAST(0x0000A567015DCF40 AS DateTime), CAST(0x0000A567015DCF40 AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[TS_ClientUser] ([Id], [ImgeUrl], [TrueName], [NickName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'dcf4ba7d-d31d-4cd2-9651-4367b72e3b06', N'/Upload/20151130122235_766.png', N'12', NULL, N'1', N'12', N'1111', NULL, NULL, NULL, N'111', N'01', N'<p>&nbsp;2121212</p>', NULL, NULL, NULL, NULL, CAST(0x0000A56200020625 AS DateTime), 2, NULL, 0, NULL)
INSERT [dbo].[TS_ClientUser] ([Id], [ImgeUrl], [TrueName], [NickName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'8d94b875-6d1c-4eae-846a-43dc26fd1879', NULL, N'121', NULL, N'212', N'12', N'1212', NULL, NULL, NULL, N'121211', N'', N'<p>&nbsp;121</p>', NULL, NULL, CAST(0x0000A5620002240D AS DateTime), CAST(0x0000A5620002240D AS DateTime), CAST(0x0000A5620002240D AS DateTime), 1, 1, 0, NULL)
INSERT [dbo].[TS_ClientUser] ([Id], [ImgeUrl], [TrueName], [NickName], [UserName], [Pwd], [Phone], [ProvinceCode], [CityCode], [AreaCode], [Address], [Category], [Details], [Longitude], [Latitude], [LocationUpdateTime], [AddTime], [UpdateTime], [States], [isValid], [isDeleted], [geohash]) VALUES (N'56ebf7b5-c51a-4c69-84e3-893601305489', N'/Upload/20151130112138_954.jpg', N'2', NULL, N'admin', N'123456', N'232', NULL, NULL, NULL, N'23232', NULL, N'<p>&nbsp;sdsd</p><p>sd</p><p>sd</p><p>sd</p><p>sd</p><p>sd</p><p>sd</p><p>s</p><p>ds</p><p>d</p><p>sd</p><p>d</p><p>sd</p><p>s</p><p>d</p><p>sd</p><p>sd</p><p>&nbsp;</p><p>d</p><p>sd</p>', NULL, NULL, NULL, NULL, CAST(0x0000A567015B1C78 AS DateTime), -1, NULL, 0, NULL)
/****** Object:  Table [dbo].[TS_Car]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TS_Car](
	[Id] [uniqueidentifier] NOT NULL,
	[TName] [nvarchar](30) NULL,
	[ImageUrlMax] [nvarchar](200) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Star] [int] NULL,
	[Brand] [varchar](20) NULL,
	[Details] [text] NULL,
	[Price] [decimal](18, 2) NULL,
	[Category] [nvarchar](20) NULL,
	[ShopId] [uniqueidentifier] NULL,
	[CreateManId] [uniqueidentifier] NULL,
	[Praises] [int] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_TS_CAR] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'ImageUrlMax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'星级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Star'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'品牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Brand'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'详情' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'属店铺Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'ShopId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'CreateManId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赞' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'Praises'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（2已审核、开启1，未审核0，关闭-1）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_Car', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
INSERT [dbo].[TS_Car] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Brand], [Details], [Price], [Category], [ShopId], [CreateManId], [Praises], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'e3ccb75d-268c-4ae6-b4cb-04c3f672b8bd', N'2323', NULL, NULL, 0, N'12', N'<p>&nbsp;1212</p>', CAST(1212.00 AS Decimal(18, 2)), N'0801', N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'079654f1-5033-4207-8919-9a8bc3212735', 0, CAST(0x0000A57400C6494D AS DateTime), CAST(0x0000A57501173391 AS DateTime), 0, 1, 0)
INSERT [dbo].[TS_Car] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Brand], [Details], [Price], [Category], [ShopId], [CreateManId], [Praises], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'1a041660-0aa7-4a06-ae98-ba6afefdd171', N'1212', N'/Upload/20151220115801_223.jpg', NULL, 0, N'12', N'<p>&nbsp;12111211</p>', CAST(111.00 AS Decimal(18, 2)), N'0802', N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'079654f1-5033-4207-8919-9a8bc3212735', 0, CAST(0x0000A57400C54E51 AS DateTime), CAST(0x0000A575011C6234 AS DateTime), 0, 1, 0)
INSERT [dbo].[TS_Car] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Brand], [Details], [Price], [Category], [ShopId], [CreateManId], [Praises], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'e952a2ea-6a80-4073-a786-cccc3f08f007', N'二代山地车', N'/Upload/20151210103306_962.jpg', NULL, NULL, N'2323', N'<p>&nbsp;232<img src="http://localhost:8044/Content/umditor/net/upload/2015-12-10/d835f880-18b6-476f-85a6-c80d74981b34.jpg" _src="http://localhost:8044/Content/umditor/net/upload/2015-12-10/d835f880-18b6-476f-85a6-c80d74981b34.jpg"/></p>', CAST(22.00 AS Decimal(18, 2)), N'0802', N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'079654f1-5033-4207-8919-9a8bc3212735', 0, CAST(0x0000A56A017409B3 AS DateTime), CAST(0x0000A56A017409B3 AS DateTime), 0, 1, 0)
INSERT [dbo].[TS_Car] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Brand], [Details], [Price], [Category], [ShopId], [CreateManId], [Praises], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'197dc986-c098-4633-aba5-ce17e53e7783', N'121', N'/Upload/20151220115651_569.jpg', N'/Upload/20151222023235_962.jpg', 0, N'12', N'<p>&nbsp;1212</p>', CAST(11.00 AS Decimal(18, 2)), N'0802', N'a7b1a111-4667-4099-b855-8a2958777970', N'079654f1-5033-4207-8919-9a8bc3212735', 0, CAST(0x0000A57400C4F1D3 AS DateTime), CAST(0x0000A57600EFABBB AS DateTime), 0, 1, 0)
INSERT [dbo].[TS_Car] ([Id], [TName], [ImageUrlMax], [ImageUrl], [Star], [Brand], [Details], [Price], [Category], [ShopId], [CreateManId], [Praises], [CreateTime], [UpdateTime], [States], [isValid], [isDeleted]) VALUES (N'839ccfbd-9809-49b5-8504-d9280e460c21', N'四代龟车2', N'/Upload/20151210105019_939.jpg', NULL, 0, N'立马2', N'<p>&nbsp;2232<span style="background-color: rgb(253, 234, 218);">3233332</span></p>', CAST(13232.00 AS Decimal(18, 2)), N'0801', N'bd9d5542-6e77-4a89-81a0-8f4a99ae7502', N'079654f1-5033-4207-8919-9a8bc3212735', 0, NULL, CAST(0x0000A57501178ED2 AS DateTime), 0, 1, 0)
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameters](
	[SysParametersId] [nvarchar](10) NOT NULL,
	[ParameterValue] [nvarchar](50) NULL,
	[IsEdit] [bit] NULL,
	[ParameterDescription] [nvarchar](150) NULL,
	[CreateBy] [nvarchar](10) NULL,
	[CreateOn] [datetime] NULL,
	[ModifyBy] [nvarchar](10) NULL,
	[ModifyOn] [datetime] NULL,
 CONSTRAINT [PK_SystemParameters] PRIMARY KEY NONCLUSTERED 
(
	[SysParametersId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[Sources] [nvarchar](50) NULL,
	[Category] [nvarchar](100) NULL,
	[title] [nvarchar](50) NULL,
	[Contents] [text] NULL,
	[ip] [nvarchar](30) NULL,
	[Position] [nvarchar](100) NULL,
	[AddTime] [datetime] NULL,
 CONSTRAINT [PK_SystemLogs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Sources'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'Position'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SystemLogs', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cc50d2a0-d44b-4951-95b1-dfd525072cab', N'测试 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A487013CD58A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b9cb8c0a-0a6e-4adb-be73-08827e80efb6', N'测试2 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A487013CD5A4 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'67cc55d1-591f-4a23-8ec5-72b9c816cb7d', N'', N'9901', N'测试3', N'Cookies：{
  "Id": "079654f1-5033-4207-8919-9a8bc3212735",
  "LoginName": "admin",
  "TrueName": "小家活",
  "Password": "123456",
  "CreateTime": "2014-03-30T19:14:45",
  "ModifyTime": "2014-03-30T19:14:45",
  "DepartmentId": "29c05683-eaee-4e10-91ee-7f1232a0f408",
  "RoleId": "fb38f312-0078-4f44-9cda-1183c8042db8",
  "RoleName": "系统管理员",
  "YH_HospitalId": "81c304f2-642c-42f3-840f-7f8386261e3f",
  "ChangedMap": {
    "id": "079654f1-5033-4207-8919-9a8bc3212735",
    "loginname": "admin",
    "truename": "小家活",
    "password": "123456",
    "createtime": "2014-03-30T19:14:45",
    "modifytime": "2014-03-30T19:14:45",
    "departmentid": "29c05683-eaee-4e10-91ee-7f1232a0f408",
    "roleid": "fb38f312-0078-4f44-9cda-1183c8042db8",
    "rolename": "系统管理员",
    "yh_hospitalid": "81c304f2-642c-42f3-840f-7f8386261e3f"
  }
}', NULL, N'BaseController', CAST(0x0000A487013CD5A9 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'408a0944-2ae9-4510-b87e-08ed99fb0388', N'测试1 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试0', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A487013CD95C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'9c909f83-0d99-48e6-abe4-fae97516f2b0', N'测试1 sessionId=jgpblfxalgirrp3mg4orczf3', N'9901', N'测试1', N' Session[User] =我去你妹', NULL, N'LoginController', CAST(0x0000A487013DB64B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'aa1deed6-8c79-4997-8e26-d149a4a9ece4', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800971E99 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'f9436a0b-3a93-41fb-93d9-7e951f105ee5', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800971ECB AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'0e1e6272-4433-41fd-a151-a1aebcfce9c3', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A522A2 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3700f7b9-c46f-4cd7-9cfe-80e28d92507f', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A522BD AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'528dfd08-9632-4a58-b4d0-07220c0680a6', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A6824F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd6590e13-43d0-49a9-8dbe-6be28d8e41a1', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A6826A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cd0ed6ff-c3db-45dd-80a5-4b673be6cb05', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A70735 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2d798e85-0fbb-4ccd-b595-03a9d3f3a19f', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A70752 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e252e09d-5916-4087-b21b-568f65c95d42', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A76345 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'04fd9a1a-4e5a-4696-9f86-ed0696471fce', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A76367 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'aaab2849-df48-411a-bb71-a8eaf3668dcb', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A7EACC AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'42f631d2-86ff-4569-a4f4-fc3cddf34e2a', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A7EAE7 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'340e64d0-95d6-45e4-8436-5358048ebea9', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A8822D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'20cdbaae-deb3-437b-a7a7-c47cc5a24539', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A88248 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'a1ebec05-eaf7-42f7-9ada-f12d80d98f04', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800A8BC1C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'26e3dc8b-1d09-419c-87bf-a65949c60ca4', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800A8BC37 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'efa13cb8-c512-4cbb-a3b5-b653239635b2', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AA6C1F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'1a92be9f-92cb-4a2e-9e27-5b17e4430c34', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AA6C3B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'02e17437-5da6-4774-97f4-d3e1d8459639', N'测试 sessionId=ejgajiv5hstrvdqcxjngr0he', N'9901', N'非法操作一律返回登录', N'controller：Home  action:loginOut 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AAF508 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6815c081-7b40-4b50-b80d-0292e65faefc', N'测试2 sessionId=ejgajiv5hstrvdqcxjngr0he', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AAF50B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'20422c20-a579-4f87-a72e-d74d67ddca00', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800ACFE7C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3f7ba01e-36e1-4275-b222-3c9b45221c62', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800ACFEA1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'21d9c71a-7b83-4947-ba0b-9ddbbbfd181a', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AD242C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'8612a348-c8bd-4d2e-a993-17b3646e3daf', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AD244F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'69295220-d800-41ab-a48b-4edde06f3888', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AD463C AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4e0a6516-96e7-469a-b01c-84281c65cc71', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AD4663 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'f4ee7558-e1e5-41b6-81b5-d91b91dfc8a5', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AEAAAA AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'9f4abc14-c96c-408d-8c58-80a2fc4fe5aa', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AEAAD6 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd7ea5e75-4e77-405b-8cd6-05d0e151313d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AED561 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'7dd74f78-7d76-4a38-8c70-ff60563b6500', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AED594 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c301d083-237b-46ad-ba16-f82588f8050c', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800AF031A AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'68e9dc7f-ce24-4290-b35c-3e2397304130', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800AF033D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'57545e9f-84bf-461a-b31d-c892ff7e86f0', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B0F5EC AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'019bdd69-fba4-4f1c-813a-3c18bb8aeb40', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B0F60F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4e063fa2-3ba5-4f36-9081-b1c19986de4f', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B43518 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'666f2be2-d1d7-4c56-92df-38eed1c69ff7', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B43532 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'5bd724c4-8322-4885-b79d-b681cf9c2d34', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B4F3F1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c10fc059-5a4a-4402-a075-4662534ed5bf', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B4F41D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'3f6936fc-38dd-41d2-b85a-4c4e8125201a', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B5F692 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'03e43eff-173a-46ca-a6e7-f6b1258a87dd', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B5F6AD AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd3e02cc3-9e4c-4198-989c-a8440dc72159', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B77C37 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c799534a-56a0-45cf-b182-e1d66992a23d', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B77C51 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6ebf2323-fa19-4eaa-b372-e08f67f5ba70', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B7A9CE AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'85efc397-9350-40b0-8f46-513cc33ce637', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B7A9CE AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'040d4e69-3731-41f0-af67-559f07973ab5', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B88E7D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'ddcea5d6-f0e5-4ef2-947b-74154df2528c', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B88E9F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'c0224cf0-10a5-4509-a3ba-54bd5a5ab20c', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:GetInfo 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B8CDC0 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'93731bcf-02a8-4d7b-b0cf-c2cc5dbb7fbd', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B8CDC1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'10b89d19-082e-45da-8138-636f50c9130a', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800B8D2FF AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd06f2c6d-6102-439f-bf8b-5de180910971', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800B8D304 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'bf80cacb-c3c6-4203-9aa2-f6ba7c160d0d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BA941B AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b3cc1146-03be-4cf7-91fd-435716fc43b6', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BA9437 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'64fb6b0f-b444-499f-b643-75e638a5d251', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BB378F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'1fa5f707-8e03-4bc6-87d4-2d3485978867', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BB3795 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'd499b789-c396-424f-8f85-d786d90afd6d', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BC21E2 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'ed960447-c927-4b94-ae68-8c5933b9c02b', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BC220D AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'5b6cf7df-7e29-4765-8433-cc2bd1e0e314', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BC3A60 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'b1e8eae2-6772-4c1b-9f83-52719bb8e9e2', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BC3A62 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'6c87b3c5-baa1-4b64-94cb-22733c0c3cb0', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800BCC558 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2f0cae50-2d2b-4cc7-b842-f9c10617a928', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800BCC57E AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'2fdb79eb-071b-44d6-89f6-bc99320bc505', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_HospitalDetail  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C0C279 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'03773bbe-ed21-424c-929c-52cdc444861f', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C0C27E AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'74782143-b4f9-49b9-8e87-9952bc7cec64', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C2132F AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cf8f22ea-ec7c-44f2-bd7c-464f984e909e', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C21352 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'071fd6f8-595d-458f-851d-166287079d54', N'测试 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C27DA6 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'cd72686f-5897-4913-8a76-25495df611b9', N'测试2 sessionId=qgb4l3fxnltt05lpl4xm3bza', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C27DC1 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e6cfe091-f7ed-43b9-8373-3e9344e09bb3', N'测试 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'非法操作一律返回登录', N'controller：YH_Navigation  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C2BD20 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'e3c6389e-19f7-4e67-ba99-3ddaa7972824', N'测试2 sessionId=isxiugf5ci14mae30tjh50gn', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C2BD22 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'4b418a68-1f99-44e5-84e0-d665debdd079', N'测试 sessionId=qws5od2lyur5flefwiiyab1n', N'9901', N'非法操作一律返回登录', N'controller：Home  action:Index 用户为空，非法操作页面Session[UserData]为空 ', NULL, N'BaseController', CAST(0x0000A48800C3AA92 AS DateTime))
INSERT [dbo].[SystemLogs] ([Id], [Sources], [Category], [title], [Contents], [ip], [Position], [AddTime]) VALUES (N'7b5475ff-d475-4542-9b42-5e69fc30cc68', N'测试2 sessionId=qws5od2lyur5flefwiiyab1n', N'9901', N'测试2', N' Session[User] =', NULL, N'LoginController', CAST(0x0000A48800C3AAD5 AS DateTime))
/****** Object:  Table [dbo].[SysItem]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SysItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemType] [varchar](20) NULL,
	[ItemValue] [varchar](100) NULL,
	[ItemName] [nvarchar](200) NULL,
	[Icon] [varchar](30) NULL,
	[OrderID] [int] NULL,
	[Remark] [nvarchar](100) NULL,
	[CreateTime] [varchar](20) NULL,
	[CreateMan] [varchar](30) NULL,
	[isValid] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_SysItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'ItemName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'OrderID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否生效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'isValid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysItem', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
SET IDENTITY_INSERT [dbo].[SysItem] ON
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (1, N'States', N'0', N'未审核', NULL, 3, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (2, N'States', N'1', N'开启', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (3, N'States', N'2', N'已审核', NULL, 4, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (4, N'States', N'-1', N'关闭', NULL, 2, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (5, N'AreaTypes', N'2', N'省', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (6, N'AreaTypes', N'1', N'市', NULL, 2, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (7, N'AreaTypes', N'0', N'区', NULL, 3, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (8, N'RoleTypes', N'1', N'管理员', NULL, 1, NULL, NULL, NULL, 1, 0)
INSERT [dbo].[SysItem] ([Id], [ItemType], [ItemValue], [ItemName], [Icon], [OrderID], [Remark], [CreateTime], [CreateMan], [isValid], [isDeleted]) VALUES (9, N'RoleTypes', N'0', N'商家', NULL, 10, NULL, NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[SysItem] OFF
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Dictionary](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ValueName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sys_Dictionary] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'OrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ValueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'ModifyTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Dictionary', @level2type=N'COLUMN',@level2name=N'Icon'
GO
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'fe0f7d26-3a63-42ef-9c52-687808ae7e48', N'00000000-0000-0000-0000-000000000000', 1, N'便民信息类型', N'01', N'12', CAST(0x0000A56F018000DA AS DateTime), CAST(0x0000A56F018000DA AS DateTime), N'icon-brick_add')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'7290d93b-3249-4310-bd50-ac907245fe92', N'fe0f7d26-3a63-42ef-9c52-687808ae7e48', 2, N'售后服务', N'0102', NULL, CAST(0x0000A56F01800F98 AS DateTime), CAST(0x0000A56F01800F98 AS DateTime), N'icon-color_wheel')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'34e05fef-9c45-417c-939a-180dc2fbda27', N'fe0f7d26-3a63-42ef-9c52-687808ae7e48', NULL, N'新闻资讯', N'0101', NULL, CAST(0x0000A56F01802D16 AS DateTime), CAST(0x0000A56F01802D16 AS DateTime), N'icon-bug')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'f8a1d53e-7c48-47e7-9f1c-c13d6a912429', N'00000000-0000-0000-0000-000000000000', 2, N'广告', N'02', NULL, CAST(0x0000A47400FDBAB9 AS DateTime), CAST(0x0000A47400FDBAB9 AS DateTime), N'icon-picture_empty')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'1de380bd-bd75-411b-9f1a-9c7fd6bb4e5f', N'f8a1d53e-7c48-47e7-9f1c-c13d6a912429', NULL, N'首页图', N'0201', NULL, CAST(0x0000A5760104E81D AS DateTime), CAST(0x0000A5760104E81D AS DateTime), N'icon-edit')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'7d706b63-b733-4431-99ec-257ea9ebc043', NULL, NULL, N'手机用户分类', N'03', NULL, CAST(0x0000A47500F4E813 AS DateTime), CAST(0x0000A47500F4E813 AS DateTime), N'icon-user_b')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'11450c27-5133-4ce4-9908-fc85ed4e8ad5', N'7d706b63-b733-4431-99ec-257ea9ebc043', NULL, N'普通病人', N'0301', NULL, CAST(0x0000A47500F52043 AS DateTime), CAST(0x0000A47500F52043 AS DateTime), N'icon-users')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'd2c0e367-8eb6-4a3b-8f02-df4fb26bb2bf', N'7d706b63-b733-4431-99ec-257ea9ebc043', NULL, N'游客', N'0302', NULL, CAST(0x0000A47500F5413D AS DateTime), CAST(0x0000A47500F5413D AS DateTime), N'icon-tux')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, NULL, N'日志类型', N'99', NULL, CAST(0x0000A47501077FC6 AS DateTime), CAST(0x0000A47501077FC6 AS DateTime), N'icon-bullet_error')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'2b9eaba2-16bc-4042-b9e5-3ee79fd1cde5', N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, N'系统出错', N'9901', NULL, CAST(0x0000A47501078FEC AS DateTime), CAST(0x0000A47501078FEC AS DateTime), N'icon-bullet_cross')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'816ea36a-7258-4721-a603-214c738064a5', N'58f966c7-e8d3-4115-809c-810e8d6de071', NULL, N'系统日志', N'9902', NULL, CAST(0x0000A47A00EDEDA3 AS DateTime), CAST(0x0000A47A00EDEDA3 AS DateTime), N'icon-arrow_right')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'23c33f7e-7a94-4263-bd3a-3995490329fa', NULL, 5, N'商家类型', N'04', N'商家的类型', CAST(0x0000A5610164CCD3 AS DateTime), CAST(0x0000A5610164CCD3 AS DateTime), N'icon-flag_blue')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'752be3e4-b214-4ab7-971a-e59de53a6075', N'23c33f7e-7a94-4263-bd3a-3995490329fa', NULL, N'新车行', N'0401', NULL, CAST(0x0000A561016C6DC9 AS DateTime), CAST(0x0000A561016C6DC9 AS DateTime), N'icon-user_b')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'9ef6eb89-aacd-47b0-84d3-69ce8a46d7bd', N'23c33f7e-7a94-4263-bd3a-3995490329fa', NULL, N'维修店', N'0402', NULL, CAST(0x0000A561016C865A AS DateTime), CAST(0x0000A561016C865A AS DateTime), N'icon-user_alert')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'463e0950-dfba-46a1-8086-c4cbb4186278', NULL, NULL, N'店铺类型', N'05', NULL, CAST(0x0000A5650169DA50 AS DateTime), CAST(0x0000A5650169DA50 AS DateTime), N'icon-vector')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'9f6b15fd-a3e8-44b0-ad68-538526a9a2d3', N'463e0950-dfba-46a1-8086-c4cbb4186278', 1, N'新车行', N'0501', NULL, CAST(0x0000A565016B7487 AS DateTime), CAST(0x0000A565016B7487 AS DateTime), N'icon-thumb_up')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'14fecedd-9438-41dd-adf0-36a75502889b', N'463e0950-dfba-46a1-8086-c4cbb4186278', 2, N'电池配件', N'0502', NULL, CAST(0x0000A565016BF7A3 AS DateTime), CAST(0x0000A565016BF7A3 AS DateTime), N'icon-flag_checked')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'41869ec2-f772-493b-a0e9-ba9ef35e6533', N'00000000-0000-0000-0000-000000000000', NULL, N'维修店类型', N'06', NULL, CAST(0x0000A56801662813 AS DateTime), CAST(0x0000A56801662813 AS DateTime), N'icon-wrench')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'22d9fd57-7cc5-4bb7-8cfc-18ba0a636e08', N'41869ec2-f772-493b-a0e9-ba9ef35e6533', NULL, N'一般维修', N'0601', NULL, CAST(0x0000A5680166E003 AS DateTime), CAST(0x0000A5680166E003 AS DateTime), N'icon-zoom')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'eb1a6cd2-6d25-4591-98e0-8af77ffcfd42', NULL, NULL, N'便民服务', N'07', NULL, CAST(0x0000A5680167986B AS DateTime), CAST(0x0000A5680167986B AS DateTime), N'icon-plugin')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'0901a771-35e7-4bec-9d9f-c814c92736bf', N'eb1a6cd2-6d25-4591-98e0-8af77ffcfd42', NULL, N'充电站', N'0701', NULL, CAST(0x0000A568016A35AC AS DateTime), CAST(0x0000A568016A35AC AS DateTime), N'icon-tick')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'923867d9-9d26-4c36-b1a0-a043aa6b868d', N'eb1a6cd2-6d25-4591-98e0-8af77ffcfd42', 2, N'租车', N'0702', NULL, CAST(0x0000A568016B448D AS DateTime), CAST(0x0000A568016B448D AS DateTime), N'icon-key_stop')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'c783fbad-6d05-4a11-a3d3-84a0c2f3ff6d', NULL, NULL, N'电车类型', N'08', NULL, CAST(0x0000A568016DE772 AS DateTime), CAST(0x0000A568016DE772 AS DateTime), N'icon-car')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'dd48c26e-26b0-4f0a-9798-db3046a16d0e', N'c783fbad-6d05-4a11-a3d3-84a0c2f3ff6d', NULL, N'龟车', N'0801', NULL, CAST(0x0000A568016E2623 AS DateTime), CAST(0x0000A568016E2623 AS DateTime), N'icon-sport_tennis')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'26ba5632-0207-40ce-998e-92868b32a7b7', N'c783fbad-6d05-4a11-a3d3-84a0c2f3ff6d', NULL, N'脚踏', N'0802', NULL, CAST(0x0000A568016E5C8B AS DateTime), CAST(0x0000A568016E5C8B AS DateTime), N'icon-asterisk_red')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'b41694e3-e83f-458e-acb2-3234eddf7e2b', NULL, NULL, N'交易信息类型', N'09', NULL, CAST(0x0000A5680172E9C5 AS DateTime), CAST(0x0000A5680172E9C5 AS DateTime), N'icon-coins')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'1588acad-8fcb-41b9-b2e9-e4a25d097d11', N'b41694e3-e83f-458e-acb2-3234eddf7e2b', NULL, N'二手车', N'0901', NULL, CAST(0x0000A5680173068A AS DateTime), CAST(0x0000A5680173068A AS DateTime), N'icon-key_add')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'a8c96d7c-474e-4ded-b1e2-0e16ef22c55f', N'b41694e3-e83f-458e-acb2-3234eddf7e2b', NULL, N'二手配件', N'0902', NULL, CAST(0x0000A5680173354F AS DateTime), CAST(0x0000A5680173354F AS DateTime), N'icon-plugin_add')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'5c5252e3-98ef-4a38-9b2f-61722a444980', NULL, 1, N'app类型', N'00', NULL, CAST(0x0000A57500FD2C66 AS DateTime), CAST(0x0000A57500FD2C66 AS DateTime), N'icon-transmit')
INSERT [dbo].[Sys_Dictionary] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [CreateTime], [ModifyTime], [Icon]) VALUES (N'f2279f3d-973d-4b14-9051-ca4db65eeabf', N'5c5252e3-98ef-4a38-9b2f-61722a444980', NULL, N'电车管家app android', N'0001', NULL, CAST(0x0000A57500FD5A9F AS DateTime), CAST(0x0000A57500FD5A9F AS DateTime), N'icon-shape_flip_horizontal')
/****** Object:  Table [dbo].[Sys_CityArea]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_CityArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ValueName] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[Icon] [nvarchar](50) NULL,
	[AreaTypes] [int] NULL,
 CONSTRAINT [PK_Sys_CityArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'OrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Code值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'ValueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 0区 1 市 2 省' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_CityArea', @level2type=N'COLUMN',@level2name=N'AreaTypes'
GO
SET IDENTITY_INSERT [dbo].[Sys_CityArea] ON
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (1, NULL, NULL, N'广西省', N'45', NULL, N'icon-shape_square', 2)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (2, 1, NULL, N'南宁市 ', N'4501', NULL, N'icon-ruby', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (3, 2, NULL, N'兴宁区 ', N'450102 ', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (4, 2, NULL, N'青秀区', N'450103', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (5, 2, NULL, N'江南区', N'350105', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (6, 2, NULL, N'西乡塘区', N'450107', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (7, 2, NULL, N'良庆区', N'450108', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (8, 2, NULL, N'邕宁区', N'450109', NULL, N'icon-page_landscape', 0)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (9, 1, NULL, N'桂林', N'4503', NULL, N'icon-rainbow', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (10, 1, NULL, N'柳州', N'4502', NULL, N'icon-page_landscape', 1)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (11, 0, NULL, N'广东省', N'44', NULL, N'icon-shape_square', 2)
INSERT [dbo].[Sys_CityArea] ([Id], [ParentId], [OrderNo], [Name], [ValueName], [Remarks], [Icon], [AreaTypes]) VALUES (12, 11, NULL, N'广州市', N'4401', NULL, N'icon-stop', 1)
SET IDENTITY_INSERT [dbo].[Sys_CityArea] OFF
/****** Object:  Table [dbo].[Sys_AppVerSion]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_AppVerSion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[TName] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NULL,
	[Url] [nvarchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_SysAppVerSion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'TName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 1强制更新 0可以不更新' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_AppVerSion', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
SET IDENTITY_INSERT [dbo].[Sys_AppVerSion] ON
INSERT [dbo].[Sys_AppVerSion] ([Id], [Category], [TName], [Version], [Url], [Remarks], [AddTime], [UpdateTime], [States], [isDeleted]) VALUES (1, N'0001', N'202', N'00.01.01', N'/Upload/file/20151221033459_286.css', N'dfdfdf', CAST(0x0000A57500FE6244 AS DateTime), CAST(0x0000A5750104B2E8 AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Sys_AppVerSion] OFF
/****** Object:  Table [dbo].[Sys_Advertising]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sys_Advertising](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](200) NULL,
	[Title] [nvarchar](50) NULL,
	[Resume] [nvarchar](200) NULL,
	[Url] [nvarchar](200) NULL,
	[Details] [nvarchar](500) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[DeadLine] [datetime] NULL,
	[ToId] [nvarchar](200) NULL,
	[CType] [int] NULL,
	[States] [int] NULL,
	[isDeleted] [bit] NULL,
 CONSTRAINT [PK_Sys_Advertising] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'ImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'简述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'Resume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'Details'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'DeadLine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文章的Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'ToId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别 0为网页广告连接,1为店铺,2为服务站,3为维修店4为便民信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'CType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态1启用2禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'States'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Sys_Advertising', @level2type=N'COLUMN',@level2name=N'isDeleted'
GO
SET IDENTITY_INSERT [dbo].[Sys_Advertising] ON
INSERT [dbo].[Sys_Advertising] ([Id], [Category], [ImageUrl], [Title], [Resume], [Url], [Details], [AddTime], [UpdateTime], [DeadLine], [ToId], [CType], [States], [isDeleted]) VALUES (1, N'0201', N'/Upload/20151221031419_554.png', N'1', N'3', N'2', N'4', CAST(0x0000A6E300FAEFD8 AS DateTime), CAST(0x0000A57601092360 AS DateTime), CAST(0x0000A56B00000000 AS DateTime), NULL, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Sys_Advertising] OFF
/****** Object:  StoredProcedure [dbo].[sp_PaginationEx]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[sp_PaginationEx]
	@tableName varchar(8000), -- 表名
	@strGetFields varchar(1000) = '*', -- 需要返回的列
	@strOrder varchar(400)='', -- 排序的字符串
	@PageSize int = 10, -- 页尺寸
	@PageIndex int = 1, -- 页码
	@TotalCount int = 0 output, -- 返回记录总数
	@strWhere varchar(1500) = '' -- 查询条件 (注意: 不要加 where)    
AS

	declare @strSQL nvarchar(4000) -- 主语句

 if @strWhere !=''
 begin
    if charindex('group by',@strWhere)>0
       set @strSQL = 'select @TotalCount=count(0) from (select ' + @strGetFields + ' from ' + @tableName + ' where '+@strWhere + ') as t'
    else
       set @strSQL = 'select @TotalCount=count(0) from ' + @tableName + ' where '+@strWhere
 end
 else
   set @strSQL = 'select @TotalCount=count(0) from ' + @tableName + ''
        
----取得查询结果总数量-----  
 exec sp_executesql @strSQL,N'@TotalCount int out ',@TotalCount out  

begin
    if @PageIndex = 1
    begin
        if @strWhere != ''
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ ' from ' + @tableName + ' where ' + @strWhere + ' order by ' + @strOrder
        else
            set @strSQL = 'select top ' + str(@PageSize) +' '+@strGetFields+ ' from '+ @tableName + ' order by '+ @strOrder
    --如果是第一页就执行以上代码，这样会加快执行速度
    end
    else
    begin
    --以下代码赋予了@strSQL以真正执行的SQL代码
        if @strWhere != ''
         begin
           set @strSQL = 'select '+@strGetFields+ ' from ( select Row_Number() over (order by ' + @strOrder + ') as row,'+@strGetFields+ ' from ' + 
           @tableName + ' where '+@strWhere +') tmpTable where row between' + str((@PageIndex-1)*@PageSize + 1)+ ' and '
            + str((@PageIndex)*@PageSize) 
           end
         else
          begin
              set @strSQL = 'select '+@strGetFields+ ' from ( select Row_Number() over (order by ' + @strOrder + ') as row,'+@strGetFields+ ' from ' +
            @tableName + ') tmpTable where row between' + str((@PageIndex-1)*@PageSize + 1)+ ' and ' + str((@PageIndex)*@PageSize) 
              end 
	end
END

SET NOCOUNT off  
 exec sp_executesql @strSQL

print @strSQL
GO
/****** Object:  StoredProcedure [dbo].[sp_GetByDistancesOrderByLL]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  PROCEDURE [dbo].[sp_GetByDistancesOrderByLL]
	@tableName varchar(8000), -- 表名
	@strGetFields varchar(1000) = '*', -- 需要返回的列
	@minKM nvarchar(400)='0', -- 最小公里
	@MaxKM nvarchar(400)='1000',  --最大公里
	@Longitude nvarchar(400), -- 经度
	@Latitude nvarchar(400), -- 纬度
	@strWhere varchar(1500) = '' -- 查询条件 (注意: 不要加 where)    
AS

	declare @strSQL nvarchar(4000) -- 主语句
	declare @Where nvarchar(1000) -- 内部判断条件
	declare @StrOrder nvarchar(1000)  --排序
	set @Where=' 1=1 '
	set @StrOrder=' dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]) asc'
	set @strGetFields='dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]) as distance,'+@strGetFields --添加距离字段
IF @minKM IS NOT NULL AND @minKM<>0 --最小距离不为0
	BEGIN
		SET @Where=@Where+' and ('+ @minKM+' < dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]))'
	END
IF @MaxKM IS NOT NULL AND @MaxKM<>0 --最大距离不为0
	BEGIN
	SET @Where=@Where+' and ('+ @MaxKM+' > dbo.fnGetDistance('+@Latitude+','+@Longitude+',[Latitude],[Longitude]))'
	END
	
IF @strWhere IS NOT NULL AND @strWhere<>'' --条件不为空
	BEGIN
	SET @Where=@Where+' and ('+ @strWhere+')'
	END


   set @strSQL = 'select '+@strGetFields+' from ' + @tableName + ' where '+@Where +' order by '+@StrOrder
        


SET NOCOUNT off  
 exec sp_executesql @strSQL

print @strSQL
GO
/****** Object:  Table [dbo].[RMS_UserRole]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_UserRole](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[RoleId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_UserRole] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'ac410646-d841-4569-861c-2da6b0855b11', N'bf5ce36d-f8e7-4488-befa-809abe3d10c8', N'7c4524c7-a880-414f-bd23-1e7203eaece0')
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'4bdcda01-d99b-4f08-a854-af942e91259d', N'079654f1-5033-4207-8919-9a8bc3212735', N'fb38f312-0078-4f44-9cda-1183c8042db8')
INSERT [dbo].[RMS_UserRole] ([Id], [UserId], [RoleId]) VALUES (N'cf8c4a60-b7ca-4854-93c9-74b903c41aeb', N'812ecefb-f3d4-4e5b-b2af-b6eebcfd4063', N'7c4524c7-a880-414f-bd23-1e7203eaece0')
/****** Object:  Table [dbo].[RMS_User]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_User](
	[Id] [uniqueidentifier] NOT NULL,
	[LoginName] [nvarchar](50) NULL,
	[TrueName] [nvarchar](50) NULL,
	[Password] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[DepartmentId] [uniqueidentifier] NULL,
	[YH_HospitalId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_User] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_User', @level2type=N'COLUMN',@level2name=N'Id'
GO
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [YH_HospitalId]) VALUES (N'bf5ce36d-f8e7-4488-befa-809abe3d10c8', N'admin', N'韦工', N'123456', CAST(0x0000A2FC0010A16C AS DateTime), CAST(0x0000A2FC0010A16C AS DateTime), N'35f45b17-30b2-43b8-8859-9a964bfb339d', N'd37f2b1e-06af-441d-9882-65498a6ff0cb')
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [YH_HospitalId]) VALUES (N'079654f1-5033-4207-8919-9a8bc3212735', N'adminstra', N'开发人员', N'123456', CAST(0x0000A2FE013D295C AS DateTime), CAST(0x0000A2FE013D295C AS DateTime), N'a38084f4-1239-4d51-b71e-af53417ee682', N'81c304f2-642c-42f3-840f-7f8386261e3f')
INSERT [dbo].[RMS_User] ([Id], [LoginName], [TrueName], [Password], [CreateTime], [ModifyTime], [DepartmentId], [YH_HospitalId]) VALUES (N'812ecefb-f3d4-4e5b-b2af-b6eebcfd4063', N'23', N'23', N'2323', CAST(0x0000A57800C242F7 AS DateTime), CAST(0x0000A57800C242F7 AS DateTime), N'a38084f4-1239-4d51-b71e-af53417ee682', NULL)
/****** Object:  Table [dbo].[RMS_RoleManus]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_RoleManus](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[ManuId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_RoleManus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'88eee7c1-eab1-4c6e-a1b0-8f1616a9f517', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'9efb9b63-58a1-4927-b6c5-14810d2a595e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cbc19245-4fe9-4080-bc9b-f83563e62a54')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'6567068b-84bc-4eb8-ad40-496a041b4b56', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd65dc995-1720-47d9-b75e-540a2f0acca5', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'00e8b721-87fd-4788-b1dc-31c836debdde', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'f0dfdad2-6317-4c41-8164-470fd1249673', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'82ab8599-04d0-409b-818b-11cd5ea642ef')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'ae9ca747-bc85-4842-a2be-bd972c0d7527', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8cf825de-ad5e-498f-a2aa-836c521ce009')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'cec1a2b5-04c7-4a13-bca4-1b0c9ea5fd64', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'701d6086-8d50-4d8c-b775-90c547ec25d5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'a7f7292a-196d-4fd1-a04b-d415dee72c94', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1fbd7363-1186-4a53-bdd3-9678a0093589')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd110d3f7-7531-45be-8873-2add22bf774d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'24429bcc-be43-4fa4-842e-f96b10242ccb', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'28e729df-a43c-4071-b6ac-34a703d30bc4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'1d49b2a4-a632-4b44-98d6-d58d2e711dd3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5942d6f5-903a-4870-8545-48cfaec77387')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'abeaff40-2ef3-490f-8b9c-88c43845f96d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'32f6b4a7-1243-4a3d-a26c-f3eaeb7913d9', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'25b900c5-6306-4a3f-887f-815e9bf372e8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'a1aa85e9-d53f-4475-947e-01dd732c03a7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'66aa18ad-2005-48c3-b194-5ac8d2385974', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'e25e2936-9347-49f7-b221-f7b645041435', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'0224f2d5-7a1d-4f5f-8715-d598b41e1efb', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'3ca55943-e660-4242-a40c-eee834d2d23c')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'7286b95c-8c2c-4261-bb7b-89e7ddcc3b8d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'3b7a1484-2406-455b-9c8f-b098695a070d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd40bfed1-ed26-4538-be18-477054b9e97c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'65d74e95-43c1-4c4c-9395-094c13a3f00d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'9d6f561d-2cb2-475e-988d-cb91dff9a953', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'a69e924f-8d99-4207-90d9-499f1ae3ec56', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'762e4811-2868-4180-a49a-e33dfd204b5f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'cf6d8c6c-4764-4642-950c-55479835104e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'cebb2dcb-dd2f-42be-a4cf-6c911a801cd1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'a342d8d0-bc69-43ba-9b30-ca0949052447')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'388739ba-38bc-48d1-ab18-f2bae4a091f7', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'3e82c144-7256-41b7-910b-45c234368d94', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'cbc19245-4fe9-4080-bc9b-f83563e62a54')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'df819e1c-d0f5-4ac3-aba2-9c1b617c963c', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dee06217-36b0-4f00-a982-dca80fd7a82d', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd6f77c29-bed9-4301-9f67-46089dc4f6a9', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'1d1d75a7-80e7-424c-9e15-8a89462da30d', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'82ab8599-04d0-409b-818b-11cd5ea642ef')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'c9ada188-f44b-4d13-a7e0-5b39b8506a7c', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'1fbd7363-1186-4a53-bdd3-9678a0093589')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'79dd8771-75ee-42ff-a680-15c25a134960', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'4bb598f8-c1d6-4bfd-9ae8-b3aad3417d59', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'0753b304-818d-4f31-84f1-1471155dc51b', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'fcab7171-5c19-4117-af0e-c0407e6d280e')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'e76c2bb4-a8af-4dc4-8bae-88730b3b6475', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'5942d6f5-903a-4870-8545-48cfaec77387')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'7ea0d4f1-8f84-47d7-8bef-f983489783bc', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'4eef9033-2c87-45e5-a500-278e10e14b9d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'6ac97995-985c-4ec8-9796-a93748d9e4bf', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'757f94cb-05b0-40f7-b259-3128068cab8f', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'5e72df14-8788-4307-a700-d5787732cbb5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'090936a3-cc7a-4e77-9a5b-80f4b6ab141e', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'efaefeac-63ad-4ad8-933f-8eb566eb9a4a', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'3ca55943-e660-4242-a40c-eee834d2d23c')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'f8fa83f1-7dc6-472f-be00-9e1469e1fe3c', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'3b7a1484-2406-455b-9c8f-b098695a070d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'9309af2f-fc74-4580-92fa-838046a29472', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'65d74e95-43c1-4c4c-9395-094c13a3f00d')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'736aef1e-4e47-48c3-a760-819ab528560a', N'd878b353-eb13-4c9b-b53d-50da6176408f', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'bef8e543-2f95-4663-b33a-66979823477d', N'd878b353-eb13-4c9b-b53d-50da6176408f', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'bf79b87e-ebb3-479d-bba4-97ed53bc52e2', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'54efe919-6b06-46b2-82bf-478249746cfc', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'02026d8c-d564-4d4f-b24e-3fdb30eea1fe', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'dbd6264e-9fd2-429b-b2c2-834c4956f75b', N'38014f43-807c-44f9-a333-ab48bb494bfe', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'9b476d30-c325-4364-8e95-bfea7a999b7d', N'38014f43-807c-44f9-a333-ab48bb494bfe', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'957accf3-0fc0-4d7f-a0fd-cd398573ba83', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'720c9582-01aa-472c-9457-89c27686ca90', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'd4e9f7f9-e743-47ec-8603-933607ca134c', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'a342d8d0-bc69-43ba-9b30-ca0949052447')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'b76dbd77-e19a-492e-921e-2e548a38110c', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'c5f56312-eb83-479e-8836-fa66913642c8')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'4da9d496-5548-4860-a853-73287711c0f2', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'766fc598-ecd4-43ab-b0c2-6538cbce1cee', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'0211853c-2580-4b25-a473-62a33c7b2782')
INSERT [dbo].[RMS_RoleManus] ([Id], [RoleId], [ManuId]) VALUES (N'b611d053-4b08-41da-8cca-212590246f9c', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'a342d8d0-bc69-43ba-9b30-ca0949052447')
/****** Object:  Table [dbo].[RMS_RoleManuButtons]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_RoleManuButtons](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NULL,
	[MenuButtonsId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_RoleManuButtons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4c8e7a0f-a208-4c7a-869e-49474e716d77', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'10986a68-1641-457f-96d8-5e3d522019cf')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4e8d7715-bc44-4019-be78-2fa82225e045', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'23e0459c-aed3-4710-aba3-b37ed07d064d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c2800a63-cf5c-4036-9eb2-ff37919731d6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'528a4dc7-5c1b-4e43-97af-4534bdaa13de', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bfd300cd-eca1-4ed6-8441-c3056d958854')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5e003bfd-10ec-455c-982d-b803d4a1168f', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'c0214a1b-3944-495b-90a2-aafd8c9d1cc3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fa098e20-a26e-4ffd-b7d4-24b353b85969', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd0d87890-5f48-4d6a-a4b8-f54e0253c2b8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'116852cc-4c51-4616-8695-c191d979672e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'832ca926-0ce3-40f3-b337-fe0c221ac6b6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd413ae2d-b9bb-44bf-bf6a-910024744736', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e6523d84-fb82-4ae7-9cfc-2c1db20df936')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b855e4cb-fe86-429a-a522-6a40a0bb3d53', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9a79f2c8-1a38-4f10-a775-4069503ef057')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'606dde3c-3130-4260-8b97-ddf888f20e0b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'db5804db-887b-4e64-8057-6e2564deb428', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4b9f0b04-83d0-469f-a49c-f7114db923dd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ab81cda7-7895-4773-b286-d2b100e21773', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bdad042b-79d4-424d-83ab-9d20708c9e77')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd8aaff4d-b9e9-4bc7-aa37-2aadff63c1a2', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'badf8f06-3623-4d10-aff1-db95cd381b2e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'df84b4b4-81a7-4ae8-bbc3-d3d0352ebee7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'6d8a5b93-c4c3-459a-9e22-6873809d7a3e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e9f2b0b4-6705-431f-98e4-a103314a8f95', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b612d11d-6cfd-40f2-b367-c246c9b08e79')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6a4447e7-43f0-4975-89a4-5b4fcedbd797', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ce45f87c-653f-4ad1-b85b-d290ebe8f1e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b99358ed-513c-497c-90b0-6789bc1d9b1b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4253cab5-80ff-4765-bdf4-c1ae60219a1f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1f09e54f-22e6-4f28-9001-484aaf237cc4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'41bf1fda-62e7-4095-b5d9-b9834b658688')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'14cff641-3fe2-4e71-a0d3-a79442134a07', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2316e4c7-72fb-4c8c-8845-376f6d7db38c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f1d81cd9-f56f-41b0-8510-b65a082a344b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b648e8a0-39fc-4549-8adf-a0b2056e60e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7bd06abc-cea2-4459-9754-29ce45ef7077', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bccec2de-22e5-4b7d-98a6-35ae2fa6fcde')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'de006b84-f494-4aa6-ab7e-fc9d83304405', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0c4e0848-68f4-4128-9b3f-a11398236f70')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9222b17e-7a24-448e-99de-053e5b8ae976', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bd5f3345-b02a-438f-804a-f21a16947990')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'318a5631-37a7-42f2-b630-a3427e5c0410', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'81551402-958f-4aeb-a77b-f7c725ce699a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'25ec3280-383f-47c8-9d55-ecb9bd2d70ab', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1a006175-1ae0-45e9-b233-322c1715bcb6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'26e66ba1-8906-4c13-a177-90286c32251d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2369f740-2836-4b3a-af29-462d7b56f6ac')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3538c154-00e5-4d67-ae75-3c48696b26fb', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'db8921e8-e54c-44ac-ba45-776dc6bdc7c5', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd659a1b6-cb42-44ef-8781-5c415db6d25c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bde2c1f4-8197-4fb5-b8ee-7223067739fb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'768f4be6-60f8-44c6-ae79-31a0ba04b1f4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'663fa88b-b1ce-4df4-b3e6-546d42c46383', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'baf9e954-09e3-4641-85ea-f96523be0560', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1cbae786-6880-4bea-80c9-403ab741d96d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd0968c5b-a592-43ea-811f-1c5af6552b7b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1c86dd4b-1d34-4d1c-888c-799d579f3b5d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'e029fcea-92e2-4694-b448-9caa4ffb86cb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1a045bdf-68e6-4aa9-a5c3-953205377a6b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9dc47726-88a5-418d-87a0-c3c36a06b2c7', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2ef82460-f102-4cd4-a5e6-546451572523', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'89da12b8-dc9c-4908-b6be-79aea484394e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5b4edb03-9362-4a24-a543-2ebe80c810be', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c6cc15d3-a86c-4e16-96f5-9691afe40684', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'622e7925-3cc5-425e-85b6-118de0efaa39', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'415fc710-652d-4d7f-a3a6-16034f5fcc01')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2b70587d-6c34-45da-9139-719a631e0b7b', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'52959c9b-86b3-45d2-8a1a-8018f299cd5d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b1ef10af-5257-4fe5-9925-63bd940a484c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'884caf14-acd2-4d58-9451-74290e3bdde4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f1ce5e20-2097-4bc7-a443-8fb7d91f1d89', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'77337595-1714-4f5e-8ef0-30d43ccc6c3b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'eae1254c-1c90-490b-a8a4-f82e9ded5469', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'640e7f8a-190d-4459-a790-2f5d194baf78')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bd8bfcf8-7965-4523-8ae8-c0d02c663bc0', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'33408194-80f0-4e50-a96f-68dab6c46c57')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ab76f432-653c-4200-bafe-5a034e9bf9c1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6523b907-f013-49af-870b-22aea9cbb02d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1235c417-a13f-4e66-ad42-a46bd3c5649c', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8b385b3f-df7a-4d82-a9c0-dc72532333d4', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a555491c-a196-4d19-8808-afe60c1e6d4e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'7a0039b0-eeb0-4109-94e9-e4ca62aafccd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4cac12d2-cf20-4d7a-8e54-7756af0c2c64', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'39414205-3718-4cf0-bce3-c8d3645fa90e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7ed7c766-9899-4e2f-acdd-15d07e96104a', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'3b913a1b-bd93-4359-8c1a-8fee538189ea')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3f5a5f66-5b27-4c30-ac5d-cb7462f7d6dc', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'0038c8dd-a7a9-4e1a-97ea-999700a88170')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'399b4a95-6bd6-4b7c-802e-da49c61ab1db', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'848c7751-fa06-4090-a240-c04b1d04119f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e9005af2-c458-49df-af80-e5481ad9b7c3', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd029d19f-a121-4c6f-b17a-6404c9aa4ec8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8c407e4f-7de6-4aa4-9887-689b9c93ee77', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'1be99bde-61cd-48b8-8781-9038b4eb5a7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'06687ab7-0abb-4561-85c1-e7a2e9b3f400', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'190a2eb2-26d6-4b20-b592-fa63947f3a1f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'75295079-03eb-4cbc-835b-68658ac172cc', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'2e03f10b-7083-4068-815e-820cf746b26f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'00f4a581-cad7-4a35-bf07-23a41c367cab', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'77149e5a-b0f3-4c5a-adeb-e00b664dbe44')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b0efd7e3-cb66-4be8-98f4-e1d433c82fe1', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c5325728-5c8d-4c94-96f0-78b043c32b31', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'8d7638be-56f0-4360-acaf-7062165e4e7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a4bc84a7-f481-4b16-8c08-f1aa78e2888d', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7e528af6-c2ef-4760-9117-906fb11bfc6e', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'87beff53-a4cd-4b83-9ac3-645b3f9c95ef', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'f1b6d737-e7e6-4944-8e20-1a64d63422a1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'bdbdeb46-42c7-4b93-aa16-3c388ad74562', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'b0f6e48c-bc57-4ba5-b124-8e23f6d5d63e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a489fc2b-3f8f-4251-8ac6-ed78cbae9236', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'4f874dfc-16f9-4aa8-a696-6b22f00e253e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0c38a470-14e9-4c7c-8029-c260b66ac886', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'3f9cd1d6-b486-4a41-b034-a2e69c2f10f4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'38e07897-6c57-4ca4-9bf2-20fae8d1b7f6', N'fb38f312-0078-4f44-9cda-1183c8042db8', N'3584d0b4-ca6c-499a-a512-4092a9d6c1a8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4b2894ab-6459-48c1-b2df-89febcf8cf55', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a28406dc-fa18-44a2-a547-d92b0b942cb2', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'8d7638be-56f0-4360-acaf-7062165e4e7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'eba4420c-b25c-4b20-815d-43ae3ba9597a', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'22302a17-d12a-46f8-a2c6-c9d2e2c8b1d9', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'276bf345-e177-4235-a1ea-d36b72ee88a5', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'4f874dfc-16f9-4aa8-a696-6b22f00e253e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'cd95bdfb-b960-4d0b-b5c3-27e9fdca6352', N'b8d45183-bf44-44df-b274-d58dc2703aca', N'3f9cd1d6-b486-4a41-b034-a2e69c2f10f4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'94acb5ff-11eb-41bf-a082-07683bcd4bb7', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'10986a68-1641-457f-96d8-5e3d522019cf')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5e5074bb-757e-4924-9113-1a375e9a129f', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0db2c5f9-8f3d-4e88-8ef8-0c3363521c25', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'c2800a63-cf5c-4036-9eb2-ff37919731d6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4c8e2ee4-58d9-4a19-9ecf-5e9d8f3c58c1', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bfd300cd-eca1-4ed6-8441-c3056d958854')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5e623a2f-6527-4345-b9f3-04a52af0bdc0', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'c0214a1b-3944-495b-90a2-aafd8c9d1cc3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5938ef86-72eb-47c4-9c8f-dfab86fcf691', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'd0d87890-5f48-4d6a-a4b8-f54e0253c2b8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5012d3f8-2fc2-44d1-b5c5-7b8290cabada', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'832ca926-0ce3-40f3-b337-fe0c221ac6b6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'800ecea7-277c-406c-b7b7-52e5ce916d5e', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'e6523d84-fb82-4ae7-9cfc-2c1db20df936')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'dbf03b2a-949f-4a3a-960f-601d1c993aab', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'9a79f2c8-1a38-4f10-a775-4069503ef057')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9753817d-e139-4a3f-b2fb-706bc234cb04', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fd8a3814-9024-4e95-937f-5fab47ce2fe7', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'4b9f0b04-83d0-469f-a49c-f7114db923dd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'411945b0-349d-4f42-8b99-79274ee8f98f', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bdad042b-79d4-424d-83ab-9d20708c9e77')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'46e74089-8440-48e1-ab34-5c85d8197dce', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'2316e4c7-72fb-4c8c-8845-376f6d7db38c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9cdd0ebd-9a7d-4423-a348-17530797f5ca', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'b648e8a0-39fc-4549-8adf-a0b2056e60e3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'9fb707cc-ddef-409e-9eab-428a04382784', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bccec2de-22e5-4b7d-98a6-35ae2fa6fcde')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'97781b94-395c-46ac-92b3-d74928c57dc4', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'0c4e0848-68f4-4128-9b3f-a11398236f70')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8362d8a2-e336-4201-b31d-ecff15509349', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bd5f3345-b02a-438f-804a-f21a16947990')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'544c1a5b-848d-4479-b9bf-aa7b8a003c8f', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'81551402-958f-4aeb-a77b-f7c725ce699a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'3db49c54-dc96-4f2c-ba11-bdc741bc1077', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'1a006175-1ae0-45e9-b233-322c1715bcb6')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'18cae716-f288-4226-b4b6-4751319c5510', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'2369f740-2836-4b3a-af29-462d7b56f6ac')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd770b3c1-3cf4-4215-938f-ccbed36c0083', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'18381400-99b5-4bc2-9045-77be5c7c2d1c')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'737f1566-558c-4150-82c5-419d669f5331', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'5b662497-44a3-4cad-991d-a80088debd67', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bde2c1f4-8197-4fb5-b8ee-7223067739fb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7dc1db21-5887-45de-b051-7bc0cccb42ae', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'44d566cc-aff5-44b1-98be-b5f35562c213', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'776f253e-6c21-48e7-b6d4-5a52e6c4c20e', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2f16fd0e-4b22-4385-9434-df0eb7edd6e4', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'd0968c5b-a592-43ea-811f-1c5af6552b7b')
GO
print 'Processed 100 total records'
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e73baeb2-18ab-4f1a-a436-8805b0c333dd', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'e029fcea-92e2-4694-b448-9caa4ffb86cb')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'27d916f4-f447-4108-9678-33220fc90ce4', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'2f1f8e79-b901-4a0c-9f54-aea64083c851', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'799f490f-2920-4f25-9bc5-00ad025db684')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c34eb17b-a2d2-41e3-8947-9e83765ae719', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'89da12b8-dc9c-4908-b6be-79aea484394e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6ca7f62a-2a6b-431b-ae07-f97819c201c5', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'884caf14-acd2-4d58-9451-74290e3bdde4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'30fc1551-2c05-437c-8dee-45d648687232', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'77337595-1714-4f5e-8ef0-30d43ccc6c3b')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'0bb30c11-aa02-43f9-a872-0aa9c90c25cd', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'640e7f8a-190d-4459-a790-2f5d194baf78')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fb1b414c-88a1-4f00-b039-260bc1466843', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'33408194-80f0-4e50-a96f-68dab6c46c57')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'1f228558-9211-4edf-a75c-0e3c8b4be923', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'f1109d53-c8df-4125-8293-2b3cccd90afa')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'013de407-17e8-411d-8bde-cd97f676f908', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'64f282fb-a747-4d81-b515-485754b894b1', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'052f960a-2bd7-4e50-9ae0-455f8ff441d3')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'4d2475ea-9d77-4a82-bc69-0057f6013304', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'8d1e943b-7631-4d64-90e2-c23d15e86ebc')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'7adda159-e080-4212-baef-857594eae1a7', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'7a0039b0-eeb0-4109-94e9-e4ca62aafccd')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'21421f52-570e-473c-b741-60fb577b75ef', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'39414205-3718-4cf0-bce3-c8d3645fa90e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'095d1690-0517-4804-ad8e-daf24bbc43c3', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'3b913a1b-bd93-4359-8c1a-8fee538189ea')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'856c5679-0e04-491b-b92f-b24e2e2f12a5', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'0038c8dd-a7a9-4e1a-97ea-999700a88170')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'c3c28468-cc1f-48de-b87f-cfe7356612db', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'848c7751-fa06-4090-a240-c04b1d04119f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'd943eee9-f160-4f38-86c9-78809dae4e71', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'd029d19f-a121-4c6f-b17a-6404c9aa4ec8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b0914170-1d4e-407b-858e-efa954790865', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'1be99bde-61cd-48b8-8781-9038b4eb5a7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'18e949b3-c968-40fd-91a3-009aa63a10fb', N'd878b353-eb13-4c9b-b53d-50da6176408f', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'ee3011b5-3d47-4df3-9f86-ed9d621d1e72', N'd878b353-eb13-4c9b-b53d-50da6176408f', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'8083d95c-d88d-4541-a433-5bc31624cc46', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'75295c8d-8166-431d-8dd1-8d1e4cd854a4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'681435a6-bbd2-473b-80c0-ed3a771dbc51', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'9b423185-08d9-45ee-a070-555ed1037767')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'b0ba9d0f-da0f-46b7-9e01-be8aeca9eeef', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'f1b6d737-e7e6-4944-8e20-1a64d63422a1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f4cefa84-42e5-42ff-9d95-6623ee457d1e', N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'b0f6e48c-bc57-4ba5-b124-8e23f6d5d63e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e02b568c-19d9-4b66-b8a0-fcdf55851404', N'38014f43-807c-44f9-a333-ab48bb494bfe', N'f1b6d737-e7e6-4944-8e20-1a64d63422a1')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'097875d4-cca9-41ba-81b4-d30c006c8b8c', N'38014f43-807c-44f9-a333-ab48bb494bfe', N'b0f6e48c-bc57-4ba5-b124-8e23f6d5d63e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'6afa21e1-2e89-4b1d-a127-ef32b2ad27f3', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'a49bc640-b1c2-43ff-8305-76d1cf22170b', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'8d7638be-56f0-4360-acaf-7062165e4e7f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'09eb248c-082c-431b-bbc3-e7bec79500dd', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'4f874dfc-16f9-4aa8-a696-6b22f00e253e')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'fccb002b-3f1b-4b3d-b1ee-be29704b62e3', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'3f9cd1d6-b486-4a41-b034-a2e69c2f10f4')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'e7bb8749-cfdf-4c33-9f0d-7a3a880add82', N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'3584d0b4-ca6c-499a-a512-4092a9d6c1a8')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f543d4ab-1a56-4186-a5b9-a6cc0193f479', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'190a2eb2-26d6-4b20-b592-fa63947f3a1f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'f9f22078-d95a-4315-88e9-054fd751627e', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'2e03f10b-7083-4068-815e-820cf746b26f')
INSERT [dbo].[RMS_RoleManuButtons] ([Id], [RoleId], [MenuButtonsId]) VALUES (N'263c27e8-49a7-49f0-9b97-c7c7de1902cd', N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'77149e5a-b0f3-4c5a-adeb-e00b664dbe44')
/****** Object:  Table [dbo].[RMS_Role]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Role](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateBy] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyBy] [nvarchar](200) NULL,
	[ModifyTime] [datetime] NULL,
	[RoleTypes] [int] NULL,
 CONSTRAINT [PK_RMS_Role] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色类型（1管理员、0商家）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RMS_Role', @level2type=N'COLUMN',@level2name=N'RoleTypes'
GO
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'fb38f312-0078-4f44-9cda-1183c8042db8', N'系统管理员', N'开发人员，系统设置', N'1', CAST(0x0000A2F9001CF098 AS DateTime), N'1', CAST(0x0000A2F9001CF098 AS DateTime), 1)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'7e4a372b-3191-4e69-9e51-ad0d5bb37191', N'店铺用户', N'用来添加店铺，给店铺添加车辆用', N'1', CAST(0x0000A2FA0140AB04 AS DateTime), N'1', CAST(0x0000A2FA0140AB04 AS DateTime), 0)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'7c4524c7-a880-414f-bd23-1e7203eaece0', N'公司业务管理员', N'电车管家里，管理用户数据，审核等', N'1', NULL, N'1', CAST(0x0000A57800C0FA4C AS DateTime), 1)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'd878b353-eb13-4c9b-b53d-50da6176408f', N'维修店', N'维修店老板，添加维修店', N'1', CAST(0x0000A57600F0F2AA AS DateTime), N'1', CAST(0x0000A57600F0F2AA AS DateTime), 0)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'38014f43-807c-44f9-a333-ab48bb494bfe', N'便民服务', N'可以添加便民服务', N'1', CAST(0x0000A57600F12551 AS DateTime), N'1', CAST(0x0000A57600F12551 AS DateTime), 0)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'32039505-d3f6-4a21-af1b-89a04766f5b0', N'维修店-便民服务', N'可以添加 维修店和便民服务', N'1', CAST(0x0000A57600F1455A AS DateTime), N'1', CAST(0x0000A57600F1455A AS DateTime), 0)
INSERT [dbo].[RMS_Role] ([Id], [RoleName], [Remarks], [CreateBy], [CreateTime], [ModifyBy], [ModifyTime], [RoleTypes]) VALUES (N'b8d45183-bf44-44df-b274-d58dc2703aca', N'店铺-便民服务1', N'可以添加 店铺和便民服务1', N'1', NULL, N'1', CAST(0x0000A57800C10BB4 AS DateTime), 0)
/****** Object:  Table [dbo].[RMS_Menus]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Menus](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentManuId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Remarks] [nvarchar](300) NULL,
	[ManuName] [nvarchar](100) NULL,
	[URL] [nvarchar](200) NULL,
	[IsShow] [bit] NULL,
	[IsEnable] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](100) NULL,
	[MIcon] [nvarchar](100) NULL,
 CONSTRAINT [PK_RMS_Menus] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 4, N'登录用户的信息', N'用户管理', N'User', 1, 1, CAST(0x0000A2FE0159DF5C AS DateTime), CAST(0x0000A2FE0159DF5C AS DateTime), N'icon-user', N'icon-user')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 23, N'23', N'角色管理', N'Role', 1, 1, CAST(0x0000A2FE0159E9E8 AS DateTime), CAST(0x0000A2FE0159E9E8 AS DateTime), N'icon-arrow_nsew', N'icon-arrow_nsew')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'5e72df14-8788-4307-a700-d5787732cbb5', NULL, N'1221', N'商家管理', N'TS_ShopUser', 1, 1, CAST(0x0000A561016A2257 AS DateTime), CAST(0x0000A561016A2257 AS DateTime), N'icon-flag_blue', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', N'00000000-0000-0000-0000-000000000000', 2, N'111', N'系统设置', N'#', 1, 1, CAST(0x0000A2FB0138A008 AS DateTime), CAST(0x0000A2FB0138A008 AS DateTime), N'icon-shape_square_select', N'icon-shape_square_select')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 2, NULL, N'维修店管理', N'TS_RepairShop', 1, 1, CAST(0x0000A565014C2FDA AS DateTime), CAST(0x0000A565014C2FDA AS DateTime), N'icon-wrench_orange', N'/Content/JqueryEasyUI/themes/icons/32/sport_tennis.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 12, N'12', N'菜单管理', N'Manu', 1, 1, CAST(0x0000A2FE0159F474 AS DateTime), CAST(0x0000A2FE0159F474 AS DateTime), N'icon-rainbow', N'icon-rainbow')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 2, N'2', N'按钮管理', N'Buttons', 1, 1, CAST(0x0000A2FE0159FDD4 AS DateTime), CAST(0x0000A2FE0159FDD4 AS DateTime), N'icon-tags_red', N'icon-tags_red')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', N'00000000-0000-0000-0000-000000000000', 0, N'12', N'权限管理', N'#', 1, 1, CAST(0x0000A2FC00094890 AS DateTime), CAST(0x0000A2FC00094890 AS DateTime), N'icon-book', N'icon-book')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'b3e07fa4-2820-4c2f-a88f-941b2a5976c7', 1, N'12', N'部门设置', N'Department', 1, 1, CAST(0x0000A46B009BA93E AS DateTime), CAST(0x0000A46B009BA93E AS DateTime), N'icon-users', N'icon-users')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 3, NULL, N'商店管理', N'TS_Shop', 1, 1, CAST(0x0000A565014C1024 AS DateTime), CAST(0x0000A565014C1024 AS DateTime), N'icon-vector', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 0, N'系统使用', N'数据词典', N'Dictionary', 1, 1, CAST(0x0000A30400BA3C90 AS DateTime), CAST(0x0000A30400BA3C90 AS DateTime), N'icon-text_inverse', N'/Content/JqueryEasyUI/themes/icons/32/add.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', N'00000000-0000-0000-0000-000000000000', 1, NULL, N'业务数据管理', N'#', 1, 1, CAST(0x0000A5700169C8FF AS DateTime), CAST(0x0000A5700169C8FF AS DateTime), N'icon-sport_golf_practice', N'/Content/JqueryEasyUI/themes/icons/32/car.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'3ca55943-e660-4242-a40c-eee834d2d23c', N'5e72df14-8788-4307-a700-d5787732cbb5', NULL, NULL, N'移动用户', N'TS_ClientUser', 1, 1, CAST(0x0000A560000125A1 AS DateTime), CAST(0x0000A560000125A1 AS DateTime), N'icon-user_add', N'/Content/JqueryEasyUI/themes/icons/32/award_star_bronze_3.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5942d6f5-903a-4870-8545-48cfaec77387', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 4, NULL, N'便民服务', N'TS_Service', 1, 1, CAST(0x0000A565014C76F1 AS DateTime), CAST(0x0000A565014C76F1 AS DateTime), N'icon-rainbow', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 3, NULL, N'交易信息', N'TS_Transaction', 1, 1, CAST(0x0000A565014CC179 AS DateTime), CAST(0x0000A565014CC179 AS DateTime), N'icon-plugin', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', NULL, NULL, N'车辆管理', N'TS_Car', 1, 1, CAST(0x0000A56A016E314E AS DateTime), CAST(0x0000A56A016E314E AS DateTime), N'icon-car', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'5e72df14-8788-4307-a700-d5787732cbb5', N'00000000-0000-0000-0000-000000000000', 1, N'运营端，管理医院数据', N'运营管理', N'#', 1, 1, CAST(0x0000A46D00F1AA65 AS DateTime), CAST(0x0000A46D00F1AA65 AS DateTime), N'icon-group32', N'/Content/JqueryEasyUI/themes/icons/32/group_error.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'c03f01bc-29a4-4c32-b2f8-53e4736c6aa4', 3, NULL, N'城市管理', N'Sys_CityArea', 1, 1, CAST(0x0000A56E015CD543 AS DateTime), CAST(0x0000A56E015CD543 AS DateTime), N'icon-color_swatch', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'c5f56312-eb83-479e-8836-fa66913642c8', N'00000000-0000-0000-0000-000000000000', NULL, NULL, N'业务', N'Parameter', 1, 1, CAST(0x0000A5700169A89B AS DateTime), CAST(0x0000A5700169A89B AS DateTime), N'icon-color', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'c5f56312-eb83-479e-8836-fa66913642c8', 23, N'电车卖家，电池卖家等', N'商店', N'UTS_Shop', 1, 1, CAST(0x0000A57501053FE3 AS DateTime), CAST(0x0000A57501053FE3 AS DateTime), N'icon-shape_handles', N'/Content/JqueryEasyUI/themes/icons/32/bell_link.png')
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'3b7a1484-2406-455b-9c8f-b098695a070d', N'5e72df14-8788-4307-a700-d5787732cbb5', NULL, N'管理app的版本', N'App版本管理', N'Sys_AppVerSion', 1, 1, CAST(0x0000A57500F29431 AS DateTime), CAST(0x0000A57500F29431 AS DateTime), N'icon-page_white_font', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'cb6a3fd7-a581-41c3-a52e-d3b385a9b219', 5, N'资讯类型', N'便民信息', N'TS_ServiceNew', 1, 1, CAST(0x0000A56F018149AE AS DateTime), CAST(0x0000A56F018149AE AS DateTime), N'icon-book', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'0211853c-2580-4b25-a473-62a33c7b2782', N'c5f56312-eb83-479e-8836-fa66913642c8', NULL, N'维修店用', N'维修店', N'UTS_RepairShop', 1, 1, CAST(0x0000A570016ACE15 AS DateTime), CAST(0x0000A570016ACE15 AS DateTime), N'icon-wrench_orange', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5', N'c5f56312-eb83-479e-8836-fa66913642c8', NULL, N'给商家添加服务', N'便民服务', N'UTS_Service', 1, 1, CAST(0x0000A570016B41EB AS DateTime), CAST(0x0000A570016B41EB AS DateTime), N'icon-rainbow', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'c5f56312-eb83-479e-8836-fa66913642c8', NULL, NULL, N'车辆', N'UTS_Car', 1, 1, CAST(0x0000A570016BFEC7 AS DateTime), CAST(0x0000A570016BFEC7 AS DateTime), N'icon-car_add', NULL)
INSERT [dbo].[RMS_Menus] ([Id], [ParentManuId], [OrderNo], [Remarks], [ManuName], [URL], [IsShow], [IsEnable], [CreateTime], [ModifyTime], [Icon], [MIcon]) VALUES (N'65d74e95-43c1-4c4c-9395-094c13a3f00d', N'5e72df14-8788-4307-a700-d5787732cbb5', 2, NULL, N'广告管理', N'Sys_Advertising', 1, 1, CAST(0x0000A57500F26DE9 AS DateTime), CAST(0x0000A57500F26DE9 AS DateTime), N'icon-color', NULL)
/****** Object:  Table [dbo].[RMS_MenuButtons]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_MenuButtons](
	[Id] [uniqueidentifier] NOT NULL,
	[ManuId] [uniqueidentifier] NULL,
	[ButtonId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
 CONSTRAINT [PK_RMS_MenuButtons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'c2800a63-cf5c-4036-9eb2-ff37919731d6', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'10986a68-1641-457f-96d8-5e3d522019cf', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'42b0ca5b-4e28-46c1-b1b9-d01ba0642075', N'cbc19245-4fe9-4080-bc9b-f83563e62a54', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e6523d84-fb82-4ae7-9cfc-2c1db20df936', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'832ca926-0ce3-40f3-b337-fe0c221ac6b6', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'9a79f2c8-1a38-4f10-a775-4069503ef057', N'029a6c5c-4c4e-41d8-bdc6-1174318741e3', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bdad042b-79d4-424d-83ab-9d20708c9e77', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'98a05a8d-fb7c-43a3-b44c-3564e1d273ab', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4b9f0b04-83d0-469f-a49c-f7114db923dd', N'82ab8599-04d0-409b-818b-11cd5ea642ef', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'badf8f06-3623-4d10-aff1-db95cd381b2e', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b612d11d-6cfd-40f2-b367-c246c9b08e79', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'6d8a5b93-c4c3-459a-9e22-6873809d7a3e', N'8cf825de-ad5e-498f-a2aa-836c521ce009', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'ce45f87c-653f-4ad1-b85b-d290ebe8f1e3', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'41bf1fda-62e7-4095-b5d9-b9834b658688', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4253cab5-80ff-4765-bdf4-c1ae60219a1f', N'701d6086-8d50-4d8c-b775-90c547ec25d5', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b648e8a0-39fc-4549-8adf-a0b2056e60e3', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bccec2de-22e5-4b7d-98a6-35ae2fa6fcde', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2316e4c7-72fb-4c8c-8845-376f6d7db38c', N'1fbd7363-1186-4a53-bdd3-9678a0093589', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0038c8dd-a7a9-4e1a-97ea-999700a88170', N'3ca55943-e660-4242-a40c-eee834d2d23c', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'39414205-3718-4cf0-bce3-c8d3645fa90e', N'3ca55943-e660-4242-a40c-eee834d2d23c', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'848c7751-fa06-4090-a240-c04b1d04119f', N'3ca55943-e660-4242-a40c-eee834d2d23c', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'3b913a1b-bd93-4359-8c1a-8fee538189ea', N'3ca55943-e660-4242-a40c-eee834d2d23c', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'052f960a-2bd7-4e50-9ae0-455f8ff441d3', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 4)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'f1109d53-c8df-4125-8293-2b3cccd90afa', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'8d1e943b-7631-4d64-90e2-c23d15e86ebc', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd742bb5a-f413-45bd-9a9f-de1a05b7c60d', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bd5f3345-b02a-438f-804a-f21a16947990', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0c4e0848-68f4-4128-9b3f-a11398236f70', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'81551402-958f-4aeb-a77b-f7c725ce699a', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0e5b6abf-ae50-45ef-bf33-00c68d3fa161', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'e029fcea-92e2-4694-b448-9caa4ffb86cb', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2369f740-2836-4b3a-af29-462d7b56f6ac', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'18381400-99b5-4bc2-9045-77be5c7c2d1c', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'0eb8b1c2-51b2-4bfa-87e4-2b11ebce36d4', N'5942d6f5-903a-4870-8545-48cfaec77387', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bddb8ba8-87f4-4871-9a0f-0d2c630c4c6f', N'5942d6f5-903a-4870-8545-48cfaec77387', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'ed99db36-efe7-4f57-82a8-5b4f44f9e66a', N'5942d6f5-903a-4870-8545-48cfaec77387', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'799f490f-2920-4f25-9bc5-00ad025db684', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1c6cafec-e599-4af6-a5ac-e5d0e900ffc0', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'89da12b8-dc9c-4908-b6be-79aea484394e', N'4eef9033-2c87-45e5-a500-278e10e14b9d', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd0968c5b-a592-43ea-811f-1c5af6552b7b', N'5942d6f5-903a-4870-8545-48cfaec77387', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bde2c1f4-8197-4fb5-b8ee-7223067739fb', N'fcab7171-5c19-4117-af0e-c0407e6d280e', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1a006175-1ae0-45e9-b233-322c1715bcb6', N'f94992a9-68e7-44e3-86f3-93a5a4f10a4e', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'52959c9b-86b3-45d2-8a1a-8018f299cd5d', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'fe4acc8c-53a2-4adf-9c1b-eb74709f5985', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'415fc710-652d-4d7f-a3a6-16034f5fcc01', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'24040ad2-80a9-43c5-b8fc-a9a3bddaf93e', N'25b900c5-6306-4a3f-887f-815e9bf372e8', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'c0214a1b-3944-495b-90a2-aafd8c9d1cc3', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd0d87890-5f48-4d6a-a4b8-f54e0253c2b8', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'bfd300cd-eca1-4ed6-8441-c3056d958854', N'7a8c4046-04e3-4559-bc1c-53f945b99bb1', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'33408194-80f0-4e50-a96f-68dab6c46c57', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'884caf14-acd2-4d58-9451-74290e3bdde4', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'77337595-1714-4f5e-8ef0-30d43ccc6c3b', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'7a0039b0-eeb0-4109-94e9-e4ca62aafccd', N'9b7cd5ef-a033-42c6-98bc-4157d6ff23b7', N'69daef95-a0a6-4208-8445-2d18be9ba9af', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'640e7f8a-190d-4459-a790-2f5d194baf78', N'a83eaa2a-2f6f-49ed-bac0-fea7369b4fc2', N'69cf2259-4856-4e5b-8ba2-2181774232d9', 3)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd546efaf-71f3-43ea-ae30-b6a0ab1d5310', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'8d7638be-56f0-4360-acaf-7062165e4e7f', N'ae0bea25-acca-43ad-b8ee-bbaa2dc62795', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'75295c8d-8166-431d-8dd1-8d1e4cd854a4', N'0211853c-2580-4b25-a473-62a33c7b2782', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'9b423185-08d9-45ee-a070-555ed1037767', N'0211853c-2580-4b25-a473-62a33c7b2782', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'f1b6d737-e7e6-4944-8e20-1a64d63422a1', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'b0f6e48c-bc57-4ba5-b124-8e23f6d5d63e', N'a14c20d5-c5d3-438f-89bd-2cc541feb3f5', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'4f874dfc-16f9-4aa8-a696-6b22f00e253e', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'3584d0b4-ca6c-499a-a512-4092a9d6c1a8', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'3f9cd1d6-b486-4a41-b034-a2e69c2f10f4', N'a342d8d0-bc69-43ba-9b30-ca0949052447', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'd029d19f-a121-4c6f-b17a-6404c9aa4ec8', N'3b7a1484-2406-455b-9c8f-b098695a070d', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'1be99bde-61cd-48b8-8781-9038b4eb5a7f', N'3b7a1484-2406-455b-9c8f-b098695a070d', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'2e03f10b-7083-4068-815e-820cf746b26f', N'65d74e95-43c1-4c4c-9395-094c13a3f00d', N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', 0)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'77149e5a-b0f3-4c5a-adeb-e00b664dbe44', N'65d74e95-43c1-4c4c-9395-094c13a3f00d', N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', 2)
INSERT [dbo].[RMS_MenuButtons] ([Id], [ManuId], [ButtonId], [OrderNo]) VALUES (N'190a2eb2-26d6-4b20-b592-fa63947f3a1f', N'65d74e95-43c1-4c4c-9395-094c13a3f00d', N'cb27b325-cb67-4b19-9149-030f4fed5deb', 1)
/****** Object:  Table [dbo].[RMS_Department]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Department](
	[Id] [uniqueidentifier] NOT NULL,
	[ParentId] [uniqueidentifier] NULL,
	[OrderNo] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[Icon] [nvarchar](50) NULL,
	[YH_HospitalId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RMS_Department] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'35f45b17-30b2-43b8-8859-9a964bfb339d', N'43e58774-34f2-434b-8200-fc9fe2e10f0e', 12, N'临床医学', N'12', CAST(0x0000A46100F17BB9 AS DateTime), CAST(0x0000A46100F17BB9 AS DateTime), N'icon-shape_shade_a', N'd37f2b1e-06af-441d-9882-65498a6ff0cb')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'29c05683-eaee-4e10-91ee-7f1232a0f408', N'00000000-0000-0000-0000-000000000000', 1, N'开发部', N'2112', CAST(0x0000A2FC01662654 AS DateTime), CAST(0x0000A2FC01662654 AS DateTime), N'icon-arrow_left', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'a38084f4-1239-4d51-b71e-af53417ee682', N'29c05683-eaee-4e10-91ee-7f1232a0f408', 2, N'B小组', N'23', CAST(0x0000A46800EDC68D AS DateTime), CAST(0x0000A46800EDC68D AS DateTime), N'icon-bug', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'0b0d8df1-ab27-4375-9eb5-db772bfaebbb', N'43e58774-34f2-434b-8200-fc9fe2e10f0e', 2, N'编码高手', N'23', CAST(0x0000A2FD012A5ED0 AS DateTime), CAST(0x0000A2FD012A5ED0 AS DateTime), N'icon-control_equalizer', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'43e58774-34f2-434b-8200-fc9fe2e10f0e', N'00000000-0000-0000-0000-000000000000', 23, N'业务部', N'2', CAST(0x0000A46100EF91ED AS DateTime), CAST(0x0000A46100EF91ED AS DateTime), N'icon-arrow_nsew', N'd37f2b1e-06af-441d-9882-65498a6ff0cb')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'712ffc65-eadf-460b-aed3-ff8847b598ef', N'29c05683-eaee-4e10-91ee-7f1232a0f408', 2, N'A小组', N'23', CAST(0x0000A367017718A9 AS DateTime), CAST(0x0000A367017718A9 AS DateTime), N'icon-bell_start', NULL)
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'9164f509-ef6a-4134-806e-97f7e946584f', N'00000000-0000-0000-0000-000000000000', 10, N'临床科', N'1010', CAST(0x0000A46100EF739B AS DateTime), CAST(0x0000A46100EF739B AS DateTime), N'icon-color_wheel', N'81c304f2-642c-42f3-840f-7f8386261e3f')
INSERT [dbo].[RMS_Department] ([Id], [ParentId], [OrderNo], [Name], [Remarks], [CreateTime], [ModifyTime], [Icon], [YH_HospitalId]) VALUES (N'b537a743-1bb8-46ef-bae9-e470975551e9', N'712ffc65-eadf-460b-aed3-ff8847b598ef', 23, N'23', N'23', CAST(0x0000A46800EDDFC8 AS DateTime), CAST(0x0000A46800EDDFC8 AS DateTime), N'icon-bullet_sparkle', NULL)
/****** Object:  Table [dbo].[RMS_Buttons]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RMS_Buttons](
	[Id] [uniqueidentifier] NOT NULL,
	[ButtonName] [nvarchar](50) NULL,
	[OrderNo] [int] NULL,
	[Icon] [nvarchar](250) NULL,
	[Remarks] [nvarchar](150) NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
	[ValueName] [nvarchar](50) NULL,
	[FunctionName] [nvarchar](50) NULL,
 CONSTRAINT [PK_RMS_Buttons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'42e41d0f-c75e-4b9c-8a03-007252304924', N'导出', 4, N'icon-arrow_nw_ne_sw_se', N'导出Excel World等', CAST(0x0000A2F9000BE488 AS DateTime), CAST(0x0000A2F9000BE488 AS DateTime), N'ExportBtn', N'Export')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'cb27b325-cb67-4b19-9149-030f4fed5deb', N'修改', 1, N'icon-edit', N'编辑修改数据', CAST(0x0000A2F9000B1AF8 AS DateTime), CAST(0x0000A2F9000B1AF8 AS DateTime), N'EditBtn', N'EditInfo')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'0da111b2-3cb2-4e1a-a4a4-0625b9f26038', N'导入', 5, N'icon-arrow_in_longer', N'导入，导入Excel xml等操作按钮', CAST(0x0000A2F9000C3FF0 AS DateTime), CAST(0x0000A2F9000C3FF0 AS DateTime), N'ImportBtn', N'Import')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'90984d1f-fe51-4efd-9e2b-0dfa85f867a3', N'添加', 0, N'icon-add', N'添加数据', CAST(0x0000A2F90009E340 AS DateTime), CAST(0x0000A2F90009E340 AS DateTime), N'AddBtn', N'AddInfo')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'69cf2259-4856-4e5b-8ba2-2181774232d9', N'搜索', 3, N'icon-search', N'按条件搜索数据', CAST(0x0000A2F9000B9154 AS DateTime), CAST(0x0000A2F9000B9154 AS DateTime), N'DivSearh', N'Search')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'7f6272f8-1990-40e0-9ae1-2593e7a60f43', N'删除', 2, N'icon-delete', N'删除数据', CAST(0x0000A2F9000B42D0 AS DateTime), CAST(0x0000A2F9000B42D0 AS DateTime), N'DelBtn', N'Del')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'dc1d6f6a-269e-4f5d-a313-555d896fee7f', N'处理', 6, N'icon-tick', N'处理问题', CAST(0x0000A47A0112BD31 AS DateTime), CAST(0x0000A47A0112BD31 AS DateTime), N'HandleBtn', N'HandleOP')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'a6032fbc-4587-4feb-b7ab-b6d6722f6c19', N'查看', NULL, N'icon-zoom', NULL, CAST(0x0000A47C01162906 AS DateTime), CAST(0x0000A47C01162906 AS DateTime), N'DetailsBtn', N'ShowDetails')
INSERT [dbo].[RMS_Buttons] ([Id], [ButtonName], [OrderNo], [Icon], [Remarks], [CreateTime], [ModifyTime], [ValueName], [FunctionName]) VALUES (N'69daef95-a0a6-4208-8445-2d18be9ba9af', N'分配权限', 9, N'icon-user_edit', NULL, CAST(0x0000A5700104AD47 AS DateTime), CAST(0x0000A5700104AD47 AS DateTime), N'btnSetRole', N'SetRole')
/****** Object:  Table [dbo].[PushMessage]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushMessage](
	[Id] [uniqueidentifier] NOT NULL,
	[Tags] [nvarchar](50) NULL,
	[Alias] [nvarchar](50) NULL,
	[Batch] [nvarchar](50) NULL,
	[Title] [nvarchar](20) NULL,
	[Contents] [nvarchar](500) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Category] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
 CONSTRAINT [PK_PUSHMESSAGE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Tags'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'别名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Alias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'正文' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PushMessage', @level2type=N'COLUMN',@level2name=N'Category'
GO
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'facd6f06-cf47-4dc0-b4fe-04648293c626', NULL, N'865128ccad174f32a8f987f6bcd5be7d', NULL, N'吃饭', N'哈哈', CAST(0x0000A47901186957 AS DateTime), CAST(0x0000A47901186957 AS DateTime), NULL, N'人胗')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'94075029-6ac5-41ba-b933-157b52dd311e', NULL, N'865128ccad174f32a8f987f6bcd5be7d', NULL, N'sd', N'sd', CAST(0x0000A4790111FF32 AS DateTime), CAST(0x0000A4790111FF32 AS DateTime), NULL, NULL)
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'5698ce0a-0468-4610-8802-1ecf4de3d3d2', N'03', NULL, NULL, N'2323', N'23棒棒 ', CAST(0x0000A47900F57A2D AS DateTime), CAST(0x0000A47900F57A2D AS DateTime), NULL, N'天')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'6e516444-69ed-4d0e-9130-35c2b845574a', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'收到了吗', N'从前有一个死过人的旅馆。一个女人胆大，去那个旅馆12楼住了一夜。但是服务生不让她在半夜开窗户，也不让她打开电视机前的那个本子。到了半夜，女人十分气闷，她就打开了窗户，然后怎么睡就睡不着，就想打开电视机看看电视，结果怎么都打不开，然后看见桌子上面的本子，就翻开了，第一页写着：“一条血淋淋的大腿爬上了1楼。”女人又翻到下一页：“一条血淋淋的大腿爬上了2楼。”直到翻到第12页。一条血琳琳的大腿爬上了12楼！这时“咚咚咚”门外响起了敲门声。第二天，女人就死了。
第二回，有一个男人也是胆大，同上。一直翻到12页，一条血淋淋的大腿爬上了12楼！这时门外响起了敲门声，但男人把本子翻到了第11页一条血淋淋的大腿爬上了11楼。然后在11和12页来回翻，一直翻了1个多小时，终于，12页上面写着！一条血琳琳的大腿累死在12楼！
我不得不吐槽一句：这么大人了，还折腾鬼玩。何不逮住，留着啪啪啪？！！！', CAST(0x0000A47A0098EEBD AS DateTime), CAST(0x0000A47A0098EEBD AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'b63e32fe-5e0e-4115-b951-3dfea167fc0e', NULL, N'865128ccad174f32a8f987f6bcd5be7d', NULL, N'd s', N'sd wef erg ertg etg et etg ryh tuh ry tu tu u tu tu tu t', CAST(0x0000A479011A522D AS DateTime), CAST(0x0000A479011A522D AS DateTime), NULL, N'人胗')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'4795ea50-3c8f-406a-bc83-410393ad80a3', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'冰雪消融', N'
冰雪消融，春天到了，万物复苏，又到了动物交配的好时节。还没过年就已经立春了，这说明老天都希望今年还在单身的人们早~日~进入~春天', CAST(0x0000A47A00A10233 AS DateTime), CAST(0x0000A47A00A10233 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'8a7cc3cb-c7e3-4c75-9845-417130219bbe', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'哈呆枯', N'冰雪消融，春天到了，万物复苏，又到了动物交配的好时节。还没过年就已经立春了，这说明老天都希望今年还在单身的人们早~日~进入~春天', CAST(0x0000A47A009B333E AS DateTime), CAST(0x0000A47A009B333E AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'56ed7397-b9c9-49e4-8dc1-55e1053d2869', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'城', N'枯枯要', CAST(0x0000A47A009C6E54 AS DateTime), CAST(0x0000A47A009C6E54 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'8608a21a-c554-4349-b1e8-560e26104a8a', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'哈哈', N'冰雪消融，春天到了，万物复苏，又到了动物交配的好时节。还没过年就已经立春了，这说明老天都希望今年还在单身的人们早~日~进入~春天', CAST(0x0000A47A00994937 AS DateTime), CAST(0x0000A47A00994937 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'ba37c002-2897-4604-88b0-589b44f0fc0c', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'收到了吗', N'从前有一个死过人的旅馆。一个女人胆大，去那个旅馆12楼住了一夜。但是服务生不让她在半夜开窗户，也不让她打开电视机前的那个本子。到了半夜，女人十分气闷，她就打开了窗户，然后怎么睡就睡不着，就想打开电视机看看电视，结果怎么都打不开，然后看见桌子上面的本子，就翻开了，第一页写着：“一条血淋淋的大腿', CAST(0x0000A47A0098F399 AS DateTime), CAST(0x0000A47A0098F399 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'a2d4bc3d-4ed7-4194-994a-66d8662d6664', NULL, N'865128ccad174f32a8f987f6bcd5be7d', NULL, N'd s', N'sd wef erg ertg etg et etg ryh tuh ry tu tu u tu tu tu t', CAST(0x0000A479011A52CC AS DateTime), CAST(0x0000A479011A52CC AS DateTime), NULL, N'人胗')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'1d4a9153-3310-4cc2-bce9-6a222044c20a', N'03', NULL, NULL, N'23', N'23232', CAST(0x0000A47900F4FD1C AS DateTime), CAST(0x0000A47900F4FD1C AS DateTime), NULL, NULL)
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'1ff14586-3709-4982-8763-739a4bfc08b1', N'03', NULL, NULL, N'23', N'枯 ', CAST(0x0000A47900F4E662 AS DateTime), CAST(0x0000A47900F4E662 AS DateTime), NULL, N'枯')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'a38aedec-2a64-4329-9112-82a53b4cacf5', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'地 仍', N'仍的和', CAST(0x0000A47A009E4981 AS DateTime), CAST(0x0000A47A009E4981 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'b71099eb-d5c0-478b-93ff-ba931fc46621', NULL, N'865128ccad174f32a8f987f6bcd5be7d', NULL, N'sds', N'sdsdsd', CAST(0x0000A4790112D6C8 AS DateTime), CAST(0x0000A4790112D6C8 AS DateTime), NULL, NULL)
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'9e19030e-89c4-48d6-a26d-c86359120689', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'收到了吗', N'从前有一个死过人的旅馆。一个女人胆大，去那个旅馆12楼住了一夜。但是服务生不让她在半夜开窗户，也不让她打开电视机前的那个本子。到了半夜，女人十分气闷，她就打开了窗户，然后怎么睡就睡不着，就想打开电视机看看电视，结果怎么都打不开，然后看见桌子上面的本子，就翻开了，第一页写着：“一条血淋淋的大腿爬上了1楼。”女人又翻到下一页：“一条血淋淋的大腿爬上了2楼。”直到翻到第12页。一条血琳琳的大腿爬上了12楼！这时“咚咚咚”门外响起了敲门声。第二天，女人就死了。
第二回，有一个男人也是胆大，同上。一直翻到12页，一条血淋淋的大腿爬上了12楼！这时门外响起了敲门声，但男人把本子翻到了第11页一条血淋淋的大腿爬上了11楼。然后在11和12页来回翻，一直翻了1个多小时，终于，12页上面写着！一条血琳琳的大腿累死在12楼！
我不得不吐槽一句：这么大人了，还折腾鬼玩。何不逮住，留着啪啪啪？！！！', CAST(0x0000A47A0098E6CE AS DateTime), CAST(0x0000A47A0098E6CE AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'bc3de92f-b1f6-4d11-8cc8-e7e1413bc9e5', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'冰雪消融', N'冰雪消融，春天到了，万物复苏，又到了动物交配的好时节。还没过年就已经立春了，这说明老天都希望今年还在单身的人们早~日~进入~春天', CAST(0x0000A47A009BBAD5 AS DateTime), CAST(0x0000A47A009BBAD5 AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'6b3fc7ff-f041-40a9-b510-f83f76510891', NULL, N'b2082ef88d194165b17b0ae8f30c5d74', NULL, N'110', N'11100', CAST(0x0000A47901129AE0 AS DateTime), CAST(0x0000A47901129AE0 AS DateTime), NULL, N'城')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'779facf5-534c-4a70-b8ad-fa4518cc6bec', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'000000', N'00000', CAST(0x0000A47A00A8E60F AS DateTime), CAST(0x0000A47A00A8E6DD AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'a58415d1-0af0-4863-b88c-fcf648b585a7', NULL, N'0c3c608912724e42979901d50003cefe', NULL, N'收到了吗', N'从前有一个死过人的旅馆。一个女人胆大，去那个旅馆12楼住了一夜。但是服务生不让她在半夜开窗户，也不让她打开电视机前的那个本子。到了半夜，女人十分气闷，她就打开了窗户，然后怎么睡就睡不着，就想打开电视机看看电视，结果怎么都打不开，然后看见桌子上面的本子，就翻开了，第一页写着：“一条血淋淋的大腿', CAST(0x0000A47A0098F79B AS DateTime), CAST(0x0000A47A0098F79B AS DateTime), NULL, N'admin')
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'60ca1226-c332-4e0f-a9c3-ff212097928d', N'03', NULL, NULL, N'235452230', N'515121', CAST(0x0000A47900F50F8D AS DateTime), CAST(0x0000A47900F50F8D AS DateTime), NULL, NULL)
INSERT [dbo].[PushMessage] ([Id], [Tags], [Alias], [Batch], [Title], [Contents], [AddTime], [UpdateTime], [Category], [UserName]) VALUES (N'60ca1226-c332-4e0f-a9c3-ff212097928e', N'03', N'23', N'23', N'221', NULL, NULL, NULL, NULL, N'')
/****** Object:  StoredProcedure [dbo].[proc_DelForSetDelete]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_DelForSetDelete]
	(@tableName NVARCHAR(200),      ----要显示的表或多个表的连接
	@Idfied NVARCHAR(200),      ----id或列名称
	@IdSet NVARCHAR(1000)      ----id集，","号隔开如："3","4"
	)
AS
Declare @sql NVARCHAR(1000)    ----存放动态生成的SQL语句
BEGIN
SET @sql = ' update  '+@tableName +' set isDeleted=1 where '+ @Idfied+' in ('+@IdSet+')'
exec(@sql) 
select @@rowcount --执行完后保存受影响的行数至变量

end
GO
/****** Object:  StoredProcedure [dbo].[proc_DataPagingOrderByLL]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DataPagingOrderByLL]
(
@tableName NVARCHAR(200),      ----要显示的表或多个表的连接
@fieldNames NVARCHAR(200), ----要显示的字段列表
@pageSize INT = 10,            ----每页显示的记录个数
@page INT = 10,                ----要显示那一页的记录
@pageCount INT = 1 output,     ----查询结果分页后的总页数
@counts INT = 1 output,        ----查询到的总记录数

@condition NVARCHAR(200)= null,----查询条件,不需WHERE
@keyID NVARCHAR(100),          ----主表的主键
@distinct BIT = 0,              ----是否添加查询字段的 DISTINCT 默认0不添加/1添加


@Longitude  NVARCHAR(100),             ----经度
@Latitude NVARCHAR(100)                -----纬度
)
AS

SET NOCOUNT ON
Declare @SELECT NVARCHAR(1000)    ----存放动态生成的SQL语句
Declare @strCounts NVARCHAR(1000) ----存放取得查询结果总数的查询语句
Declare @strID  NVARCHAR(1000)    ----存放取得查询开头或结尾ID的查询语句


Declare @distSelect NVARCHAR(50)  ----对含有DISTINCT的查询进行SQL构造
Declare @distCounts NVARCHAR(50)  ----对含有DISTINCT的总数查询进行SQL构造

DECLARE @SortfieldA NVARCHAR(50)  ----对含有是否还有排序字段时的排序方式组合A
DECLARE @SortfieldB NVARCHAR(50)  ----对含有是否还有排序字段时的排序方式组合B


IF @distinct = 0
	BEGIN
		SET @distSelect = 'SELECT '
		SET @distCounts = ' COUNT(*)'
	END
ELSE
	BEGIN
		SET @distSelect = 'SELECT distinct '
		SET @distCounts = ' COUNT(DISTINCT '+@keyID+')'
	END


	BEGIN
	--SET @fieldNames =@fieldNames+',dbo.fnGetDistance(' + @Latitude + ',' + @Longitude + ',[Latitude],[Longitude]) as distance '
		SET @SortfieldB=' order by dbo.fnGetDistance(' + @Latitude + ',' + @Longitude + ',[Latitude],[Longitude]) asc '
		SET @SortfieldA=' order by dbo.fnGetDistance(' + @Latitude + ',' + @Longitude + ',[Latitude],[Longitude]) asc '
	END


--------生成查询语句--------
--此处@strCounts为取得查询结果数量的语句
IF @condition is null or @condition=''     --没有设置显示条件
	BEGIN
		SET @SELECT =  @fieldNames + ' FROM ' + @tableName
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName
		SET @strID = ' FROM ' + @tableName
	END
ELSE
	BEGIN
		SET @SELECT = + @fieldNames + 'FROM ' + @tableName + ' WHERE  ' + @condition
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName + ' WHERE ' + @condition
		SET @strID = ' FROM ' + @tableName + ' WHERE  ' + @condition
	END

----取得查询结果总数量-----
exec sp_executesql @strCounts,N'@counts INT out ',@counts out
DECLARE @tmpCounts INT

IF @counts = 0
    SET @tmpCounts = 1
ELSE
    SET @tmpCounts = @counts

    --取得分页总数
    SET @pageCount=(@tmpCounts+@pageSize-1)/@pageSize

    --/**当前页大于总页数 取最后一页**/
    IF @page>@pageCount
        SET @page=@pageCount

    --/*-----数据分页2分处理-------*/
    DECLARE @pageIndex INT --总数/页大小
    DECLARE @lastcount INT --总数%页大小 

    SET @pageIndex = @tmpCounts/@pageSize
    SET @lastcount = @tmpCounts%@pageSize
    IF @lastcount > 0
        SET @pageIndex = @pageIndex + 1
    ELSE
        SET @lastcount = @pageSize

    --显示分页
    IF @condition is null or @condition=''     --没有设置显示条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
            BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldB +')' + @SortfieldB 
            END
        ELSE
            BEGIN
            SET @page = @pageIndex-@page+1 --后半部分数据处理
                IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + @SortfieldA+') AS TempTB '+@SortfieldB
                ELSE                
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldA+')' + @SortfieldA+') AS TempTB '+@SortfieldB
            END
    END

    ELSE --有查询条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
        BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames +' FROM  '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + ' Where ' + @condition + @SortfieldB+')'+' AND ' + @condition + @SortfieldB                 
        END
        ELSE
        BEGIN 
            SET @page = @pageIndex-@page+1 --后半部分数据处理
            IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE  '+ @condition +@SortfieldA+') AS TempTB '+@SortfieldB
            ELSE
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' ' + @keyID +' FROM '+@tableName +' WHERE  '+ @condition +@SortfieldA+')' +' AND '+ @condition +@SortfieldA+') AS TempTB ' + @SortfieldB 
        END    
    END

------返回查询结果-----
exec sp_executesql @strCounts
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_DataPagingList]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DataPagingList]
(
@tableName NVARCHAR(200),      ----要显示的表或多个表的连接
@fieldNames NVARCHAR(200), ----要显示的字段列表
@pageSize INT = 10,            ----每页显示的记录个数
@page INT = 10,                ----要显示那一页的记录
@pageCount INT = 1 output,     ----查询结果分页后的总页数
@counts INT = 1 output,        ----查询到的总记录数
@fieldSort NVARCHAR(200)= null,----排序字段列表或条件
@condition NVARCHAR(200)= null,----查询条件,不需WHERE
@keyID NVARCHAR(100),          ----主表的主键
@distinct BIT = 0              ----是否添加查询字段的 DISTINCT 默认0不添加/1添加
)
AS

SET NOCOUNT ON
Declare @SELECT NVARCHAR(1000)    ----存放动态生成的SQL语句
Declare @strCounts NVARCHAR(1000) ----存放取得查询结果总数的查询语句
Declare @strID  NVARCHAR(1000)    ----存放取得查询开头或结尾ID的查询语句


Declare @distSelect NVARCHAR(50)  ----对含有DISTINCT的查询进行SQL构造
Declare @distCounts NVARCHAR(50)  ----对含有DISTINCT的总数查询进行SQL构造

DECLARE @SortfieldA NVARCHAR(50)  ----对含有是否还有排序字段时的排序方式组合A
DECLARE @SortfieldB NVARCHAR(50)  ----对含有是否还有排序字段时的排序方式组合B


IF @distinct = 0
	BEGIN
		SET @distSelect = 'SELECT '
		SET @distCounts = ' COUNT(*)'
	END
ELSE
	BEGIN
		SET @distSelect = 'SELECT distinct '
		SET @distCounts = ' COUNT(DISTINCT '+@keyID+')'
	END



IF @fieldSort IS NOT NULL AND @fieldSort<>'' --排序字段不为空时
	BEGIN
		SET @SortfieldB=' order by '+ @fieldSort +' '
		SET @SortfieldA=' order by '+ @fieldSort +' ' 
	END
ELSE
	BEGIN
		SET @SortfieldB=''
		SET @SortfieldA=''
	END

--------生成查询语句--------
--此处@strCounts为取得查询结果数量的语句
IF @condition is null or @condition=''     --没有设置显示条件
	BEGIN
		SET @SELECT =  @fieldNames + ' FROM ' + @tableName
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName
		SET @strID = ' FROM ' + @tableName
	END
ELSE
	BEGIN
		SET @SELECT = + @fieldNames + 'FROM ' + @tableName + ' WHERE  ' + @condition
		SET @strCounts = @distSelect+' @counts='+@distCounts+' FROM '+@tableName + ' WHERE ' + @condition
		SET @strID = ' FROM ' + @tableName + ' WHERE  ' + @condition
	END

----取得查询结果总数量-----
exec sp_executesql @strCounts,N'@counts INT out ',@counts out
DECLARE @tmpCounts INT

IF @counts = 0
    SET @tmpCounts = 1
ELSE
    SET @tmpCounts = @counts

    --取得分页总数
    SET @pageCount=(@tmpCounts+@pageSize-1)/@pageSize

    --/**当前页大于总页数 取最后一页**/
    IF @page>@pageCount
        SET @page=@pageCount

    --/*-----数据分页2分处理-------*/
    DECLARE @pageIndex INT --总数/页大小
    DECLARE @lastcount INT --总数%页大小 

    SET @pageIndex = @tmpCounts/@pageSize
    SET @lastcount = @tmpCounts%@pageSize
    IF @lastcount > 0
        SET @pageIndex = @pageIndex + 1
    ELSE
        SET @lastcount = @pageSize

    --显示分页
    IF @condition is null or @condition=''     --没有设置显示条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
            BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldB +')' + @SortfieldB 
            END
        ELSE
            BEGIN
            SET @page = @pageIndex-@page+1 --后半部分数据处理
                IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + @SortfieldA+') AS TempTB '+@SortfieldB
                ELSE                
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + @SortfieldA+')' + @SortfieldA+') AS TempTB '+@SortfieldB
            END
    END

    ELSE --有查询条件
    BEGIN
        IF @pageIndex<2 or @page<=@pageIndex / 2 + @pageIndex % 2   --前半部分数据处理
        BEGIN 
                SET @strCounts=@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames +' FROM  '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-1) as Varchar(20)) +' '+ @keyID +' FROM '+@tableName + ' Where ' + @condition + @SortfieldB+')'+' AND ' + @condition + @SortfieldB                 
        END
        ELSE
        BEGIN 
            SET @page = @pageIndex-@page+1 --后半部分数据处理
            IF @page <= 1 --最后一页数据显示
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@lastcount as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE  '+ @condition +@SortfieldA+') AS TempTB '+@SortfieldB
            ELSE
                    SET @strCounts=@distSelect+@fieldNames+'  FROM ('+@distSelect+' TOP '+ CAST(@pageSize as VARCHAR(4))+' '+ @fieldNames+' FROM '+@tableName + ' WHERE '+@keyID+' not in('+ @distSelect+' TOP '+ CAST(@pageSize*(@page-2)+@lastcount as Varchar(20)) +' ' + @keyID +' FROM '+@tableName +' WHERE  '+ @condition +@SortfieldA+')' +' AND '+ @condition +@SortfieldA+') AS TempTB ' + @SortfieldB 
        END    
    END

------返回查询结果-----
exec sp_executesql @strCounts
SET NOCOUNT OFF
GO
/****** Object:  StoredProcedure [dbo].[proc_CountOne]    Script Date: 12/29/2015 17:32:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		卢迪
-- 
-- Description:	 统计，给某一字段加1，如点击量，点赞数，呼叫量
-- =============================================
CREATE PROCEDURE [dbo].[proc_CountOne]
	(@tableName NVARCHAR(100),      ----表名
	@Countfied NVARCHAR(100),      ----要统计的列名称
	@Idfied  NVARCHAR(100) ,     ----id列名
	@Id NVARCHAR(100)      ----id
	)
AS
Declare @sql NVARCHAR(1000)    ----存放动态生成的SQL语句
BEGIN
SET @sql = ' update  '+@tableName +' set '+@Countfied+'='+@Countfied+'+1 where '+ @Idfied+'='''+@Id+''''
exec(@sql) 
select @@rowcount --执行完后保存受影响的行数至变量

end
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetDistance]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--计算地球上两个坐标点（经度，纬度）之间距离sql函数
--作者：lordbaby
--整理：www.aspbc.com 
create FUNCTION [dbo].[fnGetDistance](@LatBegin REAL, @LngBegin REAL, @LatEnd REAL, @LngEnd REAL) RETURNS FLOAT
  AS
BEGIN
  --距离(千米)
  DECLARE @Distance REAL
  DECLARE @EARTH_RADIUS REAL
  SET @EARTH_RADIUS = 6378.137  
  DECLARE @RadLatBegin REAL,@RadLatEnd REAL,@RadLatDiff REAL,@RadLngDiff REAL
  SET @RadLatBegin = @LatBegin *PI()/180.0  
  SET @RadLatEnd = @LatEnd *PI()/180.0  
  SET @RadLatDiff = @RadLatBegin - @RadLatEnd  
  SET @RadLngDiff = @LngBegin *PI()/180.0 - @LngEnd *PI()/180.0   
  SET @Distance = 2 *ASIN(SQRT(POWER(SIN(@RadLatDiff/2), 2)+COS(@RadLatBegin)*COS(@RadLatEnd)*POWER(SIN(@RadLngDiff/2), 2)))
  SET @Distance = @Distance * @EARTH_RADIUS  
  --SET @Distance = Round(@Distance * 10000) / 10000  
  RETURN @Distance
END
GO
/****** Object:  Table [dbo].[File_tb]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_tb](
	[Id] [uniqueidentifier] NOT NULL,
	[ToId] [uniqueidentifier] NULL,
	[ShowName] [nvarchar](50) NULL,
	[FileName] [nvarchar](50) NULL,
	[SourceTable] [nvarchar](20) NULL,
	[Route] [nvarchar](150) NULL,
	[FullRoute] [nvarchar](200) NULL,
	[Suffix] [nvarchar](20) NULL,
	[FileType] [nvarchar](20) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_FILE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹对象Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'ToId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'ShowName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'SourceTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'Route'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全文件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'FullRoute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后缀名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'Suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'FileType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_tb', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'25af9a34-9e93-42c0-a726-0012956877bc', N'25af9a34-9e93-42c0-a726-0012956877bc', N'QQ图片20151129103535.jpg', N'20151206124000_668.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206124000_668.jpg', N'.jpg', N'图片', CAST(0x0000A566000AFCDE AS DateTime), CAST(0x0000A566000AFCDE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'713627cf-d0e5-4dd8-8a0c-0030af835a5a', N'713627cf-d0e5-4dd8-8a0c-0030af835a5a', N'ic_launcher-.png', N'20150407021306_143.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407021306_143.png', N'.png', N'图片', CAST(0x0000A47300EA5083 AS DateTime), CAST(0x0000A47300EA5083 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dbcfd166-5fdc-44a8-9879-017aaf0829ef', N'dbcfd166-5fdc-44a8-9879-017aaf0829ef', N'20150326040108_223.jpg', N'20150402032327_876.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150402032327_876.jpg', N'.jpg', N'图片', CAST(0x0000A46E00FDA2FA AS DateTime), CAST(0x0000A46E00FDA2FA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'21447502-1307-434c-9dc4-01fbc97973eb', N'21447502-1307-434c-9dc4-01fbc97973eb', N'QQ图片20151129103535.jpg', N'20151205105121_584.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205105121_584.jpg', N'.jpg', N'图片', CAST(0x0000A5650178A7A4 AS DateTime), CAST(0x0000A5650178A7A4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c3fed246-acce-4d1b-bd36-031755921f77', N'c3fed246-acce-4d1b-bd36-031755921f77', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150401025156_504.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401025156_504.jpg', N'.jpg', N'图片', CAST(0x0000A46D00F4FAB9 AS DateTime), CAST(0x0000A46D00F4FAB9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'daab1894-c0ad-4b79-bd8d-031b92d4c626', N'daab1894-c0ad-4b79-bd8d-031b92d4c626', N'ic_launcher.png', N'20150407021405_728.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407021405_728.png', N'.png', N'图片', CAST(0x0000A47300EA9556 AS DateTime), CAST(0x0000A47300EA9556 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bedfd943-8f70-43c4-b318-03d20206b3fa', N'bedfd943-8f70-43c4-b318-03d20206b3fa', N'200611013556465.jpg', N'20150427045116_885.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150427045116_885.jpg', N'.jpg', N'图片', CAST(0x0000A4870115C10C AS DateTime), CAST(0x0000A4870115C10C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a5835da6-fe0e-40d2-9575-0468b1e398ee', N'a5835da6-fe0e-40d2-9575-0468b1e398ee', N'HospitalApp.apk', N'20150414053205_294.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053205_294.apk', N'.apk', N'文件', CAST(0x0000A47A0120F70E AS DateTime), CAST(0x0000A47A0120F70E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'06383066-80a4-49c6-a0de-048b877783d4', N'06383066-80a4-49c6-a0de-048b877783d4', N'20150828034738171.jpg', N'20151222030939_765.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151222030939_765.jpg', N'.jpg', N'图片', CAST(0x0000A57600F9D828 AS DateTime), CAST(0x0000A57600F9D828 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cb18e166-91c0-41d6-8ce2-04bd3371821d', N'cb18e166-91c0-41d6-8ce2-04bd3371821d', N'feng2.jpg', N'20150410030905_184.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410030905_184.jpg', N'.jpg', N'图片', CAST(0x0000A47600F9B0E2 AS DateTime), CAST(0x0000A47600F9B0E2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3699988c-4195-4775-9495-055796b1dcbb', N'3699988c-4195-4775-9495-055796b1dcbb', N'ic_launcher.png', N'20150408030153_612.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030153_612.png', N'.png', N'图片', CAST(0x0000A47400F7B5DC AS DateTime), CAST(0x0000A47400F7B5DC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e2f45c36-b40c-4856-8b33-05e6cda31bdf', N'e2f45c36-b40c-4856-8b33-05e6cda31bdf', N'2005102417172219.jpg', N'20150424043552_139.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424043552_139.jpg', N'.jpg', N'图片', CAST(0x0000A484011186F2 AS DateTime), CAST(0x0000A484011186F2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3419b5fd-40c6-4997-938d-06e4ae1696c8', N'd37f2b1e-06af-441d-9882-65498a6ff0cb', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150327092748_874.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327092748_874.jpg', N'.jpg', N'图片', CAST(0x0000A468009BF3FF AS DateTime), CAST(0x0000A468009BF3FF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'861f63d7-b85a-402a-ba8b-076d34749a28', N'861f63d7-b85a-402a-ba8b-076d34749a28', N'ppo.png', N'20150410051849_928.png', N'Advertising', N'/Upload/', N'/Upload/20150410051849_928.png', N'.png', N'图片', CAST(0x0000A476011D52D7 AS DateTime), CAST(0x0000A476011D52D7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'508d9884-c59c-4cf2-a5cd-078f34d5a251', N'508d9884-c59c-4cf2-a5cd-078f34d5a251', N'ic_launcher-.png', N'20150410022155_129.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150410022155_129.png', N'.png', N'图片', CAST(0x0000A47600ECBC57 AS DateTime), CAST(0x0000A47600ECBC58 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'aee6495f-dc57-4c0e-ac1b-07ae7abf07f9', N'627550c2-8926-4291-9197-325c11ee37af', N'1.jpg', N'20150327094956_461.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327094956_461.jpg', N'.jpg', N'图片', CAST(0x0000A46800A20801 AS DateTime), CAST(0x0000A46800A20801 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bc62aabd-983e-4e9a-bc23-08433a4780ce', N'bc62aabd-983e-4e9a-bc23-08433a4780ce', N'QQ图片20151129103535.jpg', N'20151206124243_183.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206124243_183.jpg', N'.jpg', N'图片', CAST(0x0000A566000BBBE1 AS DateTime), CAST(0x0000A566000BBBE1 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5fa27a1d-a12a-44e1-8173-08efa0c88b3e', N'5fa27a1d-a12a-44e1-8173-08efa0c88b3e', N'doctor6.jpg', N'20150410024935_920.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024935_920.jpg', N'.jpg', N'图片', CAST(0x0000A47600F454FA AS DateTime), CAST(0x0000A47600F454FA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4ee66ab0-d8cc-42da-8a92-08f64e30f3cd', N'4ee66ab0-d8cc-42da-8a92-08f64e30f3cd', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205115842_697.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115842_697.png', N'.png', N'图片', CAST(0x0000A565018B26A9 AS DateTime), CAST(0x0000A565018B26A9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'78083824-ad0a-49c3-8aee-09523c3ddfd8', N'78083824-ad0a-49c3-8aee-09523c3ddfd8', N'u=2882797951,3430521360&fm=23&gp=0.jpg', N'20150327094218_587.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327094218_587.jpg', N'.jpg', N'图片', CAST(0x0000A468009FEF19 AS DateTime), CAST(0x0000A468009FEF19 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fc6931e7-8a1f-4917-b48d-09f3953e392b', N'fc6931e7-8a1f-4917-b48d-09f3953e392b', N'advertising_default_1.jpg', N'20150410041058_178.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410041058_178.jpg', N'.jpg', N'图片', CAST(0x0000A476010AAFEF AS DateTime), CAST(0x0000A476010AAFEF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'86b308a4-5cc4-4c1a-b57d-0aa87b29ee95', N'86b308a4-5cc4-4c1a-b57d-0aa87b29ee95', N'QQ图片20151129103535.jpg', N'20151205103616_532.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151205103616_532.jpg', N'.jpg', N'图片', CAST(0x0000A56501748324 AS DateTime), CAST(0x0000A56501748324 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a6380d18-0b08-4b5f-bf88-0b0c9f80edb4', N'a6380d18-0b08-4b5f-bf88-0b0c9f80edb4', N'doctor1.jpg', N'20150414090425_865.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090425_865.jpg', N'.jpg', N'图片', CAST(0x0000A47A00958764 AS DateTime), CAST(0x0000A47A00958764 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b96f3a65-ff7f-4546-8bf2-0ba3ee9d5350', N'b96f3a65-ff7f-4546-8bf2-0ba3ee9d5350', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205111729_472.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111729_472.jpg', N'.jpg', N'图片', CAST(0x0000A565017FD591 AS DateTime), CAST(0x0000A565017FD591 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1c60e72b-124e-4935-8074-0d8d8b8d3ce2', N'1c60e72b-124e-4935-8074-0d8d8b8d3ce2', N'css.css', N'20151221030133_601.css', N'Sys_AppVerSion', N'/Upload/file/', N'/Upload/file/20151221030133_601.css', N'.css', N'文件', CAST(0x0000A57500F79F18 AS DateTime), CAST(0x0000A57500F79F18 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b1ea6e45-04fe-4643-b1cb-0f0803046c1c', N'b1ea6e45-04fe-4643-b1cb-0f0803046c1c', N'QQ图片20151129103535.jpg', N'20151210121048_492.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210121048_492.jpg', N'.jpg', N'图片', CAST(0x0000A56A0002F847 AS DateTime), CAST(0x0000A56A0002F847 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e104bcb3-f2e3-49fa-984e-101e59e02799', N'e104bcb3-f2e3-49fa-984e-101e59e02799', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209095120_188.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209095120_188.jpg', N'.jpg', N'图片', CAST(0x0000A56901682B36 AS DateTime), CAST(0x0000A56901682B36 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'55938343-f1ea-4188-8c9c-11d7090644b4', N'55938343-f1ea-4188-8c9c-11d7090644b4', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205103701_124.png', N'TS_Shop', N'/Upload/', N'/Upload/20151205103701_124.png', N'.png', N'图片', CAST(0x0000A5650174B7FA AS DateTime), CAST(0x0000A5650174B7FA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ded0a4d9-e4a8-4019-8a4d-123a226486c0', N'ded0a4d9-e4a8-4019-8a4d-123a226486c0', N'HospitalApp.apk', N'20150415031110_215.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031110_215.apk', N'.apk', N'文件', CAST(0x0000A47B00FA431F AS DateTime), CAST(0x0000A47B00FA431F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e1bfc402-6d7b-4440-8cab-12703fdf856c', N'e1bfc402-6d7b-4440-8cab-12703fdf856c', N'css2.css', N'20151221033459_286.css', N'Sys_AppVerSion', N'/Upload/file/', N'/Upload/file/20151221033459_286.css', N'.css', N'文件', CAST(0x0000A5750100CDA2 AS DateTime), CAST(0x0000A5750100CDA2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd355d654-fcb2-46e8-b90f-12e4b9d944f6', N'd355d654-fcb2-46e8-b90f-12e4b9d944f6', N'feng6.jpg', N'20150410031016_863.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410031016_863.jpg', N'.jpg', N'图片', CAST(0x0000A47600FA0352 AS DateTime), CAST(0x0000A47600FA0352 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fef2e780-8cc2-44f7-b0d8-141b2a7a95ed', N'fef2e780-8cc2-44f7-b0d8-141b2a7a95ed', N'u=2483562809,3309193823&fm=23&gp=0.jpg', N'20150327102140_488.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327102140_488.jpg', N'.jpg', N'图片', CAST(0x0000A46800AABF7D AS DateTime), CAST(0x0000A46800AABF7D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'39f7e4fd-c5ae-4907-8e6b-15154305ed69', N'39f7e4fd-c5ae-4907-8e6b-15154305ed69', N'QQ截图20150402151627.png', N'20150407050708_688.png', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050708_688.png', N'.png', N'图片', CAST(0x0000A473011A1CB5 AS DateTime), CAST(0x0000A473011A1CB5 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bb1e2f13-2455-48e0-aa48-15934ffde1ec', N'bb1e2f13-2455-48e0-aa48-15934ffde1ec', N'QQ图片20151129103535.jpg', N'20151206120341_434.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120341_434.jpg', N'.jpg', N'图片', CAST(0x0000A5660001040B AS DateTime), CAST(0x0000A5660001040B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f655499f-bee8-40ed-bf35-159776a17fc4', N'f655499f-bee8-40ed-bf35-159776a17fc4', N'200613232543942.gif', N'20150427024528_662.gif', N'YH_Information', N'/Upload/', N'/Upload/20150427024528_662.gif', N'.gif', N'图片', CAST(0x0000A48700F3338A AS DateTime), CAST(0x0000A48700F3338A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'74371e7f-c153-475c-9897-159a2b5b74f1', N'74371e7f-c153-475c-9897-159a2b5b74f1', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151210121515_620.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210121515_620.jpg', N'.jpg', N'图片', CAST(0x0000A56A00043135 AS DateTime), CAST(0x0000A56A00043135 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'da5b7d02-c1c5-4349-89c4-160dc80f60c9', N'da5b7d02-c1c5-4349-89c4-160dc80f60c9', N'2.JPG', N'20150427040630_748.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427040630_748.JPG', N'.JPG', N'图片', CAST(0x0000A4870109757F AS DateTime), CAST(0x0000A4870109757F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'401f2235-3421-4476-b679-1685fcd42496', N'401f2235-3421-4476-b679-1685fcd42496', N'HospitalApp.apk', N'20150414053155_117.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053155_117.apk', N'.apk', N'文件', CAST(0x0000A47A0120EB35 AS DateTime), CAST(0x0000A47A0120EB35 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7fd6738f-c608-4592-8615-19db19901640', N'7fd6738f-c608-4592-8615-19db19901640', N'dd.jpg', N'20150327095850_656.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327095850_656.jpg', N'.jpg', N'图片', CAST(0x0000A46800A47A19 AS DateTime), CAST(0x0000A46800A47A19 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c3f64253-3cbb-4034-a119-1a9017b0510f', N'c3f64253-3cbb-4034-a119-1a9017b0510f', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151209095126_846.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209095126_846.jpg', N'.jpg', N'图片', CAST(0x0000A56901683335 AS DateTime), CAST(0x0000A56901683335 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'782122f5-acc4-4cd7-990d-1b24bcd5a342', N'782122f5-acc4-4cd7-990d-1b24bcd5a342', N'2009710221438669.jpg', N'20150424052812_434.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052812_434.jpg', N'.jpg', N'图片', CAST(0x0000A484011FE65E AS DateTime), CAST(0x0000A484011FE65E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ec41f8da-b0c7-45e0-acf4-1c4928059aab', N'ec41f8da-b0c7-45e0-acf4-1c4928059aab', N'HospitalApp.apk', N'20150413090436_977.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150413090436_977.apk', N'.apk', N'文件', CAST(0x0000A4790095944E AS DateTime), CAST(0x0000A4790095944E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8f3f9ad7-3084-44f2-a9fa-1c6344f26490', N'8f3f9ad7-3084-44f2-a9fa-1c6344f26490', N'uuk.png', N'20150410050931_741.png', N'Advertising', N'/Upload/', N'/Upload/20150410050931_741.png', N'.png', N'图片', CAST(0x0000A476011AC3F3 AS DateTime), CAST(0x0000A476011AC3F3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0eb36242-1f95-4828-be5d-1cac609452c5', N'0eb36242-1f95-4828-be5d-1cac609452c5', N'uui.png', N'20150410051319_614.png', N'Advertising', N'/Upload/', N'/Upload/20150410051319_614.png', N'.png', N'图片', CAST(0x0000A476011BCF52 AS DateTime), CAST(0x0000A476011BCF52 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'445bde88-128e-4e37-9352-1d946c52eb3f', N'445bde88-128e-4e37-9352-1d946c52eb3f', N'iiy.png', N'20150410054212_846.png', N'Advertising', N'/Upload/', N'/Upload/20150410054212_846.png', N'.png', N'图片', CAST(0x0000A4760123BEF0 AS DateTime), CAST(0x0000A4760123BEF0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'aa1ea01f-a2e6-4f72-9564-1ea8fa1ad24d', N'34cdd662-eaec-4d57-b2bb-eddb06efcdba', N'ic_launcher1.png', N'20150407021721_138.png', N'YH_Information', N'/Upload/', N'/Upload/20150407021721_138.png', N'.png', N'图片', CAST(0x0000A47300EB7A78 AS DateTime), CAST(0x0000A47300EB7A78 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f9712f0a-3603-4f74-8204-1f03e44ab868', N'f9712f0a-3603-4f74-8204-1f03e44ab868', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150415031601_987.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031601_987.apk', N'.apk', N'文件', CAST(0x0000A47B00FB97C7 AS DateTime), CAST(0x0000A47B00FB97C7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0aaf8515-fa09-440b-b9f5-1f546674c9c4', N'0aaf8515-fa09-440b-b9f5-1f546674c9c4', N'2006117105934402.jpg', N'20150424051847_514.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051847_514.jpg', N'.jpg', N'图片', CAST(0x0000A484011D4FE3 AS DateTime), CAST(0x0000A484011D4FE3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9f60befa-d7f5-4854-8634-1f73726ed957', N'9f60befa-d7f5-4854-8634-1f73726ed957', N'HospitalApp.apk', N'20150414053732_316.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053732_316.apk', N'.apk', N'文件', CAST(0x0000A47A012276E6 AS DateTime), CAST(0x0000A47A012276E6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a84545de-bd8f-4819-9064-203a42c19015', N'a84545de-bd8f-4819-9064-203a42c19015', N'QQ图片20151129103535.jpg', N'20151130112130_783.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151130112130_783.jpg', N'.jpg', N'图片', CAST(0x0000A5600180EEF9 AS DateTime), CAST(0x0000A5600180EEF9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'de65bbbd-e982-485a-a65d-2118cd21ec7b', N'de65bbbd-e982-485a-a65d-2118cd21ec7b', N'新建文本文档 (3).txt', N'20151221032343_427.txt', N'Sys_AppVerSion', N'/Upload/file/', N'/Upload/file/20151221032343_427.txt', N'.txt', N'文件', CAST(0x0000A57500FDB4E5 AS DateTime), CAST(0x0000A57500FDB4E5 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'daf12b67-1e13-4904-90b8-215fb497341c', N'daf12b67-1e13-4904-90b8-215fb497341c', N'ic_launcher.png', N'20150410031922_739.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150410031922_739.png', N'.png', N'图片', CAST(0x0000A47600FC8397 AS DateTime), CAST(0x0000A47600FC8397 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd39cb426-840d-4fc6-8c81-236c6af46097', N'd39cb426-840d-4fc6-8c81-236c6af46097', N'inside.jpg', N'20150414085513_613.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150414085513_613.jpg', N'.jpg', N'图片', CAST(0x0000A47A0093008A AS DateTime), CAST(0x0000A47A0093008A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'81cf1c13-26bc-44fb-a6d7-23754f227fc9', N'81cf1c13-26bc-44fb-a6d7-23754f227fc9', N'ic_launcher.png', N'20150408030117_453.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030117_453.png', N'.png', N'图片', CAST(0x0000A47400F78C1F AS DateTime), CAST(0x0000A47400F78C1F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'020824c6-5e3d-4536-890b-23a40e29a31f', N'020824c6-5e3d-4536-890b-23a40e29a31f', N'HospitalApp.apk', N'20150415051424_632.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415051424_632.apk', N'.apk', N'文件', CAST(0x0000A47B011C1C18 AS DateTime), CAST(0x0000A47B011C1C18 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1a7a0715-8fdb-47a0-9c49-23e640a7d57e', N'1a7a0715-8fdb-47a0-9c49-23e640a7d57e', N'QQ图片20151210203541.jpg', N'20151210101541_930.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210101541_930.jpg', N'.jpg', N'图片', CAST(0x0000A56A016EDB7C AS DateTime), CAST(0x0000A56A016EDB7C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8275536e-32a4-444f-9c3d-241acad07fac', N'8275536e-32a4-444f-9c3d-241acad07fac', N'201010985117394.jpg', N'20150427030251_166.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427030251_166.jpg', N'.jpg', N'图片', CAST(0x0000A48700F7FA96 AS DateTime), CAST(0x0000A48700F7FA96 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9073d4cc-60e4-4aef-8e72-2786790eb063', N'9073d4cc-60e4-4aef-8e72-2786790eb063', N'201092795722320.jpg', N'20150424051120_536.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051120_536.jpg', N'.jpg', N'图片', CAST(0x0000A484011B43C9 AS DateTime), CAST(0x0000A484011B43C9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f2405b60-48f1-4ff4-9a9e-290a82962f81', N'f2405b60-48f1-4ff4-9a9e-290a82962f81', N'hos1.jpg', N'20150410030958_177.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410030958_177.jpg', N'.jpg', N'图片', CAST(0x0000A47600F9EF16 AS DateTime), CAST(0x0000A47600F9EF16 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'89bf1382-e1cb-41fe-9d91-2bc5b1743f83', N'89bf1382-e1cb-41fe-9d91-2bc5b1743f83', N'200611013556465.jpg', N'20150424052612_935.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052612_935.jpg', N'.jpg', N'图片', CAST(0x0000A484011F5936 AS DateTime), CAST(0x0000A484011F5936 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b420233b-4a40-4795-9391-2c5ba0360079', N'b420233b-4a40-4795-9391-2c5ba0360079', N'u=2483562809,3309193823&fm=23&gp=0.jpg', N'20150401022819_243.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401022819_243.jpg', N'.jpg', N'图片', CAST(0x0000A46D00EE7DEC AS DateTime), CAST(0x0000A46D00EE7DEC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'adf901e8-f156-4dfc-8b71-2e1e53edbe72', N'adf901e8-f156-4dfc-8b71-2e1e53edbe72', N'2006117105528662.jpg', N'20150424044255_796.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044255_796.jpg', N'.jpg', N'图片', CAST(0x0000A484011376BA AS DateTime), CAST(0x0000A484011376BA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e2477168-662a-47cc-981a-2e9832370968', N'e2477168-662a-47cc-981a-2e9832370968', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150327094906_309.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327094906_309.jpg', N'.jpg', N'图片', CAST(0x0000A46800A1CDA3 AS DateTime), CAST(0x0000A46800A1CDA3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'44436ff9-8cc0-4f8c-9874-2eadde304c94', N'44436ff9-8cc0-4f8c-9874-2eadde304c94', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20151209115054_534.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209115054_534.jpg', N'.jpg', N'图片', CAST(0x0000A569018902C4 AS DateTime), CAST(0x0000A569018902C4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4129c45d-14b3-49ee-a7f2-2fc7498b022d', N'4129c45d-14b3-49ee-a7f2-2fc7498b022d', N'rry.png', N'20150410052942_913.png', N'Advertising', N'/Upload/', N'/Upload/20150410052942_913.png', N'.png', N'图片', CAST(0x0000A47601205011 AS DateTime), CAST(0x0000A47601205011 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0bd71e0f-6dbd-4f18-9a3a-323437d65a2a', N'0bd71e0f-6dbd-4f18-9a3a-323437d65a2a', N'feng3.jpg', N'20150410030839_887.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410030839_887.jpg', N'.jpg', N'图片', CAST(0x0000A47600F9919F AS DateTime), CAST(0x0000A47600F9919F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'20e5a8cd-64d0-4573-81bf-324458290af0', N'20e5a8cd-64d0-4573-81bf-324458290af0', N'HospitalApp.apk', N'20150415031127_602.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031127_602.apk', N'.apk', N'文件', CAST(0x0000A47B00FA56C9 AS DateTime), CAST(0x0000A47B00FA56C9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'155c276e-854f-4239-8643-3251efb2d86f', N'155c276e-854f-4239-8643-3251efb2d86f', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110637_581.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110637_581.jpg', N'.jpg', N'图片', CAST(0x0000A565017CD8CF AS DateTime), CAST(0x0000A565017CD8CF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'73896961-0740-4c92-bccf-34970b1e69fe', N'73896961-0740-4c92-bccf-34970b1e69fe', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150414053358_182.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053358_182.apk', N'.apk', N'文件', CAST(0x0000A47A01217C30 AS DateTime), CAST(0x0000A47A01217C30 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'41699b22-8e9e-40e4-be9c-34a3bbe2326e', N'41699b22-8e9e-40e4-be9c-34a3bbe2326e', N'201010985117394.jpg', N'20150427024007_450.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427024007_450.jpg', N'.jpg', N'图片', CAST(0x0000A48700F1BB95 AS DateTime), CAST(0x0000A48700F1BB95 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bf172570-38ae-49f9-b8e5-37a4db23d5d5', N'bf172570-38ae-49f9-b8e5-37a4db23d5d5', N'2015414153730338.jpg', N'20150427021536_227.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427021536_227.jpg', N'.jpg', N'图片', CAST(0x0000A48700EB0042 AS DateTime), CAST(0x0000A48700EB0042 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'419f3954-2329-4598-b32f-390104623458', N'419f3954-2329-4598-b32f-390104623458', N'kkd.png', N'20150410053337_641.png', N'Advertising', N'/Upload/', N'/Upload/20150410053337_641.png', N'.png', N'图片', CAST(0x0000A4760121638D AS DateTime), CAST(0x0000A4760121638D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cb94aa1f-5a96-40ef-b358-3afc11d78bcd', N'cb94aa1f-5a96-40ef-b358-3afc11d78bcd', N'u=2882797951,3430521360&fm=23&gp=0.jpg', N'20150401022926_457.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401022926_457.jpg', N'.jpg', N'图片', CAST(0x0000A46D00EECC4E AS DateTime), CAST(0x0000A46D00EECC4E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fc851007-ee84-42f9-8de8-3b08f4a27862', N'fc851007-ee84-42f9-8de8-3b08f4a27862', N'fft.png', N'20150410053628_659.png', N'Advertising', N'/Upload/', N'/Upload/20150410053628_659.png', N'.png', N'图片', CAST(0x0000A47601222BAF AS DateTime), CAST(0x0000A47601222BAF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'72c9fadf-0282-4e87-b052-3b1f32f3e660', N'72c9fadf-0282-4e87-b052-3b1f32f3e660', N'QQ图片20150402151558.png', N'20150408042030_391.png', N'Advertising', N'/Upload/', N'/Upload/20150408042030_391.png', N'.png', N'图片', CAST(0x0000A474010D4D69 AS DateTime), CAST(0x0000A474010D4D69 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2577c779-f82f-462d-a63e-3ca546d1d01c', N'2577c779-f82f-462d-a63e-3ca546d1d01c', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205105025_495.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205105025_495.png', N'.png', N'图片', CAST(0x0000A5650178659D AS DateTime), CAST(0x0000A5650178659D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4d6af4a6-5aab-476f-98bf-3d7a2c5d8430', N'4d6af4a6-5aab-476f-98bf-3d7a2c5d8430', N'advertising_default_1.jpg', N'20150427033749_216.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150427033749_216.jpg', N'.jpg', N'图片', CAST(0x0000A48701019530 AS DateTime), CAST(0x0000A48701019530 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fce4d153-5766-4833-8dca-3eaa2ba56d52', N'fce4d153-5766-4833-8dca-3eaa2ba56d52', N'tty.png', N'20150410042243_623.png', N'Advertising', N'/Upload/', N'/Upload/20150410042243_623.png', N'.png', N'图片', CAST(0x0000A476010DE95D AS DateTime), CAST(0x0000A476010DE95D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b557506d-77b3-4dfa-9b47-3ee6a0b5552e', N'b557506d-77b3-4dfa-9b47-3ee6a0b5552e', N'QQ图片20151129103535.jpg', N'20151205115548_879.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115548_879.jpg', N'.jpg', N'图片', CAST(0x0000A565018A5BA3 AS DateTime), CAST(0x0000A565018A5BA3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'74a37597-fb92-451f-a7f6-4079ea386eb1', N'74a37597-fb92-451f-a7f6-4079ea386eb1', N'200923175353194.jpg', N'20150424051556_424.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051556_424.jpg', N'.jpg', N'图片', CAST(0x0000A484011C8718 AS DateTime), CAST(0x0000A484011C8718 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c5ce4c79-e78b-4cca-afd2-41ecf37b2f5f', N'c5ce4c79-e78b-4cca-afd2-41ecf37b2f5f', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206120113_453.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120113_453.jpg', N'.jpg', N'图片', CAST(0x0000A56600005596 AS DateTime), CAST(0x0000A56600005596 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'166be138-3c44-4cce-8d11-4217f4118a69', N'166be138-3c44-4cce-8d11-4217f4118a69', N'3888970_114849047798_2.jpg', N'20150408100115_878.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150408100115_878.jpg', N'.jpg', N'图片', CAST(0x0000A47400A523D4 AS DateTime), CAST(0x0000A47400A523D4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'36cf856a-9124-4162-a3c2-42caac405f5b', N'36cf856a-9124-4162-a3c2-42caac405f5b', N'hos1.jpg', N'20150410031032_934.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410031032_934.jpg', N'.jpg', N'图片', CAST(0x0000A47600FA163F AS DateTime), CAST(0x0000A47600FA163F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'77a419a6-3aec-4f8d-b4b2-42de50003446', N'77a419a6-3aec-4f8d-b4b2-42de50003446', N'20121211152549316.jpg', N'20150424051239_503.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051239_503.jpg', N'.jpg', N'图片', CAST(0x0000A484011BA0FC AS DateTime), CAST(0x0000A484011BA0FC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2fc515ee-2561-4bed-a838-430c03ed993f', N'2fc515ee-2561-4bed-a838-430c03ed993f', N'AgricultureSys.pdm', N'20150410113201_596.pdm', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410113201_596.pdm', N'.pdm', N'文件', CAST(0x0000A47600BE1195 AS DateTime), CAST(0x0000A47600BE1195 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0aba9c4b-38b5-4b41-800e-44c6fd541110', N'0aba9c4b-38b5-4b41-800e-44c6fd541110', N'HospitalApp.apk', N'20150415050832_570.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415050832_570.apk', N'.apk', N'文件', CAST(0x0000A47B011A7F93 AS DateTime), CAST(0x0000A47B011A7F93 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dd3bbe84-8b30-4819-bb0e-45c149a65fd9', N'dd3bbe84-8b30-4819-bb0e-45c149a65fd9', N'QQ图片20151129103535.jpg', N'20151205112102_515.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205112102_515.jpg', N'.jpg', N'图片', CAST(0x0000A5650180CE76 AS DateTime), CAST(0x0000A5650180CE76 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f4f1ea3d-19e6-4e7f-85c5-45f13116e9ef', N'f4f1ea3d-19e6-4e7f-85c5-45f13116e9ef', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205115811_534.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115811_534.jpg', N'.jpg', N'图片', CAST(0x0000A565018B0361 AS DateTime), CAST(0x0000A565018B0361 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f2c51e2a-e697-4255-ab24-46135740b6d9', N'f2c51e2a-e697-4255-ab24-46135740b6d9', N'2015082803481046.jpg', N'20151222035213_707.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151222035213_707.jpg', N'.jpg', N'图片', CAST(0x0000A57601058978 AS DateTime), CAST(0x0000A57601058978 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bb1b6749-b3c9-47ec-90b5-4641ad645819', N'bb1b6749-b3c9-47ec-90b5-4641ad645819', N'ic_launcher.png', N'20150408050521_342.png', N'YH_Information', N'/Upload/', N'/Upload/20150408050521_342.png', N'.png', N'图片', CAST(0x0000A4740119A018 AS DateTime), CAST(0x0000A4740119A018 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9f16dab8-ada5-4c6f-9f61-4663fbcd5dfa', N'9f16dab8-ada5-4c6f-9f61-4663fbcd5dfa', N'6.JPG', N'20150427043303_954.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427043303_954.JPG', N'.JPG', N'图片', CAST(0x0000A4870110BFDB AS DateTime), CAST(0x0000A4870110BFDB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9745301b-6921-4173-aa46-46b6cdc202c7', N'9745301b-6921-4173-aa46-46b6cdc202c7', N'QQ图片20150402151558.png', N'20150408033813_599.png', N'Advertising', N'/Upload/', N'/Upload/20150408033813_599.png', N'.png', N'图片', CAST(0x0000A4740101B151 AS DateTime), CAST(0x0000A4740101B151 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'28b592c4-2a85-448e-98b8-4773941ee921', N'28b592c4-2a85-448e-98b8-4773941ee921', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206125656_254.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206125656_254.jpg', N'.jpg', N'图片', CAST(0x0000A566000FA40E AS DateTime), CAST(0x0000A566000FA40E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e7e159f6-6bfc-4981-a034-4827327a9610', N'e7e159f6-6bfc-4981-a034-4827327a9610', N'iiy.png', N'20150410051526_949.png', N'Advertising', N'/Upload/', N'/Upload/20150410051526_949.png', N'.png', N'图片', CAST(0x0000A476011C6427 AS DateTime), CAST(0x0000A476011C6427 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'86fbcd10-6758-46c0-a138-4858dfd86db7', N'86fbcd10-6758-46c0-a138-4858dfd86db7', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205111500_473.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111500_473.jpg', N'.jpg', N'图片', CAST(0x0000A565017F26ED AS DateTime), CAST(0x0000A565017F26ED AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e532a677-042f-46bf-a468-49f792599242', N'e532a677-042f-46bf-a468-49f792599242', N'inside.jpg', N'20150413015959_190.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150413015959_190.jpg', N'.jpg', N'图片', CAST(0x0000A47900E6B649 AS DateTime), CAST(0x0000A47900E6B649 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b5da5c3e-ba73-4168-a48e-4d21bb011319', N'b5da5c3e-ba73-4168-a48e-4d21bb011319', N'2013131184342191.jpg', N'20150427044858_427.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150427044858_427.jpg', N'.jpg', N'图片', CAST(0x0000A48701151F7F AS DateTime), CAST(0x0000A48701151F7F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'be894a4b-d33e-47c2-8546-4df4b672c690', N'be894a4b-d33e-47c2-8546-4df4b672c690', N'iiy.png', N'20150414085203_549.png', N'Advertising', N'/Upload/', N'/Upload/20150414085203_549.png', N'.png', N'图片', CAST(0x0000A47A0092228C AS DateTime), CAST(0x0000A47A0092228C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'20726877-eb6c-4101-ac03-4e6825d4dcf0', N'20726877-eb6c-4101-ac03-4e6825d4dcf0', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20151210121522_301.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210121522_301.jpg', N'.jpg', N'图片', CAST(0x0000A56A00043946 AS DateTime), CAST(0x0000A56A00043946 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'26c355cb-1e2b-4584-8eb0-4e9186a0a8d8', N'26c355cb-1e2b-4584-8eb0-4e9186a0a8d8', N'QQ图片20151129103535.jpg', N'20151203124520_227.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151203124520_227.jpg', N'.jpg', N'图片', CAST(0x0000A563000C747D AS DateTime), CAST(0x0000A563000C747D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1084b62f-e61e-46f8-b0c4-507aab6b11a0', N'1084b62f-e61e-46f8-b0c4-507aab6b11a0', N'doctor3.jpg', N'20150414090450_446.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090450_446.jpg', N'.jpg', N'图片', CAST(0x0000A47A0095A554 AS DateTime), CAST(0x0000A47A0095A554 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4d09feba-8e4a-4b2f-96b7-507d65f2a3f5', N'4d09feba-8e4a-4b2f-96b7-507d65f2a3f5', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150327093902_306.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327093902_306.jpg', N'.jpg', N'图片', CAST(0x0000A468009F0A03 AS DateTime), CAST(0x0000A468009F0A03 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3d03cf8b-d590-4997-a9df-514c87db75d7', N'3d03cf8b-d590-4997-a9df-514c87db75d7', N'dsfds.png', N'20150410050858_878.png', N'Advertising', N'/Upload/', N'/Upload/20150410050858_878.png', N'.png', N'图片', CAST(0x0000A476011A9D85 AS DateTime), CAST(0x0000A476011A9D85 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2ecf1e1d-54e5-4ca3-a18e-51e0f2043ef2', N'2ecf1e1d-54e5-4ca3-a18e-51e0f2043ef2', N'2.JPG', N'20150427040518_611.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427040518_611.JPG', N'.JPG', N'图片', CAST(0x0000A48701092156 AS DateTime), CAST(0x0000A48701092156 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7fa23a87-aeb6-4e7e-87e3-526d5717272a', N'7fa23a87-aeb6-4e7e-87e3-526d5717272a', N'QQ图片20150402151558.png', N'20150408042945_109.png', N'YH_Information', N'/Upload/', N'/Upload/20150408042945_109.png', N'.png', N'图片', CAST(0x0000A474010FD896 AS DateTime), CAST(0x0000A474010FD896 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fd929456-9d8c-4f5e-8956-5296e56adeaa', N'fd929456-9d8c-4f5e-8956-5296e56adeaa', N'QQ图片20151129103535.jpg', N'20151205102237_307.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151205102237_307.jpg', N'.jpg', N'图片', CAST(0x0000A5650170C399 AS DateTime), CAST(0x0000A5650170C39A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'69f07d4c-fa86-455f-a816-536f2e8cc3ae', N'69f07d4c-fa86-455f-a816-536f2e8cc3ae', N'200991895119435.jpg', N'20150424044421_750.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044421_750.jpg', N'.jpg', N'图片', CAST(0x0000A4840113DB78 AS DateTime), CAST(0x0000A4840113DB78 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'46eb377c-d884-44c9-ba7c-540fdbd208fd', N'46eb377c-d884-44c9-ba7c-540fdbd208fd', N'ic_launcher.png', N'20150414090152_641.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090152_641.png', N'.png', N'图片', CAST(0x0000A47A0094D520 AS DateTime), CAST(0x0000A47A0094D520 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ef8d45c5-16fb-48f9-b9da-555aa89206be', N'ef8d45c5-16fb-48f9-b9da-555aa89206be', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206123836_915.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206123836_915.jpg', N'.jpg', N'图片', CAST(0x0000A566000A9AF3 AS DateTime), CAST(0x0000A566000A9AF3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bac881ef-d1ca-40b1-a1d9-5601dc774381', N'bac881ef-d1ca-40b1-a1d9-5601dc774381', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20151210105019_939.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210105019_939.jpg', N'.jpg', N'图片', CAST(0x0000A56A01785F86 AS DateTime), CAST(0x0000A56A01785F86 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b954cc11-7aea-47a5-93fb-585a21e9796d', N'b954cc11-7aea-47a5-93fb-585a21e9796d', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150326054517_115.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150326054517_115.jpg', N'.jpg', N'图片', CAST(0x0000A467012496D4 AS DateTime), CAST(0x0000A467012496D4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd33a3c05-859b-4a40-84e6-58c89230b59d', N'd33a3c05-859b-4a40-84e6-58c89230b59d', N'doctor3.jpg', N'20150410024956_537.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024956_537.jpg', N'.jpg', N'图片', CAST(0x0000A47600F46E8A AS DateTime), CAST(0x0000A47600F46E8A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'63cee0bf-0d61-4cbf-8567-59c50bb7a76b', N'63cee0bf-0d61-4cbf-8567-59c50bb7a76b', N'ic_launcher.png', N'20150407091636_485.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407091636_485.png', N'.png', N'图片', CAST(0x0000A4730098E0F7 AS DateTime), CAST(0x0000A4730098E0F7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bfb8b940-2088-4001-b4a9-5ade87726bfc', N'bfb8b940-2088-4001-b4a9-5ade87726bfc', N'pangxihong.jpg', N'20150424045528_204.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424045528_204.jpg', N'.jpg', N'图片', CAST(0x0000A4840116E8D9 AS DateTime), CAST(0x0000A4840116E8D9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bd550441-4606-4478-b975-5b27197de630', N'bd550441-4606-4478-b975-5b27197de630', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150415031703_688.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031703_688.apk', N'.apk', N'文件', CAST(0x0000A47B00FBE0DC AS DateTime), CAST(0x0000A47B00FBE0DC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4e9501d9-e2b5-4733-a817-5cd35fd82256', N'4e9501d9-e2b5-4733-a817-5cd35fd82256', N'uun.png', N'20150410052036_163.png', N'Advertising', N'/Upload/', N'/Upload/20150410052036_163.png', N'.png', N'图片', CAST(0x0000A476011DCF41 AS DateTime), CAST(0x0000A476011DCF41 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b92fb0d9-dc12-4cc6-abb1-5d5c3db5156d', N'b92fb0d9-dc12-4cc6-abb1-5d5c3db5156d', N'u=2483562809,3309193823&fm=23&gp=0.jpg', N'20150401025310_718.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401025310_718.jpg', N'.jpg', N'图片', CAST(0x0000A46D00F55191 AS DateTime), CAST(0x0000A46D00F55191 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5613b3da-8303-4bb4-a112-5ecddf2f9dc4', N'5613b3da-8303-4bb4-a112-5ecddf2f9dc4', N'2.JPG', N'20150427040732_612.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427040732_612.JPG', N'.JPG', N'图片', CAST(0x0000A4870109BDB7 AS DateTime), CAST(0x0000A4870109BDB7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cfb25061-fcb5-4055-8a29-5f80ad4eb69f', N'cfb25061-fcb5-4055-8a29-5f80ad4eb69f', N'ic_launcher.png', N'20150402040024_447.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150402040024_447.png', N'.png', N'图片', CAST(0x0000A46E0107C82F AS DateTime), CAST(0x0000A46E0107C82F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9f7980c0-d2c3-40c4-90b0-5fb799cfb017', N'9f7980c0-d2c3-40c4-90b0-5fb799cfb017', N'advertising_default_1.jpg', N'20150414085713_868.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150414085713_868.jpg', N'.jpg', N'图片', CAST(0x0000A47A00938D5C AS DateTime), CAST(0x0000A47A00938D5C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2621fca1-6138-4592-9279-610e99032db0', N'2621fca1-6138-4592-9279-610e99032db0', N'dsfds.png', N'20150424053530_626.png', N'YH_Information', N'/Upload/', N'/Upload/20150424053530_626.png', N'.png', N'图片', CAST(0x0000A4840121E7AE AS DateTime), CAST(0x0000A4840121E7AE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b22c3664-9a38-42e3-beed-6230085e5bd3', N'b22c3664-9a38-42e3-beed-6230085e5bd3', N'QQ图片20151129103535.jpg', N'20151206120048_986.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120048_986.jpg', N'.jpg', N'图片', CAST(0x0000A56600003945 AS DateTime), CAST(0x0000A56600003945 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'41f6be43-3465-43a8-9f35-6434be9b5bcc', N'41f6be43-3465-43a8-9f35-6434be9b5bcc', N'200613232543942.gif', N'20150427024915_819.gif', N'YH_Information', N'/Upload/', N'/Upload/20150427024915_819.gif', N'.gif', N'图片', CAST(0x0000A48700F43D96 AS DateTime), CAST(0x0000A48700F43D96 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b1562d70-3e84-4095-ada8-65730896d206', N'b1562d70-3e84-4095-ada8-65730896d206', N'4.JPG', N'20150427042846_612.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427042846_612.JPG', N'.JPG', N'图片', CAST(0x0000A487010F92B9 AS DateTime), CAST(0x0000A487010F92B9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ab144ce0-ba18-42b9-97b3-65d37dab6228', N'ab144ce0-ba18-42b9-97b3-65d37dab6228', N'QQ截图20150402151627.png', N'20150408033543_740.png', N'Advertising', N'/Upload/', N'/Upload/20150408033543_740.png', N'.png', N'图片', CAST(0x0000A47401010101 AS DateTime), CAST(0x0000A47401010101 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'67486fff-4599-432f-8a3a-682e8679fa1f', N'67486fff-4599-432f-8a3a-682e8679fa1f', N'200611117275589.jpg', N'20150427024354_911.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427024354_911.jpg', N'.jpg', N'图片', CAST(0x0000A48700F2C575 AS DateTime), CAST(0x0000A48700F2C575 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dbbc2452-fcdf-481b-8661-699fd165681c', N'dbbc2452-fcdf-481b-8661-699fd165681c', N'doctor4.jpg', N'20150410024912_814.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024912_814.jpg', N'.jpg', N'图片', CAST(0x0000A47600F43A45 AS DateTime), CAST(0x0000A47600F43A45 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'43d8c78e-d0d3-4bec-afae-6a3a441623ae', N'43d8c78e-d0d3-4bec-afae-6a3a441623ae', N'5.JPG', N'20150427043059_315.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427043059_315.JPG', N'.JPG', N'图片', CAST(0x0000A48701102E86 AS DateTime), CAST(0x0000A48701102E86 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e684d103-5214-4f8a-9408-6a598dafe87a', N'e684d103-5214-4f8a-9408-6a598dafe87a', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151206124121_638.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206124121_638.png', N'.png', N'图片', CAST(0x0000A566000B5C14 AS DateTime), CAST(0x0000A566000B5C14 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7bc7a01f-468b-4583-b132-6a7874f6f8d3', N'7bc7a01f-468b-4583-b132-6a7874f6f8d3', N'20150828034647562.jpg', N'20151222023235_962.jpg', N'TS_Car', N'/Upload/', N'/Upload/20151222023235_962.jpg', N'.jpg', N'图片', CAST(0x0000A57600EFAA52 AS DateTime), CAST(0x0000A57600EFAA52 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dcbbe5c8-882e-44b5-8e95-6ad46087efe7', N'dcbbe5c8-882e-44b5-8e95-6ad46087efe7', N'inside.jpg', N'20150413020207_936.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150413020207_936.jpg', N'.jpg', N'图片', CAST(0x0000A47900E74C5C AS DateTime), CAST(0x0000A47900E74C5C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'066102f0-42f7-4b54-a36b-6aed5f7e4856', N'066102f0-42f7-4b54-a36b-6aed5f7e4856', N'ic_launcher-.png', N'20150407021436_481.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407021436_481.png', N'.png', N'图片', CAST(0x0000A47300EAB9C7 AS DateTime), CAST(0x0000A47300EAB9C7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'12a3c80d-280f-4a9a-a314-6b9a01ed5b02', N'12a3c80d-280f-4a9a-a314-6b9a01ed5b02', N'dd.jpg', N'20150327033625_431.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327033625_431.jpg', N'.jpg', N'图片', CAST(0x0000A46801013249 AS DateTime), CAST(0x0000A46801013249 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2bd04c80-bf70-4107-9264-6c06a0195813', N'2bd04c80-bf70-4107-9264-6c06a0195813', N'2005123021258532.gif', N'20150427025956_835.gif', N'YH_Information', N'/Upload/', N'/Upload/20150427025956_835.gif', N'.gif', N'图片', CAST(0x0000A48700F72D5E AS DateTime), CAST(0x0000A48700F72D5E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1b29d07e-581b-4612-b729-6d5768d4b055', N'1b29d07e-581b-4612-b729-6d5768d4b055', N'20150828034726781.jpg', N'20151222035020_137.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151222035020_137.jpg', N'.jpg', N'图片', CAST(0x0000A57601050552 AS DateTime), CAST(0x0000A57601050552 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e82a44cb-97f9-4f38-8fd9-6d8bbbf639f5', N'e82a44cb-97f9-4f38-8fd9-6d8bbbf639f5', N'20071995951562.jpg', N'20150424050052_715.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424050052_715.jpg', N'.jpg', N'图片', CAST(0x0000A484011863C2 AS DateTime), CAST(0x0000A484011863C2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'24ada798-eaa3-49af-bd3c-6e3ac7ef8df0', N'24ada798-eaa3-49af-bd3c-6e3ac7ef8df0', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206124019_709.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206124019_709.jpg', N'.jpg', N'图片', CAST(0x0000A566000B136F AS DateTime), CAST(0x0000A566000B136F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'33abda5b-d35a-49bf-bc59-6f8d249bee70', N'33abda5b-d35a-49bf-bc59-6f8d249bee70', N'QQ图片20151129103535.jpg', N'20151130121110_316.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151130121110_316.jpg', N'.jpg', N'图片', CAST(0x0000A560000311F0 AS DateTime), CAST(0x0000A560000311F0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a3577bc6-bea7-4f53-b391-711d628737de', N'a3577bc6-bea7-4f53-b391-711d628737de', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205112138_349.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205112138_349.png', N'.png', N'图片', CAST(0x0000A5650180F88D AS DateTime), CAST(0x0000A5650180F88D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'613e16d8-25a5-48b9-8b8c-71b29d96517c', N'613e16d8-25a5-48b9-8b8c-71b29d96517c', N'c9b4de19-1a7f-40eb-b78e-01fb5288760e.jpg', N'20150408043128_673.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150408043128_673.jpg', N'.jpg', N'图片', CAST(0x0000A47401105147 AS DateTime), CAST(0x0000A47401105147 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'87fc239a-ab4b-4ded-9d12-71d556a01d95', N'87fc239a-ab4b-4ded-9d12-71d556a01d95', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205115553_480.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115553_480.jpg', N'.jpg', N'图片', CAST(0x0000A565018A6169 AS DateTime), CAST(0x0000A565018A6169 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'df341554-81ad-4d08-9d7a-727eb9ea9cfa', N'df341554-81ad-4d08-9d7a-727eb9ea9cfa', N'2015414153730338.jpg', N'20150427023706_152.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427023706_152.jpg', N'.jpg', N'图片', CAST(0x0000A48700F0E835 AS DateTime), CAST(0x0000A48700F0E835 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'51c0f1ef-62c6-415b-8433-728a16203561', N'51c0f1ef-62c6-415b-8433-728a16203561', N'QQ截图20150402151627.png', N'20150408025003_695.png', N'YH_Information', N'/Upload/', N'/Upload/20150408025003_695.png', N'.png', N'图片', CAST(0x0000A47400F47672 AS DateTime), CAST(0x0000A47400F47672 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e60b6a05-ac2c-41eb-9f32-72f70c9ef407', N'e60b6a05-ac2c-41eb-9f32-72f70c9ef407', N'u=3261219742,370558686&fm=21&gp=0.jpg', N'20151215113152_524.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151215113152_524.jpg', N'.jpg', N'图片', CAST(0x0000A56F0183C8B4 AS DateTime), CAST(0x0000A56F0183C8B4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4449b099-43d3-4aa3-9753-730774d7ab1b', N'4449b099-43d3-4aa3-9753-730774d7ab1b', N'200783123227604.jpg', N'20150424050513_519.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424050513_519.jpg', N'.jpg', N'图片', CAST(0x0000A4840119959C AS DateTime), CAST(0x0000A4840119959C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f5cf8b1d-3876-4f57-b987-73a09cda2362', N'f5cf8b1d-3876-4f57-b987-73a09cda2362', N'200991895119435.jpg', N'20150424044535_792.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044535_792.jpg', N'.jpg', N'图片', CAST(0x0000A484011431EA AS DateTime), CAST(0x0000A484011431EA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'93db1d23-3d88-4af2-98cd-75598f852c90', N'93db1d23-3d88-4af2-98cd-75598f852c90', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151130120955_753.png', N'SectionList', N'/Upload/', N'/Upload/20151130120955_753.png', N'.png', N'图片', CAST(0x0000A5600002BA69 AS DateTime), CAST(0x0000A5600002BA69 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fd972ab4-eb9c-4644-bb00-75d99d74c26c', N'fd972ab4-eb9c-4644-bb00-75d99d74c26c', N'QQ截图20150402151627.png', N'20150408043031_224.png', N'YH_Information', N'/Upload/', N'/Upload/20150408043031_224.png', N'.png', N'图片', CAST(0x0000A47401100DE3 AS DateTime), CAST(0x0000A47401100DE3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'49a74783-299e-48e7-92a7-7695bdb0a8eb', N'49a74783-299e-48e7-92a7-7695bdb0a8eb', N'201281494648275.jpg', N'20150427044508_344.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150427044508_344.jpg', N'.jpg', N'图片', CAST(0x0000A48701141265 AS DateTime), CAST(0x0000A48701141265 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4fa9e6d1-3914-40a0-b66e-77240ad5eefe', N'4fa9e6d1-3914-40a0-b66e-77240ad5eefe', N'HospitalApp.apk', N'20150415031056_849.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031056_849.apk', N'.apk', N'文件', CAST(0x0000A47B00FA325A AS DateTime), CAST(0x0000A47B00FA325A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f511fac8-f7a1-4afc-87bd-786552d3e111', N'f511fac8-f7a1-4afc-87bd-786552d3e111', N'新建文本文档.txt', N'20150410031321_161.txt', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410031321_161.txt', N'.txt', N'文件', CAST(0x0000A47600FADD0B AS DateTime), CAST(0x0000A47600FADD0B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f3013236-cc63-4d6b-9f7c-78d8dc6a2a70', N'f3013236-cc63-4d6b-9f7c-78d8dc6a2a70', N'电车e管家logo-144X144.png', N'20151221031419_554.png', N'TS_ClientUser', N'/Upload/', N'/Upload/20151221031419_554.png', N'.png', N'图片', CAST(0x0000A57500FB2106 AS DateTime), CAST(0x0000A57500FB2106 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'47b0f4b2-c01d-4eb5-8bc6-792b511031a6', N'47b0f4b2-c01d-4eb5-8bc6-792b511031a6', N'advertising_default_2.jpg', N'20150410032822_380.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410032822_380.jpg', N'.jpg', N'图片', CAST(0x0000A47600FEFC97 AS DateTime), CAST(0x0000A47600FEFC97 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bbb0173a-0183-4082-80c3-7b5a9644d6d6', N'bbb0173a-0183-4082-80c3-7b5a9644d6d6', N'psb.jpg', N'20150407050227_525.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050227_525.jpg', N'.jpg', N'图片', CAST(0x0000A4730118D387 AS DateTime), CAST(0x0000A4730118D387 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5e5f2232-455c-4473-aae2-7b6bd90fdca0', N'd37f2b1e-06af-441d-9882-65498a6ff0cb', N'u=4144720850,617246417&fm=23&gp=0.jpg', N'20150327092752_563.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327092752_563.jpg', N'.jpg', N'图片', CAST(0x0000A468009BF89A AS DateTime), CAST(0x0000A468009BF89A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a4663a3f-51f5-4ad5-a3c2-7c71e51b884d', N'a4663a3f-51f5-4ad5-a3c2-7c71e51b884d', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205110731_513.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110731_513.png', N'.png', N'图片', CAST(0x0000A565017D18A0 AS DateTime), CAST(0x0000A565017D18A0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'54cfbaa9-7a34-4a58-bb88-7cdeab4a3f56', N'54cfbaa9-7a34-4a58-bb88-7cdeab4a3f56', N'20150828034726781.jpg', N'20151222023341_163.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151222023341_163.jpg', N'.jpg', N'图片', CAST(0x0000A57600EFF712 AS DateTime), CAST(0x0000A57600EFF712 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7e8f7f7f-abcf-41e0-9648-7e4214f99c5d', N'7e8f7f7f-abcf-41e0-9648-7e4214f99c5d', N'2006117105725844.jpg', N'20150424052329_615.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052329_615.jpg', N'.jpg', N'图片', CAST(0x0000A484011E9AA7 AS DateTime), CAST(0x0000A484011E9AA7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fcf27425-c95d-4589-a1b8-7f6f96494796', N'fcf27425-c95d-4589-a1b8-7f6f96494796', N'2005102417172219.jpg', N'20150427044714_244.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150427044714_244.jpg', N'.jpg', N'图片', CAST(0x0000A4870114A598 AS DateTime), CAST(0x0000A4870114A598 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'27f95ac5-3680-48c3-a408-7ffa9d155163', N'27f95ac5-3680-48c3-a408-7ffa9d155163', N'doctor5.jpg', N'20150410024922_193.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024922_193.jpg', N'.jpg', N'图片', CAST(0x0000A47600F445D9 AS DateTime), CAST(0x0000A47600F445D9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cec242f2-9fc3-485e-9e27-813c758f6314', N'cec242f2-9fc3-485e-9e27-813c758f6314', N'QQ图片20151129103535.jpg', N'20151206125610_791.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206125610_791.jpg', N'.jpg', N'图片', CAST(0x0000A566000F6E10 AS DateTime), CAST(0x0000A566000F6E10 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a718589f-d96b-4e8a-8400-8294ad407e72', N'a718589f-d96b-4e8a-8400-8294ad407e72', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205102359_754.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151205102359_754.jpg', N'.jpg', N'图片', CAST(0x0000A5650171230B AS DateTime), CAST(0x0000A5650171230B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7ff4bf07-5768-4bfb-b52e-840e793ffb74', N'7ff4bf07-5768-4bfb-b52e-840e793ffb74', N'doctor5.jpg', N'20150414090513_552.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090513_552.jpg', N'.jpg', N'图片', CAST(0x0000A47A0095C009 AS DateTime), CAST(0x0000A47A0095C009 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'56e56f7b-cd7e-440a-a9d4-84d82753e05e', N'56e56f7b-cd7e-440a-a9d4-84d82753e05e', N'psb.jpg', N'20150402024045_163.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150402024045_163.jpg', N'.jpg', N'图片', CAST(0x0000A46E00F1E803 AS DateTime), CAST(0x0000A46E00F1E803 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'626d1b93-858b-4028-ac7d-8505af3261cb', N'626d1b93-858b-4028-ac7d-8505af3261cb', N'200991895119435.jpg', N'20150424044647_554.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044647_554.jpg', N'.jpg', N'图片', CAST(0x0000A4840114868E AS DateTime), CAST(0x0000A4840114868E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ad492c14-00fc-481a-92fd-85128ba28327', N'ad492c14-00fc-481a-92fd-85128ba28327', N'yyt.png', N'20150410043405_680.png', N'Advertising', N'/Upload/', N'/Upload/20150410043405_680.png', N'.png', N'图片', CAST(0x0000A47601110904 AS DateTime), CAST(0x0000A47601110904 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cc50e449-385f-4350-a751-8628f8ad52b6', N'cc50e449-385f-4350-a751-8628f8ad52b6', N'200611711039866.jpg', N'20150424051726_334.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051726_334.jpg', N'.jpg', N'图片', CAST(0x0000A484011CF151 AS DateTime), CAST(0x0000A484011CF151 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8c93f692-4ef4-4586-935f-87be4e68373a', N'8c93f692-4ef4-4586-935f-87be4e68373a', N'u=2882797951,3430521360&fm=23&gp=0.jpg', N'20150401025147_283.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401025147_283.jpg', N'.jpg', N'图片', CAST(0x0000A46D00F4F0A6 AS DateTime), CAST(0x0000A46D00F4F0A6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9c28efd6-ca4d-4500-ad8a-87dda44bcaf7', N'9c28efd6-ca4d-4500-ad8a-87dda44bcaf7', N'dd.jpg', N'20150327034001_438.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327034001_438.jpg', N'.jpg', N'图片', CAST(0x0000A46801022F94 AS DateTime), CAST(0x0000A46801022F94 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'66ce8d41-8a10-4aa3-851e-87f8269a0f3a', N'66ce8d41-8a10-4aa3-851e-87f8269a0f3a', N'u=1209623904,4030962403&fm=21&gp=0.jpg', N'20151208115446_252.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151208115446_252.jpg', N'.jpg', N'图片', CAST(0x0000A568018A12E4 AS DateTime), CAST(0x0000A568018A12E4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'afeca7f2-2fc5-4e24-86dc-8842950fcfcb', N'afeca7f2-2fc5-4e24-86dc-8842950fcfcb', N'QQ截图20150402151627.png', N'20150408034107_766.png', N'Advertising', N'/Upload/', N'/Upload/20150408034107_766.png', N'.png', N'图片', CAST(0x0000A47401027CCB AS DateTime), CAST(0x0000A47401027CCB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9fc93e1a-8b35-48a0-9a42-89512c09ff60', N'9fc93e1a-8b35-48a0-9a42-89512c09ff60', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110727_153.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110727_153.jpg', N'.jpg', N'图片', CAST(0x0000A565017D1390 AS DateTime), CAST(0x0000A565017D1390 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'37dce381-f010-4fdc-8f08-89caaef7994e', N'37dce381-f010-4fdc-8f08-89caaef7994e', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205115850_614.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115850_614.jpg', N'.jpg', N'图片', CAST(0x0000A565018B30E7 AS DateTime), CAST(0x0000A565018B30E7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a00f31c3-1fdd-46fa-ae85-8a8500c7ef2f', N'a00f31c3-1fdd-46fa-ae85-8a8500c7ef2f', N'QQ截图20150402151627.png', N'20150408033246_735.png', N'Advertising', N'/Upload/', N'/Upload/20150408033246_735.png', N'.png', N'图片', CAST(0x0000A47401003150 AS DateTime), CAST(0x0000A47401003150 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'606bf9d5-735b-4146-8853-8b2a4d7558cd', N'606bf9d5-735b-4146-8853-8b2a4d7558cd', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110619_328.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110619_328.jpg', N'.jpg', N'图片', CAST(0x0000A565017CC438 AS DateTime), CAST(0x0000A565017CC438 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd9faec7d-cdae-4a97-917f-8b2f5b529162', N'd9faec7d-cdae-4a97-917f-8b2f5b529162', N'doctor5.jpg', N'20150410024947_532.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024947_532.jpg', N'.jpg', N'图片', CAST(0x0000A47600F46316 AS DateTime), CAST(0x0000A47600F46316 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8f6758d6-bb3d-4524-b20d-8c26ded4147f', N'8f6758d6-bb3d-4524-b20d-8c26ded4147f', N'2015417105420105.jpg', N'20150424053144_783.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150424053144_783.jpg', N'.jpg', N'图片', CAST(0x0000A4840120DEBD AS DateTime), CAST(0x0000A4840120DEBD AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2180626b-a2b6-447a-9c88-8c4a2e4dda15', N'2180626b-a2b6-447a-9c88-8c4a2e4dda15', N'20150319023357_QQ图片20150316151742.jpg', N'20150407050440_598.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050440_598.jpg', N'.jpg', N'图片', CAST(0x0000A47301196F9A AS DateTime), CAST(0x0000A47301196F9A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1a65bfe4-34db-4a16-86ad-8c948178772b', N'1a65bfe4-34db-4a16-86ad-8c948178772b', N'HospitalApp.apk', N'20150415085017_591.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415085017_591.apk', N'.apk', N'文件', CAST(0x0000A47B0091A667 AS DateTime), CAST(0x0000A47B0091A667 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'08eb6337-ed01-4814-9d5e-8cdac0f74aae', N'08eb6337-ed01-4814-9d5e-8cdac0f74aae', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205111353_218.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111353_218.jpg', N'.jpg', N'图片', CAST(0x0000A565017ED796 AS DateTime), CAST(0x0000A565017ED796 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'70e0ea2b-208b-4f52-b5c8-8df16818474a', N'70e0ea2b-208b-4f52-b5c8-8df16818474a', N'ggl.png', N'20150410052739_369.png', N'Advertising', N'/Upload/', N'/Upload/20150410052739_369.png', N'.png', N'图片', CAST(0x0000A476011FBF36 AS DateTime), CAST(0x0000A476011FBF36 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'96abad82-beab-40fb-8d8e-8f36f50cd8d8', N'96abad82-beab-40fb-8d8e-8f36f50cd8d8', N'ic_launcher.png', N'20150408042532_555.png', N'YH_Information', N'/Upload/', N'/Upload/20150408042532_555.png', N'.png', N'图片', CAST(0x0000A474010EAF88 AS DateTime), CAST(0x0000A474010EAF88 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b94eedd5-fe0d-4cce-b310-8fa1530f5a4a', N'b94eedd5-fe0d-4cce-b310-8fa1530f5a4a', N'psb.jpg', N'20150402024600_676.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150402024600_676.jpg', N'.jpg', N'图片', CAST(0x0000A46E00F35924 AS DateTime), CAST(0x0000A46E00F35924 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f0fcf0b7-8106-4dfa-b757-902f5daf1690', N'f0fcf0b7-8106-4dfa-b757-902f5daf1690', N'电车e管家logo-144X144.png', N'20151222023305_953.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151222023305_953.png', N'.png', N'图片', CAST(0x0000A57600EFCD32 AS DateTime), CAST(0x0000A57600EFCD32 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6e4a1a70-b600-469b-a16c-91873e6b84cd', N'6e4a1a70-b600-469b-a16c-91873e6b84cd', N'jjh.png', N'20150410053902_336.png', N'Advertising', N'/Upload/', N'/Upload/20150410053902_336.png', N'.png', N'图片', CAST(0x0000A4760122E068 AS DateTime), CAST(0x0000A4760122E068 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b961e07e-65d1-496a-bd27-919de59ce63c', N'b961e07e-65d1-496a-bd27-919de59ce63c', N'ic_launcher1.png', N'20150408042543_774.png', N'YH_Information', N'/Upload/', N'/Upload/20150408042543_774.png', N'.png', N'图片', CAST(0x0000A474010EBC5B AS DateTime), CAST(0x0000A474010EBC5B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'28e726d5-8551-4b32-a71e-921a3d01fd45', N'28e726d5-8551-4b32-a71e-921a3d01fd45', N'QQ图片20150402151558.png', N'20150408043157_375.png', N'YH_Information', N'/Upload/', N'/Upload/20150408043157_375.png', N'.png', N'图片', CAST(0x0000A4740110727F AS DateTime), CAST(0x0000A4740110727F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f8076260-85ba-4e0c-b648-936f37f2066a', N'f8076260-85ba-4e0c-b648-936f37f2066a', N'QQ图片20151129103535.jpg', N'20151205102331_742.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205102331_742.jpg', N'.jpg', N'图片', CAST(0x0000A565017102B8 AS DateTime), CAST(0x0000A565017102B8 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4f00040f-6bcb-4db2-ba11-9372013112f4', N'4f00040f-6bcb-4db2-ba11-9372013112f4', N'000.png', N'20150410052514_753.png', N'Advertising', N'/Upload/', N'/Upload/20150410052514_753.png', N'.png', N'图片', CAST(0x0000A476011F1514 AS DateTime), CAST(0x0000A476011F1514 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b251e6a6-b4d8-45f9-8376-94193072ecd2', N'b251e6a6-b4d8-45f9-8376-94193072ecd2', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205105137_983.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205105137_983.jpg', N'.jpg', N'图片', CAST(0x0000A5650178B9DC AS DateTime), CAST(0x0000A5650178B9DC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1f613799-2de2-439d-b1ca-944125b9bace', N'627550c2-8926-4291-9197-325c11ee37af', N'2.jpg', N'20150327095000_247.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327095000_247.jpg', N'.jpg', N'图片', CAST(0x0000A46800A20CB7 AS DateTime), CAST(0x0000A46800A20CB7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bd5ffbde-dc56-4a0d-a87c-94455be36fda', N'bd5ffbde-dc56-4a0d-a87c-94455be36fda', N'QQ截图20150402151627.png', N'20150408032803_656.png', N'Advertising', N'/Upload/', N'/Upload/20150408032803_656.png', N'.png', N'图片', CAST(0x0000A47400FEE65F AS DateTime), CAST(0x0000A47400FEE65F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'90f95f0b-a5c3-45ff-89e1-95bbf3cc99a0', N'90f95f0b-a5c3-45ff-89e1-95bbf3cc99a0', N'QQ图片20151129103535.jpg', N'20151205103621_454.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151205103621_454.jpg', N'.jpg', N'图片', CAST(0x0000A5650174894C AS DateTime), CAST(0x0000A5650174894C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3669eabd-7463-49f3-a397-96e2a9860b06', N'3669eabd-7463-49f3-a397-96e2a9860b06', N'QQ图片20151129103535.jpg', N'20151205112514_434.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205112514_434.jpg', N'.jpg', N'图片', CAST(0x0000A5650181F5C2 AS DateTime), CAST(0x0000A5650181F5C2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e4bbf7b1-b81a-4c88-9e91-972209b8c8fc', N'e4bbf7b1-b81a-4c88-9e91-972209b8c8fc', N'advertising_default_3.jpg', N'20150410032841_202.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410032841_202.jpg', N'.jpg', N'图片', CAST(0x0000A47600FF1285 AS DateTime), CAST(0x0000A47600FF1285 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'31f8abad-41e8-4eb4-8604-974e468ba73b', N'31f8abad-41e8-4eb4-8604-974e468ba73b', N'psb.jpg', N'20150408093300_425.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150408093300_425.jpg', N'.jpg', N'图片', CAST(0x0000A474009D6189 AS DateTime), CAST(0x0000A474009D6189 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2b85db88-4ff7-4155-915c-9774ac769dc5', N'2b85db88-4ff7-4155-915c-9774ac769dc5', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151130122235_766.png', N'TS_ClientUser', N'/Upload/', N'/Upload/20151130122235_766.png', N'.png', N'图片', CAST(0x0000A56000063505 AS DateTime), CAST(0x0000A56000063505 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'86ddf076-12ea-423d-9e08-979651d804ba', N'86ddf076-12ea-423d-9e08-979651d804ba', N'u=1570278467,1171145550&fm=21&gp=0.jpg', N'20151209114700_217.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209114700_217.jpg', N'.jpg', N'图片', CAST(0x0000A5690187F0C6 AS DateTime), CAST(0x0000A5690187F0C6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'306aa01b-8fbb-4e52-80b2-97c470f0be50', N'306aa01b-8fbb-4e52-80b2-97c470f0be50', N'3.JPG', N'20150427040848_482.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427040848_482.JPG', N'.JPG', N'图片', CAST(0x0000A487010A1719 AS DateTime), CAST(0x0000A487010A1719 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'36552312-cceb-46f9-975a-98169c8b59da', N'36552312-cceb-46f9-975a-98169c8b59da', N'2006117105516318.jpg', N'20150424044004_559.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044004_559.jpg', N'.jpg', N'图片', CAST(0x0000A4840112ADF2 AS DateTime), CAST(0x0000A4840112ADF2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'bf1a7105-b248-4ee0-87dd-99324ba9894e', N'bf1a7105-b248-4ee0-87dd-99324ba9894e', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151208105433_632.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151208105433_632.jpg', N'.jpg', N'图片', CAST(0x0000A5680179883B AS DateTime), CAST(0x0000A5680179883B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b22e0406-0968-4af4-97e3-99f7116f7222', N'b22e0406-0968-4af4-97e3-99f7116f7222', N'dsfds.png', N'20150427033516_932.png', N'YH_Navigation', N'/Upload/', N'/Upload/20150427033516_932.png', N'.png', N'图片', CAST(0x0000A4870100E185 AS DateTime), CAST(0x0000A4870100E186 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ab9e09b3-c50f-4872-8584-9b745b592894', N'ab9e09b3-c50f-4872-8584-9b745b592894', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205111607_661.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111607_661.jpg', N'.jpg', N'图片', CAST(0x0000A565017F74DD AS DateTime), CAST(0x0000A565017F74DD AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b4f9ffb5-6998-49ec-b72a-9d2a73ecdc34', N'b4f9ffb5-6998-49ec-b72a-9d2a73ecdc34', N'dd.jpg', N'20150401024952_739.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401024952_739.jpg', N'.jpg', N'图片', CAST(0x0000A46D00F468F7 AS DateTime), CAST(0x0000A46D00F468F7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'601917fc-5836-4546-8be1-9d3f523635c7', N'601917fc-5836-4546-8be1-9d3f523635c7', N'20150319022047_psb.jpg', N'20150407050353_852.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050353_852.jpg', N'.jpg', N'图片', CAST(0x0000A47301193829 AS DateTime), CAST(0x0000A47301193829 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'444e59dc-296d-4efd-9e2e-9f5157f0b0a5', N'627550c2-8926-4291-9197-325c11ee37af', N'dd.jpg', N'20150327095028_578.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327095028_578.jpg', N'.jpg', N'图片', CAST(0x0000A46800A22D69 AS DateTime), CAST(0x0000A46800A22D69 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'184b81fb-8e47-4e25-953e-a09978970bdd', N'184b81fb-8e47-4e25-953e-a09978970bdd', N'doctor6.jpg', N'20150414090523_138.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090523_138.jpg', N'.jpg', N'图片', CAST(0x0000A47A0095CB5A AS DateTime), CAST(0x0000A47A0095CB5A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ea26a74e-03f9-4ded-a4d5-a165e21d700b', N'ea26a74e-03f9-4ded-a4d5-a165e21d700b', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205103742_906.png', N'TS_Shop', N'/Upload/', N'/Upload/20151205103742_906.png', N'.png', N'图片', CAST(0x0000A5650174E803 AS DateTime), CAST(0x0000A5650174E803 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'89ee4c20-ebda-41b0-b3eb-a2042a145418', N'89ee4c20-ebda-41b0-b3eb-a2042a145418', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206125626_542.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206125626_542.jpg', N'.jpg', N'图片', CAST(0x0000A566000F8097 AS DateTime), CAST(0x0000A566000F8097 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0a8f0709-26d1-456b-98ea-a2ae714cad79', N'd37f2b1e-06af-441d-9882-65498a6ff0cb', N'u=2882797951,3430521360&fm=23&gp=0.jpg', N'20150327093639_569.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327093639_569.jpg', N'.jpg', N'图片', CAST(0x0000A468009E62B1 AS DateTime), CAST(0x0000A468009E62B1 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'791b2135-f5ab-4e76-8b41-a3178aee6bf4', N'791b2135-f5ab-4e76-8b41-a3178aee6bf4', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205115946_232.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115946_232.png', N'.png', N'图片', CAST(0x0000A565018B71F9 AS DateTime), CAST(0x0000A565018B71F9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4f7d14b7-e9ac-4873-a7ab-a32821f13171', N'4f7d14b7-e9ac-4873-a7ab-a32821f13171', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110037_139.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110037_139.jpg', N'.jpg', N'图片', CAST(0x0000A565017B33B4 AS DateTime), CAST(0x0000A565017B33B4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'25242b49-2a80-4ff1-b50a-a3950797b386', N'25242b49-2a80-4ff1-b50a-a3950797b386', N'QQ图片20151129103535.jpg', N'20151205115727_263.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115727_263.jpg', N'.jpg', N'图片', CAST(0x0000A565018ACF32 AS DateTime), CAST(0x0000A565018ACF32 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd1849b24-e0b4-40f7-9c0c-a407120e98b4', N'd1849b24-e0b4-40f7-9c0c-a407120e98b4', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205112147_435.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205112147_435.jpg', N'.jpg', N'图片', CAST(0x0000A5650181038D AS DateTime), CAST(0x0000A5650181038D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ede3400a-757f-4a34-bf71-a4317cb47771', N'ede3400a-757f-4a34-bf71-a4317cb47771', N'ic_launcher.png', N'20150407021217_117.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407021217_117.png', N'.png', N'图片', CAST(0x0000A47300EA1650 AS DateTime), CAST(0x0000A47300EA1650 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'004c3ddc-37c9-4b49-a701-a5a96bb43b29', N'004c3ddc-37c9-4b49-a701-a5a96bb43b29', N'ic_launcher.png', N'20150408030218_278.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030218_278.png', N'.png', N'图片', CAST(0x0000A47400F7D2FE AS DateTime), CAST(0x0000A47400F7D2FE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c222389d-1b0f-41ae-9f82-a5c2702ba93b', N'c222389d-1b0f-41ae-9f82-a5c2702ba93b', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150330041514_484.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150330041514_484.jpg', N'.jpg', N'图片', CAST(0x0000A46B010BDB2E AS DateTime), CAST(0x0000A46B010BDB2E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f046dc98-6fce-4fdd-b387-a60dab1d6fc2', N'f046dc98-6fce-4fdd-b387-a60dab1d6fc2', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151220115801_223.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151220115801_223.jpg', N'.jpg', N'图片', CAST(0x0000A57400C5364A AS DateTime), CAST(0x0000A57400C5364A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f7264401-c665-4975-af90-a776a4e08676', N'f7264401-c665-4975-af90-a776a4e08676', N'QQ图片20151129103535.jpg', N'20151206120142_575.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120142_575.jpg', N'.jpg', N'图片', CAST(0x0000A566000077E7 AS DateTime), CAST(0x0000A566000077E7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'72d4de56-0194-4278-b3e9-a80d8afc766d', N'72d4de56-0194-4278-b3e9-a80d8afc766d', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205112506_280.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205112506_280.jpg', N'.jpg', N'图片', CAST(0x0000A5650181ED15 AS DateTime), CAST(0x0000A5650181ED15 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'56199545-51a9-4ea7-aa7b-a823ed139d17', N'56199545-51a9-4ea7-aa7b-a823ed139d17', N'200611117275589.jpg', N'20150427030448_155.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150427030448_155.jpg', N'.jpg', N'图片', CAST(0x0000A48700F882D3 AS DateTime), CAST(0x0000A48700F882D3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'54590efe-c748-46ea-944d-a88379fbe847', N'54590efe-c748-46ea-944d-a88379fbe847', N'icon_marka.png', N'20150414052423_585.png', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414052423_585.png', N'.png', N'文件', CAST(0x0000A47A011ED992 AS DateTime), CAST(0x0000A47A011ED992 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'997c1804-9843-4b16-b83d-a8e5908ff5d3', N'997c1804-9843-4b16-b83d-a8e5908ff5d3', N'200923175353194.jpg', N'20150427045319_780.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150427045319_780.jpg', N'.jpg', N'图片', CAST(0x0000A48701165146 AS DateTime), CAST(0x0000A48701165146 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e82a1d62-88d0-48c7-9452-a958ae3c8b02', N'e82a1d62-88d0-48c7-9452-a958ae3c8b02', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150327041100_654.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327041100_654.jpg', N'.jpg', N'图片', CAST(0x0000A468010AB19B AS DateTime), CAST(0x0000A468010AB19B AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4bd97f84-244c-4b26-9048-a9a1521ad253', N'4bd97f84-244c-4b26-9048-a9a1521ad253', N'dsfds.png', N'20150410043010_193.png', N'Advertising', N'/Upload/', N'/Upload/20150410043010_193.png', N'.png', N'图片', CAST(0x0000A476010FF642 AS DateTime), CAST(0x0000A476010FF642 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'545893cb-d6b0-4b70-ab02-a9b7b4d4ee4e', N'545893cb-d6b0-4b70-ab02-a9b7b4d4ee4e', N'psb.jpg', N'20150407045714_540.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407045714_540.jpg', N'.jpg', N'图片', CAST(0x0000A473011764E3 AS DateTime), CAST(0x0000A473011764E3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b7700bd0-52db-4dbb-801b-a9be03dc2638', N'b7700bd0-52db-4dbb-801b-a9be03dc2638', N'HospitalApp.apk', N'20150410030831_589.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410030831_589.apk', N'.apk', N'文件', CAST(0x0000A47600F98895 AS DateTime), CAST(0x0000A47600F98895 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'596b09d0-0bf3-417a-bc01-aa0b09555233', N'596b09d0-0bf3-417a-bc01-aa0b09555233', N'200971022926749.jpg', N'20150424052915_461.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052915_461.jpg', N'.jpg', N'图片', CAST(0x0000A48401203015 AS DateTime), CAST(0x0000A48401203015 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd45fd987-c94f-490e-bb77-aa8133383b99', N'd45fd987-c94f-490e-bb77-aa8133383b99', N'QQ图片20151129103535.jpg', N'20151205111707_138.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111707_138.jpg', N'.jpg', N'图片', CAST(0x0000A565017FBB51 AS DateTime), CAST(0x0000A565017FBB51 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'76ff4c5c-4a3a-4a97-b69a-ac46d1463662', N'76ff4c5c-4a3a-4a97-b69a-ac46d1463662', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150330041718_495.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150330041718_495.jpg', N'.jpg', N'图片', CAST(0x0000A46B010C6CAE AS DateTime), CAST(0x0000A46B010C6CAE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c418711e-340c-4378-85d1-ad2e756ae1a2', N'c418711e-340c-4378-85d1-ad2e756ae1a2', N'mosx.jpg', N'20150424045622_163.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424045622_163.jpg', N'.jpg', N'图片', CAST(0x0000A484011727B8 AS DateTime), CAST(0x0000A484011727B8 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ff7e45f2-daf2-492a-8f81-adfe92a2f3e3', N'ff7e45f2-daf2-492a-8f81-adfe92a2f3e3', N'QQ图片20151129103535.jpg', N'20151206124104_607.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206124104_607.jpg', N'.jpg', N'图片', CAST(0x0000A566000B47BD AS DateTime), CAST(0x0000A566000B47BD AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'eb1b94bf-7a59-464e-a43d-aeeefe0cf340', N'eb1b94bf-7a59-464e-a43d-aeeefe0cf340', N'HospitalApp.apk', N'20150413091157_482.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150413091157_482.apk', N'.apk', N'文件', CAST(0x0000A479009799B6 AS DateTime), CAST(0x0000A479009799B6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0f88ac3d-ef43-4e21-9b12-af3f91d9e51f', N'0f88ac3d-ef43-4e21-9b12-af3f91d9e51f', N'icon_marka.png', N'20150414052343_567.png', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414052343_567.png', N'.png', N'文件', CAST(0x0000A47A011EAA75 AS DateTime), CAST(0x0000A47A011EAA75 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'94c32a40-31c9-4ac9-912c-b0266c45cda2', N'94c32a40-31c9-4ac9-912c-b0266c45cda2', N'2013117101212269.jpg', N'20150424051006_194.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051006_194.jpg', N'.jpg', N'图片', CAST(0x0000A484011AED28 AS DateTime), CAST(0x0000A484011AED28 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'46c9d687-2125-4be6-992c-b06134e58c23', N'46c9d687-2125-4be6-992c-b06134e58c23', N'HospitalApp.apk', N'20150415051115_667.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415051115_667.apk', N'.apk', N'文件', CAST(0x0000A47B011B3DDB AS DateTime), CAST(0x0000A47B011B3DDB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f46e1419-fee5-444a-a286-b07e35a578e4', N'f46e1419-fee5-444a-a286-b07e35a578e4', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151206125649_548.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206125649_548.png', N'.png', N'图片', CAST(0x0000A566000F9B8E AS DateTime), CAST(0x0000A566000F9B8E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8a653ecc-ca05-436d-a82e-b0ca7ea4cd3a', N'8a653ecc-ca05-436d-a82e-b0ca7ea4cd3a', N'uuk.png', N'20150410050350_970.png', N'Advertising', N'/Upload/', N'/Upload/20150410050350_970.png', N'.png', N'图片', CAST(0x0000A476011934E6 AS DateTime), CAST(0x0000A476011934E6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6e29fedd-5c98-4d84-9227-b31c6076bf71', N'6e29fedd-5c98-4d84-9227-b31c6076bf71', N'2006117105745273.jpg', N'20150424052413_519.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052413_519.jpg', N'.jpg', N'图片', CAST(0x0000A484011ECE38 AS DateTime), CAST(0x0000A484011ECE38 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a0a076cb-5062-48f0-b690-b39efae7ef03', N'a0a076cb-5062-48f0-b690-b39efae7ef03', N'QQ图片20150402151558.png', N'20150408032852_863.png', N'Advertising', N'/Upload/', N'/Upload/20150408032852_863.png', N'.png', N'图片', CAST(0x0000A47400FF1FDC AS DateTime), CAST(0x0000A47400FF1FDC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'54ef001d-ec8b-4861-ada4-b59cf8a6f66f', N'54ef001d-ec8b-4861-ada4-b59cf8a6f66f', N'ic_launcher-.png', N'20150407021503_896.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150407021503_896.png', N'.png', N'图片', CAST(0x0000A47300EAD9AA AS DateTime), CAST(0x0000A47300EAD9AA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'39e798e3-87cc-46fe-9864-b5d632ef8517', N'39e798e3-87cc-46fe-9864-b5d632ef8517', N'u=2882797951,3430521360&fm=23&gp=0.jpg', N'20150401025259_649.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401025259_649.jpg', N'.jpg', N'图片', CAST(0x0000A46D00F5445A AS DateTime), CAST(0x0000A46D00F5445A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'49bb1e43-caec-46e5-8cde-b632348b9343', N'49bb1e43-caec-46e5-8cde-b632348b9343', N'200971022926749.jpg', N'20150424051345_575.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424051345_575.jpg', N'.jpg', N'图片', CAST(0x0000A484011BEDAE AS DateTime), CAST(0x0000A484011BEDAE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3682c69e-8fa8-4c45-9a14-b87904bb8da4', N'3682c69e-8fa8-4c45-9a14-b87904bb8da4', N'bnb.png', N'20150410053155_713.png', N'Advertising', N'/Upload/', N'/Upload/20150410053155_713.png', N'.png', N'图片', CAST(0x0000A4760120EBFD AS DateTime), CAST(0x0000A4760120EBFD AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'aa139f22-ff1e-4cdf-9c38-b8e232885c81', N'aa139f22-ff1e-4cdf-9c38-b8e232885c81', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151210101611_517.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210101611_517.jpg', N'.jpg', N'图片', CAST(0x0000A56A016EFEC9 AS DateTime), CAST(0x0000A56A016EFEC9 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8ac52130-0cb7-4bcd-beae-b9817e0aaa6d', N'8ac52130-0cb7-4bcd-beae-b9817e0aaa6d', N'QQ图片20151129103535.jpg', N'20151205110537_152.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110537_152.jpg', N'.jpg', N'图片', CAST(0x0000A565017C92DF AS DateTime), CAST(0x0000A565017C92DF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fe45896d-00a8-409a-ae63-b9907a27c9b9', N'fe45896d-00a8-409a-ae63-b9907a27c9b9', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110537_378.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110537_378.jpg', N'.jpg', N'图片', CAST(0x0000A565017C92CA AS DateTime), CAST(0x0000A565017C92CA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'2691623d-f5aa-48a0-bab9-b9deebb61909', N'2691623d-f5aa-48a0-bab9-b9deebb61909', N'advertising_default_1.jpg', N'20150410041222_382.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410041222_382.jpg', N'.jpg', N'图片', CAST(0x0000A476010B11AB AS DateTime), CAST(0x0000A476010B11AB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5e00f5d2-dcf3-4c2f-bc46-ba5d42d43972', N'5e00f5d2-dcf3-4c2f-bc46-ba5d42d43972', N'wuangcyang.jpg', N'20150424045357_344.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424045357_344.jpg', N'.jpg', N'图片', CAST(0x0000A48401167E7A AS DateTime), CAST(0x0000A48401167E7A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'da71ee0f-524b-4e8d-99d5-baf8b9926cac', N'da71ee0f-524b-4e8d-99d5-baf8b9926cac', N'doctor1.jpg', N'20150410024848_645.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150410024848_645.jpg', N'.jpg', N'图片', CAST(0x0000A47600F41DCA AS DateTime), CAST(0x0000A47600F41DCA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd93116ee-c148-4343-a8ef-bb3624024f41', N'd93116ee-c148-4343-a8ef-bb3624024f41', N'HospitalApp.apk', N'20150414053144_719.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053144_719.apk', N'.apk', N'文件', CAST(0x0000A47A0120DE79 AS DateTime), CAST(0x0000A47A0120DE79 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'4c9b3fcd-430d-441e-b52a-bc16315f7bf0', N'4c9b3fcd-430d-441e-b52a-bc16315f7bf0', N'QQ图片20151129103535.jpg', N'20151130121138_772.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151130121138_772.jpg', N'.jpg', N'图片', CAST(0x0000A560000332D0 AS DateTime), CAST(0x0000A560000332D0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3d2b6cd7-fd5e-4b48-a3ed-bc347ce6ea9d', N'3d2b6cd7-fd5e-4b48-a3ed-bc347ce6ea9d', N'20150319022047_psb.jpg', N'20150407050303_829.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050303_829.jpg', N'.jpg', N'图片', CAST(0x0000A4730118FD9A AS DateTime), CAST(0x0000A4730118FD9A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'42e3db51-d851-4bcd-a72d-be74108121c5', N'42e3db51-d851-4bcd-a72d-be74108121c5', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206120912_398.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120912_398.jpg', N'.jpg', N'图片', CAST(0x0000A56600028781 AS DateTime), CAST(0x0000A56600028781 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a91b22d5-5322-47dc-a71a-bed3a9859c15', N'a91b22d5-5322-47dc-a71a-bed3a9859c15', N'3888970_114849047798_2.jpg', N'20150408043116_962.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150408043116_962.jpg', N'.jpg', N'图片', CAST(0x0000A4740110436C AS DateTime), CAST(0x0000A4740110436C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'50fcc09f-f2aa-4fa8-94da-bfc617b7cebe', N'50fcc09f-f2aa-4fa8-94da-bfc617b7cebe', N'2006117105757111.jpg', N'20150424052506_791.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052506_791.jpg', N'.jpg', N'图片', CAST(0x0000A484011F0BDA AS DateTime), CAST(0x0000A484011F0BDA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'85035cea-9a72-49ed-823e-c00df7ce9597', N'85035cea-9a72-49ed-823e-c00df7ce9597', N'331.png', N'20150410052233_942.png', N'Advertising', N'/Upload/', N'/Upload/20150410052233_942.png', N'.png', N'图片', CAST(0x0000A476011E58D7 AS DateTime), CAST(0x0000A476011E58D7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'799411fe-597d-4b69-a09b-c36ea9c074ba', N'799411fe-597d-4b69-a09b-c36ea9c074ba', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150415031837_242.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415031837_242.apk', N'.apk', N'文件', CAST(0x0000A47B00FC4F18 AS DateTime), CAST(0x0000A47B00FC4F18 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f296388c-4ce2-4b96-9199-c3c2202606a6', N'f296388c-4ce2-4b96-9199-c3c2202606a6', N'QQ图片20151129103535.jpg', N'20151205105756_556.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205105756_556.jpg', N'.jpg', N'图片', CAST(0x0000A565017A76FF AS DateTime), CAST(0x0000A565017A76FF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3364dd29-9ee2-4941-99e4-c419404c096f', N'3364dd29-9ee2-4941-99e4-c419404c096f', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151215113158_567.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151215113158_567.jpg', N'.jpg', N'图片', CAST(0x0000A56F0183CF62 AS DateTime), CAST(0x0000A56F0183CF62 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fff222b9-2bee-40e7-b5c9-c4f515c5f3f0', N'fff222b9-2bee-40e7-b5c9-c4f515c5f3f0', N'2006117105447739.jpg', N'20150424044136_425.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424044136_425.jpg', N'.jpg', N'图片', CAST(0x0000A484011319F3 AS DateTime), CAST(0x0000A484011319F3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0ccf2288-78dd-4977-b7c1-c60060f5559c', N'0ccf2288-78dd-4977-b7c1-c60060f5559c', N'dsfds.png', N'20150413020034_552.png', N'YH_Navigation', N'/Upload/', N'/Upload/20150413020034_552.png', N'.png', N'图片', CAST(0x0000A47900E6DF26 AS DateTime), CAST(0x0000A47900E6DF26 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fbb218ee-c805-4cc9-8f59-c66f97a3a433', N'fbb218ee-c805-4cc9-8f59-c66f97a3a433', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205105903_619.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205105903_619.png', N'.png', N'图片', CAST(0x0000A565017AC4CA AS DateTime), CAST(0x0000A565017AC4CA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'faf083ce-31a9-478a-b706-c7c0e80e2cd5', N'faf083ce-31a9-478a-b706-c7c0e80e2cd5', N'QQ图片20151129103535.jpg', N'20151205110525_168.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110525_168.jpg', N'.jpg', N'图片', CAST(0x0000A565017C84E1 AS DateTime), CAST(0x0000A565017C84E1 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'14f1458d-3c73-4247-828b-c9d4f939710c', N'14f1458d-3c73-4247-828b-c9d4f939710c', N'ac536b166d224f4af4c35f2b0ef790529922d1dc.jpg', N'20151222035304_593.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151222035304_593.jpg', N'.jpg', N'图片', CAST(0x0000A5760105C54F AS DateTime), CAST(0x0000A5760105C54F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3ba34fbf-c992-4f4d-808c-ca3f7046ad2d', N'3ba34fbf-c992-4f4d-808c-ca3f7046ad2d', N'20150319022047_psb.jpg', N'20150407050427_222.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050427_222.jpg', N'.jpg', N'图片', CAST(0x0000A4730119608F AS DateTime), CAST(0x0000A4730119608F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'af1cadea-e422-47d3-b1d9-cb55bf826c79', N'af1cadea-e422-47d3-b1d9-cb55bf826c79', N'200852292917581.jpg', N'20150427043631_659.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150427043631_659.jpg', N'.jpg', N'图片', CAST(0x0000A4870111B47F AS DateTime), CAST(0x0000A4870111B47F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1938a8b5-3f69-45e1-b557-cb81350667ed', N'1938a8b5-3f69-45e1-b557-cb81350667ed', N'u=1209623904,4030962403&fm=21&gp=0.jpg', N'20151210121043_220.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210121043_220.jpg', N'.jpg', N'图片', CAST(0x0000A56A0002F20D AS DateTime), CAST(0x0000A56A0002F20D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'584a1702-fdab-4168-8e54-cbfcf758884f', N'584a1702-fdab-4168-8e54-cbfcf758884f', N'psb.jpg', N'20150407050041_483.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050041_483.jpg', N'.jpg', N'图片', CAST(0x0000A473011857F6 AS DateTime), CAST(0x0000A473011857F6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3e2edd2f-bc0b-4544-a89e-cc2678b58ce5', N'3e2edd2f-bc0b-4544-a89e-cc2678b58ce5', N'000.png', N'20150414085239_837.png', N'Advertising', N'/Upload/', N'/Upload/20150414085239_837.png', N'.png', N'图片', CAST(0x0000A47A00924C13 AS DateTime), CAST(0x0000A47A00924C13 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'caf97f5a-6b8d-44e6-bc64-ccfa2c50ee88', N'caf97f5a-6b8d-44e6-bc64-ccfa2c50ee88', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150330041457_190.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150330041457_190.jpg', N'.jpg', N'图片', CAST(0x0000A46B010BC800 AS DateTime), CAST(0x0000A46B010BC800 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b4e03f63-26fa-4459-ba47-cdc68fb4ee29', N'b4e03f63-26fa-4459-ba47-cdc68fb4ee29', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151210103306_962.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210103306_962.jpg', N'.jpg', N'图片', CAST(0x0000A56A0173A503 AS DateTime), CAST(0x0000A56A0173A503 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fd99009f-e321-4608-9dfb-cf9d5be8893f', N'fd99009f-e321-4608-9dfb-cf9d5be8893f', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151206120351_445.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206120351_445.jpg', N'.jpg', N'图片', CAST(0x0000A56600010EC4 AS DateTime), CAST(0x0000A56600010EC4 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f3e8a812-629c-43a4-8916-d109f64a8bb7', N'f3e8a812-629c-43a4-8916-d109f64a8bb7', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205111316_421.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111316_421.jpg', N'.jpg', N'图片', CAST(0x0000A565017EAC75 AS DateTime), CAST(0x0000A565017EAC75 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7056e93f-6134-4b78-bd3c-d2120cafc2b7', N'7056e93f-6134-4b78-bd3c-d2120cafc2b7', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151130112138_954.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151130112138_954.jpg', N'.jpg', N'图片', CAST(0x0000A5600180F92E AS DateTime), CAST(0x0000A5600180F92E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'516ccf8a-806a-4f5f-83f2-d227d4a31867', N'516ccf8a-806a-4f5f-83f2-d227d4a31867', N'QQ图片20151129103535.jpg', N'20151205110626_679.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110626_679.jpg', N'.jpg', N'图片', CAST(0x0000A565017CCCC0 AS DateTime), CAST(0x0000A565017CCCC0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5ae90dda-7a3a-4f9b-97ff-d3425906f796', N'5ae90dda-7a3a-4f9b-97ff-d3425906f796', N'QQ截图20150402151627.png', N'20150408042039_574.png', N'Advertising', N'/Upload/', N'/Upload/20150408042039_574.png', N'.png', N'图片', CAST(0x0000A474010D5883 AS DateTime), CAST(0x0000A474010D5883 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c5ef7dfe-d528-42a2-a73f-d3f07fe1358a', N'c5ef7dfe-d528-42a2-a73f-d3f07fe1358a', N'QQ图片20151129103535.jpg', N'20151206123832_878.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151206123832_878.jpg', N'.jpg', N'图片', CAST(0x0000A566000A95E6 AS DateTime), CAST(0x0000A566000A95E6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0bcb26ee-3562-4333-93a1-d4cce2f8514a', N'0bcb26ee-3562-4333-93a1-d4cce2f8514a', N'QQ截图20150402151627.png', N'20150408024936_185.png', N'YH_Information', N'/Upload/', N'/Upload/20150408024936_185.png', N'.png', N'图片', CAST(0x0000A47400F45611 AS DateTime), CAST(0x0000A47400F45611 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0fa5e265-601e-42a9-8a41-d4ff43f38a68', N'0fa5e265-601e-42a9-8a41-d4ff43f38a68', N'inside.jpg', N'20150413125131_464.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150413125131_464.jpg', N'.jpg', N'图片', CAST(0x0000A47900D3E853 AS DateTime), CAST(0x0000A47900D3E853 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'49ee1e2c-ce35-4cb6-8d46-d51df0da827a', N'49ee1e2c-ce35-4cb6-8d46-d51df0da827a', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205110519_224.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110519_224.jpg', N'.jpg', N'图片', CAST(0x0000A565017C7DEB AS DateTime), CAST(0x0000A565017C7DEB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6dddb3d0-5fb4-4d99-9ec6-d5a9ef973555', N'6dddb3d0-5fb4-4d99-9ec6-d5a9ef973555', N'QQ图片20150402151558.png', N'20150408042054_961.png', N'Advertising', N'/Upload/', N'/Upload/20150408042054_961.png', N'.png', N'图片', CAST(0x0000A474010D69D2 AS DateTime), CAST(0x0000A474010D69D2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5921fc3d-06f8-460d-82b0-d5f3fb944f60', N'5921fc3d-06f8-460d-82b0-d5f3fb944f60', N'HospitalApp.apk', N'20150414053753_796.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414053753_796.apk', N'.apk', N'文件', CAST(0x0000A47A01228EC6 AS DateTime), CAST(0x0000A47A01228EC6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'af447088-9132-4da6-85c8-d6097c8b9193', N'af447088-9132-4da6-85c8-d6097c8b9193', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150326054305_998.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150326054305_998.jpg', N'.jpg', N'图片', CAST(0x0000A4670123FC48 AS DateTime), CAST(0x0000A4670123FC48 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ab800386-f5af-4127-9003-d7013ff3fc19', N'ab800386-f5af-4127-9003-d7013ff3fc19', N'ic_launcher-.png', N'20150408030145_414.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030145_414.png', N'.png', N'图片', CAST(0x0000A47400F7AC91 AS DateTime), CAST(0x0000A47400F7AC91 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5cf529ad-17a8-4b70-b1d2-d7b0c92e1c2d', N'5cf529ad-17a8-4b70-b1d2-d7b0c92e1c2d', N'doctor2.jpg', N'20150414090440_538.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090440_538.jpg', N'.jpg', N'图片', CAST(0x0000A47A009599FF AS DateTime), CAST(0x0000A47A009599FF AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'699fe7d1-2be3-4376-9925-d8f97a305c36', N'699fe7d1-2be3-4376-9925-d8f97a305c36', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150401022809_689.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150401022809_689.jpg', N'.jpg', N'图片', CAST(0x0000A46D00EE724F AS DateTime), CAST(0x0000A46D00EE724F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9bbaf196-7053-4bb4-88de-d9749306973e', N'9bbaf196-7053-4bb4-88de-d9749306973e', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151209113127_577.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209113127_577.jpg', N'.jpg', N'图片', CAST(0x0000A5690183ABB3 AS DateTime), CAST(0x0000A5690183ABB3 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'136b7bbf-33f3-4e30-a170-d9aa4806562a', N'136b7bbf-33f3-4e30-a170-d9aa4806562a', N'hos2.jpg', N'20150410032638_902.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410032638_902.jpg', N'.jpg', N'图片', CAST(0x0000A47600FE8279 AS DateTime), CAST(0x0000A47600FE8279 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cf259a09-7a7d-4534-a70e-d9f712f556e7', N'cf259a09-7a7d-4534-a70e-d9f712f556e7', N'AgricultureSys.pdm', N'20150410113237_794.pdm', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410113237_794.pdm', N'.pdm', N'文件', CAST(0x0000A47600BE3CA7 AS DateTime), CAST(0x0000A47600BE3CA7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ee726e21-b34c-4f64-bad0-da8c8e874275', N'ee726e21-b34c-4f64-bad0-da8c8e874275', N'20091013122750706.jpg', N'20150424052104_755.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052104_755.jpg', N'.jpg', N'图片', CAST(0x0000A484011DF06F AS DateTime), CAST(0x0000A484011DF06F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b9508ef1-5f42-440f-8809-db23b3947ec0', N'b9508ef1-5f42-440f-8809-db23b3947ec0', N'20061171106636.jpg', N'20150424052011_811.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424052011_811.jpg', N'.jpg', N'图片', CAST(0x0000A484011DB21A AS DateTime), CAST(0x0000A484011DB21A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6c42d187-9fb4-480a-8121-dc1d63843d1e', N'6c42d187-9fb4-480a-8121-dc1d63843d1e', N'hos2.jpg', N'20150410030944_417.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410030944_417.jpg', N'.jpg', N'图片', CAST(0x0000A47600F9DDA5 AS DateTime), CAST(0x0000A47600F9DDA5 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'abd4d588-c8bd-418a-981e-dd62a46b9c4d', N'abd4d588-c8bd-418a-981e-dd62a46b9c4d', N'psb.jpg', N'20150407050331_966.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150407050331_966.jpg', N'.jpg', N'图片', CAST(0x0000A47301191E17 AS DateTime), CAST(0x0000A47301191E17 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6368d2b2-cacb-4a14-86d6-ddccf12e7562', N'6368d2b2-cacb-4a14-86d6-ddccf12e7562', N'ic_launcher.png', N'20150410100811_331.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150410100811_331.png', N'.png', N'图片', CAST(0x0000A47600A70BB6 AS DateTime), CAST(0x0000A47600A70BB6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f8651a68-1c6b-4758-bfb1-de77fca3bded', N'f8651a68-1c6b-4758-bfb1-de77fca3bded', N'HospitalApp.apk', N'20150410031349_126.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410031349_126.apk', N'.apk', N'文件', CAST(0x0000A47600FAFD1F AS DateTime), CAST(0x0000A47600FAFD1F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'797cacf6-87ec-43b5-a33e-dec70d4c1d87', N'797cacf6-87ec-43b5-a33e-dec70d4c1d87', N'advertising_default_2.jpg', N'20150414085550_304.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150414085550_304.jpg', N'.jpg', N'图片', CAST(0x0000A47A00932CA7 AS DateTime), CAST(0x0000A47A00932CA7 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e1140c35-5d02-4fe7-8fac-dee197ba859c', N'e1140c35-5d02-4fe7-8fac-dee197ba859c', N'feng5.jpg', N'20150410030925_723.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150410030925_723.jpg', N'.jpg', N'图片', CAST(0x0000A47600F9C785 AS DateTime), CAST(0x0000A47600F9C785 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5e0e986c-4c71-42ff-b861-df3f0d785e3b', N'5e0e986c-4c71-42ff-b861-df3f0d785e3b', N'hos1.jpg', N'20150410032622_433.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410032622_433.jpg', N'.jpg', N'图片', CAST(0x0000A47600FE6F3C AS DateTime), CAST(0x0000A47600FE6F3C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1ff383f0-0c22-4d22-9fd3-df53f8e19b2d', N'1ff383f0-0c22-4d22-9fd3-df53f8e19b2d', N'20150828034750203.jpg', N'20151222031306_354.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151222031306_354.jpg', N'.jpg', N'图片', CAST(0x0000A57600FACB83 AS DateTime), CAST(0x0000A57600FACB83 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'08fe5997-731d-45c9-8f92-dfec8436cd08', N'08fe5997-731d-45c9-8f92-dfec8436cd08', N'dd.jpg', N'20150327100229_138.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327100229_138.jpg', N'.jpg', N'图片', CAST(0x0000A46800A57A9D AS DateTime), CAST(0x0000A46800A57A9D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd730e7e0-b7ec-44ff-9b2d-e1790ddd936b', N'd730e7e0-b7ec-44ff-9b2d-e1790ddd936b', N'dsfds.png', N'20150414085135_991.png', N'Advertising', N'/Upload/', N'/Upload/20150414085135_991.png', N'.png', N'图片', CAST(0x0000A47A009201AE AS DateTime), CAST(0x0000A47A009201AE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'243245b5-31c9-4180-8e05-e372a17fa10e', N'243245b5-31c9-4180-8e05-e372a17fa10e', N'1.JPG', N'20150427033929_318.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427033929_318.JPG', N'.JPG', N'图片', CAST(0x0000A48701020971 AS DateTime), CAST(0x0000A48701020971 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'12514c69-6bca-4481-91a6-e4a09a6d5aa6', N'12514c69-6bca-4481-91a6-e4a09a6d5aa6', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151209114022_622.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209114022_622.png', N'.png', N'图片', CAST(0x0000A56901861E33 AS DateTime), CAST(0x0000A56901861E33 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3ccffe80-dd09-460c-933f-e639ae111363', N'3ccffe80-dd09-460c-933f-e639ae111363', N'u=2255833276,1914816603&fm=21&gp=0.jpg', N'20151205115412_223.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115412_223.jpg', N'.jpg', N'图片', CAST(0x0000A5650189EA8E AS DateTime), CAST(0x0000A5650189EA8E AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'30dc1ca3-1d12-4fab-98c8-e7700b46a940', N'30dc1ca3-1d12-4fab-98c8-e7700b46a940', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151201115827_205.png', N'TS_ClientUser', N'/Upload/', N'/Upload/20151201115827_205.png', N'.png', N'图片', CAST(0x0000A561018B15E0 AS DateTime), CAST(0x0000A561018B15E0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5f666aa7-b96c-48b8-acd3-e8025bf7d24c', N'5f666aa7-b96c-48b8-acd3-e8025bf7d24c', N'ic_launcher-.png', N'20150408030057_668.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030057_668.png', N'.png', N'图片', CAST(0x0000A47400F77522 AS DateTime), CAST(0x0000A47400F77522 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ac63b600-b93c-42cb-91fc-e80987e1919e', N'ac63b600-b93c-42cb-91fc-e80987e1919e', N'200611711056370.jpg', N'20150424045033_544.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424045033_544.jpg', N'.jpg', N'图片', CAST(0x0000A48401158F76 AS DateTime), CAST(0x0000A48401158F76 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e3d2669b-b6d3-49f0-8e8c-e819501ecba8', N'e3d2669b-b6d3-49f0-8e8c-e819501ecba8', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151201100824_926.png', N'TS_ClientUser', N'/Upload/', N'/Upload/20151201100824_926.png', N'.png', N'图片', CAST(0x0000A561016CDB94 AS DateTime), CAST(0x0000A561016CDB94 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'18333e32-ac27-4687-9f81-e844e7e82d4a', N'18333e32-ac27-4687-9f81-e844e7e82d4a', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151209115759_290.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209115759_290.jpg', N'.jpg', N'图片', CAST(0x0000A569018AF54A AS DateTime), CAST(0x0000A569018AF54A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c486cce6-bf9e-41cc-8f97-e87f97f1d54c', N'c486cce6-bf9e-41cc-8f97-e87f97f1d54c', N'QQ图片20150402151558.png', N'20150408024736_871.png', N'YH_Information', N'/Upload/', N'/Upload/20150408024736_871.png', N'.png', N'图片', CAST(0x0000A47400F3CA39 AS DateTime), CAST(0x0000A47400F3CA39 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'34edf83a-7f0d-4ddf-b6ed-e8cbba2951d2', N'34edf83a-7f0d-4ddf-b6ed-e8cbba2951d2', N'doctor4.jpg', N'20150414090501_261.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150414090501_261.jpg', N'.jpg', N'图片', CAST(0x0000A47A0095B28F AS DateTime), CAST(0x0000A47A0095B28F AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7d88bb1e-4cc0-4124-ba0f-ea4041169e44', N'7d88bb1e-4cc0-4124-ba0f-ea4041169e44', N'advertising_default_1.jpg', N'20150410032746_496.jpg', N'Advertising', N'/Upload/', N'/Upload/20150410032746_496.jpg', N'.jpg', N'图片', CAST(0x0000A47600FED2A0 AS DateTime), CAST(0x0000A47600FED2A0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ed2bc395-a583-4759-a5d8-eacbec940df9', N'81c304f2-642c-42f3-840f-7f8386261e3f', N'u=3615572253,2681908470&fm=23&gp=0.jpg', N'20150327091151_998.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327091151_998.jpg', N'.jpg', N'图片', CAST(0x0000A4680097920D AS DateTime), CAST(0x0000A4680097920D AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'cd6314b3-643f-4922-b32c-ec6beb075ae9', N'cd6314b3-643f-4922-b32c-ec6beb075ae9', N'电车e管家logo-144X144.png', N'20151225095854_911.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151225095854_911.png', N'.png', N'图片', CAST(0x0000A57900A47F2A AS DateTime), CAST(0x0000A57900A47F2A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'02a5a196-b057-4c50-a945-ed087dec4e4e', N'02a5a196-b057-4c50-a945-ed087dec4e4e', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205110631_409.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110631_409.png', N'.png', N'图片', CAST(0x0000A565017CD253 AS DateTime), CAST(0x0000A565017CD253 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f97910df-9806-4004-ae39-ed80b6ab6673', N'f97910df-9806-4004-ae39-ed80b6ab6673', N'icon_marka.png', N'20150414052324_698.png', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414052324_698.png', N'.png', N'文件', CAST(0x0000A47A011E9447 AS DateTime), CAST(0x0000A47A011E9447 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'de3268ec-4b6d-4b05-8c5e-ee2474e1e293', N'de3268ec-4b6d-4b05-8c5e-ee2474e1e293', N'2015414154143575.jpg', N'20150424053332_527.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150424053332_527.jpg', N'.jpg', N'图片', CAST(0x0000A48401215D73 AS DateTime), CAST(0x0000A48401215D73 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'23b81187-c314-4129-a404-eeb325bb4b35', N'23b81187-c314-4129-a404-eeb325bb4b35', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150414052907_840.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150414052907_840.apk', N'.apk', N'文件', CAST(0x0000A47A012026EC AS DateTime), CAST(0x0000A47A012026EC AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'69572bef-23af-413f-8f80-ef06a8bae6b0', N'69572bef-23af-413f-8f80-ef06a8bae6b0', N'u=1570278467,1171145550&fm=21&gp=0.jpg', N'20151209113300_522.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151209113300_522.jpg', N'.jpg', N'图片', CAST(0x0000A569018417A2 AS DateTime), CAST(0x0000A569018417A2 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9bd0fab3-8c8e-4cb1-b3c6-ef9b089af367', N'9bd0fab3-8c8e-4cb1-b3c6-ef9b089af367', N'ic_launcher-.png', N'20150408030159_625.png', N'YH_Information', N'/Upload/', N'/Upload/20150408030159_625.png', N'.png', N'图片', CAST(0x0000A47400F7BDD5 AS DateTime), CAST(0x0000A47400F7BDD5 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1240d1ed-97a3-40d5-92e2-f010e516eee9', N'52671915-e088-4d24-90cc-4b1d4991bf99', N'20150319023634_QQ图片20150316151742.jpg', N'20150403042208_437.jpg', N'YH_Information', N'/Upload/', N'/Upload/20150403042208_437.jpg', N'.jpg', N'图片', CAST(0x0000A46F010DC15A AS DateTime), CAST(0x0000A46F010DC15A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c8940956-05bb-4e01-b647-f18038a68c64', N'c8940956-05bb-4e01-b647-f18038a68c64', N'ic_launcher-.png', N'20150408030239_393.png', N'YH_Hospital', N'/Upload/', N'/Upload/20150408030239_393.png', N'.png', N'图片', CAST(0x0000A47400F7EC99 AS DateTime), CAST(0x0000A47400F7EC99 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'11bc913c-1196-4686-bf60-f19c0aab622a', N'11bc913c-1196-4686-bf60-f19c0aab622a', N'dsfds.png', N'20150410041837_892.png', N'Advertising', N'/Upload/', N'/Upload/20150410041837_892.png', N'.png', N'图片', CAST(0x0000A476010CCA13 AS DateTime), CAST(0x0000A476010CCA13 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'39b294da-b442-489e-86e0-f1da1b52655c', N'df582ae6-7dfd-472f-b4e6-d44c88b001a0', N'ic_launcher.png', N'20150407021556_843.png', N'YH_Information', N'/Upload/', N'/Upload/20150407021556_843.png', N'.png', N'图片', CAST(0x0000A47300EB17A8 AS DateTime), CAST(0x0000A47300EB17A8 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'04d929cc-9fd4-4ce4-9a7b-f300f31b5273', N'04d929cc-9fd4-4ce4-9a7b-f300f31b5273', N'com.ewell.guahao.wuxirenmin2.1423825039951.apk', N'20150415032011_667.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150415032011_667.apk', N'.apk', N'文件', CAST(0x0000A47B00FCBD49 AS DateTime), CAST(0x0000A47B00FCBD49 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7895b884-5e77-4628-96ec-f36f13ce2c49', N'7895b884-5e77-4628-96ec-f36f13ce2c49', N'200611710545301.jpg', N'20150424043830_234.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424043830_234.jpg', N'.jpg', N'图片', CAST(0x0000A48401123F81 AS DateTime), CAST(0x0000A48401123F81 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'78d68755-db65-46e4-8836-f45e94048dc6', N'78d68755-db65-46e4-8836-f45e94048dc6', N'QQ图片20151129103535.jpg', N'20151205102449_197.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151205102449_197.jpg', N'.jpg', N'图片', CAST(0x0000A56501715DF8 AS DateTime), CAST(0x0000A56501715DF8 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd2a6abe3-5a08-4811-a4f5-f4d035018860', N'd2a6abe3-5a08-4811-a4f5-f4d035018860', N'HospitalApp.apk', N'20150413092049_895.apk', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150413092049_895.apk', N'.apk', N'文件', CAST(0x0000A479009A091C AS DateTime), CAST(0x0000A479009A091C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'fe8591b6-85dc-4bf4-80dd-f4f38eb515dd', N'fe8591b6-85dc-4bf4-80dd-f4f38eb515dd', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151210120010_490.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151210120010_490.jpg', N'.jpg', N'图片', CAST(0x0000A56A00000CC6 AS DateTime), CAST(0x0000A56A00000CC6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'aa768d7b-7362-42c2-ad20-f6600bcde42e', N'aa768d7b-7362-42c2-ad20-f6600bcde42e', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205115749_779.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115749_779.png', N'.png', N'图片', CAST(0x0000A565018AE8C0 AS DateTime), CAST(0x0000A565018AE8C0 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'60f6c807-845f-4445-8c59-f6a8131afd99', N'60f6c807-845f-4445-8c59-f6a8131afd99', N'1.jpg', N'20150327034322_440.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327034322_440.jpg', N'.jpg', N'图片', CAST(0x0000A46801031B59 AS DateTime), CAST(0x0000A46801031B59 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0118da8b-f761-42ed-b1f4-f74cb581e444', N'81c304f2-642c-42f3-840f-7f8386261e3f', N'1.jpg', N'20150327091707_823.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150327091707_823.jpg', N'.jpg', N'图片', CAST(0x0000A468009904E6 AS DateTime), CAST(0x0000A468009904E6 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'75a07166-1fa5-4f60-933c-f75c9aff0b04', N'75a07166-1fa5-4f60-933c-f75c9aff0b04', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151220115651_569.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151220115651_569.jpg', N'.jpg', N'图片', CAST(0x0000A57400C4E400 AS DateTime), CAST(0x0000A57400C4E401 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'3556d589-0940-4f01-9463-f7bd67889585', N'3556d589-0940-4f01-9463-f7bd67889585', N'新建文本文档.txt', N'20150410030703_972.txt', N'AppVersion', N'/Upload/file/', N'/Upload/file/20150410030703_972.txt', N'.txt', N'文件', CAST(0x0000A47600F92208 AS DateTime), CAST(0x0000A47600F92208 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ed989e24-c9ec-4d79-9115-f8132de4f0db', N'ed989e24-c9ec-4d79-9115-f8132de4f0db', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151205110037_716.png', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205110037_716.png', N'.png', N'图片', CAST(0x0000A565017B33AE AS DateTime), CAST(0x0000A565017B33AE AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f367a2fa-96bb-41b9-8f90-f8cbe04b0037', N'f367a2fa-96bb-41b9-8f90-f8cbe04b0037', N'QQ图片20151129103535.jpg', N'20151205115418_392.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205115418_392.jpg', N'.jpg', N'图片', CAST(0x0000A5650189F16A AS DateTime), CAST(0x0000A5650189F16A AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'30c43d09-64cc-4e45-9780-f9e2c7729492', N'30c43d09-64cc-4e45-9780-f9e2c7729492', N'inside.jpg', N'20150413015855_532.jpg', N'YH_Navigation', N'/Upload/', N'/Upload/20150413015855_532.jpg', N'.jpg', N'图片', CAST(0x0000A47900E66A74 AS DateTime), CAST(0x0000A47900E66A74 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5246add0-a2f2-41b0-881c-fa6f1c3863f3', N'5246add0-a2f2-41b0-881c-fa6f1c3863f3', N'ooi.png', N'20150410051704_982.png', N'Advertising', N'/Upload/', N'/Upload/20150410051704_982.png', N'.png', N'图片', CAST(0x0000A476011CD761 AS DateTime), CAST(0x0000A476011CD761 AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'37bc8164-0a7c-410e-8e4b-fac6985c5440', N'37bc8164-0a7c-410e-8e4b-fac6985c5440', N'u=2573171573,3165954685&fm=21&gp=0.jpg', N'20151208105427_591.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151208105427_591.jpg', N'.jpg', N'图片', CAST(0x0000A5680179812C AS DateTime), CAST(0x0000A5680179812C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ead8e635-23b9-4906-a14e-fc75b990c634', N'ead8e635-23b9-4906-a14e-fc75b990c634', N'200611711112199.jpg', N'20150424045201_132.jpg', N'YH_Hospital', N'/Upload/', N'/Upload/20150424045201_132.jpg', N'.jpg', N'图片', CAST(0x0000A4840115F5FB AS DateTime), CAST(0x0000A4840115F5FB AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'e63fd503-fbde-4676-8901-fd8074f83657', N'e63fd503-fbde-4676-8901-fd8074f83657', N'QQ图片20151129103535.jpg', N'20151205111321_123.jpg', N'TS_ShopUser', N'/Upload/', N'/Upload/20151205111321_123.jpg', N'.jpg', N'图片', CAST(0x0000A565017EB1FA AS DateTime), CAST(0x0000A565017EB1FA AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'9940c67a-0b9a-47e4-a5d8-fe55ae48096f', N'9940c67a-0b9a-47e4-a5d8-fe55ae48096f', N'ac536b166d224f4af4c35f2b0ef790529922d1dc.jpg', N'20151221025612_495.jpg', N'TS_ClientUser', N'/Upload/', N'/Upload/20151221025612_495.jpg', N'.jpg', N'图片', CAST(0x0000A57500F6271C AS DateTime), CAST(0x0000A57500F6271C AS DateTime))
INSERT [dbo].[File_tb] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a55794d5-1a12-4a1e-8367-ff13ab6f5d33', N'a55794d5-1a12-4a1e-8367-ff13ab6f5d33', N'7.JPG', N'20150427043516_153.JPG', N'YH_Navigation', N'/Upload/', N'/Upload/20150427043516_153.JPG', N'.JPG', N'图片', CAST(0x0000A48701115C5A AS DateTime), CAST(0x0000A48701115C5A AS DateTime))
/****** Object:  Table [dbo].[File_Image]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[File_Image](
	[Id] [uniqueidentifier] NOT NULL,
	[ToId] [uniqueidentifier] NULL,
	[ShowName] [nvarchar](200) NULL,
	[FileName] [nvarchar](200) NULL,
	[SourceTable] [nvarchar](50) NULL,
	[Route] [nvarchar](250) NULL,
	[FullRoute] [nvarchar](250) NULL,
	[Suffix] [nvarchar](50) NULL,
	[FileType] [nvarchar](50) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_File_Image] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹对象Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'ToId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'ShowName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'SourceTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Route'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全文件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FullRoute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后缀名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'Suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'FileType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'File_Image', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'7117087a-d8b1-4feb-a6c4-09ffea96deae', N'a7b1a111-4667-4099-b855-8a2958777970', N'u=2013932676,760075586&fm=21&gp=0.jpg', N'20151210121450_109.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121450_109.jpg', N'.jpg', N'图片', CAST(0x0000A56A00041393 AS DateTime), CAST(0x0000A56A00041393 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b1f75090-06d1-4ea3-b35c-0d2402613f36', N'6627f0b5-3fea-4b9d-83b6-2683fb0c54c2', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151209113946_293.png', N'TS_Service', N'/Upload/', N'/Upload/20151209113946_293.png', N'.png', N'图片', CAST(0x0000A5690185F3B0 AS DateTime), CAST(0x0000A5690185F3B0 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a8807959-d888-4770-8b5a-0dd1fd0d925b', N'a8807959-d888-4770-8b5a-0dd1fd0d925b', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209105718_182.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105718_182.jpg', N'.jpg', N'图片', CAST(0x0000A569017A4295 AS DateTime), CAST(0x0000A569017A42DA AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a2a904dc-f69c-4865-8342-115ec141668e', N'a2a904dc-f69c-4865-8342-115ec141668e', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209110153_631.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110153_631.jpg', N'.jpg', N'图片', CAST(0x0000A569017B8CCD AS DateTime), CAST(0x0000A569017B8CCD AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'38f11c16-8df4-4045-a3d7-1966cf5f0ec6', N'd6807c66-c4fb-4350-83fd-afd19cb82693', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151210121528_601.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121528_601.jpg', N'.jpg', N'图片', CAST(0x0000A56A00043F92 AS DateTime), CAST(0x0000A56A00043F92 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1140457f-b3de-433b-a5af-19afbfd1ee8c', N'1140457f-b3de-433b-a5af-19afbfd1ee8c', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209112815_122.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209112815_122.jpg', N'.jpg', N'图片', CAST(0x0000A5690182C9EE AS DateTime), CAST(0x0000A5690182C9EE AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'f3ba3cb0-8a95-44e7-9e9d-254535fad9d7', N'6627f0b5-3fea-4b9d-83b6-2683fb0c54c2', N'QQ图片20151129103535.jpg', N'20151209114027_769.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209114027_769.jpg', N'.jpg', N'图片', CAST(0x0000A56901862443 AS DateTime), CAST(0x0000A56901862443 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'30db267b-5aa0-4133-b975-2cc280135708', N'a7b1a111-4667-4099-b855-8a2958777970', N'u=261243862,3752134608&fm=21&gp=0.jpg', N'20151210121443_572.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121443_572.jpg', N'.jpg', N'图片', CAST(0x0000A56A00040BD3 AS DateTime), CAST(0x0000A56A00040BD3 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'154311e5-e392-454d-8346-3c271a9fcd90', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115931_717.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115931_717.jpg', N'.jpg', N'图片', CAST(0x0000A569018B60BA AS DateTime), CAST(0x0000A569018B60BA AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'57794da5-a70c-4473-bdef-49b393a848d1', N'f0240045-38eb-4887-b3b9-64d528230258', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115659_622.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209115659_622.jpg', N'.jpg', N'图片', CAST(0x0000A569018AAE41 AS DateTime), CAST(0x0000A569018AAE41 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'dfd64fd6-a225-4121-ba6b-4ac16ae3dbc3', N'972515f4-a5d1-4c06-9a12-030a77a864e2', N'u=2573171573,3165954685&fm=21&gp=0.jpg', N'20151209113447_795.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209113447_795.jpg', N'.jpg', N'图片', CAST(0x0000A56901849617 AS DateTime), CAST(0x0000A56901849617 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'55bc4b49-9791-4235-a621-4f01baf57fca', N'e71ab98a-d450-4a36-880d-7617921c84de', N'', N'20151225100132_110_20150828034750203.jpg', N'TS_TransactionHandler', N'/upload/image/', N'/upload/image/20151225100132_110_20150828034750203.jpg', N'jpeg', N'图片', CAST(0x0000A57900A52C34 AS DateTime), CAST(0x0000A57900A52CA7 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'8a8fc456-2f21-4f7b-8404-5ec0cedc8e8d', N'4b71d779-fd28-4848-bcd9-cfd91b6e8367', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115743_701.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115743_701.jpg', N'.jpg', N'图片', CAST(0x0000A569018AE1DD AS DateTime), CAST(0x0000A569018AE1DD AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'511a1ef1-0a28-4f4f-9d25-6404db599609', N'4b71d779-fd28-4848-bcd9-cfd91b6e8367', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209115737_582.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115737_582.jpg', N'.jpg', N'图片', CAST(0x0000A569018ADAE1 AS DateTime), CAST(0x0000A569018ADAE1 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'a3c2809a-db80-4bdf-8a91-6536abdb8860', N'a3c2809a-db80-4bdf-8a91-6536abdb8860', N'u=3261219742,370558686&fm=21&gp=0.jpg', N'20151209105803_103.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105803_103.jpg', N'.jpg', N'图片', CAST(0x0000A569017A7F28 AS DateTime), CAST(0x0000A569017A7F28 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0b6b4cc1-224e-41c8-a06e-8b1b12e8d28b', N'b2acb895-5576-4ceb-a30e-b8c9f04fda74', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209111354_701.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209111354_701.jpg', N'.jpg', N'图片', CAST(0x0000A569017ED89B AS DateTime), CAST(0x0000A569017ED89B AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'd3af1f00-a000-4645-b87f-95f1a2054da3', N'f0240045-38eb-4887-b3b9-64d528230258', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115706_704.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209115706_704.jpg', N'.jpg', N'图片', CAST(0x0000A569018AB64A AS DateTime), CAST(0x0000A569018AB64A AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'1ddcedc1-aa61-4ea6-94cc-a43be158d88a', N'972515f4-a5d1-4c06-9a12-030a77a864e2', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151209113345_668.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209113345_668.jpg', N'.jpg', N'图片', CAST(0x0000A56901844CA5 AS DateTime), CAST(0x0000A56901844CA5 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'0b9ef2b8-25f1-4f47-a2ac-a6a9c79d21dd', N'0b9ef2b8-25f1-4f47-a2ac-a6a9c79d21dd', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151209110227_861.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110227_861.jpg', N'.jpg', N'图片', CAST(0x0000A569017BB3DB AS DateTime), CAST(0x0000A569017BB3DB AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'923d334b-90e8-4659-998a-a9d6ca776acf', N'0f46f2d9-e1c2-46cc-8901-50aa64720a83', N'u=3567764886,687894654&fm=21&gp=0.jpg', N'20151210120005_939.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151210120005_939.jpg', N'.jpg', N'图片', CAST(0x0000A56A000006DF AS DateTime), CAST(0x0000A56A000006DF AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'995386ce-49c6-489c-ba8a-aa1f90470c57', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209115937_257.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115937_257.jpg', N'.jpg', N'图片', CAST(0x0000A569018B6815 AS DateTime), CAST(0x0000A569018B6815 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'eea0e01a-fb5d-42d7-8750-b3e30fa79d8f', N'27fd68b9-430b-4b99-b69c-bf2a6af8451c', N'u=2573171573,3165954685&fm=21&gp=0.jpg', N'20151209115753_475.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151209115753_475.jpg', N'.jpg', N'图片', CAST(0x0000A569018AEE24 AS DateTime), CAST(0x0000A569018AEE24 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'b8b65365-e168-4d8c-9854-beaa81929536', N'b8b65365-e168-4d8c-9854-beaa81929536', N'u=1209623904,4030962403&fm=21&gp=0.jpg', N'20151209105752_285.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209105752_285.jpg', N'.jpg', N'图片', CAST(0x0000A569017A7248 AS DateTime), CAST(0x0000A569017A7248 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'6e250303-4976-4058-a3ff-c1abf451336a', N'6e250303-4976-4058-a3ff-c1abf451336a', N'u=2658325281,3631624802&fm=21&gp=0.jpg', N'20151210121055_778.jpg', N'TS_Shop', N'/Upload/', N'/Upload/20151210121055_778.jpg', N'.jpg', N'图片', CAST(0x0000A56A00030065 AS DateTime), CAST(0x0000A56A00030065 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'84a5d51f-7036-4ccb-a414-c96e6101a1ed', N'c068ca04-f3b4-4895-b561-57785e3b14c6', N'20150828034726781.jpg', N'20151222023314_995.jpg', N'TS_Service', N'/Upload/', N'/Upload/20151222023314_995.jpg', N'.jpg', N'图片', CAST(0x0000A57600EFD79D AS DateTime), CAST(0x0000A57600EFD79D AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'c2b7b5fc-7229-4018-a923-e8aab0c9b0b5', N'a81fb98c-bdc1-4819-8da2-4bca2e218e48', N'044E0A6F6B75AA3D5329EF38B8658F7C.png', N'20151209111508_459.png', N'TS_Transaction', N'/Upload/', N'/Upload/20151209111508_459.png', N'.png', N'图片', CAST(0x0000A569017F3057 AS DateTime), CAST(0x0000A569017F3057 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'5f55780d-3897-4707-8bb5-fd0608481e30', N'5f55780d-3897-4707-8bb5-fd0608481e30', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209110220_379.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110220_379.jpg', N'.jpg', N'图片', CAST(0x0000A569017BABE3 AS DateTime), CAST(0x0000A569017BABE3 AS DateTime))
INSERT [dbo].[File_Image] ([Id], [ToId], [ShowName], [FileName], [SourceTable], [Route], [FullRoute], [Suffix], [FileType], [AddTime], [UpdateTime]) VALUES (N'ccc082b5-ac29-4723-bc81-ffa1341797f2', N'ccc082b5-ac29-4723-bc81-ffa1341797f2', N'u=3005229777,3975664085&fm=21&gp=0.jpg', N'20151209110147_242.jpg', N'TS_Transaction', N'/Upload/', N'/Upload/20151209110147_242.jpg', N'.jpg', N'图片', CAST(0x0000A569017B854F AS DateTime), CAST(0x0000A569017B854F AS DateTime))
/****** Object:  UserDefinedFunction [dbo].[F_PoiDistance]    Script Date: 12/29/2015 17:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		谭杰
-- Create date: 20150302
-- Description:	计算百度地图2个坐标之间的距离
-- =============================================
create Function [dbo].[F_PoiDistance](@lat_a float,@lng_a float,@lat_b float,@lng_b float)
	returns float
AS
	Begin
		Declare @pk float
		Declare @a1 float
		Declare @a2 float
		Declare @b1 float
		Declare @b2 float

		Declare @t1 float
		Declare @t2 float
		Declare @t3 float
		Declare @t4 float

		set @pk = 180/3.14169

		set @a1 = @lat_a / @pk
		set @a2 = @lng_a / @pk

		set @b1 = @lat_b / @pk
		set @b2 = @lng_b / @pk

		set @t1 = COS(@a1)*COS(@a2)*COS(@b1)*COS(@b2)
		set @t2 = COS(@a1)*sin(@a2)*COS(@b1)*sin(@b2)
		set @t3 = SIN(@a1)*SIN(@b1)
		set @t4 = ACOS(@t1+@t2+@t3)
		return @t4*6366000
	End
GO
/****** Object:  Table [dbo].[Demo_Tram]    Script Date: 12/29/2015 17:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demo_Tram](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[TramBrand] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[TypeId] [int] NULL,
	[TramNo] [nvarchar](50) NULL,
	[CarNo] [nvarchar](50) NULL,
	[IsEnable] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[Business] [nvarchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
 CONSTRAINT [PK_Demo_Tram] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Demo_Tram] ([Id], [UserName], [TramBrand], [Tel], [TypeId], [TramNo], [CarNo], [IsEnable], [CreateTime], [Business], [Remarks]) VALUES (N'4f7a6ad4-6395-4d65-b961-5727e598fe85', N'452', N'12', N'12', 1, N'12', N'12', 1, CAST(0x0000A30200F61224 AS DateTime), N'临时停车%&长期停车', N'121200000')
INSERT [dbo].[Demo_Tram] ([Id], [UserName], [TramBrand], [Tel], [TypeId], [TramNo], [CarNo], [IsEnable], [CreateTime], [Business], [Remarks]) VALUES (N'cc8628a2-a2eb-4b62-b580-8bf3d3f2fa0d', N'小帅', N'23', N'1234455', 1, N'23', N'23', 0, CAST(0x0000A30200EF4264 AS DateTime), N'临时停车%&长期停车', N'23')
INSERT [dbo].[Demo_Tram] ([Id], [UserName], [TramBrand], [Tel], [TypeId], [TramNo], [CarNo], [IsEnable], [CreateTime], [Business], [Remarks]) VALUES (N'9189cc3d-1848-4b37-bbeb-adc750c14a63', N'12', N'12', N'12', 1, N'11', N'112', 0, CAST(0x0000A30200F0C9CC AS DateTime), N'临时停车%&长期停车', N'12121')
/****** Object:  View [dbo].[v_TS_ShopUser]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_ShopUser]
AS
SELECT     dbo.Sys_Dictionary.Name AS CategoryName, dbo.SysItem.ItemName AS StatesName, dbo.TS_ShopUser.Id, dbo.TS_ShopUser.ImgeUrl, dbo.TS_ShopUser.TrueName, 
                      dbo.TS_ShopUser.UserName, dbo.TS_ShopUser.Pwd, dbo.TS_ShopUser.Phone, dbo.TS_ShopUser.ProvinceCode, dbo.TS_ShopUser.CityCode, 
                      dbo.TS_ShopUser.AreaCode, dbo.TS_ShopUser.Address, dbo.TS_ShopUser.Category, dbo.TS_ShopUser.Details, dbo.TS_ShopUser.Longitude, 
                      dbo.TS_ShopUser.Latitude, dbo.TS_ShopUser.LocationUpdateTime, dbo.TS_ShopUser.AddTime, dbo.TS_ShopUser.UpdateTime, dbo.TS_ShopUser.States, 
                      dbo.TS_ShopUser.isValid, dbo.TS_ShopUser.isDeleted, Province.Name AS ProvinceName, city.Name AS CityName, area.Name AS AreaName, 
                      dbo.TS_ShopUser.geohash
FROM         dbo.Sys_CityArea AS area RIGHT OUTER JOIN
                      dbo.TS_ShopUser LEFT OUTER JOIN
                      dbo.Sys_CityArea AS city ON dbo.TS_ShopUser.CityCode = city.ValueName ON dbo.TS_ShopUser.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_ShopUser.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_ShopUser.Category = dbo.Sys_Dictionary.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_ShopUser.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[5] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "area"
            Begin Extent = 
               Top = 272
               Left = 240
               Bottom = 465
               Right = 382
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_ShopUser"
            Begin Extent = 
               Top = 14
               Left = 532
               Bottom = 383
               Right = 718
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "city"
            Begin Extent = 
               Top = 127
               Left = 172
               Bottom = 305
               Right = 314
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 0
               Left = 17
               Bottom = 181
               Right = 159
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 190
               Left = 896
               Bottom = 415
               Right = 1040
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 56
               Left = 678
               Bottom = 366
               Right = 822
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUser'
GO
/****** Object:  View [dbo].[v_TS_Shop]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_Shop]
AS
SELECT     dbo.Sys_Dictionary.Name AS CategoryName, dbo.TS_Shop.Id, dbo.TS_Shop.TName, dbo.TS_Shop.ImageUrlMax, dbo.TS_Shop.ImageUrl, dbo.TS_Shop.Star, 
                      dbo.TS_Shop.Phone, dbo.TS_Shop.Details, dbo.TS_Shop.Category, dbo.TS_Shop.CreateManId, dbo.TS_Shop.ProvinceCode, dbo.TS_Shop.CityCode, 
                      dbo.TS_Shop.AreaCode, dbo.TS_Shop.Address, dbo.TS_Shop.CallCount, dbo.TS_Shop.Praises, dbo.TS_Shop.Clicks, dbo.TS_Shop.CreateTime, 
                      dbo.TS_Shop.UpdateTime, dbo.TS_Shop.Longitude, dbo.TS_Shop.Latitude, dbo.TS_Shop.States, dbo.TS_Shop.isValid, dbo.TS_Shop.isDeleted, 
                      dbo.SysItem.ItemName AS StatesName, Province.Name AS ProvinceName, city.Name AS CityName, area.Name AS AreaName, dbo.TS_ShopUser.TrueName, 
                      dbo.TS_ShopUser.UserName, dbo.TS_Shop.geohash
FROM         dbo.Sys_CityArea AS city RIGHT OUTER JOIN
                      dbo.TS_Shop LEFT OUTER JOIN
                      dbo.TS_ShopUser ON dbo.TS_Shop.CreateManId = dbo.TS_ShopUser.Id ON city.ValueName = dbo.TS_Shop.CityCode LEFT OUTER JOIN
                      dbo.Sys_CityArea AS area ON dbo.TS_Shop.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_Shop.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_Shop.States = dbo.SysItem.ItemValue LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_Shop.Category = dbo.Sys_Dictionary.ValueName
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[10] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "city"
            Begin Extent = 
               Top = 168
               Left = 129
               Bottom = 287
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_Shop"
            Begin Extent = 
               Top = 0
               Left = 449
               Bottom = 406
               Right = 601
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TS_ShopUser"
            Begin Extent = 
               Top = 122
               Left = 734
               Bottom = 292
               Right = 920
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "area"
            Begin Extent = 
               Top = 308
               Left = 246
               Bottom = 427
               Right = 388
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 29
               Left = 185
               Bottom = 148
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 175
               Left = 1053
               Bottom = 447
               Right = 1197
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 9
               Left = 976
               Bottom = 321
               Right = 1120
            End
            Displ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Shop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Shop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Shop'
GO
/****** Object:  View [dbo].[v_TS_ServiceNew]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_ServiceNew]
AS
SELECT     dbo.TS_ServiceNew.Id, dbo.TS_ServiceNew.TName, dbo.TS_ServiceNew.ImageUrlMax, dbo.TS_ServiceNew.ImageUrl, dbo.TS_ServiceNew.Star, 
                      dbo.TS_ServiceNew.Phone, dbo.TS_ServiceNew.Details, dbo.TS_ServiceNew.Category, dbo.TS_ServiceNew.CreateManId, dbo.TS_ServiceNew.ProvinceCode, 
                      dbo.TS_ServiceNew.CityCode, dbo.TS_ServiceNew.AreaCode, dbo.TS_ServiceNew.Address, dbo.TS_ServiceNew.CallCount, dbo.TS_ServiceNew.Praises, 
                      dbo.TS_ServiceNew.Clicks, dbo.TS_ServiceNew.CreateTime, dbo.TS_ServiceNew.UpdateTime, dbo.TS_ServiceNew.States, dbo.TS_ServiceNew.isValid, 
                      dbo.TS_ServiceNew.isDeleted, Province.Name AS ProvinceName, city.Name AS CityName, area.Name AS AreaName, dbo.Sys_Dictionary.Name AS CategoryName, 
                      dbo.SysItem.ItemName AS StatesName
FROM         dbo.Sys_CityArea AS area RIGHT OUTER JOIN
                      dbo.TS_ServiceNew LEFT OUTER JOIN
                      dbo.Sys_CityArea AS city ON dbo.TS_ServiceNew.CityCode = city.ValueName ON dbo.TS_ServiceNew.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_ServiceNew.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_ServiceNew.Category = dbo.Sys_Dictionary.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_ServiceNew.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[26] 4[8] 2[61] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TS_ServiceNew"
            Begin Extent = 
               Top = 50
               Left = 539
               Bottom = 525
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "area"
            Begin Extent = 
               Top = 370
               Left = 140
               Bottom = 489
               Right = 282
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "city"
            Begin Extent = 
               Top = 222
               Left = 107
               Bottom = 341
               Right = 249
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 11
               Left = 154
               Bottom = 130
               Right = 296
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 0
               Left = 818
               Bottom = 216
               Right = 962
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 154
               Left = 1035
               Bottom = 273
               Right = 1179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width =' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ServiceNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ServiceNew'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ServiceNew'
GO
/****** Object:  View [dbo].[v_TS_Service]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_Service]
AS
SELECT     dbo.Sys_Dictionary.Name AS CategoryName, dbo.SysItem.ItemName AS StatesName, dbo.TS_Service.Id, dbo.TS_Service.TName, dbo.TS_Service.ImageUrlMax, 
                      dbo.TS_Service.ImageUrl, dbo.TS_Service.Star, dbo.TS_Service.Phone, dbo.TS_Service.Details, dbo.TS_Service.Types, dbo.TS_Service.Category, 
                      dbo.TS_Service.CreateManId, dbo.TS_Service.ProvinceCode, dbo.TS_Service.CityCode, dbo.TS_Service.AreaCode, dbo.TS_Service.Address, 
                      dbo.TS_Service.CallCount, dbo.TS_Service.Praises, dbo.TS_Service.Clicks, dbo.TS_Service.CreateTime, dbo.TS_Service.UpdateTime, dbo.TS_Service.Longitude, 
                      dbo.TS_Service.Latitude, dbo.TS_Service.States, dbo.TS_Service.isValid, dbo.TS_Service.isDeleted, Province.Name AS ProvinceName, city.Name AS CityName, 
                      area.Name AS AreaName, dbo.TS_ShopUser.TrueName, dbo.TS_ShopUser.UserName, dbo.TS_Service.geohash
FROM         dbo.Sys_CityArea AS city RIGHT OUTER JOIN
                      dbo.TS_Service LEFT OUTER JOIN
                      dbo.TS_ShopUser ON dbo.TS_Service.CreateManId = dbo.TS_ShopUser.Id ON city.ValueName = dbo.TS_Service.CityCode LEFT OUTER JOIN
                      dbo.Sys_CityArea AS area ON dbo.TS_Service.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_Service.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_Service.Category = dbo.Sys_Dictionary.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_Service.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[72] 4[3] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "city"
            Begin Extent = 
               Top = 160
               Left = 124
               Bottom = 279
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_Service"
            Begin Extent = 
               Top = 13
               Left = 399
               Bottom = 440
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "TS_ShopUser"
            Begin Extent = 
               Top = 226
               Left = 708
               Bottom = 345
               Right = 894
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "area"
            Begin Extent = 
               Top = 392
               Left = 66
               Bottom = 511
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 0
               Left = 199
               Bottom = 119
               Right = 341
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 8
               Left = 695
               Bottom = 224
               Right = 839
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 261
               Left = 967
               Bottom = 500
               Right = 1111
            End
            DisplayFl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Service'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Service'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Service'
GO
/****** Object:  View [dbo].[v_TS_RepairShop]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_RepairShop]
AS
SELECT     dbo.SysItem.ItemName AS StatesName, dbo.Sys_Dictionary.Name AS CategoryName, dbo.TS_RepairShop.Id, dbo.TS_RepairShop.TName, 
                      dbo.TS_RepairShop.ImageUrlMax, dbo.TS_RepairShop.ImageUrl, dbo.TS_RepairShop.Star, dbo.TS_RepairShop.Phone, dbo.TS_RepairShop.Details, 
                      dbo.TS_RepairShop.IsRepair, dbo.TS_RepairShop.Category, dbo.TS_RepairShop.CreateManId, dbo.TS_RepairShop.ProvinceCode, dbo.TS_RepairShop.CityCode, 
                      dbo.TS_RepairShop.AreaCode, dbo.TS_RepairShop.Address, dbo.TS_RepairShop.CallCount, dbo.TS_RepairShop.Praises, dbo.TS_RepairShop.Clicks, 
                      dbo.TS_RepairShop.CreateTime, dbo.TS_RepairShop.UpdateTime, dbo.TS_RepairShop.Longitude, dbo.TS_RepairShop.Latitude, dbo.TS_RepairShop.States, 
                      dbo.TS_RepairShop.isValid, dbo.TS_RepairShop.isDeleted, Province.Name AS ProvinceName, city.Name AS CityName, area.Name AS AreaName, 
                      dbo.TS_ShopUser.UserName, dbo.TS_ShopUser.TrueName, dbo.TS_RepairShop.geohash
FROM         dbo.Sys_CityArea AS city RIGHT OUTER JOIN
                      dbo.TS_RepairShop LEFT OUTER JOIN
                      dbo.TS_ShopUser ON dbo.TS_RepairShop.CreateManId = dbo.TS_ShopUser.Id ON city.ValueName = dbo.TS_RepairShop.CityCode LEFT OUTER JOIN
                      dbo.Sys_CityArea AS area ON dbo.TS_RepairShop.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_RepairShop.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_RepairShop.States = dbo.SysItem.ItemValue LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_RepairShop.Category = dbo.Sys_Dictionary.ValueName
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[10] 2[40] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "city"
            Begin Extent = 
               Top = 241
               Left = 25
               Bottom = 413
               Right = 167
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_RepairShop"
            Begin Extent = 
               Top = 20
               Left = 411
               Bottom = 456
               Right = 566
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_ShopUser"
            Begin Extent = 
               Top = 198
               Left = 804
               Bottom = 413
               Right = 990
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "area"
            Begin Extent = 
               Top = 346
               Left = 209
               Bottom = 530
               Right = 351
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 5
               Left = 139
               Bottom = 216
               Right = 281
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 369
               Left = 658
               Bottom = 608
               Right = 802
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 0
               Left = 672
               Bottom = 200
               Right = 816
            End
            Dis' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_RepairShop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'playFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_RepairShop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_RepairShop'
GO
/****** Object:  View [dbo].[v_TS_ClientUser]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_ClientUser]
AS
SELECT     dbo.Sys_Dictionary.Name AS CategoryName, dbo.SysItem.ItemName AS StatesName, dbo.TS_ClientUser.Id, dbo.TS_ClientUser.ImgeUrl, 
                      dbo.TS_ClientUser.TrueName, dbo.TS_ClientUser.UserName, dbo.TS_ClientUser.Pwd, dbo.TS_ClientUser.Phone, dbo.TS_ClientUser.ProvinceCode, 
                      dbo.TS_ClientUser.CityCode, dbo.TS_ClientUser.AreaCode, dbo.TS_ClientUser.Address, dbo.TS_ClientUser.Category, dbo.TS_ClientUser.Details, 
                      dbo.TS_ClientUser.Longitude, dbo.TS_ClientUser.Latitude, dbo.TS_ClientUser.LocationUpdateTime, dbo.TS_ClientUser.AddTime, dbo.TS_ClientUser.UpdateTime, 
                      dbo.TS_ClientUser.States, dbo.TS_ClientUser.isValid, dbo.TS_ClientUser.isDeleted, Province.Name AS ProvinceName, city.Name AS CityName, 
                      area.Name AS AreaName, dbo.TS_ClientUser.NickName, dbo.TS_ClientUser.geohash
FROM         dbo.Sys_CityArea AS area RIGHT OUTER JOIN
                      dbo.TS_ClientUser LEFT OUTER JOIN
                      dbo.Sys_CityArea AS city ON dbo.TS_ClientUser.CityCode = city.ValueName ON dbo.TS_ClientUser.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_ClientUser.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_ClientUser.Category = dbo.Sys_Dictionary.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_ClientUser.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[54] 4[3] 3[19] 2) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "area"
            Begin Extent = 
               Top = 294
               Left = 123
               Bottom = 413
               Right = 265
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_ClientUser"
            Begin Extent = 
               Top = 6
               Left = 541
               Bottom = 391
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "city"
            Begin Extent = 
               Top = 146
               Left = 111
               Bottom = 265
               Right = 253
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 16
               Left = 176
               Bottom = 135
               Right = 318
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 3
               Left = 1041
               Bottom = 201
               Right = 1185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 149
               Left = 880
               Bottom = 376
               Right = 1024
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ClientUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'      Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ClientUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ClientUser'
GO
/****** Object:  View [dbo].[v_TS_Car]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_Car]
AS
SELECT     dbo.Sys_Dictionary.Name, dbo.SysItem.ItemName AS StatesName, dbo.TS_Shop.Phone, dbo.TS_Shop.Address, dbo.TS_Shop.AreaCode, dbo.TS_Shop.CityCode, 
                      dbo.TS_Shop.ProvinceCode, dbo.TS_Car.Id, dbo.TS_Car.TName, dbo.TS_Car.ImageUrlMax, dbo.TS_Car.ImageUrl, dbo.TS_Car.Star, dbo.TS_Car.Brand, 
                      dbo.TS_Car.Details, dbo.TS_Car.Price, dbo.TS_Car.Category, dbo.TS_Car.ShopId, dbo.TS_Car.CreateManId, dbo.TS_Car.Praises, dbo.TS_Car.CreateTime, 
                      dbo.TS_Car.UpdateTime, dbo.TS_Car.States, dbo.TS_Car.isValid, dbo.TS_Car.isDeleted, dbo.TS_Shop.TName AS ShopName
FROM         dbo.TS_Car LEFT OUTER JOIN
                      dbo.TS_Shop ON dbo.TS_Car.ShopId = dbo.TS_Shop.Id LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_Car.States = dbo.SysItem.ItemValue LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_Car.Category = dbo.Sys_Dictionary.ValueName
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[3] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TS_Car"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 331
               Right = 190
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_Shop"
            Begin Extent = 
               Top = 25
               Left = 833
               Bottom = 423
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 218
               Left = 456
               Bottom = 337
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 22
               Left = 300
               Bottom = 250
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Car'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Car'
GO
/****** Object:  View [dbo].[v_Sys_CityArea]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Sys_CityArea]
AS
SELECT     dbo.Sys_CityArea.Id, dbo.Sys_CityArea.ParentId, dbo.Sys_CityArea.OrderNo, dbo.Sys_CityArea.Name, dbo.Sys_CityArea.ValueName, dbo.Sys_CityArea.Remarks, 
                      dbo.Sys_CityArea.Icon, dbo.Sys_CityArea.AreaTypes, dbo.SysItem.ItemName AS AreaTypesName
FROM         dbo.Sys_CityArea LEFT OUTER JOIN
                      dbo.SysItem ON dbo.Sys_CityArea.AreaTypes = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'AreaTypes')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sys_CityArea"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 24
               Left = 550
               Bottom = 291
               Right = 694
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_CityArea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_CityArea'
GO
/****** Object:  View [dbo].[v_Sys_AppVerSion]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Sys_AppVerSion]
AS
SELECT     dbo.Sys_AppVerSion.Id, dbo.Sys_AppVerSion.Category, dbo.Sys_AppVerSion.TName, dbo.Sys_AppVerSion.Version, dbo.Sys_AppVerSion.Url, 
                      dbo.Sys_AppVerSion.Remarks, dbo.Sys_AppVerSion.AddTime, dbo.Sys_AppVerSion.UpdateTime, dbo.Sys_AppVerSion.States, 
                      dbo.Sys_Dictionary.Name AS CategoryName, dbo.Sys_AppVerSion.isDeleted
FROM         dbo.Sys_AppVerSion LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.Sys_AppVerSion.Category = dbo.Sys_Dictionary.ValueName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sys_AppVerSion"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 275
               Right = 184
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 6
               Left = 222
               Bottom = 316
               Right = 366
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_AppVerSion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_AppVerSion'
GO
/****** Object:  View [dbo].[v_Sys_Advertising]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_Sys_Advertising]
AS
SELECT     dbo.Sys_Advertising.Id, dbo.Sys_Advertising.Category, dbo.Sys_Advertising.ImageUrl, dbo.Sys_Advertising.Title, dbo.Sys_Advertising.Resume, 
                      dbo.Sys_Advertising.Url, dbo.Sys_Advertising.Details, dbo.Sys_Advertising.AddTime, dbo.Sys_Advertising.UpdateTime, dbo.Sys_Advertising.DeadLine, 
                      dbo.Sys_Advertising.States, dbo.Sys_Dictionary.Name AS CategoryName, dbo.Sys_Advertising.isDeleted, dbo.Sys_Advertising.CType, 
                      dbo.Sys_Advertising.ToId
FROM         dbo.Sys_Advertising LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.Sys_Advertising.Category = dbo.Sys_Dictionary.ValueName
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sys_Advertising"
            Begin Extent = 
               Top = 19
               Left = 61
               Bottom = 285
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 6
               Left = 406
               Bottom = 297
               Right = 550
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_Advertising'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Sys_Advertising'
GO
/****** Object:  View [dbo].[V_RoleManus]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_RoleManus]
AS
SELECT     dbo.RMS_RoleManus.ManuId, dbo.RMS_RoleManus.RoleId, dbo.RMS_Menus.ParentManuId, dbo.RMS_Menus.Remarks, dbo.RMS_Menus.OrderNo, 
                      dbo.RMS_Menus.ManuName, dbo.RMS_Menus.URL, dbo.RMS_Menus.IsShow, dbo.RMS_Menus.IsEnable, dbo.RMS_Menus.Icon, dbo.RMS_Menus.MIcon
FROM         dbo.RMS_Menus INNER JOIN
                      dbo.RMS_RoleManus ON dbo.RMS_Menus.Id = dbo.RMS_RoleManus.ManuId
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_RoleManus"
            Begin Extent = 
               Top = 1
               Left = 156
               Bottom = 256
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Menus"
            Begin Extent = 
               Top = 3
               Left = 386
               Bottom = 262
               Right = 543
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManus'
GO
/****** Object:  View [dbo].[V_RoleManuButtons]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_RoleManuButtons]
AS
SELECT     dbo.RMS_RoleManuButtons.RoleId, dbo.RMS_MenuButtons.ManuId, dbo.RMS_MenuButtons.OrderNo, dbo.RMS_Buttons.Icon, dbo.RMS_Buttons.Remarks, 
                      dbo.RMS_Buttons.CreateTime, dbo.RMS_Buttons.ModifyTime, dbo.RMS_Buttons.ValueName, dbo.RMS_Buttons.FunctionName, dbo.RMS_Buttons.ButtonName, 
                      dbo.RMS_Buttons.Id
FROM         dbo.RMS_RoleManuButtons INNER JOIN
                      dbo.RMS_MenuButtons ON dbo.RMS_RoleManuButtons.MenuButtonsId = dbo.RMS_MenuButtons.Id INNER JOIN
                      dbo.RMS_Buttons ON dbo.RMS_MenuButtons.ButtonId = dbo.RMS_Buttons.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_RoleManuButtons"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 257
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_MenuButtons"
            Begin Extent = 
               Top = 13
               Left = 258
               Bottom = 266
               Right = 400
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Buttons"
            Begin Extent = 
               Top = 6
               Left = 438
               Bottom = 275
               Right = 595
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManuButtons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_RoleManuButtons'
GO
/****** Object:  View [dbo].[V_Role]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Role]
AS
SELECT     dbo.RMS_Role.Id, dbo.RMS_Role.RoleName, dbo.RMS_Role.Remarks, dbo.RMS_Role.CreateBy, dbo.RMS_Role.CreateTime, dbo.RMS_Role.ModifyBy, 
                      dbo.RMS_Role.ModifyTime, dbo.RMS_Role.RoleTypes, dbo.SysItem.ItemName AS RoleTypesName
FROM         dbo.RMS_Role LEFT OUTER JOIN
                      dbo.SysItem ON dbo.RMS_Role.RoleTypes = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'RoleTypes')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_Role"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 239
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 6
               Left = 220
               Bottom = 243
               Right = 364
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Role'
GO
/****** Object:  View [dbo].[V_MenuButtons]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MenuButtons]
AS
SELECT     dbo.RMS_MenuButtons.ManuId, dbo.RMS_MenuButtons.OrderNo, dbo.RMS_Buttons.Id, dbo.RMS_Buttons.ButtonName, dbo.RMS_Buttons.Icon, 
                      dbo.RMS_Buttons.Remarks, dbo.RMS_Buttons.CreateTime, dbo.RMS_Buttons.ModifyTime, dbo.RMS_Buttons.ValueName, 
                      dbo.RMS_MenuButtons.Id AS MenuButtonsId, dbo.RMS_Buttons.FunctionName
FROM         dbo.RMS_MenuButtons INNER JOIN
                      dbo.RMS_Buttons ON dbo.RMS_MenuButtons.ButtonId = dbo.RMS_Buttons.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[28] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_MenuButtons"
            Begin Extent = 
               Top = 32
               Left = 505
               Bottom = 252
               Right = 749
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Buttons"
            Begin Extent = 
               Top = 21
               Left = 174
               Bottom = 248
               Right = 322
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MenuButtons'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_MenuButtons'
GO
/****** Object:  View [dbo].[V_UserRole]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_UserRole]
AS
SELECT     dbo.RMS_User.Id, dbo.RMS_User.LoginName, dbo.RMS_User.TrueName, dbo.RMS_User.Password, dbo.RMS_User.CreateTime, dbo.RMS_User.ModifyTime, 
                      dbo.RMS_User.DepartmentId, dbo.RMS_UserRole.RoleId, dbo.RMS_Role.RoleName, dbo.RMS_User.YH_HospitalId
FROM         dbo.RMS_User LEFT OUTER JOIN
                      dbo.RMS_UserRole ON dbo.RMS_User.Id = dbo.RMS_UserRole.UserId LEFT OUTER JOIN
                      dbo.RMS_Role ON dbo.RMS_UserRole.RoleId = dbo.RMS_Role.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "RMS_User"
            Begin Extent = 
               Top = 1
               Left = 141
               Bottom = 199
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_UserRole"
            Begin Extent = 
               Top = 7
               Left = 354
               Bottom = 236
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Role"
            Begin Extent = 
               Top = 10
               Left = 608
               Bottom = 250
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_UserRole'
GO
/****** Object:  View [dbo].[v_TS_Transaction]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_Transaction]
AS
SELECT     dbo.SysItem.ItemName AS StatesName, dbo.Sys_Dictionary.Name AS CategoryName, dbo.TS_Transaction.Id, dbo.TS_Transaction.Title, 
                      dbo.TS_Transaction.TrueName, dbo.TS_Transaction.Brand, dbo.TS_Transaction.Details, dbo.TS_Transaction.Price, dbo.TS_Transaction.Types, 
                      dbo.TS_Transaction.Category, dbo.TS_Transaction.ProvinceCode, dbo.TS_Transaction.CityCode, dbo.TS_Transaction.AreaCode, dbo.TS_Transaction.Address, 
                      dbo.TS_Transaction.CallCount, dbo.TS_Transaction.Praises, dbo.TS_Transaction.Clicks, dbo.TS_Transaction.CreateManId, dbo.TS_Transaction.CreateTime, 
                      dbo.TS_Transaction.UpdateTime, dbo.TS_Transaction.Longitude, dbo.TS_Transaction.Latitude, dbo.TS_Transaction.States, dbo.TS_Transaction.isValid, 
                      dbo.TS_Transaction.isDeleted, dbo.TS_Transaction.Phone, Province.Name AS ProvinceName, city.Name AS CityName, area.Name AS AreaName, 
                      dbo.TS_ClientUser.UserName,
                          (SELECT     TOP (1) FullRoute
                            FROM          dbo.File_Image
                            WHERE      (ToId = dbo.TS_Transaction.Id)) AS ImageUrl, dbo.TS_Transaction.isTop, dbo.TS_Transaction.geohash
FROM         dbo.Sys_CityArea AS city RIGHT OUTER JOIN
                      dbo.TS_Transaction LEFT OUTER JOIN
                      dbo.TS_ClientUser ON dbo.TS_Transaction.CreateManId = dbo.TS_ClientUser.Id ON city.ValueName = dbo.TS_Transaction.CityCode LEFT OUTER JOIN
                      dbo.Sys_CityArea AS area ON dbo.TS_Transaction.AreaCode = area.ValueName LEFT OUTER JOIN
                      dbo.Sys_CityArea AS Province ON dbo.TS_Transaction.ProvinceCode = Province.ValueName LEFT OUTER JOIN
                      dbo.Sys_Dictionary ON dbo.TS_Transaction.Category = dbo.Sys_Dictionary.ValueName LEFT OUTER JOIN
                      dbo.SysItem ON dbo.TS_Transaction.States = dbo.SysItem.ItemValue
WHERE     (dbo.SysItem.ItemType = 'States')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[5] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "city"
            Begin Extent = 
               Top = 201
               Left = 181
               Bottom = 379
               Right = 323
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TS_Transaction"
            Begin Extent = 
               Top = 0
               Left = 451
               Bottom = 434
               Right = 606
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "TS_ClientUser"
            Begin Extent = 
               Top = 75
               Left = 714
               Bottom = 286
               Right = 900
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "area"
            Begin Extent = 
               Top = 379
               Left = 185
               Bottom = 569
               Right = 327
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Province"
            Begin Extent = 
               Top = 19
               Left = 179
               Bottom = 202
               Right = 321
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sys_Dictionary"
            Begin Extent = 
               Top = 99
               Left = 1043
               Bottom = 318
               Right = 1187
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SysItem"
            Begin Extent = 
               Top = 309
               Left = 972
               Bottom = 550
               Right = 1116
            End
            D' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Transaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'isplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Transaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_Transaction'
GO
/****** Object:  View [dbo].[v_TS_ShopUserRole]    Script Date: 12/29/2015 17:32:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[v_TS_ShopUserRole]
AS
SELECT     dbo.TS_ShopUserRole.RoleId, dbo.RMS_Role.RoleName, dbo.v_TS_ShopUser.CategoryName, dbo.v_TS_ShopUser.StatesName, dbo.v_TS_ShopUser.Id, 
                      dbo.v_TS_ShopUser.ImgeUrl, dbo.v_TS_ShopUser.TrueName, dbo.v_TS_ShopUser.UserName, dbo.v_TS_ShopUser.Pwd, dbo.v_TS_ShopUser.Phone, 
                      dbo.v_TS_ShopUser.ProvinceCode, dbo.v_TS_ShopUser.CityCode, dbo.v_TS_ShopUser.AreaCode, dbo.v_TS_ShopUser.Address, dbo.v_TS_ShopUser.Category, 
                      dbo.v_TS_ShopUser.Details, dbo.v_TS_ShopUser.Longitude, dbo.v_TS_ShopUser.Latitude, dbo.v_TS_ShopUser.LocationUpdateTime, dbo.v_TS_ShopUser.AddTime, 
                      dbo.v_TS_ShopUser.UpdateTime, dbo.v_TS_ShopUser.States, dbo.v_TS_ShopUser.isValid, dbo.v_TS_ShopUser.isDeleted, dbo.v_TS_ShopUser.ProvinceName, 
                      dbo.v_TS_ShopUser.CityName, dbo.v_TS_ShopUser.AreaName
FROM         dbo.v_TS_ShopUser LEFT OUTER JOIN
                      dbo.TS_ShopUserRole ON dbo.v_TS_ShopUser.Id = dbo.TS_ShopUserRole.UserId LEFT OUTER JOIN
                      dbo.RMS_Role ON dbo.TS_ShopUserRole.RoleId = dbo.RMS_Role.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[12] 2[43] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TS_ShopUserRole"
            Begin Extent = 
               Top = 13
               Left = 339
               Bottom = 341
               Right = 591
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "RMS_Role"
            Begin Extent = 
               Top = 0
               Left = 650
               Bottom = 227
               Right = 794
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "v_TS_ShopUser"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 368
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 28
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         Ne' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'wValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUserRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_TS_ShopUserRole'
GO
/****** Object:  Default [DF__RMS_Butto__Creat__571DF1D5]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Buttons] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Depar__Order__29572725]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Department] ADD  CONSTRAINT [DF__RMS_Depar__Order__29572725]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__RMS_Menus__IsSho__534D60F1]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsShow]
GO
/****** Object:  Default [DF__RMS_Menus__IsEna__5441852A]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsEnable]
GO
/****** Object:  Default [DF__RMS_Menus__Creat__5535A963]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Role__Create__52593CB8]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_User__Create__5165187F]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[RMS_User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Sys_CityArea_OrderNo]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[Sys_CityArea] ADD  CONSTRAINT [DF_Sys_CityArea_OrderNo]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__Sys_Dicti__Order__4E88ABD4]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[Sys_Dictionary] ADD  CONSTRAINT [DF__Sys_Dicti__Order__4E88ABD4]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF_SysItem_OrderID]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_OrderID]  DEFAULT ((10)) FOR [OrderID]
GO
/****** Object:  Default [DF_SysItem_isValid]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isValid]  DEFAULT ((1)) FOR [isValid]
GO
/****** Object:  Default [DF_SysItem_isDeleted]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[SysItem] ADD  CONSTRAINT [DF_SysItem_isDeleted]  DEFAULT ((1)) FOR [isDeleted]
GO
/****** Object:  Default [DF__SystemLog__Recor__300424B4]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[SystemLogs] ADD  CONSTRAINT [DF__SystemLog__Recor__300424B4]  DEFAULT (getdate()) FOR [Position]
GO
/****** Object:  Default [DF__SystemPar__Creat__4AB81AF0]    Script Date: 12/29/2015 17:32:57 ******/
ALTER TABLE [dbo].[SystemParameters] ADD  DEFAULT (getdate()) FOR [CreateOn]
GO
