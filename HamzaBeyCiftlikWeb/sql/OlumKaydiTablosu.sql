USE [HamzaBeyCiftlik]
GO

/****** Object:  Table [dbo].[OlumKaydi]    Script Date: 17/03/2024 18:54:43 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OlumKaydi](
	[OlumID] [int] IDENTITY(1,1) NOT NULL,
	[HayvanID] [int] NULL,
	[OlumTarihi] [date] NULL,
	[OlumNedeni] [varchar](400) NULL,
	[KayitTarihi]  AS (getdate()),
 CONSTRAINT [PK_OlumKaydi] PRIMARY KEY CLUSTERED 
(
	[OlumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

