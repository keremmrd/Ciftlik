USE [HamzaBeyCiftlik]
GO

/****** Object:  Table [dbo].[YemTuketimi]    Script Date: 17/03/2024 19:52:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[YemTuketimi](
	[TuketimID] [int] IDENTITY(1,1) NOT NULL,
	[HayvanID] [int] NULL,
	[YemMiktar?KG] [float] NULL,
	[YemTuru] [varchar](30) NULL,
	[Tuketimtarihi] [date] NULL,
	[KayitTarihi]  AS (getdate()),
 CONSTRAINT [PK_YemTuketimi] PRIMARY KEY CLUSTERED 
(
	[TuketimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

