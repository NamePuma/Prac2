USE [Oleshkina]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[code] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Division]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Division](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[division] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[CodeEmployee] [varchar](255) NOT NULL,
	[FIO] [varchar](255) NOT NULL,
	[division] [int] NULL,
	[department] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodeEmployee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Login] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[FIO] [varchar](255) NOT NULL,
	[Telefonia] [varchar](255) NOT NULL,
	[E-mail] [varchar](255) NOT NULL,
	[DateB] [date] NOT NULL,
	[Passport] [varchar](255) NOT NULL,
	[BlackList] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vizit]    Script Date: 28.04.2023 12:33:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vizit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [varchar](255) NULL,
	[appointment] [int] NOT NULL,
	[group] [int] NULL,
	[status] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Appointment] ON 

INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (1, CAST(N'2023-04-25' AS Date), N'9367788')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (2, CAST(N'2023-04-24' AS Date), N'9788737')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (3, CAST(N'2023-04-24' AS Date), N'9736379')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (4, CAST(N'2023-04-25' AS Date), N'9367788')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (5, CAST(N'2023-04-25' AS Date), N'9788737')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (6, CAST(N'2023-04-25' AS Date), N'9736379')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (7, CAST(N'2023-04-26' AS Date), N'9367788')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (8, CAST(N'2023-04-26' AS Date), N'9788737')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (9, CAST(N'2023-04-26' AS Date), N'9736379')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (10, CAST(N'2023-04-27' AS Date), N'9367788')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (11, CAST(N'2023-04-27' AS Date), N'9788737')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (12, CAST(N'2023-04-27' AS Date), N'9736379')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (13, CAST(N'2023-04-28' AS Date), N'9367788')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (14, CAST(N'2023-04-28' AS Date), N'9788737')
INSERT [dbo].[Appointment] ([id], [date], [code]) VALUES (15, CAST(N'2023-04-28' AS Date), N'9736379')
SET IDENTITY_INSERT [dbo].[Appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [department]) VALUES (1, N'Производство')
INSERT [dbo].[Department] ([id], [department]) VALUES (2, N'Сбыт')
INSERT [dbo].[Department] ([id], [department]) VALUES (3, N'Администрация')
INSERT [dbo].[Department] ([id], [department]) VALUES (4, N'Служба безопасности')
INSERT [dbo].[Department] ([id], [department]) VALUES (5, N'Планирование')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Division] ON 

