USE [Dry_cleaning]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 28.03.2025 20:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID_clients] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nchar](30) NOT NULL,
	[Password] [nchar](30) NOT NULL,
	[Lastname] [nchar](20) NOT NULL,
	[Firstname] [nchar](20) NOT NULL,
	[Patronymic] [nchar](20) NOT NULL,
	[Regular_customer] [bit] NOT NULL,
	[ID_role] [int] NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ID_clients] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28.03.2025 20:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID_role] [int] IDENTITY(1,1) NOT NULL,
	[Name_role] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services_provision]    Script Date: 28.03.2025 20:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services_provision](
	[ID_service_provision] [int] IDENTITY(1,1) NOT NULL,
	[ID_client] [int] NOT NULL,
	[ID_Types_of_services] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Total_cost] [money] NOT NULL,
 CONSTRAINT [PK_Services_provision] PRIMARY KEY CLUSTERED 
(
	[ID_service_provision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types_of_services]    Script Date: 28.03.2025 20:50:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types_of_services](
	[ID_Types_of_services] [int] IDENTITY(1,1) NOT NULL,
	[Name_Types_of_services] [nchar](50) NOT NULL,
	[Type] [nchar](20) NOT NULL,
	[Cost] [money] NOT NULL,
 CONSTRAINT [PK_Types_of_services] PRIMARY KEY CLUSTERED 
(
	[ID_Types_of_services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([ID_clients], [Login], [Password], [Lastname], [Firstname], [Patronymic], [Regular_customer], [ID_role]) VALUES (1, N'admin                         ', N'123                           ', N'Мартьянов           ', N'Дмитрий             ', N'Иванович            ', 1, 1)
INSERT [dbo].[Clients] ([ID_clients], [Login], [Password], [Lastname], [Firstname], [Patronymic], [Regular_customer], [ID_role]) VALUES (2, N'user                          ', N'123                           ', N'Иванов              ', N'Иван                ', N'Иванович            ', 0, 2)
INSERT [dbo].[Clients] ([ID_clients], [Login], [Password], [Lastname], [Firstname], [Patronymic], [Regular_customer], [ID_role]) VALUES (3, N'user1                         ', N'123                           ', N'Сидоров             ', N'Василий             ', N'Николаевич          ', 1, 2)
INSERT [dbo].[Clients] ([ID_clients], [Login], [Password], [Lastname], [Firstname], [Patronymic], [Regular_customer], [ID_role]) VALUES (4, N'user2                         ', N'123                           ', N'Давыдов             ', N'Арсений             ', N'Петрович            ', 0, 2)
INSERT [dbo].[Clients] ([ID_clients], [Login], [Password], [Lastname], [Firstname], [Patronymic], [Regular_customer], [ID_role]) VALUES (5, N'user3                         ', N'123                           ', N'Морозов             ', N'Андрей              ', N'Михайлович          ', 0, 2)
SET IDENTITY_INSERT [dbo].[Clients] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([ID_role], [Name_role]) VALUES (1, N'admin     ')
INSERT [dbo].[Roles] ([ID_role], [Name_role]) VALUES (2, N'user      ')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services_provision] ON 

INSERT [dbo].[Services_provision] ([ID_service_provision], [ID_client], [ID_Types_of_services], [Count], [Total_cost]) VALUES (1, 3, 5, 2, 4400.0000)
INSERT [dbo].[Services_provision] ([ID_service_provision], [ID_client], [ID_Types_of_services], [Count], [Total_cost]) VALUES (2, 5, 1, 1, 1200.0000)
INSERT [dbo].[Services_provision] ([ID_service_provision], [ID_client], [ID_Types_of_services], [Count], [Total_cost]) VALUES (3, 4, 2, 3, 7500.0000)
INSERT [dbo].[Services_provision] ([ID_service_provision], [ID_client], [ID_Types_of_services], [Count], [Total_cost]) VALUES (4, 2, 3, 1, 500.0000)
INSERT [dbo].[Services_provision] ([ID_service_provision], [ID_client], [ID_Types_of_services], [Count], [Total_cost]) VALUES (5, 5, 4, 1, 1800.0000)
SET IDENTITY_INSERT [dbo].[Services_provision] OFF
GO
SET IDENTITY_INSERT [dbo].[Types_of_services] ON 

INSERT [dbo].[Types_of_services] ([ID_Types_of_services], [Name_Types_of_services], [Type], [Cost]) VALUES (1, N'Химчистка пиджака                                 ', N'Одежда              ', 1200.0000)
INSERT [dbo].[Types_of_services] ([ID_Types_of_services], [Name_Types_of_services], [Type], [Cost]) VALUES (2, N'Чистка пальто                                     ', N'Одежда              ', 2500.0000)
INSERT [dbo].[Types_of_services] ([ID_Types_of_services], [Name_Types_of_services], [Type], [Cost]) VALUES (3, N'Стирка рубашки                                    ', N'Одежда              ', 500.0000)
INSERT [dbo].[Types_of_services] ([ID_Types_of_services], [Name_Types_of_services], [Type], [Cost]) VALUES (4, N'Чистка ковра (до 3 м?)                            ', N'Ковры               ', 1800.0000)
INSERT [dbo].[Types_of_services] ([ID_Types_of_services], [Name_Types_of_services], [Type], [Cost]) VALUES (5, N'Чистка автомобильных сидений                      ', N'Авто                ', 2200.0000)
SET IDENTITY_INSERT [dbo].[Types_of_services] OFF
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Roles] FOREIGN KEY([ID_role])
REFERENCES [dbo].[Roles] ([ID_role])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Roles]
GO
ALTER TABLE [dbo].[Services_provision]  WITH CHECK ADD  CONSTRAINT [FK_Services_provision_Clients] FOREIGN KEY([ID_client])
REFERENCES [dbo].[Clients] ([ID_clients])
GO
ALTER TABLE [dbo].[Services_provision] CHECK CONSTRAINT [FK_Services_provision_Clients]
GO
ALTER TABLE [dbo].[Services_provision]  WITH CHECK ADD  CONSTRAINT [FK_Services_provision_Types_of_services] FOREIGN KEY([ID_Types_of_services])
REFERENCES [dbo].[Types_of_services] ([ID_Types_of_services])
GO
ALTER TABLE [dbo].[Services_provision] CHECK CONSTRAINT [FK_Services_provision_Types_of_services]
GO
