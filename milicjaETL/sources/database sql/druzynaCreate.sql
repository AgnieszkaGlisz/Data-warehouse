USE [NieUciekniesz]
GO

/****** Object:  Table [dbo].[Druzyna]    Script Date: 09.12.2019 12:02:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Druzyna](
	[Funkcjonariusz1] [nvarchar](50) NOT NULL,
	[Funkcjonariusz2] [nvarchar](50) NOT NULL,
	[Funkcjonariusz3] [nvarchar](50) NOT NULL,
	[NrID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Druzyna] PRIMARY KEY CLUSTERED 
(
	[NrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