INSERT [dbo].[Division] ([id], [division]) VALUES (1, N'Общий отдел')
INSERT [dbo].[Division] ([id], [division]) VALUES (2, N'Охрана')
SET IDENTITY_INSERT [dbo].[Division] OFF
GO
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9362832', N'Архипов Тимофей Васильевич', NULL, 4)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9367788', N'Фомичева Авдотья Трофимовна', NULL, 1)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9404040', N'Чернов Всеволод Наумович', 2, NULL)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9736379', N'Носкова Наталия Прохоровна', NULL, 3)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9737848', N'Орехова Вероника Артемовна', NULL, 5)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9768239', N'Савельев Павел Степанович', 1, NULL)
INSERT [dbo].[Employee] ([CodeEmployee], [FIO], [division], [department]) VALUES (N'9788737', N'Гаврилова Римма Ефимовна', NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([id], [group]) VALUES (1, N'ГР1')
INSERT [dbo].[Group] ([id], [group]) VALUES (2, N'ГР2')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Adelaida20', N'LCY*{L*fEGYB', N'Ситникова Аделаида Гермоновна', N'+7 (793) 736-70-31', N'Adelaida20@hotmail.com', CAST(N'1979-01-21' AS Date), N'7561 148016', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Aleksej43', N'~c%PlTY0?qgl', N'Лыткин Алексей Максимович', N'+7 (994) 353-29-52', N'Aleksej43@gmail.com', CAST(N'1996-03-07' AS Date), N'2383 259825', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Aljbina33', N'Bu?BHCtwDFin', N'Елисеева Альбина Николаевна', N'+7 (654) 864-77-46', N'Aljbina33@lenta.ru', CAST(N'1983-02-15' AS Date), N'5241 213304', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Arkadij123', N'vk2N7lxX}ck%', N'Родионов Аркадий Власович', N'+7 (491) 696-17-11', N'Arkadij123@inbox.ru', CAST(N'1993-08-11' AS Date), N'3841 642594', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Bronislava56', N'LO}xyC~1S4l6', N'Зиновьева Бронислава Викторовна', N'+7 (778) 565-12-18', N'Bronislava56@yahoo.com', CAST(N'1981-03-19' AS Date), N'6736 319423', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Elizar30', N'wJs1~r3RS~dr', N'Богданов Елизар Артемович', N'+7 (165) 768-30-97', N'Elizar30@yandex.ru', CAST(N'1978-02-02' AS Date), N'0573 198559', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Gavriila68', N'x4K5WthEe8ua', N'Кириллова Гавриила Яковна', N'+7 (648) 700-43-34', N'Gavriila68@msn.com', CAST(N'1992-04-26' AS Date), N'9438 379667', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Georgij121', N'bbx5H}f*BC?w', N'Исаев Георгий Павлович', N'+7 (678) 516-36-86', N'Georgij121@inbox.ru', CAST(N'1987-08-11' AS Date), N'4076 629809', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Glafira73', N'Zz8POQlP}M4~', N'Горшкова Глафира Валентиновна', N'+7 (553) 343-38-82', N'Glafira73@outlook.com', CAST(N'1978-05-25' AS Date), N'9170 402601', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Klavdiya113', N'FjC#hNIJori}', N'Шарова Клавдия Макаровна', N'+7 (822) 525-82-40', N'Klavdiya113@live.com', CAST(N'1980-07-22' AS Date), N'8143 593309', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Kuzjma124', N'OsByQJ}vYznW', N'Овчинников Кузьма Ефимович', N'+7 (562) 866-15-27', N'Kuzjma124@yandex.ru', CAST(N'1993-08-02' AS Date), N'0766 647226', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Lana117', N'mFoG$jcS3c4~', N'Тихонова Лана Семеновна', N'+7 (478) 467-75-15', N'Lana117@outlook.com', CAST(N'1990-07-24' AS Date), N'8761 609740', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Leontij161', N'KkMY8yKw@oCa', N'Голубев Леонтий Вячеславович', N'+7 (160) 527-57-41', N'Leontij161@mail.ru', CAST(N'1990-10-03' AS Date), N'1059 822077', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Lev131', N'~?oj2Lh@S7*T', N'Исаев Лев Юлианович', N'+7 (675) 593-89-30', N'Lev131@rambler.ru', CAST(N'1994-01-05' AS Date), N'1860 680004', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Lyudmila123', N'@8mk9M?NBAGj', N'Титова Людмила Якововна', N'+7 (221) 729-16-84', N'Lyudmila123@hotmail.com', CAST(N'1976-08-21' AS Date), N'7715 639425', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'lzaihtvkdn', N'L2W#uo7z{EsO', N'Никифоров Даниил Степанович', N'+7 (384) 358-77-82', N'Daniil198@bk.ru', CAST(N'1970-12-13' AS Date), N'4557 999958', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Nadezhda137', N'QQ~0q~rXHb?p', N'Шубина Надежда Викторовна', N'+7 (736) 488-66-95', N'Nadezhda137@outlook.com', CAST(N'1981-09-24' AS Date), N'8844 708476', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Nina145', N'Uxy6RtBXIcpT', N'Евсеева Нина Павловна', N'+7 (833) 521-31-50', N'Nina145@msn.com', CAST(N'1994-09-26' AS Date), N'9323 745717', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Prohor156', N'zDdom}SIhWs?', N'Шилов Прохор Герасимович', N'+7 (615) 594-77-66', N'Prohor156@list.ru', CAST(N'1977-10-09' AS Date), N'3036 796488', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Roman89', N'Xd?xP$2yICcG', N'Беляков Роман Викторович', N'+7 (595) 196-56-28', N'Roman89@gmail.com', CAST(N'1991-06-07' AS Date), N'2411 478305', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Serafima169', N'gNe3I9}8J3Z@', N'Карпова Серафима Михаиловна', N'+7 (459) 930-91-70', N'Serafima169@yahoo.com', CAST(N'1989-11-19' AS Date), N'7034 858987', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Sergej35', N'$39vc%ljqN%r', N'Орехов Сергей Емельянович', N'+7 (669) 603-29-87', N'Sergej35@inbox.ru', CAST(N'1972-02-11' AS Date), N'3844 223682', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Taisiya176', N'~rIWfsnXA~7C', N'Абрамова Таисия Дмитриевна', N'+7 (528) 312-18-20', N'Taisiya176@hotmail.com', CAST(N'1982-11-20' AS Date), N'7310 893510', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Taisiya177', N'R94YGT3XFjgD', N'Самойлова Таисия Гермоновна', N'+7 (891) 555-81-44', N'Taisiya177@lenta.ru', CAST(N'1979-11-14' AS Date), N'5193 897719', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Tamara179', N'TJxVqMXrbesI', N'Сидорова Тамара Григорьевна', N'+7 (334) 692-79-77', N'Tamara179@live.com', CAST(N'1985-11-22' AS Date), N'8143 905520', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Taras24', N'07m5yspn3K~K', N'Петухов Тарас Фадеевич', N'+7 (376) 220-62-51', N'Taras24@rambler.ru', CAST(N'1991-01-05' AS Date), N'1609 171096', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Vera195', N'B|5v$2r$7luL', N'Кузьмина Вера Максимовна', N'+7 (598) 583-53-45', N'Vera195@list.ru', CAST(N'1989-12-10' AS Date), N'3537 982933', 0)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'Vlas86', N'b3uWS6#Thuvq', N'Степанова Радинка Власовна', N'+7 (613) 272-60-62', N'Radinka100@yandex.ru', CAST(N'1986-10-18' AS Date), N'0208 530509', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'YAkov196', N'$6s5bggKP7aw', N'Мартынов Яков Ростиславович', N'+7 (546) 159-67-33', N'YAkov196@rambler.ru', CAST(N'1976-12-05' AS Date), N'1793 986063', 1)
INSERT [dbo].[Users] ([Login], [Password], [FIO], [Telefonia], [E-mail], [DateB], [Passport], [BlackList]) VALUES (N'YUrin155', N'u@m*~ACBCqNQ', N'Кононов Юрин Романович', N'+7 (784) 673-51-91', N'YUrin155@gmail.com', CAST(N'1971-10-08' AS Date), N'2747 790512', 1)
GO
SET IDENTITY_INSERT [dbo].[Vizit] ON 

INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (1, N'Vlas86', 1, NULL, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (2, N'Prohor156', 2, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (3, N'YUrin155', 3, NULL, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (4, N'Aljbina33', 4, NULL, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (5, N'Klavdiya113', 5, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (6, N'Tamara179', 6, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (7, N'Taras24', 7, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (8, N'Arkadij123', 8, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (9, N'Glafira73', 9, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (10, N'Gavriila68', 10, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (11, N'Kuzjma124', 11, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (12, N'Roman89', 12, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (13, N'Aleksej43', 13, NULL, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (14, N'Nadezhda137', 14, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (15, N'Bronislava56', 15, NULL, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (16, N'Taisiya177', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (17, N'Adelaida20', 1, 1, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (18, N'Lev131', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (19, N'lzaihtvkdn', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (20, N'Lyudmila123', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (21, N'Taisiya176', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (22, N'Vera195', 1, 1, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (23, N'YAkov196', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (24, N'Nina145', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (25, N'Leontij161', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (26, N'Serafima169', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (27, N'Sergej35', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (28, N'Georgij121', 1, 2, 1)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (29, N'Elizar30', 1, 2, 0)
INSERT [dbo].[Vizit] ([id], [login], [appointment], [group], [status]) VALUES (30, N'Lana117', 1, 2, 1)
SET IDENTITY_INSERT [dbo].[Vizit] OFF
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([code])
REFERENCES [dbo].[Employee] ([CodeEmployee])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([department])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([division])
REFERENCES [dbo].[Division] ([id])
GO
ALTER TABLE [dbo].[Vizit]  WITH CHECK ADD FOREIGN KEY([appointment])
REFERENCES [dbo].[Appointment] ([id])
GO
ALTER TABLE [dbo].[Vizit]  WITH CHECK ADD FOREIGN KEY([group])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Vizit]  WITH CHECK ADD FOREIGN KEY([login])
REFERENCES [dbo].[Users] ([Login])
GO
