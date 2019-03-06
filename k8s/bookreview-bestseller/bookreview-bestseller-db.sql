USE [master]
GO

/****** Object:  Database [bookreview-bestseller-db]    Script Date: 2/9/2019 4:22:50 PM ******/
CREATE DATABASE [bookreview-bestseller-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookreview-bestseller-db', FILENAME = N'/var/opt/mssql/data/bookreview-bestseller-db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookreview-bestseller-db_log', FILENAME = N'/var/opt/mssql/data/bookreview-bestseller-db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [bookreview-bestseller-db] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookreview-bestseller-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bookreview-bestseller-db] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET ARITHABORT OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bookreview-bestseller-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bookreview-bestseller-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET  DISABLE_BROKER 
GO

ALTER DATABASE [bookreview-bestseller-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bookreview-bestseller-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET RECOVERY FULL 
GO

ALTER DATABASE [bookreview-bestseller-db] SET  MULTI_USER 
GO

ALTER DATABASE [bookreview-bestseller-db] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bookreview-bestseller-db] SET DB_CHAINING OFF 
GO

ALTER DATABASE [bookreview-bestseller-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [bookreview-bestseller-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [bookreview-bestseller-db] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [bookreview-bestseller-db] SET QUERY_STORE = OFF
GO

ALTER DATABASE [bookreview-bestseller-db] SET  READ_WRITE 
GO

USE [bookreview-bestseller-db]

GO

CREATE TABLE [dbo].[BookBestSeller]
(	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
[CreatedOn] DATETIME NULL, 
    [ISBN] NVARCHAR(50) NULL, 
    [BestSeller] NVARCHAR(1000) NULL,
	PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

BEGIN TRY
    BEGIN TRAN
		BEGIN
			DECLARE @CurrentDateTime DateTime
			SET @CurrentDateTime = (SELECT GetDate())

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES ( N'Someone Like You', 'New York Post,The Washington Post', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Secret Wish List', 'New York Post,The Wall Street Journal', @CurrentDateTime, N'9789382618188')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Love Stories That Touched My Heart', 'The Wall Street Journal,Bloomberg,CNN', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Can Love Happen Twice?', 'The Guardian,New York Post', @CurrentDateTime, N'9780143417231')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Uff Ye Emotions: A Collection of Award Winning Love Stories', 'The Wall Street Journal,CNN', @CurrentDateTime, N'9789350880388')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Oliver''s Story', 'The Wall Street Journal', @CurrentDateTime, N'9781444768404')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', 'Bloomberg', @CurrentDateTime, N'9789382447276')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Third Bullet', 'The Wall Street Journal,The Washington Post', @CurrentDateTime, N'9781451640205')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Hit', 'The Wall Street Journal', @CurrentDateTime, N'9781447229902')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'A Degree in Death', 'The Washington Post', @CurrentDateTime, N'9788180460845')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Edge of the Machete', 'Bloomberg,New York Post', @CurrentDateTime, N'9789381626672')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Krishna Key', 'The Wall Street Journal,CNN', @CurrentDateTime, N'9789381626689')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Taj Conspiracy', 'The Washington Post', @CurrentDateTime, N'9789381626139')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Malgudi Days', 'The Wall Street Journal,New York Post', @CurrentDateTime, N'9788185986173')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'To Kill a Mockingbird', 'New York Post,The Washington Post', @CurrentDateTime, N'9780099549482')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Midnight''s Children', 'The Washington Post,The Guardian', @CurrentDateTime, N'9780099582076')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Fountainhead', 'Bloomberg', @CurrentDateTime, N'9780451191151')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Train to Pakistan', 'New York Post,The Guardian', @CurrentDateTime, N'9780143065883')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Malgudi Schooldays', 'New York Post', @CurrentDateTime, N'9780143330981')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'JONATHAN LIVINGSTON SEAGULL A STORY', 'The Wall Street Journal,New York Post', @CurrentDateTime, N'9788172235789')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Artemis Fowl and the Last Guardian', 'Bloomberg,The Washington Post', @CurrentDateTime, N'9780141344331')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Wake', 'The Wall Street Journal', @CurrentDateTime, N'9781447205722')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Game of Thrones: A Song of Ice and Fire', 'The Guardian', @CurrentDateTime, N'9780007428540')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'A Clash of Kings: A Song of Ice and Fire ', 'The Wall Street Journal,The Washington Post', @CurrentDateTime, N'9780006479895')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Harry Potter And The Deathly Hallows', 'New York Post', @CurrentDateTime, N'9781408810606')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Noonshade', 'The Wall Street Journal', @CurrentDateTime, N'9780575082793')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Lord of The Rings', 'The Wall Street Journal,Bloomberg', @CurrentDateTime, N'9780007273508')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Throne of Fire', 'New York Post', @CurrentDateTime, N'9780141335674')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Eran', 'New York Post,The Guardian', @CurrentDateTime, N'9780552553209')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Lost Symbol', 'The Wall Street Journal', @CurrentDateTime, N'9780552161237')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Murder on Orient Express', 'The Washington Post', @CurrentDateTime, N'9780007282630')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'ne Girl', 'New York Post', @CurrentDateTime, N'9781780221359')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Murder of Roger Ackroyd', 'The Wall Street Journal', @CurrentDateTime, N'9780007282548')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Salvation of a Saint', 'New York Post', @CurrentDateTime, N'9780349139340')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Thea Stilton and the Secret of the Old Castle', 'Bloomberg', @CurrentDateTime, N'9780545341073')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'A Memory of Light', 'The Washington Post', @CurrentDateTime, N'9781841498706')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Mage''s Blood: The Montide Quartet', 'New York Post', @CurrentDateTime, N'9781780871974')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Jurassic Park', 'The Wall Street Journal', @CurrentDateTime, N'9780099282914')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Foundation', 'The Guardian,New York Post', @CurrentDateTime, N'9780007270422')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Solar', 'The Wall Street Journal,New York Post', @CurrentDateTime, N'9780099555346')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Manhattan in Reverse', 'The Washington Post,New York Post', @CurrentDateTime, N'9780230750319')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'The Air War', 'Bloomberg,The Guardian', @CurrentDateTime, N'9780230757004')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Dran Reborn:wheel Of Time Book 3', 'New York Post', @CurrentDateTime, N'9781857230659')

				INSERT [dbo].[BookBestSeller] ([Name], [BestSeller], [CreatedOn], [ISBN]) VALUES (N'Off Armageddon Reef', 'The Washington Post', @CurrentDateTime, N'9780330534949')

		END
	COMMIT;
    PRINT 'transaction Committed';
END TRY
BEGIN CATCH
    IF XACT_STATE() <> 0
        ROLLBACK;
        PRINT 'transaction rolled back';
    THROW;
END CATCH;
