USE [TramStewardDB]
GO
/****** Object:  Table [dbo].[SystemParameters]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[Sys_Dictionary]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_UserRole]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_User]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_RoleManus]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_RoleManuButtons]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_Role]    Script Date: 11/23/2015 23:28:52 ******/
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
 CONSTRAINT [PK_RMS_Role] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RMS_Menus]    Script Date: 11/23/2015 23:28:52 ******/
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
/****** Object:  Table [dbo].[RMS_MenuButtons]    Script Date: 11/23/2015 23:28:51 ******/
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
/****** Object:  Table [dbo].[RMS_Department]    Script Date: 11/23/2015 23:28:51 ******/
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
/****** Object:  Table [dbo].[RMS_Buttons]    Script Date: 11/23/2015 23:28:51 ******/
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
/****** Object:  Table [dbo].[PushMessage]    Script Date: 11/23/2015 23:28:51 ******/
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
/****** Object:  StoredProcedure [dbo].[proc_DataPagingList]    Script Date: 11/23/2015 23:28:55 ******/
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
/****** Object:  Table [dbo].[Demo_Tram]    Script Date: 11/23/2015 23:28:51 ******/
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
/****** Object:  Table [dbo].[AppVersion]    Script Date: 11/23/2015 23:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppVersion](
	[Id] [uniqueidentifier] NOT NULL,
	[Category] [nvarchar](50) NULL,
	[CName] [nvarchar](50) NULL,
	[Version] [nvarchar](50) NULL,
	[Url] [nvarchar](200) NULL,
	[Remarks] [nvarchar](200) NULL,
	[AddTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[States] [int] NULL,
 CONSTRAINT [PK_APPVERSION] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'Category'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'CName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版本号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N' 1强制更新 0可以不更新' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AppVersion', @level2type=N'COLUMN',@level2name=N'States'
GO
/****** Object:  Table [dbo].[YH_File_tb]    Script Date: 11/23/2015 23:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YH_File_tb](
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹对象Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'ToId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'ShowName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'FileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所禹表名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'SourceTable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'Route'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全文件地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'FullRoute'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'后缀名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'Suffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'FileType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'YH_File_tb', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
/****** Object:  View [dbo].[V_Doctor]    Script Date: 11/23/2015 23:28:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Doctor]
AS
SELECT     dbo.YH_Doctor.Id, dbo.YH_Doctor.HospitalId, dbo.YH_Doctor.DepartmentId, dbo.YH_Doctor.CName, dbo.YH_Doctor.ImgeUrl, dbo.YH_Doctor.Tel, 
                      dbo.YH_Doctor.Position, dbo.YH_Doctor.Introduction, dbo.YH_Doctor.WorkTime, dbo.YH_Doctor.WorkWhere, dbo.YH_Doctor.AddTime, dbo.YH_Doctor.UpdateTime, 
                      dbo.YH_Doctor.States, dbo.YH_Doctor.GoodAt, dbo.YH_HospitalDepartment.CName AS DepartmentName
FROM         dbo.YH_Doctor LEFT OUTER JOIN
                      dbo.YH_HospitalDepartment ON dbo.YH_Doctor.DepartmentId = dbo.YH_HospitalDepartment.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[58] 4[4] 2[20] 3) )"
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
         Begin Table = "YH_Doctor"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 213
               Right = 194
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YH_HospitalDepartment"
            Begin Extent = 
               Top = 10
               Left = 333
               Bottom = 218
               Right = 643
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Doctor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Doctor'
GO
/****** Object:  View [dbo].[V_Questions_UserData]    Script Date: 11/23/2015 23:28:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Questions_UserData]
AS
SELECT     dbo.YH_Questions.*, dbo.YH_ClientUserData.TrueName, dbo.YH_ClientUserData.UserName
FROM         dbo.YH_Questions LEFT OUTER JOIN
                      dbo.YH_ClientUserData ON dbo.YH_Questions.UserId = dbo.YH_ClientUserData.Id
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[7] 2[20] 3) )"
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
         Begin Table = "YH_Questions"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 253
               Right = 180
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "YH_ClientUserData"
            Begin Extent = 
               Top = 19
               Left = 336
               Bottom = 272
               Right = 522
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Questions_UserData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Questions_UserData'
GO
/****** Object:  View [dbo].[V_MenuButtons]    Script Date: 11/23/2015 23:28:53 ******/
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
/****** Object:  View [dbo].[V_UserRole]    Script Date: 11/23/2015 23:28:53 ******/
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
/****** Object:  View [dbo].[V_RoleManus]    Script Date: 11/23/2015 23:28:53 ******/
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
/****** Object:  View [dbo].[V_RoleManuButtons]    Script Date: 11/23/2015 23:28:53 ******/
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
/****** Object:  Default [DF__RMS_Butto__Creat__38996AB5]    Script Date: 11/23/2015 23:28:51 ******/
ALTER TABLE [dbo].[RMS_Buttons] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Depar__Order__29572725]    Script Date: 11/23/2015 23:28:51 ******/
ALTER TABLE [dbo].[RMS_Department] ADD  CONSTRAINT [DF__RMS_Depar__Order__29572725]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__RMS_Menus__IsSho__3A81B327]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsShow]
GO
/****** Object:  Default [DF__RMS_Menus__IsEna__3B75D760]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT ('true') FOR [IsEnable]
GO
/****** Object:  Default [DF__RMS_Menus__Creat__3C69FB99]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[RMS_Menus] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_Role__Create__3D5E1FD2]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[RMS_Role] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__RMS_User__Create__3E52440B]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[RMS_User] ADD  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__Sys_Dicti__Order__4E88ABD4]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[Sys_Dictionary] ADD  CONSTRAINT [DF__Sys_Dicti__Order__4E88ABD4]  DEFAULT ((0)) FOR [OrderNo]
GO
/****** Object:  Default [DF__SystemLog__Recor__300424B4]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[SystemLogs] ADD  CONSTRAINT [DF__SystemLog__Recor__300424B4]  DEFAULT (getdate()) FOR [Position]
GO
/****** Object:  Default [DF__SystemPar__Creat__412EB0B6]    Script Date: 11/23/2015 23:28:52 ******/
ALTER TABLE [dbo].[SystemParameters] ADD  DEFAULT (getdate()) FOR [CreateOn]
GO
