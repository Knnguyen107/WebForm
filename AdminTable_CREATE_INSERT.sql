USE [WDT_A2]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 19-Oct-15 1:54:16 AM ******/
DROP TABLE [dbo].[Admins]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 19-Oct-15 1:54:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Passwords] [nvarchar](max) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[FamilyName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (1, N'Avenger0', N'pw0000', N'Steven', N'Rogers', N'Da_Captain@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (3, N'Avenger1', N'pw1111', N'Tony', N'Stark', N'I_am_Ironman@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (4, N'Avenger2', N'pw2222', N'Bruce', N'Banner', N'Green_Machine@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (5, N'Avenger3', N'pw3333', N'Thor', N'Odinson', N'MC_Hammer@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (6, N'Avenger4', N'pw4444', N'Clint', N'Burton', N'NoScope_TrickShot@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (7, N'Avenger5', N'pw5555', N'Natasha', N'Romanoff', N'Charlottes_Web@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (9, N'Avenger6', N'pw6666', N'Wonda', N'Maximoff', N'Space_Psychdelic@gmail.com')
INSERT [dbo].[Admins] ([AdminID], [Username], [Passwords], [FirstName], [FamilyName], [Email]) VALUES (10, N'Avenger7', N'pw7777', N'The', N'Vision', N'RoboCop_is_cool@gmail.com')
SET IDENTITY_INSERT [dbo].[Admins] OFF
