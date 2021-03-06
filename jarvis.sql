/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.4001)
    Source Database Engine Edition : Microsoft SQL Server Standard Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [TheAvenger]    Script Date: 12/19/2018 10:18:00 PM ******/
CREATE DATABASE [TheAvenger]
 CONTAINMENT = NONE
 GO
ALTER DATABASE [TheAvenger] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TheAvenger].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TheAvenger] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TheAvenger] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TheAvenger] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TheAvenger] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TheAvenger] SET ARITHABORT OFF 
GO
ALTER DATABASE [TheAvenger] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TheAvenger] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TheAvenger] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TheAvenger] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TheAvenger] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TheAvenger] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TheAvenger] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TheAvenger] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TheAvenger] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TheAvenger] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TheAvenger] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TheAvenger] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TheAvenger] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TheAvenger] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TheAvenger] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TheAvenger] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TheAvenger] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TheAvenger] SET RECOVERY FULL 
GO
ALTER DATABASE [TheAvenger] SET  MULTI_USER 
GO
ALTER DATABASE [TheAvenger] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TheAvenger] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TheAvenger] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TheAvenger] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TheAvenger] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TheAvenger] SET QUERY_STORE = OFF
GO
USE [TheAvenger]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [TheAvenger]
GO
/****** Object:  Table [dbo].[Mission_Detail]    Script Date: 12/19/2018 10:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mission_Detail](
	[missionID] [varchar](50) NOT NULL,
	[missionName] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[locate] [nvarchar](50) NOT NULL,
	[description] [nvarchar](520) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Mission_Detail] PRIMARY KEY CLUSTERED 
(
	[missionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Missions]    Script Date: 12/19/2018 10:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Missions](
	[missionID] [varchar](50) NOT NULL,
	[username] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Missions] PRIMARY KEY CLUSTERED 
(
	[missionID] ASC,
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 12/19/2018 10:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[username] [varchar](30) NOT NULL,
	[password] [varchar](30) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](100) NULL,
	[role] [varchar](50) NOT NULL,
	[imageURL] [varchar](max) NULL,
	[permission] [bit] NOT NULL,
 CONSTRAINT [PK_Registration_1] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suit]    Script Date: 12/19/2018 10:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suit](
	[username] [varchar](30) NOT NULL,
	[suitCode] [varchar](10) NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Suit] PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[suitCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suit_Detail]    Script Date: 12/19/2018 10:18:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suit_Detail](
	[suitCode] [varchar](10) NOT NULL,
	[suitName] [varchar](50) NOT NULL,
	[material] [varchar](50) NULL,
	[weapon] [varchar](520) NULL,
	[imageURL] [varchar](max) NULL,
	[available] [bit] NOT NULL,
 CONSTRAINT [PK_Suit_Detail] PRIMARY KEY CLUSTERED 
(
	[suitCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M001', N'Protect Asgard', CAST(N'2017-02-28' AS Date), N'Asgard', N'Move the Asgardian to safe place!', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M002', N'Capture Fireman', CAST(N'2018-07-05' AS Date), N'New York', N'', 1)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M003', N'Finding Nemo''s dad', CAST(N'2018-02-09' AS Date), N'Atlantis', N'', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M004', N'Finding Nemo', CAST(N'2018-08-01' AS Date), N'Atlantis', N'asdasdasd', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M005', N'Finding Dory', CAST(N'2018-07-07' AS Date), N'Pacific', N'When finding Nemo, we also lost Dory!!!! Please find her......', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M006', N'Infinity War', CAST(N'2018-04-12' AS Date), N'New York', N'It''s coming', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'M007', N'Save The Ocean', CAST(N'2017-09-12' AS Date), N'Pacific Ocean', N'', 0)
INSERT [dbo].[Mission_Detail] ([missionID], [missionName], [date], [locate], [description], [status]) VALUES (N'MTest', N'missionTest', CAST(N'2018-07-12' AS Date), N'asd', N'asdasdasd', 0)
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'blackpanther')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'brucebanner')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'jarvis')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'odinson')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M001', N'strange')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M002', N'capamerica')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M002', N'ironman')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M002', N'odinson')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M002', N'thanh123')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M002', N'thucnh')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M003', N'blackpanther')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M003', N'blackwidow')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M003', N'capamerica')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M003', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M003', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'blackpanther')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'ironman')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'odinson')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M004', N'strange')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M005', N'blackwidow')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M005', N'capamerica')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M005', N'jarvis')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M005', N'thanh123')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'blackpanther')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'blackwidow')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'brucebanner')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'capamerica')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'ironman')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'jarvis')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'odinson')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'strange')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M006', N'wintersoldier')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'blackpanther')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'blackwidow')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'brucebanner')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'capamerica')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'ironman')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'odinson')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'strange')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'M007', N'wintersoldier')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'MTest', N'hawkeye')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'MTest', N'jarvis')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'MTest', N'spidey')
INSERT [dbo].[Missions] ([missionID], [username]) VALUES (N'MTest', N'testuser')
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'blackpanther', N'123456', N'T''Challa', N'son of T''Chaka', N'blackpanther@gmail.com', N'user', N'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/1/1a/Avengers_Infinity_War_Black_Panther_Poster.jpg/revision/latest?cb=20180405200206', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'blackwidow', N'natasha', N'Natasha', N'Romanoff', N'blackwidow321@gmail.com', N'user', N'http://cdn01.cdn.justjared.com/wp-content/uploads/2018/04/avengers-posters/avengers-infinity-war-character-posters-07.jpg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'brucebanner', N'hulkgreen', N'Bruce', N'Banner', N'drBanner@gmail.com', N'user', N'https://vignette.wikia.nocookie.net/marveldatabase/images/6/67/Avengers_Infinity_War_poster_022_Textless.jpg/revision/latest?cb=20180418030030', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'capamerica', N'captain', N'Steven', N'Rogers', N'captainamerica@gmail.com', N'user', N'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/7/72/Avengers_Infinity_War_Captain_America_poster.jpg/revision/latest?cb=20180404210228', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'hawkeye', N'bowandarrow', N'Clint', N'Barton', N'hawkeye@gmail.com', N'user', N'https://orig00.deviantart.net/77bb/f/2018/023/4/7/hawkeye___avengers_infinity_war_poster_by_ylmzdesign-dc0wycx.png', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'ironman', N'ironman', N'Tony', N'Stark', N'Tony_Stark@gmail.com', N'user', N'https://pbs.twimg.com/media/DZ9UZhlVMAIc-z3.jpg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'jarvis', N'jarvis', N'Jarvis', N'Edwin', N'jarvis_edwin@gmail.com', N'admin', N'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/5/58/Agent_Carter_Season_2_Promo_02.jpg/revision/latest?cb=20160106184615', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'odinson', N'odinson', N'Thor', N'Odinson', N'thorOdinson@asgard.universe', N'user', N'https://fsmedia.imgix.net/99/13/42/3b/5ccf/4e04/aa4d/7b21323cd5f0/chris-hemsworth-as-thor.jpeg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'spidey', N'peterparker', N'Peter', N'Parker', N'friendlyspidey@gmail.com', N'user', N'https://www.hubofleather.com/wp-content/uploads/2017/12/Spiderman-Avengers-Infinity-War-Armor-Jacket.jpg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'strange', N'doctorstrange', N'Stephen Vincent', N'Strange', N'drStrange@gmail.com', N'user', N'https://orig00.deviantart.net/c37a/f/2018/023/e/6/doctor_strange____avengers_infinity_war_poster_by_ylmzdesign-dc0x7xd.png', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'testuser', N'123456', N'test', N'test', N'', N'user', N'image/avengers_trilogy_poster_by_tclarke597-dbv7gy2.png', 0)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'thanh123', N'thanh123', N'Dai Thanh', N'Tran', N'daithanh2912@gmail.com', N'admin', N'https://img.devrant.com/devrant/rant/r_19107_mR4SD.jpg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'thaott', N'thao123', N'Thao', N'Tran Thien', N'thaottse62888@fpt.edu.vn', N'user', N'image/avengers_trilogy_poster_by_tclarke597-dbv7gy2.png', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'thienvn', N'vonhatthien', N'Thien', N'Vo Nhat', N'thienvn@fpt.edu.vn', N'user', N'image/avengers_trilogy_poster_by_tclarke597-dbv7gy2.png', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'thucnh', N'123456', N'Huy Thuc', N'Nguyen', N'thucnhse63155@fpt.edu.vn', N'user', N'http://news.toyark.com/wp-content/uploads/sites/4/2018/05/Infinity-War-Dr.-Strange-Hot-Toys-002.jpg', 1)
INSERT [dbo].[Registration] ([username], [password], [firstname], [lastname], [email], [role], [imageURL], [permission]) VALUES (N'wintersoldier', N'123456', N'Bucky', N'Barnes', N'buckBarnes@gmail.com', N'user', N'image/avengers_trilogy_poster_by_tclarke597-dbv7gy2.png', 1)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK1', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK10', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK11', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK2', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK3', 1)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK4', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK46', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK5', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK6', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK7', 1)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK8', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MK9', 0)
INSERT [dbo].[Suit] ([username], [suitCode], [status]) VALUES (N'ironman', N'MKTest', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK1', N'Mark I', N'Steel', N'Laser Canon', N'https://vignette.wikia.nocookie.net/marveldatabase/images/3/3c/Iron_Man_Armor_MK_I_%28Earth-199999%29.jpg/revision/latest/scale-to-width-down/260?cb=20130912184653', 0)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK10', N'Mark X', N'Gold-Titanium Plating', N'Repulsors, Unibeam, Flares, Missile Launchers', N'https://vignette.wikia.nocookie.net/marvelcinematicuniverse/images/c/cd/IM_Armor_Mark_X.jpg/revision/latest?cb=20131101035018', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK11', N'Mark XI', N'Gold-Titanium Plating', N'Repulsors, Unibeam, Mini Missiles', N'https://vignette.wikia.nocookie.net/ironman/images/e/ed/Mark_11.jpg/revision/latest/scale-to-width-down/312?cb=20160319182737', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK2', N'Mark II', N'Steel', N'Laser Beam', N'https://vignette.wikia.nocookie.net/marveldatabase/images/3/3c/Iron_Man_Armor_MK_II_%28Earth-199999%29.jpg/revision/latest/scale-to-width-down/271?cb=20130912184654', 0)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK3', N'Mark III', N'Gold-titanium alloy', N'Laser Beam', N'https://vignette.wikia.nocookie.net/marveldatabase/images/e/e1/Iron_Man_Armor_MK_III_%28Earth-199999%29.jpg/revision/latest/scale-to-width-down/271?cb=20130912184656', 0)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK4', N'Mark IV', N'Titanium-Gold Plating', N'Repulsors, Unibeam, Shoulder-Mounted Guns, Flares', N'https://vignette.wikia.nocookie.net/marveldatabase/images/9/97/Iron_Man_Armor_MK_IV_%28Earth-199999%29.jpg/revision/latest?cb=20130912184657', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK46', N'Mark XLVI', N'Gold-Titanium Alloy', N'Repulsors, Unibeam, Shoulder Mounted Mini Missiles', N'https://vignette.wikia.nocookie.net/ironman/images/4/49/Iron_man_mark_46.jpg/revision/latest?cb=20160514035620', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK5', N'Mark V', N'Gold-Titanium Alloy', N'Repulsors, Unibeam', N'https://www.sideshowtoy.com/assets/products/902942-iron-man-mark-v/lg/marvel-iron-man-mark-v-iron-man-2-hot-toys-902942-02.jpg', 0)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK6', N'Mark VI', N'Gold-Titanium Alloy', N'Repulsors, Unibeam, 200-Petawatt Laser Weapon, Mini-Missiles, Shoulder-Mounted Guns, Flares', N'https://cdn.shopify.com/s/files/1/1934/6081/products/marvel-iron-man-mark-3-quarter-scale-figure-deluxe-version-hot-toys-903412-08_530x@2x.jpg?v=1527188736', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK7', N'Mark VII', N'Gold-Titanium Plating', N'Repulsors, Unibeam, Laser, Missile Launchers', N'https://www.xm-studios.com/uploads/images/products/01Marvel/14/ironmanmark7/im704.jpg', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK8', N'Mark VIII', N'Platinum,Titanium Plating, Extra Layers of Kevlar', N'Repulsors, Unibeam, Laser, Missile Launchers, Flares', N'https://vignette.wikia.nocookie.net/ironman/images/c/c4/Mark_VII_%288%29.jpg/revision/latest?cb=20180424135727', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MK9', N'Mark IX', N'Gold-Titanium Plating', N'Repulsors, Unibeam, Laser, Missile Launchers', N'http://www.hottoys.com.hk/photos/PD1437792152M0Y.jpg?1531353600035', 1)
INSERT [dbo].[Suit_Detail] ([suitCode], [suitName], [material], [weapon], [imageURL], [available]) VALUES (N'MKTest', N'test', N'asdasd', N'asdas', N'image/Iron_Man_3_Concept_Art_by_Andy_Park_06.jpg', 1)
ALTER TABLE [dbo].[Missions]  WITH CHECK ADD  CONSTRAINT [FK_Missions_Mission_Detail] FOREIGN KEY([missionID])
REFERENCES [dbo].[Mission_Detail] ([missionID])
GO
ALTER TABLE [dbo].[Missions] CHECK CONSTRAINT [FK_Missions_Mission_Detail]
GO
ALTER TABLE [dbo].[Missions]  WITH CHECK ADD  CONSTRAINT [FK_Missions_Registration] FOREIGN KEY([username])
REFERENCES [dbo].[Registration] ([username])
GO
ALTER TABLE [dbo].[Missions] CHECK CONSTRAINT [FK_Missions_Registration]
GO
ALTER TABLE [dbo].[Suit]  WITH CHECK ADD  CONSTRAINT [FK_Suit_Registration] FOREIGN KEY([username])
REFERENCES [dbo].[Registration] ([username])
GO
ALTER TABLE [dbo].[Suit] CHECK CONSTRAINT [FK_Suit_Registration]
GO
ALTER TABLE [dbo].[Suit]  WITH CHECK ADD  CONSTRAINT [FK_Suit_Suit_Detail] FOREIGN KEY([suitCode])
REFERENCES [dbo].[Suit_Detail] ([suitCode])
GO
ALTER TABLE [dbo].[Suit] CHECK CONSTRAINT [FK_Suit_Suit_Detail]
GO
USE [master]
GO
ALTER DATABASE [TheAvenger] SET  READ_WRITE 
GO
