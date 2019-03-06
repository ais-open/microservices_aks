--USE [BookReview]
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


