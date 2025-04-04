USE [repare]
GO
/****** Object:  Table [dbo].[consumables]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consumables](
	[ID_cons] [int] IDENTITY(1,1) NOT NULL,
	[type_cons] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_consumables] PRIMARY KEY CLUSTERED 
(
	[ID_cons] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costs]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costs](
	[ID_cost] [int] IDENTITY(1,1) NOT NULL,
	[type_cost] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_costs] PRIMARY KEY CLUSTERED 
(
	[ID_cost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repair]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repair](
	[ID_machine] [int] NOT NULL,
	[ID_repair] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[ID_client] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_worker] [int] NOT NULL,
 CONSTRAINT [PK_Repair] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[ID_roles] [int] IDENTITY(1,1) NOT NULL,
	[Name_roles] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_roles] PRIMARY KEY CLUSTERED 
(
	[ID_roles] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types of machines]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types of machines](
	[ID_machine] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](20) NOT NULL,
	[year_of_release] [date] NOT NULL,
	[stamp] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Types of machines] PRIMARY KEY CLUSTERED 
(
	[ID_machine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types of repairs]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types of repairs](
	[ID_repair] [int] IDENTITY(1,1) NOT NULL,
	[ID_cost] [int] NOT NULL,
	[ID_cons] [int] NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[duration] [time](3) NOT NULL,
	[notes] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Types of repairs] PRIMARY KEY CLUSTERED 
(
	[ID_repair] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[ID_users] [int] IDENTITY(1,1) NOT NULL,
	[ID_roles] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID_users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workers]    Script Date: 01.04.2025 12:31:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workers](
	[ID_worker] [int] IDENTITY(1,1) NOT NULL,
	[FIO_worker] [nvarchar](50) NOT NULL,
	[salary] [int] NOT NULL,
	[post] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_workers] PRIMARY KEY CLUSTERED 
(
	[ID_worker] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[consumables] ON 

INSERT [dbo].[consumables] ([ID_cons], [type_cons], [price], [quantity]) VALUES (1, N'запчасти', 3500, 2)
INSERT [dbo].[consumables] ([ID_cons], [type_cons], [price], [quantity]) VALUES (2, N'расходники', 1500, 3)
INSERT [dbo].[consumables] ([ID_cons], [type_cons], [price], [quantity]) VALUES (3, N'машинное масло', 1000, 4)
INSERT [dbo].[consumables] ([ID_cons], [type_cons], [price], [quantity]) VALUES (4, N'подшипник', 1500, 6)
INSERT [dbo].[consumables] ([ID_cons], [type_cons], [price], [quantity]) VALUES (5, N'прочие детали', 5000, 4)
SET IDENTITY_INSERT [dbo].[consumables] OFF
GO
SET IDENTITY_INSERT [dbo].[costs] ON 

INSERT [dbo].[costs] ([ID_cost], [type_cost], [price]) VALUES (1, N'замена изношенных деталей', 15000)
INSERT [dbo].[costs] ([ID_cost], [type_cost], [price]) VALUES (2, N'капитальный осмотр оборудования', 13000)
INSERT [dbo].[costs] ([ID_cost], [type_cost], [price]) VALUES (3, N'замена расходников', 6500)
INSERT [dbo].[costs] ([ID_cost], [type_cost], [price]) VALUES (4, N'капитальный ремонт оборудования', 25000)
INSERT [dbo].[costs] ([ID_cost], [type_cost], [price]) VALUES (5, N'замена подшипников', 8000)
SET IDENTITY_INSERT [dbo].[costs] OFF
GO
SET IDENTITY_INSERT [dbo].[Repair] ON 

INSERT [dbo].[Repair] ([ID_machine], [ID_repair], [start_date], [ID_client], [ID], [ID_worker]) VALUES (4, 2, CAST(N'2024-07-20' AS Date), 4, 1, 1)
INSERT [dbo].[Repair] ([ID_machine], [ID_repair], [start_date], [ID_client], [ID], [ID_worker]) VALUES (3, 1, CAST(N'2024-02-03' AS Date), 2, 2, 2)
INSERT [dbo].[Repair] ([ID_machine], [ID_repair], [start_date], [ID_client], [ID], [ID_worker]) VALUES (5, 3, CAST(N'2024-04-01' AS Date), 3, 3, 3)
INSERT [dbo].[Repair] ([ID_machine], [ID_repair], [start_date], [ID_client], [ID], [ID_worker]) VALUES (2, 5, CAST(N'2024-09-10' AS Date), 1, 4, 4)
INSERT [dbo].[Repair] ([ID_machine], [ID_repair], [start_date], [ID_client], [ID], [ID_worker]) VALUES (1, 4, CAST(N'2024-08-12' AS Date), 5, 5, 5)
SET IDENTITY_INSERT [dbo].[Repair] OFF
GO
SET IDENTITY_INSERT [dbo].[roles] ON 

INSERT [dbo].[roles] ([ID_roles], [Name_roles]) VALUES (1, N'admin')
INSERT [dbo].[roles] ([ID_roles], [Name_roles]) VALUES (2, N'client')
SET IDENTITY_INSERT [dbo].[roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Types of machines] ON 

INSERT [dbo].[Types of machines] ([ID_machine], [country], [year_of_release], [stamp]) VALUES (1, N'Russia', CAST(N'2001-03-01' AS Date), N'West')
INSERT [dbo].[Types of machines] ([ID_machine], [country], [year_of_release], [stamp]) VALUES (2, N'UAE', CAST(N'2012-09-02' AS Date), N'Sand')
INSERT [dbo].[Types of machines] ([ID_machine], [country], [year_of_release], [stamp]) VALUES (3, N'USA', CAST(N'2002-11-07' AS Date), N'AYE')
INSERT [dbo].[Types of machines] ([ID_machine], [country], [year_of_release], [stamp]) VALUES (4, N'France', CAST(N'2003-08-12' AS Date), N'dog')
INSERT [dbo].[Types of machines] ([ID_machine], [country], [year_of_release], [stamp]) VALUES (5, N'Russia', CAST(N'2034-12-21' AS Date), N'AG')
SET IDENTITY_INSERT [dbo].[Types of machines] OFF
GO
SET IDENTITY_INSERT [dbo].[Types of repairs] ON 

INSERT [dbo].[Types of repairs] ([ID_repair], [ID_cost], [ID_cons], [title], [duration], [notes]) VALUES (1, 5, 4, N'Ремонт 2', CAST(N'03:00:00' AS Time), N'нет')
INSERT [dbo].[Types of repairs] ([ID_repair], [ID_cost], [ID_cons], [title], [duration], [notes]) VALUES (2, 4, 5, N'Ремонт', CAST(N'05:00:00' AS Time), N'нет')
INSERT [dbo].[Types of repairs] ([ID_repair], [ID_cost], [ID_cons], [title], [duration], [notes]) VALUES (3, 1, 1, N'Ремонт 3', CAST(N'01:00:00' AS Time), N'нет')
INSERT [dbo].[Types of repairs] ([ID_repair], [ID_cost], [ID_cons], [title], [duration], [notes]) VALUES (4, 2, 3, N'Ремонт 5', CAST(N'00:15:00' AS Time), N'нет')
INSERT [dbo].[Types of repairs] ([ID_repair], [ID_cost], [ID_cons], [title], [duration], [notes]) VALUES (5, 3, 2, N'Ремонт 4', CAST(N'00:30:00' AS Time), N'хорошо')
SET IDENTITY_INSERT [dbo].[Types of repairs] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Login], [Password], [FIO], [ID_users], [ID_roles]) VALUES (N'admin', N'1234', N'Мокеев Никита Михайлович', 1, 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [ID_users], [ID_roles]) VALUES (N'Vaza', N'634', N'Вася', 2, 2)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [ID_users], [ID_roles]) VALUES (N'olo', N'784', N'Оля', 3, 2)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [ID_users], [ID_roles]) VALUES (N'Yora', N'567', N'Юра', 4, 2)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [ID_users], [ID_roles]) VALUES (N'Goha', N'5623', N'Гоша', 5, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[workers] ON 

INSERT [dbo].[workers] ([ID_worker], [FIO_worker], [salary], [post]) VALUES (1, N'Скуф', 50000, N'Главный мастер')
INSERT [dbo].[workers] ([ID_worker], [FIO_worker], [salary], [post]) VALUES (2, N'Арсений', 30000, N'Мастер')
INSERT [dbo].[workers] ([ID_worker], [FIO_worker], [salary], [post]) VALUES (3, N'Кирилл', 30000, N'Мастер')
INSERT [dbo].[workers] ([ID_worker], [FIO_worker], [salary], [post]) VALUES (4, N'Никита', 30000, N'Мастер')
INSERT [dbo].[workers] ([ID_worker], [FIO_worker], [salary], [post]) VALUES (5, N'Дима', 30000, N'Мастер')
SET IDENTITY_INSERT [dbo].[workers] OFF
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Types of machines] FOREIGN KEY([ID_machine])
REFERENCES [dbo].[Types of machines] ([ID_machine])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Types of machines]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Types of repairs] FOREIGN KEY([ID_repair])
REFERENCES [dbo].[Types of repairs] ([ID_repair])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Types of repairs]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Users] FOREIGN KEY([ID_client])
REFERENCES [dbo].[Users] ([ID_users])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Users]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_workers] FOREIGN KEY([ID_worker])
REFERENCES [dbo].[workers] ([ID_worker])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_workers]
GO
ALTER TABLE [dbo].[Types of repairs]  WITH CHECK ADD  CONSTRAINT [FK_Types of repairs_consumables] FOREIGN KEY([ID_cons])
REFERENCES [dbo].[consumables] ([ID_cons])
GO
ALTER TABLE [dbo].[Types of repairs] CHECK CONSTRAINT [FK_Types of repairs_consumables]
GO
ALTER TABLE [dbo].[Types of repairs]  WITH CHECK ADD  CONSTRAINT [FK_Types of repairs_costs] FOREIGN KEY([ID_cost])
REFERENCES [dbo].[costs] ([ID_cost])
GO
ALTER TABLE [dbo].[Types of repairs] CHECK CONSTRAINT [FK_Types of repairs_costs]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_roles] FOREIGN KEY([ID_roles])
REFERENCES [dbo].[roles] ([ID_roles])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_roles]
GO
