USE [NieUciekniesz]
GO

/****** Object:  Table [dbo].[Funkcjonariusz]    Script Date: 09.12.2019 12:03:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Funkcjonariusz](
	[Imie] [varchar](50) NOT NULL,
	[Nazwisko] [varchar](50) NOT NULL,
	[Plec] [varchar](50) NOT NULL,
	[Data_urodzenia] [varchar](50) NOT NULL,
	[FK_Stanowisko] [varchar](50) NOT NULL,
	[Nr_ID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Funkcjonariusz] PRIMARY KEY CLUSTERED 
(
	[Nr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


