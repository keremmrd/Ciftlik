USE [HamzaBeyCiftlik]
GO

/****** Object:  Table [dbo].[Muayeneler]    Script Date: 17/03/2024 18:54:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Muayeneler](
	[MuayeneID] [int] IDENTITY(1,1) NOT NULL,
	[HayvanID] [int] NULL,
	[MuayeneTarihi] [date] NULL,
	[YapilanIslemler] [varchar](50) NULL,
	[MuayeneNotlari] [varchar](50) NULL,
	[KayitTarihi]  AS (getdate()),
 CONSTRAINT [PK_Muayeneler] PRIMARY KEY CLUSTERED 
(
	[MuayeneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

