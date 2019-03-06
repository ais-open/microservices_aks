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

