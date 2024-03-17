USE [HamzaBeyCiftlik]
GO

/****** Object:  Table [dbo].[Hayvanlar]    Script Date: 17/03/2024 18:52:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Hayvanlar](
	[HayvanID] [int] IDENTITY(1,1) NOT NULL,
	[Tur] [varchar](20) NULL,
	[Yas] [int] NULL,
	[SaglikDurumu] [varchar](50) NULL,
	[KayitTarihi]  AS (getdate()),
 CONSTRAINT [PK_Hayvanlar] PRIMARY KEY CLUSTERED 
(
	[HayvanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

