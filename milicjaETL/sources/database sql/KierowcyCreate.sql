USE [NieUciekniesz]
GO

/****** Object:  Table [dbo].[Kierowcy]    Script Date: 09.12.2019 12:03:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Kierowcy](
	[Nr_ewidencji_NESKM] [int] NOT NULL,
	[Imie] [varchar](50) NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
	[Nr_prawa_lotu] [int] NOT NULL,
 CONSTRAINT [PK_Kierowcy] PRIMARY KEY CLUSTERED 
(
	[Nr_ewidencji_NESKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


