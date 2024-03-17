USE [HamzaBeyCiftlik]
GO

/****** Object:  Table [dbo].[SutUretimi]    Script Date: 17/03/2024 19:51:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SutUretimi](
	[UretimID] [int] IDENTITY(1,1) NOT NULL,
	[HayvanID] [int] NULL,
	[UretimTarihi] [date] NULL,
	[UretimMiktari] [float] NULL,
	[KayitTarihi]  AS (getdate()),
 CONSTRAINT [PK_SutUretimi] PRIMARY KEY CLUSTERED 
(
	[UretimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

