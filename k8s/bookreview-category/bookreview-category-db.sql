USE [master]
GO

/****** Object:  Database [bookreview-category-db]    Script Date: 2/9/2019 4:22:50 PM ******/
CREATE DATABASE [bookreview-category-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookreview-category-db', FILENAME = N'/var/opt/mssql/data/bookreview-category-db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookreview-category-db_log', FILENAME = N'/var/opt/mssql/data/bookreview-category-db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [bookreview-category-db] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookreview-category-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bookreview-category-db] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bookreview-category-db] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bookreview-category-db] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bookreview-category-db] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bookreview-category-db] SET ARITHABORT OFF 
GO

ALTER DATABASE [bookreview-category-db] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [bookreview-category-db] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bookreview-category-db] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bookreview-category-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bookreview-category-db] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bookreview-category-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bookreview-category-db] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bookreview-category-db] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bookreview-category-db] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bookreview-category-db] SET  DISABLE_BROKER 
GO

ALTER DATABASE [bookreview-category-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bookreview-category-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bookreview-category-db] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bookreview-category-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bookreview-category-db] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bookreview-category-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bookreview-category-db] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bookreview-category-db] SET RECOVERY FULL 
GO

ALTER DATABASE [bookreview-category-db] SET  MULTI_USER 
GO

ALTER DATABASE [bookreview-category-db] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bookreview-category-db] SET DB_CHAINING OFF 
GO

ALTER DATABASE [bookreview-category-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [bookreview-category-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [bookreview-category-db] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [bookreview-category-db] SET QUERY_STORE = OFF
GO

ALTER DATABASE [bookreview-category-db] SET  READ_WRITE 
GO

USE [bookreview-category-db]

GO

CREATE TABLE [dbo].[BookCategory]
(	
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[CreatedOn] DATETIME NULL, 
    [ISBN] NVARCHAR(50) NULL, 
    PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO

BEGIN TRY
    BEGIN TRAN
		BEGIN
			DECLARE @CurrentDateTime DateTime
			SET @CurrentDateTime = (SELECT GetDate())

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Someone Like You', N'Romance, Classics', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Secret Wish List', N'Romance, Thriller', @CurrentDateTime, N'9789382618188')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Love Stories That Touched My Heart', N'Romance', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Can Love Happen Twice?', N'Romance, Classics', @CurrentDateTime, N'9780143417231')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Uff Ye Emotions: A Collection of Award Winning Love Stories', N'Romance', @CurrentDateTime, N'9789350880388')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Oliver''s Story', N'Romance', @CurrentDateTime, N'9781444768404')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', N'Romance, Thriller', @CurrentDateTime, N'9789382447276')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Third Bullet', N'Thriller', @CurrentDateTime, N'9781451640205')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Hit', N'Thriller', @CurrentDateTime, N'9781447229902')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'A Degree in Death', N'Thriller, Classics', @CurrentDateTime, N'9788180460845')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Edge of the Machete', N'Thriller', @CurrentDateTime, N'9789381626672')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Krishna Key', N'Thriller', @CurrentDateTime, N'9789381626689')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Taj Conspiracy', N'Thriller', @CurrentDateTime, N'9789381626139')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Malgudi Days', N'Classics, Fantasy', @CurrentDateTime, N'9788185986173')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'To Kill a Mockingbird', N'Classics', @CurrentDateTime, N'9780099549482')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Midnight''s Children', N'Classics', @CurrentDateTime, N'9780099582076')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Fountainhead', N'Classics', @CurrentDateTime, N'9780451191151')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Train to Pakistan', N'Classics', @CurrentDateTime, N'9780143065883')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Malgudi Schooldays', N'Classics', @CurrentDateTime, N'9780143330981')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'JONATHAN LIVINGSTON SEAGULL A STORY', N'Classics', @CurrentDateTime, N'9788172235789')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Artemis Fowl and the Last Guardian', N'Fantasy', @CurrentDateTime, N'9780141344331')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Wake', N'Fantasy', @CurrentDateTime, N'9781447205722')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Game of Thrones: A Song of Ice and Fire', N'Fantasy', @CurrentDateTime, N'9780007428540')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'A Clash of Kings: A Song of Ice and Fire ', N'Fantasy', @CurrentDateTime, N'9780006479895')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Harry Potter And The Deathly Hallows', N'Fantasy, Classics', @CurrentDateTime, N'9781408810606')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Noonshade', N'Fantasy', @CurrentDateTime, N'9780575082793')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Lord of The Rings', N'Fantasy', @CurrentDateTime, N'9780007273508')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Throne of Fire', N'Fantasy', @CurrentDateTime, N'9780141335674')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Eran', N'Fantasy', @CurrentDateTime, N'9780552553209')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Lost Symbol', N'Mystery', @CurrentDateTime, N'9780552161237')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Murder on Orient Express', N'Mystery, Fantasy', @CurrentDateTime, N'9780007282630')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'ne Girl', N'Mystery', @CurrentDateTime, N'9781780221359')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Murder of Roger Ackroyd', N'Mystery', @CurrentDateTime, N'9780007282548')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Salvation of a Saint', N'Mystery', @CurrentDateTime, N'9780349139340')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Thea Stilton and the Secret of the Old Castle', N'Mystery', @CurrentDateTime, N'9780545341073')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'A Memory of Light', N'Science Fiction, Fantasy, Mystery', @CurrentDateTime, N'9781841498706')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Mage''s Blood: The Montide Quartet', N'Science Fiction, Mystery', @CurrentDateTime, N'9781780871974')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Jurassic Park', N'Science Fiction', @CurrentDateTime, N'9780099282914')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Foundation', N'Science Fiction', @CurrentDateTime, N'9780007270422')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Solar', N'Science Fiction', @CurrentDateTime, N'9780099555346')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Manhattan in Reverse', N'Science Fiction, Thriller', @CurrentDateTime, N'9780230750319')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'The Air War', N'Science Fiction, Mystery', @CurrentDateTime, N'9780230757004')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Dran Reborn:wheel Of Time Book 3', N'Science Fiction, Thriller', @CurrentDateTime, N'9781857230659')

				INSERT [dbo].[BookCategory] ([Name], [Category], [CreatedOn], [ISBN]) VALUES (N'Off Armageddon Reef', N'Science Fiction', @CurrentDateTime, N'9780330534949')
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