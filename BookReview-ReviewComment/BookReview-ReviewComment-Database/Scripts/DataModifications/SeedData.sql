--USE [BookReview]
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


