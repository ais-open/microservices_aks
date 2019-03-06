--USE [BookReview]
BEGIN TRY
    BEGIN TRAN
		BEGIN
			DECLARE @CurrentDateTime DateTime
			SET @CurrentDateTime = (SELECT GetDate())

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Someone Like You', N'https://www.amazon.in/Someone-Like-You-Nikita-Singh/dp/014341769X/ref=sr_1_1?ie=UTF8&qid=1547900443&sr=8-1&keywords=Someone+Like+You', @CurrentDateTime, N'9780143417699')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Secret Wish List', N'https://www.amazon.com/Secret-Wish-List-Preeti-Shenoy/dp/938261818X/ref=sr_1_1?ie=UTF8&qid=1547902434&sr=8-1&keywords=The+Secret+Wish+List', @CurrentDateTime, N'9789382618188')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Love Stories That Touched My Heart', N'https://www.amazon.com/Love-Stories-That-Touched-Heart/dp/0143419641/ref=sr_1_1?ie=UTF8&qid=1547902490&sr=8-1&keywords=Love+Stories+That+Touched+My+Heart', @CurrentDateTime, N'9780143419648')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Can Love Happen Twice?', N'https://www.amazon.com/Love-Happen-Twice-Ravinder-Singh/dp/0143417231/ref=sr_1_1?ie=UTF8&qid=1547902533&sr=8-1&keywords=Can+Love+Happen+Twice%3F', @CurrentDateTime, N'9780143417231')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Uff Ye Emotions: A Collection of Award Winning Love Stories', N'https://www.amazon.in/Uff-ye-Emotions-Vinit-Bansal/dp/9350880385/ref=sr_1_fkmr0_1?ie=UTF8&qid=1547902593&sr=8-1-fkmr0&keywords=Uff+Ye+Emotions%3A+A+Collection+of+Award+Winning+Love+Stories', @CurrentDateTime, N'9789350880388')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Oliver''s Story', N'https://www.amazon.in/Oliver-Can-Read-Level-Hoff/dp/0064442721/ref=sr_1_3?ie=UTF8&qid=1547902663&sr=8-3&keywords=Oliver%27%27s+Story', @CurrentDateTime, N'9781444768404')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Love Endeavors', N'https://www.amazon.in/LOVE-ENDEAVORS-love-conquers-fears-ebook/dp/B00RDGG65W/ref=sr_1_2?ie=UTF8&qid=1547902728&sr=8-2&keywords=Love+Endeavors', @CurrentDateTime, N'9789382447276')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Third Bullet', N'https://www.amazon.in/Third-Bullet-Bob-Swagger-Novel/dp/145164020X/ref=sr_1_1?ie=UTF8&qid=1547902762&sr=8-1&keywords=The+Third+Bullet', @CurrentDateTime, N'9781451640205')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Hit', N'https://www.amazon.in/Hit-Will-Robie-David-Baldacci/dp/1447225325/ref=sr_1_2?ie=UTF8&qid=1547903047&sr=8-2&keywords=The+Hit', @CurrentDateTime, N'9781447229902')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'A Degree in Death', N'https://www.amazon.in/Degree-Death-Ruby-Gupta/dp/8180460843/ref=sr_1_1?ie=UTF8&qid=1547903105&sr=8-1&keywords=A+Degree+in+Death', @CurrentDateTime, N'9788180460845')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Edge of the Machete', N'https://www.amazon.in/Edge-Machete-Abhisar-Sharma/dp/9381626677/ref=sr_1_1?ie=UTF8&qid=1547903150&sr=8-1&keywords=The+Edge+of+the+Machete', @CurrentDateTime, N'9789381626672')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Krishna Key', N'https://www.amazon.in/Krishna-Key-Historical-Mythological-Thrillers/dp/9381626685/ref=sr_1_2?ie=UTF8&qid=1547903177&sr=8-2&keywords=The+Krishna+Key', @CurrentDateTime, N'9789381626689')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Taj Conspiracy', N'https://www.amazon.in/Taj-Conspiracy-Manreet-Sodhi-Someshwar-ebook/dp/B00APJA1R8/ref=sr_1_1?ie=UTF8&qid=1547903208&sr=8-1&keywords=The+Taj+Conspiracy', @CurrentDateTime, N'9789381626139')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Malgudi Days', N'https://www.amazon.in/Malgudi-Days-R-K-Narayan/dp/8185986177/ref=sr_1_1?s=books&ie=UTF8&qid=1547903232&sr=1-1&keywords=Malgudi+Days', @CurrentDateTime, N'9788185986173')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'To Kill a Mockingbird', N'https://www.amazon.in/Kill-Mockingbird-Harper-Lee/dp/0099549484/ref=sr_1_2?s=books&ie=UTF8&qid=1547903266&sr=1-2&keywords=To+Kill+a+Mockingbird', @CurrentDateTime, N'9780099549482')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Midnight''s Children', N'https://www.amazon.in/Midnights-Children-Salman-Rushdie/dp/0099582074/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1547903299&sr=1-1-spons&keywords=Midnight%27s+Children&psc=1&smid=A05378423NJE7Q5XCN3XZ', @CurrentDateTime, N'9780099582076')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Fountainhead', N'https://www.amazon.in/Fountainhead-Ayn-Rand/dp/0451191153/ref=sr_1_1?s=books&ie=UTF8&qid=1547903358&sr=1-1&keywords=The+Fountainhead', @CurrentDateTime, N'9780451191151')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Train to Pakistan', N'https://www.amazon.in/Train-Pakistan-Khushwant-Singh/dp/0143065882/ref=sr_1_1?s=books&ie=UTF8&qid=1547903390&sr=1-1&keywords=Train+to+Pakistan', @CurrentDateTime, N'9780143065883')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Malgudi Schooldays', N'https://www.amazon.in/Malgudi-Schooldays-Puffin-Classics-Narayan/dp/0143330985/ref=sr_1_1?s=books&ie=UTF8&qid=1547903424&sr=1-1&keywords=Malgudi+Schooldays', @CurrentDateTime, N'9780143330981')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'JONATHAN LIVINGSTON SEAGULL A STORY', N'https://www.amazon.in/Jonathan-Livingston-Seagull-Richard-Bach/dp/817223578X/ref=sr_1_1?s=books&ie=UTF8&qid=1547903455&sr=1-1&keywords=JONATHAN+LIVINGSTON+SEAGULL+A+STORY', @CurrentDateTime, N'9788172235789')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Artemis Fowl and the Last Guardian', N'https://www.amazon.in/Artemis-Fowl-Guardian-Eoin-Colfer/dp/1423161610/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1547903727&sr=1-1-spons&keywords=Artemis+Fowl+and+the+Last+Guardian&psc=1', @CurrentDateTime, N'9780141344331')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Wake', N'https://www.amazon.in/Wake-Amanda-Hocking/dp/1447205723/ref=sr_1_1?s=books&ie=UTF8&qid=1547903812&sr=1-1&keywords=Wake', @CurrentDateTime, N'9781447205722')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Game of Thrones: A Song of Ice and Fire', N'https://www.amazon.in/Game-Thrones-Song-Ice-Fire/dp/0007428545/ref=sr_1_1?s=books&ie=UTF8&qid=1547903847&sr=1-1&keywords=Game+of+Thrones%3A+A+Song+of+Ice+and+Fire', @CurrentDateTime, N'9780007428540')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'A Clash of Kings: A Song of Ice and Fire', N'https://www.amazon.in/Clash-Kings-Song-Ice-Fire/dp/0007465823/ref=sr_1_1?s=books&ie=UTF8&qid=1547903884&sr=1-1&keywords=A+Clash+of+Kings%3A+A+Song+of+Ice+and+Fire', @CurrentDateTime, N'9780006479895')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Harry Potter And The Deathly Hallows', N'https://www.amazon.in/Harry-Potter-Deathly-Hallows/dp/1408855712/ref=sr_1_1?s=books&ie=UTF8&qid=1547903912&sr=1-1&keywords=Harry+Potter+And+The+Deathly+Hallows', @CurrentDateTime, N'9781408810606')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Noonshade', N'https://www.amazon.in/Noonshade-Chronicles-Raven-James-Barclay/dp/0575082798/ref=sr_1_1?s=books&ie=UTF8&qid=1547903946&sr=1-1&keywords=Noonshade', @CurrentDateTime, N'9780575082793')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Lord of The Rings', N'https://www.amazon.in/Return-King-Visual-Companion-Rings/dp/0007116268/ref=sr_1_2_sspa?s=books&ie=UTF8&qid=1547903984&sr=1-2-spons&keywords=The+Lord+of+The+Rings&psc=1&smid=A2GO8HCAN0NR4N', @CurrentDateTime, N'9780007273508')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Throne of Fire', N'https://www.amazon.in/Throne-Fire-Kane-Chronicles/dp/014133567X/ref=sr_1_2?s=books&ie=UTF8&qid=1547904029&sr=1-2&keywords=The+Throne+of+Fire', @CurrentDateTime, N'9780141335674')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Eran', N'https://www.amazon.in/Eran-Shakine-Graffiti-Girl/dp/3777430692/ref=sr_1_7?ie=UTF8&qid=1547904096&sr=8-7&keywords=Eran', @CurrentDateTime, N'9780552553209')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Lost Symbol', N'https://www.amazon.in/Lost-Symbol-Robert-Langdon/dp/0552161233/ref=sr_1_1?ie=UTF8&qid=1547904150&sr=8-1&keywords=The+Lost+Symbol', @CurrentDateTime, N'9780552161237')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Murder on Orient Express', N'https://www.amazon.in/Murder-Orient-Express-Poirot-Christie/dp/0007234406/ref=sr_1_1_sspa?ie=UTF8&qid=1547904183&sr=8-1-spons&keywords=Murder+on+Orient+Express&psc=1', @CurrentDateTime, N'9780007282630')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'ne Girl', N'', @CurrentDateTime, N'9781780221359')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Murder of Roger Ackroyd', N'https://www.amazon.in/Murder-Roger-Ackroyd-Poirot/dp/0007234376/ref=sr_1_1_sspa?ie=UTF8&qid=1547904251&sr=8-1-spons&keywords=The+Murder+of+Roger+Ackroyd&psc=1', @CurrentDateTime, N'9780007282548')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Salvation of a Saint', N'https://www.amazon.in/Salvation-Saint-Keigo-Higashino/dp/0349139342/ref=sr_1_1?ie=UTF8&qid=1547904286&sr=8-1&keywords=Salvation+of+a+Saint', @CurrentDateTime, N'9780349139340')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Thea Stilton and the Secret of the Old Castle', N'https://www.amazon.in/Thea-Stilton-Secret-Old-Castle/dp/0545341078/ref=sr_1_1?ie=UTF8&qid=1547904320&sr=8-1&keywords=Thea+Stilton+and+the+Secret+of+the+Old+Castle', @CurrentDateTime, N'9780545341073')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'A Memory of Light', N'https://www.amazon.in/Memory-Light-Book-Wheel-Time/dp/035650395X/ref=sr_1_1?ie=UTF8&qid=1547904345&sr=8-1&keywords=A+Memory+of+Light', @CurrentDateTime, N'9781841498706')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Mage''s Blood: The Montide Quartet', N'https://www.amazon.in/Mages-Blood-Moontide-Quartet-Book/dp/B07BHF7J4C/ref=sr_1_fkmr0_1?ie=UTF8&qid=1547904374&sr=8-1-fkmr0&keywords=Mage%27s+Blood%3A+The+Montide+Quartet', @CurrentDateTime, N'9781780871974')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Jurassic Park', N'https://www.amazon.in/Jurassic-Park-Micheal-Crichton/dp/1784752223/ref=sr_1_1?s=books&ie=UTF8&qid=1547904416&sr=1-1&keywords=Jurassic+Park', @CurrentDateTime, N'9780099282914')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Foundation', N'https://www.amazon.in/Foundation-Science-Maths-IIT-JEE-Olympiad/dp/9386323702/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1547904445&sr=1-1-spons&keywords=Foundation&psc=1', @CurrentDateTime, N'9780007270422')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Solar', N'https://www.amazon.in/Our-Solar-System-Understand-Especially/dp/9562913368/ref=sr_1_4?s=books&ie=UTF8&qid=1547904502&sr=1-4&keywords=Solar', @CurrentDateTime, N'9780099555346')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Manhattan in Reverse', N'https://www.amazon.in/Manhattan-Reverse-Peter-F-Hamilton/dp/0330522205/ref=sr_1_1_sspa?s=books&ie=UTF8&qid=1547904554&sr=1-1-spons&keywords=Manhattan+in+Reverse&psc=1&smid=A05378423NJE7Q5XCN3XZ', @CurrentDateTime, N'9780230750319')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'The Air War', N'https://www.amazon.in/Palace-Cobra-Fighter-Pilot-Vietnam/dp/1250038685/ref=sr_1_2_sspa?s=books&ie=UTF8&qid=1547904590&sr=1-2-spons&keywords=The+Air+War&psc=1', @CurrentDateTime, N'9780230757004')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Dran Reborn:wheel Of Time Book 3', N'https://www.amazon.in/Dragon-Reborn-Book-Wheel-Time/dp/0356503844/ref=sr_1_fkmr0_1?s=books&ie=UTF8&qid=1547904637&sr=1-1-fkmr0&keywords=Dran+Reborn%3Awheel+Of+Time+Book+3', @CurrentDateTime, N'9781857230659')

				INSERT [dbo].[BookOnlineStore] ([Name], [OnlineLink], [CreatedOn], [ISBN]) VALUES (N'Off Armageddon Reef', N'https://www.amazon.in/Armageddon-Reef-Safehold-David-Weber/dp/0330534947/ref=sr_1_1?s=books&ie=UTF8&qid=1547904672&sr=1-1&keywords=Off+Armageddon+Reef', @CurrentDateTime, N'9780330534949')

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


