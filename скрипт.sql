USE [Barbershop]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 01.04.2025 12:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID_Client] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](15) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Patronymic] [nvarchar](15) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Regular_Client] [bit] NOT NULL,
	[Login] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[ID_Role] [int] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID_Client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haircuts]    Script Date: 01.04.2025 12:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haircuts](
	[ID_Haircut] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](10) NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Haircuts] PRIMARY KEY CLUSTERED 
(
	[ID_Haircut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 01.04.2025 12:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID_Role] [int] NOT NULL,
	[Name_Role] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Works]    Script Date: 01.04.2025 12:33:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Works](
	[ID_Work] [int] IDENTITY(1,1) NOT NULL,
	[ID_Client] [int] NOT NULL,
	[ID_Haircut] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Works] PRIMARY KEY CLUSTERED 
(
	[ID_Work] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Roles] FOREIGN KEY([ID_Role])
REFERENCES [dbo].[Roles] ([ID_Role])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Roles]
GO
ALTER TABLE [dbo].[Works]  WITH CHECK ADD  CONSTRAINT [FK_Works_Clients] FOREIGN KEY([ID_Client])
REFERENCES [dbo].[Clients] ([ID_Client])
GO
ALTER TABLE [dbo].[Works] CHECK CONSTRAINT [FK_Works_Clients]
GO
ALTER TABLE [dbo].[Works]  WITH CHECK ADD  CONSTRAINT [FK_Works_Haircuts] FOREIGN KEY([ID_Haircut])
REFERENCES [dbo].[Haircuts] ([ID_Haircut])
GO
ALTER TABLE [dbo].[Works] CHECK CONSTRAINT [FK_Works_Haircuts]
GO
