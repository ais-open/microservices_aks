CREATE TABLE [dbo].[Book]
(	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AuthorName] [nvarchar](50) NOT NULL,
	[PublisherName] [nvarchar](50) NULL,
	[Price] [int] NOT NULL,
	[Discount] DECIMAL(5, 2) NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[PublicationYear] [int] NULL,
	[Image] [nvarchar](200) NOT NULL,
	[Details] [nvarchar](max) NULL,
[CreatedOn] DATETIME NULL, 
    [ISBN] NVARCHAR(50) NULL, 
    PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

