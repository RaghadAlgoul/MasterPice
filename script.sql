USE [master]
GO
/****** Object:  Database [TS_SHOP]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE DATABASE [TS_SHOP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TS_SHOP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TS_SHOP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TS_SHOP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\TS_SHOP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [TS_SHOP] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TS_SHOP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TS_SHOP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TS_SHOP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TS_SHOP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TS_SHOP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TS_SHOP] SET ARITHABORT OFF 
GO
ALTER DATABASE [TS_SHOP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TS_SHOP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TS_SHOP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TS_SHOP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TS_SHOP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TS_SHOP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TS_SHOP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TS_SHOP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TS_SHOP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TS_SHOP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TS_SHOP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TS_SHOP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TS_SHOP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TS_SHOP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TS_SHOP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TS_SHOP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TS_SHOP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TS_SHOP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TS_SHOP] SET  MULTI_USER 
GO
ALTER DATABASE [TS_SHOP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TS_SHOP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TS_SHOP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TS_SHOP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TS_SHOP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TS_SHOP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TS_SHOP] SET QUERY_STORE = ON
GO
ALTER DATABASE [TS_SHOP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [TS_SHOP]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Name] [varchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[CategoryImage] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[Message] [varchar](1000) NULL,
 CONSTRAINT [PK__Comments__C3B4DFCA2D4811C3] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Likes]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[LikeId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK__Likes__A2922C14CDE72E5B] PRIMARY KEY CLUSTERED 
(
	[LikeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[area] [varchar](100) NULL,
	[distance] [int] NULL,
	[direction] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
 CONSTRAINT [PK__Orders__C3905BCFB39E86E3] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[State] [bit] NULL,
	[Price] [decimal](18, 0) NULL,
	[Size] [varchar](50) NULL,
	[Color] [varchar](50) NULL,
	[Description] [varchar](1000) NULL,
	[Name] [varchar](200) NULL,
	[Image1] [varchar](max) NULL,
	[Image2] [varchar](max) NULL,
	[Image3] [varchar](max) NULL,
	[Image4] [varchar](max) NULL,
	[Image5] [varchar](max) NULL,
	[Image6] [varchar](max) NULL,
	[Image7] [varchar](max) NULL,
	[Image8] [varchar](max) NULL,
	[Image9] [varchar](max) NULL,
	[Image10] [varchar](max) NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Products__B40CC6CD75C20EF4] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/21/2023 4:07:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserImage] [varchar](150) NULL,
	[UserFaceBook] [varchar](max) NULL,
	[UserTweeter] [varchar](max) NULL,
	[UserInstagram] [varchar](max) NULL,
	[UserLocation] [varchar](max) NULL,
	[UserAbout] [varchar](1000) NULL,
	[PhoneNumber] [varchar](max) NULL,
	[Email] [varchar](max) NULL,
	[Id] [nvarchar](128) NULL,
	[Name] [varchar](max) NULL,
	[Gender] [bit] NULL,
	[State] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202302250307328_InitialCreate', N'MP_TS_SHOP_.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10D9C2E5227E906CD0DEB6CD1B780966847588952252A7550F4CBFAD04FEA2F742851375E74B115DB592CB0B0C8E199E170480E87C3FCF7CFBFE3F74BDF339E7014BB0139310F46FBA681891D382E599C98099D7FFFCE7CFFD3D75F8DCF1D7F69FC96D31D313A6849E213F391D2F0D8B262FB11FB281EF9AE1D057130A7233BF02DE404D6E1FEFE8FD6C1818501C2042CC3187F4C08757D9C7EC0E72420360E6982BCEBC0C15ECCCBA1669AA21A37C8C771886C7C625EDF3DDC4F1FA61F6EEF1E4619B5699C7A2E0249A6D89B9B062224A088829CC79F623CA5514016D3100A9077FF1C62A09B232FC65CFEE392BC6B57F60F5957ACB2610E6527310DFC9E8007475C3796D87C250D9B85EE407BE7A065FACC7A9D6AF0C4BC74705AF431F0400122C3E3891731625072C1E2340E6F301DE50D4719E44504707F06D1E7511571CFE8DC6EAFB0A5C3D13EFBB7674C128F26113E2138A111F2F68CBB64E6B9F6AFF8F93EF88CC9C9D1C16C7EF4EECD5BE41CBDFD011FBDA9F614FA0A74B50228BA8B821047201B9E17FD370DABDECE121B16CD2A6D32AD802DC1B4308D6BB4BCC264411F61C21CBE338D0B77899DBC841BD727E2C22C8246344AE0F326F13C34F370516F35F264FF37703D7CF37610AE37E8C95DA4432FF0878913C1BCFA88BDB4367E74C36C7AD5C6FB81935D4481CFBEEBF695D53E4C8324B25967022DC93D8A1698D6A51B5BA5F17632690635BC59E7A8BB6FDA4C52D9BC95A4AC43ABCC849CC5A667432EEFCBF2ED6C71A7610883979A16D348A3C1499BD548680D8675F70DA7F9B6349D83AEA643A04B5FF24A78EE23D71B6029ECC005BC90B91BF9B8E8E5CF01181E22BD65BE43710C2B81F301C58F0DA2C3CF01449F623B89C040A714F9E18B73BB7B0C08BE49FC19B3FBCDF11A6C68EEFF0C2E904D83E89CB0566BE35D05F6E720A1E7C43943147FA2760EC83EEF5DBF3BC020E29CDA368EE30B3066EC4C0270B273C04B428F0E7BC3B1056ADBAEC8C443AEAFF64584A5F421272DFD113585E49368C8547E4993A857C1C225DD44CD49F5A26614ADA272B2BEA232B06E92724ABDA02941AB9C19D5609E5E3A42C3BB7A29ECEEFB7AEB6DDEBAB5A0A2C629AC90F8174C7004CB98738728C5112947A0CBBAB10D67211D3EC6F4C5F7A694D36FC84B8666B5D26C481781E167430ABBFBB32115138A9F5C8779251D0E403931C077A2579FADDAE79C20D9A6A743AD9B9B66BE993540375D4EE338B0DD741628425F3C7051971F7C38A33D8A91F5468C8440C7C0D05DB6E54109F4CD148DEA969C610F536C9CDA59687082621B39B21AA1434E0FC1F21D5521581911A90BF79DC4132C1D47AC116287A01866AA4BA83C2D5C62BB21F25AB524B4ECB885B1BE173CC49A331C62C218B66AA20B737500840950F01106A54D4363AB6271CD86A8F15A7563DEE6C296E32EC5253662932DBEB3C62EB9FFF62286D9ACB10D1867B34ABA08A00DE66DC340F959A5AB018807975D3350E1C4A43150EE526DC440EB1ADB8281D655F2EA0C343BA2761D7FE1BCBA6BE6593F286F7E5B6F54D7166CB3A68F1D33CDCCF78436145AE04836CFB319ABC44BAA389C819CFC7C167357573411063EC5B41EB229FD5DA51F6A35838846D404581A5A0B28BF069480A409D543B83C96D7281DF7227AC0E671B74658BEF60BB0151B90B1ABD7A11542FDA5A9689C9D4E1F45CF0A6B908CBCD361A182A3300871F1AA77BC835274715959315D7CE13EDE70A5637C301A14D4E2B96A94947766702DE5A6D9AE259543D6C7255B4B4B82FBA4D152DE99C1B5C46DB45D490AA7A0875BB0968AEA5BF840932D8F7414BB4D5137B6B22C295E30B634E954E36B14862E5954D2AB788931CD72AB26DF4FFB271DF9198665C78ADCA342DA82130D22B4C0422DB006492FDC28A66788A21962719E89E34B64CABD55B3FCE72CABDBA73C88F93E9053B3DF590BC5E57D6DAF959D118E71013DF499479386D115E3AF6E6EB07437E4A14811B99F045EE213BD83A56F9DDDDF55DB672532C2D812E4971C28495B929B5B577DA7819127C5408354F82FAB0F941E42A7EEDCFBAC2A5CE791EA51F20055154517B4DADAC0E91C995E8325FA88FDC7AA15E165E6154F4CA902F0A29E1895DC0609AC52D71DB59E7E52C5ACD7744714724CAA9042550F29AB99243521AB152BE16934AAA6E8CE41CE1DA9A2CBB5DD91155924556845F50AD80A99C5BAEEA88A44932AB0A2BA3B769975222EA23BBC73694F2E2B6F5DD9E176BDBD4B83F1322BE2305B5FE50EBF0A5429EE89C56FE925305EBE93D6A43DE1AD6C4D594C633D6BD260E8579EDAED777DE169BCB2D763D6AEB46B8B7BD395BE1EAF9FCDBEA86548073C91A4E05E1CF48403DD981FAEDA1FD148A7AD8CC4347235C2C6FE1C53EC8F18C168FA8737F15CCC96F19CE01A11778E639AA5719887FB0787C23B9CDD791363C5B1E3290EA7BA8731F531DB404616794291FD8822393F628D772325A8147ABE240E5E9E987FA5AD8ED32806FB9516EF1997F127E2FE9140C57D9460E36F39DF73983CFA0E2F370A41FF7E154F22BAABFCF2F787ACE99E711BC1743A36F60545AF32FCF58712BDA4C99AAE21CDCACF275EEF6CABBD4D50A20AB365F5A70833970EF20C2197F21B1F2DBFED2B9AF2A9C15A888AE70443E10DA242DD738155B0B44F051CF8A4E953817E9D553F1D584534EDB30197F407131F0D745F86F2965BDC871407A64D2C49A99E5B93AED7CAC0DCF6DE24E566AF35D1E5FCEB1E7083E658AFE7A2BCB2DCE5C1B64E456AF260D8DBB4FB17CF47DE9514E4D269DF6EE6F126938D1B2E94BEA81CE31DC88A5364F96C3F9378D3B6A68B00EF783A66BF7CE11D3336BECD6F3F2B78D3C6A60B10EFB8B1F5CAFDDD315BDBD6FEB9654BEBBC856E3D93574E4AD2DCE4A8A2C86D99BA59C81D8EFFB3008C20F328B30796EAD4B0A6B4D6168625899EA93E274D642C4D1C89AF44D1CCB65F5FF986DFD8594ED3CC5693C9D9C49BAFFF8DBC394D336F4D7EE436728C95198AAABCEF9675AC297DEA35E514D77AD292C2DEE6B3365ECBBFA614E24194529B3D9ADBE5D793313C884A869C3A3D3284E58B62D83B2B7F9311F6EFD85D9410EC2F34126CD776CD82E692CC837CF31624CA498408CD35A6C8812DF534A2EE1CD914AA59003A7D219E06F5D835C80C3B97E436A16142A1CBD89F79B5801773029AF8A769D07599C7B721FB8A87E80288E9B2C0FD2DF939713DA790FB421113D24030EF82877BD9585216F65D3C17483701E908C4D5573845F7D80F3D008B6FC9143DE1556403F3BBC20B643F9711401D48FB40D4D53E3E73D122427ECC31CAF6F00936ECF8CB9FFE070671EA009A540000, N'6.4.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Buyer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Saller')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a8db14e-1c0b-458d-aff1-d9d0aa50cc82', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c7e9024c-b535-49d9-bd5d-9ecb20d7a9c5', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0efc9a2-ed54-48bf-9e6d-5ec4c05cb931', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1870fc80-a1f1-4757-a1d6-d255feb387f8', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'0069d0c2-f658-4147-b3e2-a8deeb30d69a', N'taleen@gmail.com', 0, N'ADr4zjuKsbGQ1IwDU1b6o2xCPezsgsCc0LiqvIyNgrINO59lz+M3U++EcbyyFnGcJg==', N'56cc377a-233b-43dc-9f2d-f45c702c8d66', NULL, 0, 0, NULL, 1, 0, N'taleen@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'0c0885f5-220d-4545-a8ff-df86a32a089e', N'mohammad45@gmail.com', 0, N'AIYxvFjQtkF/Q2ggB4yOnwhn6/B7P/oK4PnF7qHx6lF6c2nTM+pgT1ehpvew6vEccw==', N'49357f40-ee18-45f2-b1ec-30977486ea6d', NULL, 0, 0, NULL, 1, 0, N'mohammad45@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'128b9407-e33b-488b-b115-6a5680fb7f6b', N'raghadalgoulkk@gmail.com', 0, N'AOXE8GqNvSIYrj+b0nvvPPzjM8yV/CPbXTCKjH8vdbBSkjU8L890ga5huXCSYU+FRg==', N'4e0f118f-58e9-4c6c-951a-f13399e62086', NULL, 0, 0, NULL, 1, 0, N'raghadalgoulkk@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'1870fc80-a1f1-4757-a1d6-d255feb387f8', N'heba@gmail.com', 0, N'AOLeuPgaCqWD57DSZgTKr5a2muyN8xbCYtXtJrIX2KUwUWkptjQr9agt4ippFs65hQ==', N'f59eab17-f8fd-4982-b240-635a91565b70', NULL, 0, 0, NULL, 1, 0, N'heba@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'30f80f0c-5e70-4951-9331-de9c91a554f1', N'hanaa@gmail.com', 0, N'AKDwBEaLcs9zOzk5TBEB+YKox+DLUEHR0oyd6W0mrtP129hn2INdpgB3yJj6/2Ib+g==', N'a73a7e49-fa06-4d6a-9873-96bd69359412', NULL, 0, 0, NULL, 1, 0, N'hanaa@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'41fffd7f-02fe-4c50-be14-25742f4b1229', N'yy@gmail.com', 0, N'AMuAb8zsIqC90Z7q8GcW5d8X6USaj1OlnqDzFv+kQ87uYjp6H7FGxQa508xuX/44nA==', N'7a24e1a3-21c7-49d6-8ef0-27ac0e069e23', NULL, 0, 0, NULL, 1, 0, N'yy@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'4c3ef679-34ec-4969-897e-f59f68ee1f75', N'Rama@gmail.com', 0, N'AH035U95JupIVdN6yY5raFZC2Rf48JhltntS5L5xGiUxW07oShJukE6KpDRZM036Ow==', N'85d78e17-f0d5-49c1-9ce4-23629a7f5b68', NULL, 0, 0, NULL, 1, 0, N'Rama@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'6a8db14e-1c0b-458d-aff1-d9d0aa50cc82', N'tala@gmail.com', 0, N'AFWm9zb0Eg1K1plVUktN0RVpdEVQKGxiRUAPka5XUr8+WzVG1Ovy7cFydlNLxuK94Q==', N'974697e7-a2a7-4a90-a8df-b5995add9f4c', NULL, 0, 0, NULL, 1, 0, N'tala@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'747f6cd8-0486-483c-8e29-5ac67c7dc1d5', N'samer@gmail.com', 0, N'AGpgwq5vCBKcJqXjbH/gFXE0/kXVxki3K4TC22JHAuPmUbPcxbBdYm4KEbYSoAw22Q==', N'4097cf56-4097-4ef6-87ad-592bd0fd7516', NULL, 0, 0, NULL, 1, 0, N'samer@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'7851cb06-0431-464f-9058-7848c0e94f62', N'raneem@gmail.com', 0, N'ABnGdtkgVb3QBZ9651GD62Jq3ElCZKCD0Z0hPz5bWbB61Dfk0OBfQda99tny9iWzuA==', N'38f2b8a6-c519-4c31-b0f9-83549e5db2ae', NULL, 0, 0, NULL, 1, 0, N'raneem@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'c7e9024c-b535-49d9-bd5d-9ecb20d7a9c5', N'sewar@gmail.com', 0, N'AA7opGBoxkEKzxZlQm2SjkwH1OGOK5qThCP5aN7nimJzh5xWiocZWN7o1ytMAP3PqQ==', N'8f8a2ace-e572-4b54-a52f-fb61b6b0177f', NULL, 0, 0, NULL, 1, 0, N'sewar@gmail.com', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Name]) VALUES (N'f0efc9a2-ed54-48bf-9e6d-5ec4c05cb931', N'Rama11@gmail.com', 0, N'ABjFdLxRTzPQDcB9ObHcCEsw/MRgqFXApG3tTnkIt62xKaGc5YVY6aT91JCdrv2OfA==', N'1c7e43a5-ae91-437b-8e39-2c1fa07a85af', NULL, 0, 0, NULL, 1, 0, N'Rama11@gmail.com', NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (1, N'Clothes', N'c7.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (2, N'Bags', N'c3.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (3, N'Shoes', N'c4.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (4, N'Glasses', N'c2.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (5, N'Household items', N'c1.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (7, N'Electronics', N'c6.png')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryImage]) VALUES (8, N'lectrical', N'c5.png')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'n0', 1, N'N')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'n1', 2, N'N')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'n2', 3, N'N')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N's0', 1, N'S')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N's1', 2, N'S')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N's2', 3, N'S')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'w0', 1, N'W')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'w1', 2, N'W')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'w2', 3, N'W')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'e0', 1, N'E')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'e1', 2, N'E')
INSERT [dbo].[Location] ([area], [distance], [direction]) VALUES (N'e2', 3, N'E')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (1, 2, 1, CAST(21 AS Decimal(18, 0)), N'XL', N'Red', N'A very special piece that I ordered from the Internet, but the size did not fit me .', N'Shoes', N'sing1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (2, 1, 0, CAST(15 AS Decimal(18, 0)), N'L', N'Yellow', N'A very special piece that I ordered from the Internet, but the size did not fit me .', N'Shoes', N'sing1.png', N'sing2.png', N'sing3.png', N'sing4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (20, 7, 0, CAST(44 AS Decimal(18, 0)), N'ss', N'f', N'4Web Developer BootcampMake web applications yyy', N'Information ', N'sing1.png', N'jeanz.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (26, 1, 0, CAST(22 AS Decimal(18, 0)), N'ss', N'f', N'ff', N'Shoes', N'sing1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (28, 2, 1, CAST(88 AS Decimal(18, 0)), N'4', N'f', N'e', N'Shoes', N'About1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (29, 1, 0, CAST(44 AS Decimal(18, 0)), N'4', N'f', N'sss', N'Shoes', N'sing1.png', NULL, NULL, NULL, N'System.Web.HttpPostedFileWrapper', NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (30, 1, 1, CAST(44 AS Decimal(18, 0)), N'4', N'f', N'dd', N'Shoes', N'sing1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (31, 1, 1, CAST(44 AS Decimal(18, 0)), N'4', N'f', N'ff', N'Sioioio', N'jj.png', N'System.Web.HttpPostedFileWrapper', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (32, 1, 1, CAST(44 AS Decimal(18, 0)), N'ss', N'f', N'yy', N'kkkk', N'single1.png', N'jj.png', N'highneck.png', N'single2.png', N'boy.png', NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [State], [Price], [Size], [Color], [Description], [Name], [Image1], [Image2], [Image3], [Image4], [Image5], [Image6], [Image7], [Image8], [Image9], [Image10], [UserID]) VALUES (33, 1, 1, CAST(12 AS Decimal(18, 0)), N'37', N'white', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', N'shoes', N'sing1.png', N'sing4.png', N'sing3.png', N'sing2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [UserImage], [UserFaceBook], [UserTweeter], [UserInstagram], [UserLocation], [UserAbout], [PhoneNumber], [Email], [Id], [Name], [Gender], [State]) VALUES (2, N'girl.png', N'eeee', NULL, NULL, N'n0', N'A very special piece that I ordered from the Internet, but the size did not fit me .A very special piece that I ordered from the Internet, but the size did not fit me .A very special piece that I ordered from the Internet, but the size did not fit me .A very special piece that I ordered from the Internet, but the size did not fit me .', N'0779658741', N'Rama11@gmail.com', N'0069d0c2-f658-4147-b3e2-a8deeb30d69a', N'Rama', 1, 0)
INSERT [dbo].[Users] ([UserId], [UserImage], [UserFaceBook], [UserTweeter], [UserInstagram], [UserLocation], [UserAbout], [PhoneNumber], [Email], [Id], [Name], [Gender], [State]) VALUES (3, N'GirlAvatar.png', N'ee', N',,ll', N'kk', N'e1', N'll', N'0799658965', N'uuuunn', N'0069d0c2-f658-4147-b3e2-a8deeb30d69a', N'??? ?????', NULL, 1)
INSERT [dbo].[Users] ([UserId], [UserImage], [UserFaceBook], [UserTweeter], [UserInstagram], [UserLocation], [UserAbout], [PhoneNumber], [Email], [Id], [Name], [Gender], [State]) VALUES (4, N'notification-02.jpg', NULL, NULL, NULL, N'w2', NULL, NULL, N'samer@gmail.com', N'747f6cd8-0486-483c-8e29-5ac67c7dc1d5', N'Samer', NULL, 0)
INSERT [dbo].[Users] ([UserId], [UserImage], [UserFaceBook], [UserTweeter], [UserInstagram], [UserLocation], [UserAbout], [PhoneNumber], [Email], [Id], [Name], [Gender], [State]) VALUES (10, N'girl.png', N'https://www.facebook.com/', N'https://www.facebook.com/', N'https://www.facebook.com/', N'n1', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', N'0799658965', N'heba@gmail.com', N'0069d0c2-f658-4147-b3e2-a8deeb30d69a', N'hebaa', 1, 0)
INSERT [dbo].[Users] ([UserId], [UserImage], [UserFaceBook], [UserTweeter], [UserInstagram], [UserLocation], [UserAbout], [PhoneNumber], [Email], [Id], [Name], [Gender], [State]) VALUES (11, N'girl.png', N'https://www.facebook.com/', N'https://www.facebook.com/', N'https://www.facebook.com/', N's1', N'a', N'0789658745', N'sewar@gmail.com', N'0069d0c2-f658-4147-b3e2-a8deeb30d69a', N'sewar', 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/21/2023 4:07:35 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Products] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Products]
GO
ALTER TABLE [dbo].[Likes]  WITH CHECK ADD  CONSTRAINT [FK_Likes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Likes] CHECK CONSTRAINT [FK_Likes_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_AspNetUsers]
GO
USE [master]
GO
ALTER DATABASE [TS_SHOP] SET  READ_WRITE 
GO
