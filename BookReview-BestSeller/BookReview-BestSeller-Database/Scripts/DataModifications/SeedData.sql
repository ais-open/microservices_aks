--USE [BookReview]
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


