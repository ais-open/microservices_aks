USE [master]
GO

/****** Object:  Database [bookreview-reviewcomment-db]    Script Date: 2/9/2019 4:22:50 PM ******/
CREATE DATABASE [bookreview-reviewcomment-db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bookreview-reviewcomment-db', FILENAME = N'/var/opt/mssql/data/bookreview-reviewcomment-db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bookreview-reviewcomment-db_log', FILENAME = N'/var/opt/mssql/data/bookreview-reviewcomment-db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bookreview-reviewcomment-db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ARITHABORT OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET  DISABLE_BROKER 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET RECOVERY FULL 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET  MULTI_USER 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET DB_CHAINING OFF 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET QUERY_STORE = OFF
GO

ALTER DATABASE [bookreview-reviewcomment-db] SET  READ_WRITE 
GO

USE [bookreview-reviewcomment-db]

GO

CREATE TABLE [dbo].[BookReview]
(	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Rating] [int] NOT NULL,
	[ReviewComments] [nvarchar](1000) NULL,
	[ReviewedBy] [nvarchar](50) NULL,
	[CreatedOn] DATETIME NULL, 
    [ISBN] VARCHAR(50) NULL, 
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

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Someone Like You', 4, N'Best ever love story I have ever read..od if someone like you make it into a movie.I simply loved it.(only book of durjoy dutta that looks this great)', N'Steve', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Someone Like You', 2, N'did not loose my interest anywhere... Some hospitals scenes were draggy but many twists in the story will never disconnect you from the story till the end..no one can predict the next move of the main character.. great work nikitha singh and datta!!', N'Jack', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Someone Like You', 5, N'Worth reading,I liked it,od love story. You too can read it.', N'Viru', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Can Love Happen Twice?', 2, N'A cute love story where you will definitely fall in love with Niharika and Karthik ... It has also depicted a cute relation of Niharika and her friends Pia and Tanmay', N'Vinnie', @CurrentDateTime, N'9780143417231')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Can Love Happen Twice?', 4, N'It is just another amazing book by Durjoy... It is a story that always keeps u in suspense about what next could happen and with the twists in the story it keeps u glued... It is a wonderful book to read for the ones who like love stories', N'Michel', @CurrentDateTime, N'9780143417231')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', 3, N'Must read for everyone! Once in a while possibly we come across such a book which is unputdownable! A die-hard fan of durjoy dutta, would recommend everyone to have a read. love story of pia or tanmay amazing and description of football match tremendous.', N'Clark', @CurrentDateTime, N'9789382447276')
				
				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'The Secret Wish List', 5, N'A cute love story where you will definitely fall in love with Niharika and Karthik ... It has also depicted a cute relation of Niharika and her friends Pia and Tanmay', N'Mike', @CurrentDateTime, N'9789382618188')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'The Secret Wish List', 4, N'It is just another amazing book by Durjoy... It is a story that always keeps u in suspense about what next could happen and with the twists in the story it keeps u glued... It is a wonderful book to read for the ones who like love stories', N'Michel', @CurrentDateTime, N'9789382618188')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Love Stories That Touched My Heart', 5, N'A cute love story where you will definitely fall in love with Niharika and Karthik ... It has also depicted a cute relation of Niharika and her friends Pia and Tanmay', N'Josh', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Love Stories That Touched My Heart', 4, N'This is a pretty solid follow up to Dawnthief. It''s a bit slow getting started, and doesn''t feel as polished as the previous book. Once the Raven charactors take center stage the book does become more satisfying. It is a wonderful book to read for the ones who like love stories', N'Rose', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', 3, N'A cute love story where you will definitely fall in love with Niharika and Karthik ... It has also depicted a cute relation of Niharika and her friends Pia and Tanmay', N'Mark', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookReview] ([Name], [Rating], [ReviewComments], [ReviewedBy], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', 5, N'This is a pretty solid follow up to Dawnthief. It''s a bit slow getting started, and doesn''t feel as polished as the previous book. Once the Raven charactors take center stage the book does become more satisfying. It is a wonderful book to read for the ones who like love stories', N'Robert', @CurrentDateTime, N'9780143419648')

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


