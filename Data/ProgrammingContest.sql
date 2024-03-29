/****** Object:  ForeignKey [FK_ContestPermission_ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission] DROP CONSTRAINT [FK_ContestPermission_ContestSetting]
GO
/****** Object:  ForeignKey [FK_ContestPermission_Users]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission] DROP CONSTRAINT [FK_ContestPermission_Users]
GO
/****** Object:  ForeignKey [FK_Problems_ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Problems_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[Problems]'))
ALTER TABLE [dbo].[Problems] DROP CONSTRAINT [FK_Problems_ContestSetting]
GO
/****** Object:  ForeignKey [FK_Solution_Problems]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Problems]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] DROP CONSTRAINT [FK_Solution_Problems]
GO
/****** Object:  ForeignKey [FK_Solution_Result]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Result]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] DROP CONSTRAINT [FK_Solution_Result]
GO
/****** Object:  ForeignKey [FK_Solution_Users]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] DROP CONSTRAINT [FK_Solution_Users]
GO
/****** Object:  Table [dbo].[Solution]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solution]') AND type in (N'U'))
DROP TABLE [dbo].[Solution]
GO
/****** Object:  Table [dbo].[Problems]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Problems]') AND type in (N'U'))
DROP TABLE [dbo].[Problems]
GO
/****** Object:  Table [dbo].[ContestPermission]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContestPermission]') AND type in (N'U'))
DROP TABLE [dbo].[ContestPermission]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Result]') AND type in (N'U'))
DROP TABLE [dbo].[Result]
GO
/****** Object:  Table [dbo].[ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContestSetting]') AND type in (N'U'))
DROP TABLE [dbo].[ContestSetting]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/04/2012 09:28:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IPAddress] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (1, N'Admin', N'password')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (2, N'Shakil', N'192.168.5.73')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (3, N'Tanvir', N'192.168.5.74')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (4, N'Rizvi', N'192.168.5.69')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (5, N'Nazmul', N'192.168.5.67')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (6, N'Asif', N'192.168.5.71')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (7, N'Ashraf', N'192.168.5.70')
INSERT [dbo].[Users] ([ID], [Name], [IPAddress]) VALUES (8, N'Saiful', N'192.168.5.68')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContestSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContestSetting](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[Name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ArrangedBy] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[IsPrivate] [bit] NOT NULL,
 CONSTRAINT [PK_ContestSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ContestSetting] ON
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (6, CAST(0x00009CF1010FE960 AS DateTime), CAST(0x0000AB35014159A0 AS DateTime), N'Test Contest', N'Shakil', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (7, CAST(0x00009D63011826C0 AS DateTime), CAST(0x00009D63014159A0 AS DateTime), N'April 2010', N'Md. Shakil Ahmed', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (8, CAST(0x00009D86011C4570 AS DateTime), CAST(0x00009D86013F2720 AS DateTime), N'May 2010', N'Tanvir', 1)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (9, CAST(0x00009DA9011826C0 AS DateTime), CAST(0x00009DA9013D3AF0 AS DateTime), N'June 2010 Contest', N'Rizvi', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (10, CAST(0x00009DC00107AC00 AS DateTime), CAST(0x00009DC00130DEE0 AS DateTime), N'July 2010 Contest', N'Asif Ahmed Jesi', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (11, CAST(0x00009DE80107AC00 AS DateTime), CAST(0x00009DE801213710 AS DateTime), N'Aug 2010', N'Ashraf', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (12, CAST(0x00009DFD0107AC00 AS DateTime), CAST(0x00009DFD0128A180 AS DateTime), N'Content Aug - Re', N'Ashraf', 0)
INSERT [dbo].[ContestSetting] ([ID], [StartTime], [EndTime], [Name], [ArrangedBy], [IsPrivate]) VALUES (13, CAST(0x00009E3C0107AC00 AS DateTime), CAST(0x00009E3C012CC030 AS DateTime), N'November Contest', N'Nazmul', 1)
SET IDENTITY_INSERT [dbo].[ContestSetting] OFF
/****** Object:  Table [dbo].[Result]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Result]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Result](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Result] ON
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (1, N'Accept', N'ac')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (2, N'Wrong Answer', N'WA')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (3, N'Not Try', N'NT')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (4, N'Pending', N'pd')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (5, N'Output File Not Created', N'ofnc')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (6, N'Time Limit Exit', N'tle')
INSERT [dbo].[Result] ([ID], [Name], [Description]) VALUES (7, N'Crash', N'Crash')
SET IDENTITY_INSERT [dbo].[Result] OFF
/****** Object:  Table [dbo].[ContestPermission]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContestPermission]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContestPermission](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ContestId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
 CONSTRAINT [PK_ContestPermission] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ContestPermission] ON
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (5, 6, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (8, 6, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (10, 7, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (11, 7, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (12, 7, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (13, 7, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (14, 7, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (15, 6, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (16, 6, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (17, 6, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (18, 6, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (21, 8, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (22, 8, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (23, 8, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (24, 8, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (25, 8, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (27, 9, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (28, 9, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (30, 9, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (31, 9, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (32, 9, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (33, 10, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (34, 10, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (35, 10, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (36, 10, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (37, 10, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (38, 11, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (39, 11, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (40, 11, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (41, 11, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (42, 11, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (43, 11, 8)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (44, 12, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (45, 12, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (46, 12, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (47, 12, 5)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (48, 12, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (49, 12, 8)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (58, 13, 2)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (59, 13, 3)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (60, 13, 4)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (61, 13, 6)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (62, 13, 7)
INSERT [dbo].[ContestPermission] ([ID], [ContestId], [UserId]) VALUES (63, 13, 8)
SET IDENTITY_INSERT [dbo].[ContestPermission] OFF
/****** Object:  Table [dbo].[Problems]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Problems]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Problems](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PNumber] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PName] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Statement] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[InputFile] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[OutputFile] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Time] [bigint] NOT NULL,
	[ContestID] [bigint] NOT NULL,
	[Input] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Output] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Problems] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Problems] ON
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (3, N'A', N'Below Average', N'<p>&nbsp;It is said that 60% students expect to be below average in their class. You are to provide a reality check.&nbsp;<br />
<br />
&nbsp;<br />
<br />
This is a multiple test case problem. Each test case begins with an integer, N, the number of people in the class (1 &le; N &le; 1000). N integers follow, separated by spaces, each giving the final grade (an integer between 0 and 100) of a student in the class. For each case you are to output a line giving the percentage of students whose grade is below average.<br />
<br />
<strong>Sample Input</strong><br />
5 50 50 70 80 100<br />
7 100 95 90 80 70 60 50<br />
3 70 90 80<br />
3 70 90 81<br />
9 100 99 98 97 96 95 94 93 91<br />
<strong>Output for Sample Input</strong><br />
40%<br />
42.8571428571429%<br />
33.3333333333333%<br />
33.3333333333333%<br />
44.4444444444444%<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 10, 6, N'5 50 50 70 80 100
7 100 95 90 80 70 60 50
3 70 90 80
3 70 90 81
9 100 99 98 97 96 95 94 93 91
10 1 2 3 4 5 6 7 8 9 10
20 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
30 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
40 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
50 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
60 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
70 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
80 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
90 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
100 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
10 91 92 100 94 95 96 97 98 99 100
20 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
30 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
40 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
50 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
60 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
70 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
80 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
90 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
1 100
2 100 100
3 100 100 100
4 100 100 100 100
5 100 100 100 100 100
100 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80
200 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80
400 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80
800 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80
1000 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80 45 23 87 34 89 34 45 23 77 80
10 1 2 3 4 5 6 7 8 9 10
20 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
30 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
40 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
50 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
60 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
70 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
80 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
80 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
90 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
100 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10
10 91 92 100 94 95 96 97 98 99 100
20 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
30 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
40 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
50 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
60 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
70 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100 91 92 100 94 95 96 97 98 99 100
', N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (23, N'B', N'Again Clock', N'<p>&nbsp;Little Onuvob has learnt to read wall clock.Very often he loudly announces the time. He has a big clock in his room. There is also a mirror in the opposite side of the clock. Few days ago his mother noticed that sometimes Onuvob is announcing wrong time. She became worried and after some investigation she found, Onuvob has no problem in reading time from the clock, the thing is sometimes he reads from the clock in the mirror. So she told him</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&ldquo;Onuvob, you shouldn&rsquo;t read time from the clock in the mirror.&rdquo; &nbsp; &nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&ldquo;But why ma?&rdquo; curious Onuvob asked.&nbsp;</p>
<p>&nbsp;</p>
<p>&ldquo;Because it gives wrong time&rdquo; mother replied.</p>
<p>&nbsp;</p>
<p>Now Onuvob looked at the two clocks and realized his mother was telling the truth. Two clocks were not matching. He thought for some time and shouted, &ldquo;But ma, we can calculate the real time from the clock in the mirror, can&rsquo;t we?&rdquo;</p>
<p>&nbsp;</p>
<p>Can we? Now you have to answer.</p>
<p>&nbsp;</p>
<p>Input</p>
<p>&nbsp;</p>
<p>This is a multiple test case problem and each test case in different lines. Each of the lines will contain the time Onuvob reads from the clock in the mirror. The time will be in the following format: HH:MM</p>
<p>&nbsp;</p>
<p>Hours and minutes both are integer and the time is always valid.</p>
<p>Output</p>
<p>&nbsp;</p>
<p>For each line of Input you have to produce one line of output which will contain the real time, in the same format, namely:</p>
<p>&nbsp;</p>
<p>HH:MM&nbsp;</p>
<p>&nbsp;</p>
<p>See sample input and output for more clarification.</p>
<p>&nbsp;</p>
<p>Sample Input</p>
<p>12:00</p>
<p>10:09</p>
<p>&nbsp;</p>
<p>Output for Sample Input</p>
<p>12:00</p>
<p>01: 51</p>', N'Input.txt', N'Output.txt', 10, 6, N'12:00
10:09
01:00
01:19
01:34
01:53
01:59
01:01
01:30
01:31
01:43
01:44
02:00
02:19
02:34
02:53
02:59
02:01
02:30
02:31
02:43
02:44
03:00
03:19
03:34
03:53
03:59
03:01
03:30
03:31
03:43
03:44
04:00
04:19
04:34
04:53
04:59
04:01
04:30
04:31
04:43
04:44
05:00
05:19
05:34
05:53
05:59
05:01
05:30
05:31
05:43
05:44
06:00
06:19
06:34
06:53
06:59
06:01
06:30
06:31
06:43
06:44
07:00
07:19
07:34
07:53
07:59
07:01
07:30
07:31
07:43
07:44
08:00
08:19
08:34
08:53
08:59
08:01
08:30
08:31
08:43
08:44
09:00
09:19
09:34
09:53
09:59
09:01
09:30
09:31
09:43
09:44
10:00
10:19
10:34
10:53
10:59
10:01
10:30
10:31
10:43
10:44
11:00
11:19
11:34
11:53
11:59
11:01
11:30
11:31
11:43
11:44
12:00
12:19
12:34
12:53
12:59
12:01
12:30
12:31
12:43
12:44
', N'12:00
01:51
11:00
10:41
10:26
10:07
10:01
10:59
10:30
10:29
10:17
10:16
10:00
09:41
09:26
09:07
09:01
09:59
09:30
09:29
09:17
09:16
09:00
08:41
08:26
08:07
08:01
08:59
08:30
08:29
08:17
08:16
08:00
07:41
07:26
07:07
07:01
07:59
07:30
07:29
07:17
07:16
07:00
06:41
06:26
06:07
06:01
06:59
06:30
06:29
06:17
06:16
06:00
05:41
05:26
05:07
05:01
05:59
05:30
05:29
05:17
05:16
05:00
04:41
04:26
04:07
04:01
04:59
04:30
04:29
04:17
04:16
04:00
03:41
03:26
03:07
03:01
03:59
03:30
03:29
03:17
03:16
03:00
02:41
02:26
02:07
02:01
02:59
02:30
02:29
02:17
02:16
02:00
01:41
01:26
01:07
01:01
01:59
01:30
01:29
01:17
01:16
01:00
12:41
12:26
12:07
12:01
12:59
12:30
12:29
12:17
12:16
12:00
11:41
11:26
11:07
11:01
11:59
11:30
11:29
11:17
11:16
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (24, N'A', N'Not Smallest & Not Largest', N'<p>You are given A, B &amp; C. You have to say which number is not smallest &amp; not largest between the 3 numbers. If there is no number that satisfies those conditions then print &ldquo;Impossible&rdquo;.&nbsp;<br />
Example: between 5, 10 &amp; 15. 10 is the number which is not smallest &amp; not largest.<br />
This is a multiple test case problem. For each case there are 3 integers A, B &amp; C.<br />
-10^6 &lt;= A, B, C &lt;= 10^6<br />
<strong>Input</strong><br />
5 10 15<br />
5 5 10<br />
<strong>Output</strong><br />
10<br />
Impossible<br />
<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 2, 7, NULL, N'10
10
10
Impossible
6
77
Impossible
Impossible
Impossible
Impossible
Impossible
Impossible
Impossible
56
4564
Impossible
Impossible
65
46
2345
243
5656
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (25, N'B', N'Divisible', N'<p>You are given A, B &amp; N. You have to count how many numbers are divisible by N (X%N==0) between A to B. Example:&nbsp;<br />
If A = 15, B = 19 &amp; N = 2<br />
Then<br />
15%2 != 0<br />
16%2 = 0<br />
17%2 != 0<br />
18%2 = 0<br />
&amp; 19%2 != 0<br />
So, there are 2 numbers between 15 to 19 that are divisible by 2.<br />
&nbsp; This is a multiple test case problem. For each case there are 3 integers A, B &amp; N. And you have to print the number of divisible by N between A to B.<br />
1&lt;=A&lt;=10^16<br />
1&lt;=B&lt;=10^16<br />
1&lt;=N&lt;=10^16<br />
*You should use long data type to get A, B &amp; N.<br />
&nbsp;<strong>Input</strong><br />
15 19 2<br />
<strong>Output</strong><br />
2<br />
<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 5, 7, N'15 19 2
1 1000000000000 1
1 1000000000000 2
1 1000000000000 346
1 1000000000000 4444
1 1000000000000 128
1 1000000000000 450
1 1000000000000 4343434
1 100 100
10000 10000000000 23423
10000 10000000000 234
10000 10000000000 23
10000 10000000000 2
10000 10000000000 7
34345 4567474654 3434
44 444444444444 4444
1000 1000 1000
234 12345678901234 123
1 1 1
100 200 1000
', N'2
1000000000000
500000000000
2890173410
225022502
7812500000
2222222222
230232
1
426930
42735000
434782174
4999995001
1428570000
1330064
100010001
1
100371373179
1
0
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (26, N'C', N'Maximum difference', N'<p>You have to find the maximum difference between 2 numbers among N numbers. You are given N &amp; using the below method you will get the N Numbers.<br />
int[] Genaretor(int N)<br />
{<br />
int[] a = new int[N];<br />
for (int i = 0; i &lt; N; i++)<br />
a[i]=((i % 7)*1234713+N+57+37*i+ ((N + i) % 111) * 1771642) % 1000000;<br />
return a;<br />
}<br />
Example: if N = 3 then<br />
a = {314986, 321378, 327770}<br />
&nbsp; So, maximum difference is 12784 between 314986 &amp; 327770.<br />
This is a multiple test case problem. For each test case there is one integer N. And you have to print the maximum difference between2 number among N numbers.<br />
2&lt;=N&lt;=1000000<br />
<strong>Input</strong><br />
10<br />
<strong>Output</strong><br />
636599<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 5, 7, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (27, N'D', N'Product', N'<p>There are two vectors x1=(a1,a2,...,an) and x2=(b1,b2,...,bn). The scalar product of x1 &amp; x2 vectors is a single number, calculated as a1b1+a2b2+...+anbn.&nbsp;<br />
You can permute the coordinates of each vector.&nbsp;<br />
Now, by permute the x1 &amp; x2 vectors, you have to make two new vectors such that their scalar product will be as small as possible.<br />
This is a multiple test case problem. For each test case, there is an integer number n. Then there will be 2*n integer numbers, giving the coordinates of x1 and x2 respectively.<br />
For each test case, print the smallest possible product. &nbsp;<br />
Example: if n = 3 &amp; x1 = {7, 0, -1} &amp; x2 = {6, 3, 10}<br />
Now, if you permute x1 like x3 = {-1, 0, 7} &amp; x2 like x4 = {10, 6, 3}<br />
Then the product will be = -1*10+0*6+7*3  = -10 + 0 + 21 = 11 &amp; it is the smallest.<br />
1 &le; n &le; 1000<br />
-10^14 &le; ai, bi &le; 10^14<br />
*You should use long data type to get the coordinates of x1 &amp; x2.<br />
<strong>Input</strong><br />
3<br />
7 0 -1<br />
6 3 10<br />
<strong>Output</strong><br />
11<br />
<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 5, 7, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (28, N'E', N'Repeated Number', N'<p>A number is a repeated number if it can be represent as (X)^(2 or More) where X > 0.&nbsp;<br />
Example:<br />
121212 = (12)^3<br />
123123 = (123)^2<br />
222222 = (2)^6<br />
12341234 = (1234)^2<br />
But<br />
123 = (123)^1 is not valid repeated number<br />
12012 = (012)^2 is not valid repeated number because leading 0 is invalid.&nbsp;<br />
Now, you are given n &amp; you have to print the smallest repeated number which is divisible by n(repeated Number % n == 0). If there is no repeated number less than 10^15 which is divisible by n then print &ldquo;Impossible&rdquo;.   &nbsp;<br />
This is a multiple test case problem. For each case there is an integer n.<br />
1 &lt;= n &lt; 10^15<br />
*You should use long data type to get n.<br />
<strong>Input</strong><br />
37<br />
1000000<br />
1234567<br />
3546347<br />
4545453<br />
3434354<br />
45454545<br />
9045454<br />
455<br />
234<br />
567<br />
2345<br />
<br />
<strong>Output</strong><br />
111<br />
Impossible<br />
12345671234567<br />
35463473546347<br />
12396691239669<br />
12488561248856<br />
45454545<br />
16446281644628<br />
100100<br />
108108<br />
162162<br />
335335<br />
<br />
<br />
&nbsp;</p>', N'Input.txt', N'Output.txt', 10, 7, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (29, N'A', N'Grouped Word Checked', N'<p>&nbsp;Problem Statement</p>
<div>&nbsp;&nbsp; &nbsp;<span class="Apple-tab-span" style="white-space:pre">	</span></div>
<div>A word is grouped if, for each letter in the word, all occurrences of that letter form exactly one consecutive sequence. In other words, no two equal letters are separated by one or more letters that are different. For example, the words &quot;ccazzzzbb&quot; and &quot;code&quot; are grouped, while &quot;aabbbccb&quot; and &quot;astha&quot; are not.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Input:</div>
<div>First an integer N is given, which represents the total number of test cases.</div>
<div>Each test case starts with an integer M. The next M line contains M words. Each element of words will contain only lowercase letters (''a'' - ''z'').</div>
<div>&nbsp;</div>
<div>Output:</div>
<div>For each test case, print how many of them are grouped.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Sample Input:</div>
<div>&nbsp;</div>
<div>2</div>
<div>4</div>
<div>ccazzzzbb</div>
<div>code</div>
<div>aabbbccb</div>
<div>astha</div>
<div>3</div>
<div>happy</div>
<div>new</div>
<div>year</div>
<div>&nbsp;</div>
<div>Sample Output:</div>
<div>&nbsp;</div>
<div>Case #1: 2</div>
<div>Case #2: 3</div>', N'input.txt', N'output.txt', 1, 8, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (30, N'B', N'Products of Digits', N'<p>&nbsp;Problem Statement</p>
<div>You are given an int M. Find the smallest positive integer X such that the product of its digits (in decimal notation) is equal to M. Print the number of digits in X, or print -1 if such a number does not exist.</div>
<div>&nbsp;</div>
<div>Input:</div>
<div>At first an Integer N will be given which represents total number of test cases. For each test case there will be an integer M.</div>
<div>OutPut:</div>
<div>For each test case print the number of digits in X as the problem described.</div>
<div>&nbsp;</div>
<div>Sample Input:</div>
<div>3</div>
<div>1</div>
<div>10</div>
<div>282475249</div>
<div>Sample Output:</div>
<div>Case #1: 1</div>
<div>Case #2: 2</div>
<div>Case #3: 10</div>
<div>&nbsp;</div>
<div>Ex. For the 2nd sample input 10, we have 25. so that 2*5 = 10</div>', N'input.txt', N'output.txt', 1, 8, N'160
1
10
26
100
1024
65856
60761421
1171875
1959552
15116544
18750000
630262500
492075
9841500
11344725
790272000
9
32805000
94478400
68841472
357210
4900
2560000
243
35831808
567000000
38400000
2211840
122500000
214375000
214375000
10628820
76832
27648000
135056250
567000000
1843
4917248
8943
19845000
22680000
6730
15351
12582912
2016000
7260624
619573248
531562500
1008
8505
61740
53156250
15750
400
87516450
8388608
15116544
236027904
141750000
669615660
51438240
37632
5830
201326592
1518750
11524800
13608000
921984000
603979776
60025000
1151
7290
188956800
403200000
51030
340200
671088640
301181440
414720000
5184
2107392
108000
490000000
32592
245000
6360
1835008
31500
691200
82978560
5308416
3001250
1152
55112400
421654016
4816896
1102248
107163000
3789
393824025
210739200
1440600
540101520
6618
344207360
2520
864
906992640
10000000
6
999999991
304545100
999999999
999999937
900000000
1000000000
621
432
3888
3
2
479001599
38102400
48
67108864
15120
30
41928319
54
27
128
21
49
536870912
81
625
14
5
244140625
172872
48828125
8
463222882
23
7
512
999999986
1890
16
216
362880000
1048576
209952000
76204800
486
4
282475249
188888881
18
31
', N'Case #1: 1
Case #2: 2
Case #3: -1
Case #4: 3
Case #5: 4
Case #6: 6
Case #7: 9
Case #8: 9
Case #9: 7
Case #10: 8
Case #11: 10
Case #12: 12
Case #13: 7
Case #14: 9
Case #15: 9
Case #16: 11
Case #17: 1
Case #18: 9
Case #19: 9
Case #20: 9
Case #21: 7
Case #22: 5
Case #23: 8
Case #24: 3
Case #25: 9
Case #26: 11
Case #27: 10
Case #28: 8
Case #29: 11
Case #30: 11
Case #31: 11
Case #32: 8
Case #33: 6
Case #34: 9
Case #35: 11
Case #36: 11
Case #37: -1
Case #38: 8
Case #39: -1
Case #40: 9
Case #41: 9
Case #42: -1
Case #43: -1
Case #44: 8
Case #45: 8
Case #46: 8
Case #47: 10
Case #48: 12
Case #49: 4
Case #50: 5
Case #51: 6
Case #52: 10
Case #53: 6
Case #54: 4
Case #55: 10
Case #56: 8
Case #57: 8
Case #58: 10
Case #59: 11
Case #60: 10
Case #61: 9
Case #62: 6
Case #63: -1
Case #64: 10
Case #65: 8
Case #66: 9
Case #67: 9
Case #68: 11
Case #69: 10
Case #70: 10
Case #71: -1
Case #72: 5
Case #73: 10
Case #74: 11
Case #75: 6
Case #76: 7
Case #77: 10
Case #78: 10
Case #79: 11
Case #80: 4
Case #81: 8
Case #82: 7
Case #83: 12
Case #84: -1
Case #85: 7
Case #86: -1
Case #87: 7
Case #88: 6
Case #89: 7
Case #90: 10
Case #91: 8
Case #92: 9
Case #93: 4
Case #94: 9
Case #95: 10
Case #96: 8
Case #97: 7
Case #98: 10
Case #99: -1
Case #100: 10
Case #101: 10
Case #102: 8
Case #103: 10
Case #104: -1
Case #105: 10
Case #106: 4
Case #107: 4
Case #108: 10
Case #109: 10
Case #110: 1
Case #111: -1
Case #112: -1
Case #113: -1
Case #114: -1
Case #115: 12
Case #116: 12
Case #117: -1
Case #118: 3
Case #119: 4
Case #120: 1
Case #121: 1
Case #122: -1
Case #123: 9
Case #124: 2
Case #125: 9
Case #126: 5
Case #127: 2
Case #128: -1
Case #129: 2
Case #130: 2
Case #131: 3
Case #132: 2
Case #133: 2
Case #134: 10
Case #135: 2
Case #136: 4
Case #137: 2
Case #138: 1
Case #139: 12
Case #140: 6
Case #141: 11
Case #142: 1
Case #143: -1
Case #144: -1
Case #145: 1
Case #146: 3
Case #147: -1
Case #148: 4
Case #149: 2
Case #150: 3
Case #151: 11
Case #152: 7
Case #153: 10
Case #154: 10
Case #155: 3
Case #156: 1
Case #157: 10
Case #158: -1
Case #159: 2
Case #160: -1
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (31, N'C', N'Rotate', N'<p>&nbsp;Problem</p>
<div>&nbsp;</div>
<div>In the exciting game of Join-K, red and blue pieces are dropped into an N-by-N table. The table stands up vertically so that pieces drop down to the bottom-most empty slots in their column. For example, consider the following two configurations:</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp;- Legal Position -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;....R..</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;...RB..</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;..BRB..</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.RBBR..</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; - Illegal Position -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.......</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;..BR... &nbsp;&lt;-&nbsp;Bad</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;...R...</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;.RBBR..</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>In these pictures, each ''.'' represents an empty slot, each ''R'' represents a slot filled with a red piece, and each ''B'' represents a slot filled with a blue piece. The left configuration is legal, but the right one is not. This is because one of the pieces in the third column (marked with the arrow) has not fallen down to the empty slot below it.</div>
<div>&nbsp;</div>
<div>A player wins if they can place at least K pieces of their color in a row, either horizontally, vertically, or diagonally. The four possible orientations are shown below:</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; &nbsp;- Four in a row -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; R &nbsp; RRRR &nbsp; &nbsp;R &nbsp; R</div>
<div>&nbsp;&nbsp; &nbsp; R &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;R &nbsp; &nbsp; R</div>
<div>&nbsp;&nbsp; &nbsp; R &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; R &nbsp; &nbsp; &nbsp; R</div>
<div>&nbsp;&nbsp; &nbsp; R &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;R &nbsp; &nbsp; &nbsp; &nbsp; R</div>
<div>&nbsp;</div>
<div>In the &quot;Legal Position&quot; diagram at the beginning of the problem statement, both players had lined up two pieces in a row, but not three.</div>
<div>As it turns out, you are right now playing a very exciting game of Join-K, and you have a tricky plan to ensure victory! When your opponent is not looking, you are going to rotate the board 90 degrees clockwise onto its side. Gravity will then cause the pieces to fall down into a new position as shown below:</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp;- Start -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; ...R...</div>
<div>&nbsp;&nbsp; &nbsp; ...RB..</div>
<div>&nbsp;&nbsp; &nbsp; ..BRB..</div>
<div>&nbsp;&nbsp; &nbsp; .RBBR..</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; - Rotate -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; R......</div>
<div>&nbsp;&nbsp; &nbsp; BB.....</div>
<div>&nbsp;&nbsp; &nbsp; BRRR...</div>
<div>&nbsp;&nbsp; &nbsp; RBB....</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; - Gravity -</div>
<div>&nbsp;</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; .......</div>
<div>&nbsp;&nbsp; &nbsp; R......</div>
<div>&nbsp;&nbsp; &nbsp; BB.....</div>
<div>&nbsp;&nbsp; &nbsp; BRR....</div>
<div>&nbsp;&nbsp; &nbsp; RBBR...</div>
<div>&nbsp;</div>
<div>Unfortunately, you only have time to rotate once before your opponent will notice.</div>
<div>All that remains is picking the right time to make your move. Given a board position, you should determine which player (or players!) will have K pieces in a row after you rotate the board clockwise and gravity takes effect in the new direction.</div>
<div>&nbsp;</div>
<div>Notes</div>
<div>&nbsp;</div>
<div>You can rotate the board only once.</div>
<div>Assume that gravity only takes effect after the board has been rotated completely.</div>
<div>Only check for winners after gravity has finished taking effect.</div>
<div>Input</div>
<div>&nbsp;</div>
<div>The first line of the input gives the number of test cases, T. T test cases follow, each beginning with a line containing the integers N and K. The next N lines will each be exactly N characters long, showing the initial position of the board, using the same format as the diagrams above.</div>
<div>&nbsp;</div>
<div>The initial position in each test case will be a legal position that can occur during a game of Join-K. In particular, neither player will have already formed K pieces in a row.</div>
<div>&nbsp;</div>
<div>Output</div>
<div>&nbsp;</div>
<div>For each test case, output one line containing &quot;Case #x: y&quot;, where x is the case number (starting from 1), and y is one of &quot;Red&quot;, &quot;Blue&quot;, &quot;Neither&quot;, or &quot;Both&quot;. Here, y indicates which player or players will have K pieces in a row after you rotate the board.</div>
<div>&nbsp;</div>
<div>Limits</div>
<div>&nbsp;</div>
<div>1 &lt;= T &lt;= 100.</div>
<div>3 &lt;= K &lt;= N.</div>
<div>3 &lt;= N &lt;= 50.</div>
<div>&nbsp;</div>
<div>Sample Input:</div>
<div>&nbsp;</div>
<div>4</div>
<div>7 3</div>
<div>.......</div>
<div>.......</div>
<div>.......</div>
<div>...R...</div>
<div>...BB..</div>
<div>..BRB..</div>
<div>.RRBR..</div>
<div>6 4</div>
<div>......</div>
<div>......</div>
<div>.R...R</div>
<div>.R..BB</div>
<div>.R.RBR</div>
<div>RB.BBB</div>
<div>4 4</div>
<div>R...</div>
<div>BR..</div>
<div>BR..</div>
<div>BR..</div>
<div>3 3</div>
<div>B..</div>
<div>RB.</div>
<div>RB.</div>
<div>&nbsp;</div>
<div>Sample Output:</div>
<div>Case #1: Neither</div>
<div>Case #2: Both</div>
<div>Case #3: Red</div>
<div>Case #4: Blue</div>
<div>&nbsp;</div>', N'a.in', N'a.out', 10, 8, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (32, N'D', N'Design Calender', N'<p>&nbsp;Problem Statement</p>
<div>&nbsp;&nbsp; &nbsp;<span class="Apple-tab-span" style="white-space:pre">	</span></div>
<div>An alien civilization has advanced to the point where it needs to start keeping track of time. Its leaders have therefore decided to design a calendar. Like many Earthly calendars, this calendar is going to be based on the motion of celestial bodies: in particular the calendar must include period of rotation of their planet (a day) and the period of orbit of the planet around the sun (a real year). Unfortunately, just as is the case on Earth, a real year is not necessarily a convenient integer number of days. Their solution to this problem is to define a calendar year, which is an integer number of days long, and periodically insert an extra day into some calendar years (leap years) in order to correct the discrepancy and resychronize the start of the calendar year with the start of the real year.</div>
<div>&nbsp;</div>
<div>The formal requirements for the calendar are as follows:</div>
<div>&nbsp;</div>
<div>A normal calendar year is a length of time that is some integer number N days long.</div>
<div>A leap calendar year is exactly one day longer than a normal calendar year (N+1 days long).</div>
<div>Each calendar year is either a normal year or a leap year.</div>
<div>The calendar must have some positive integer period P, such that every P whole consecutive calendar years sum to exactly the same length of time as P real years.</div>
<div>The leaders wish to design the calendar to make the period P as short as possible. A day is dayLength time units long and a real year is yearLength time units long.</div>
<div>&nbsp;</div>
<div>Input:</div>
<div>At first an integer N will be given, which represents the total number of test cases.</div>
<div>For each test case, two integer will be given; dayLength, yearLength</div>
<div>Output:</div>
<div>For each test case, print the shortest Period, P; as the problem described.</div>
<div>&nbsp;</div>
<div>Sample Input:</div>
<div>&nbsp;</div>
<div>2</div>
<div>4</div>
<div>1461</div>
<div>86400</div>
<div>31558150</div>
<div>&nbsp;</div>
<div>Sample Output:</div>
<div>&nbsp;</div>
<div>Case #1: 4</div>
<div>Case #2: 1728</div>', N'input.txt', N'output.txt', 1, 8, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (33, N'E', N'Magic Spell', N'<p>&nbsp;Problem Statement</p>
<div>You are given a String spell containing an ancient magic spell. The spell is encrypted, but the cypher is quite simple. To decrypt the spell, you need to find all occurrences of the letters ''A'' and ''Z'', and then reverse their order. For example, if the encrypted spell is &quot;AABZCADZA&quot;, you would first find all the ''A''s and ''Z''s: &quot;AA_Z_A_ZA&quot;. You would then reverse their order: &quot;AZ_A_Z_AA&quot;. The final decrypted spell is &quot;AZBACZDAA&quot;.</div>
<div>&nbsp;</div>
<div>Input:</div>
<div>At first an Integer N will be given, which represents the total number of test cases. Then for each test case an encrypted spell will be given. Spell will contain between 1 and 50 uppercase letters (''A''-''Z''), inclusive.</div>
<div>&nbsp;</div>
<div>Output:</div>
<div>For each spell print the decrypted spell as decribed in the problem.</div>
<div>&nbsp;</div>
<div>Sample Input:</div>
<div>2</div>
<div>AZ</div>
<div>ABACADA</div>
<div>&nbsp;</div>
<div>Sample Output:</div>
<div>&nbsp;</div>
<div>Case #1: ZA</div>
<div>Case #2: ABACADA</div>
<div>&nbsp;</div>
<div>&nbsp;</div>', N'input.txt', N'ouptput.txt', 1, 8, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (34, N'1', N'Word Search', N'<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:Vrinda;
	panose-1:1 1 6 0 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:65539 0 0 0 1 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 159 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin-top:0in;
mso-para-margin-right:0in;
mso-para-margin-bottom:10.0pt;
mso-para-margin-left:0in;
line-height:115%;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;}
</style>
<![endif]-->
<p class="MsoNoSpacing">This is going to be extremely easy. You have to find a word from a body of multi-line text. You can assume that the word will appear only once in the text, so there is no need for multiple checking. If you find the word, you have to output the line number where you found it, the word number relative to that line, and the character number relative to that word. If you do not find the word, just print &ldquo;Not Found&rdquo;. Three examples are given below.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">This is a multiple test case problem and every test case will be separated by an empty line.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b>Input<o:p></o:p></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Every input test case will contain (N + 1) lines of strings/texts, where 1 &lt;= N &lt;= 100. The first line will contain the word to search. The rest N lines will be the text to be searched.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Sample:</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">sand</span><span style="font-size: 10pt;"><o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">Happy Honlulu Anniversary<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">to NSU CIS<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">two thousand seven</span><span style="font-size: 10pt;"><o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">red</span><span style="font-size: 10pt;"><o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">pink blue red<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">purple yellow green<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">green yellow blue<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">dishting dishting<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">why<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 12pt;">my name is khan</span><span style="font-size: 10pt;"><o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b>Output<o:p></o:p></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">3 space separated positive integers X Y Z where 1 &lt;= X, Y, Z and X = Line number, Y = Word number, Z = Character number, or &ldquo;Not Found&rdquo; if the word is not found.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Sample:</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">3 2 5</p>
<p class="MsoNoSpacing">1 3 1</p>
<p class="MsoNoSpacing">Not Found</p>
</p>', N'In_1.txt', N'Out_1.txt', 30, 9, N'sand
Happy Honlulu Anniversary
to NSU CIS
two thousand seven

red
pink blue red
purple yellow green
green yellow blue
dishting dishting

why
my name is khan

a
i need to give
4 dolls, 3 monkeys,
9 legs, 2 noses
21 kids,
5 rockets and ba

perfect
perfect

perfect
perfec', N'3 2 5
1 3 1
Not Found
5 3 1
1 1 1
Not Found')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (35, N'2', N'My algorithm :)', N'<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:Vrinda;
	panose-1:1 1 6 0 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:65539 0 0 0 1 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 159 0;}
@font-face
	{font-family:TimesNewRomanPSMT;
	panose-1:0 0 0 0 0 0 0 0 0 0;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:auto;
	mso-font-signature:3 0 0 0 1 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin-top:0in;
mso-para-margin-right:0in;
mso-para-margin-bottom:10.0pt;
mso-para-margin-left:0in;
line-height:115%;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;}
</style>
<![endif]-->
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">I have discovered a simple checksum formula/algorithm used to validate a variety of identification numbers, such as credit card numbers or bank account numbers. The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This account number must pass the following test:<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">1. Counting from rightmost digit (which is the check digit) and moving left, double the value of every even-positioned digit. For any digits that thus become 10 or more, take the two numbers and add them together. For example, 1111 becomes 2121, while 8763 becomes 7733 (from 2&times;6=12 &rarr; 1+2=3 and 2&times;8=16 &rarr; 1+6=7).<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">2. Add all these digits together. For example, if 1111 becomes 2121, then 2+1+2+1 is 6; and 8763 becomes 7733, so 7+7+3+3 is 20.<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">3. If the total ends in 0 (put another way, if the total modulus 10 is congruent to 0), then the number is valid according to my algorithm; else it is not valid. So, 1111 is not valid (as shown above, it comes out to 6), while 8763 is valid (as shown above, it comes out to 20).<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Create a program that takes as input a single number sequence (each sequence has at least 2 numbers and no more than 10 numbers). Determine if the number is correct according to my algorithm. If correct, print &ldquo;Correct&rdquo;, else print &ldquo;Incorrect&rdquo;.<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b>Input<o:p></o:p></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Sample:</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">446667652<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">446667651<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b>Output<o:p></o:p></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Sample:</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Incorrect</p>
<p class="MsoNoSpacing">Correct</p>
</p>', N'In_2.txt', N'Out_2.txt', 30, 9, N'446667652
446667651
1111
8763', N'Incorrect
Correct
Incorrect
Correct')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (36, N'3', N'Do the furnitures overlap?', N'<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:Vrinda;
	panose-1:1 1 6 0 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:65539 0 0 0 1 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 159 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin-top:0in;
mso-para-margin-right:0in;
mso-para-margin-bottom:10.0pt;
mso-para-margin-left:0in;
line-height:115%;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;}
</style>
<![endif]-->
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Assume that you have been hired by an office planning firm to write a program that helps to determine if the coordinates of specific office furniture overlaps. The firm would like to express the coordinates of various pieces of office furniture by specifying the lower-left coordinate and the top-right coordinate of the furniture (assuming all furniture is rectangular).<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">The firm wants to make sure that an office space plan does not have overlapping furniture. You must write a program that receives as first input the number of pieces of furniture to be assigned to the room, and then the individual coordinates of each piece of furniture (e.g., 1 1 2 2 would be furniture with a bottom-left corner at &lt;1, 1&gt; and a top-right corner at &lt;2, 2&gt;). The output should indicate whether the set of furniture pieces overlap, or not. You may assume that every office is 10 x 10 spaces wide.<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal">This is a multiple test case problem and every test case will be separated by an empty line.<span style=""><o:p></o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Input<o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing">Every input test case will contain (N + 1) lines of strings/texts, where 1 &lt;= N &lt;= 20. The first line will contain the number of furniture. The rest N lines will be the coordinates of the furnitures. For each furniture, there will be 4 numbers separated by space: A B C D. &lt;A, B&gt; denotes the <span style="">bottom-left corner, and &lt;C, D&gt; denotes the top-right corner.</span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;">Sample:<o:p></o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">3<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">0 0 2 2<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">1 3 3 5<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">4 1 7 3<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">4<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">4 4 7 7<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">3 3 5 5<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">6 2 7 3<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">1 1 2 2<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Output<o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing">If the furniture overlap, print &ldquo;Overlap&rdquo;, otherwise print &ldquo;No overlap&rdquo;.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Sample:</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">No overlap<span style="font-size: 12pt;"><o:p></o:p></span></p>
<span style="font-size: 12pt; line-height: 115%; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;;">Overlap</span></p>', N'In_3.txt', N'Out_3.txt', 30, 9, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (37, N'4', N'Shortest Path between the Cities in the USA', N'<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:Vrinda;
	panose-1:1 1 6 0 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:65539 0 0 0 1 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 159 0;}
@font-face
	{font-family:TimesNewRoman;
	panose-1:0 0 0 0 0 0 0 0 0 0;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:auto;
	mso-font-signature:3 0 0 0 1 0;}
@font-face
	{font-family:CourierNewPSMT;
	panose-1:0 0 0 0 0 0 0 0 0 0;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:auto;
	mso-font-signature:3 0 0 0 1 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin-top:0in;
mso-para-margin-right:0in;
mso-para-margin-bottom:10.0pt;
mso-para-margin-left:0in;
line-height:115%;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;}
</style>
<![endif]-->
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Write a program to find the shortest routing and distance between two US cities using the following distance table:<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style=""><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Alabaster-Birmingham 24 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Alabaster-Montgomery 71 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Birmingham-Huntsville 103 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Birmingham-Tuscaloosa 59 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Demopolis-Mobile 141 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Demopolis-Montgomery 101 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Demopolis-Tuscaloosa 65 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Mobile-Montgomery 169 miles<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Montgomery-Tuscaloosa 134 miles<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Input<o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing">Every input will contain two cities separated by a space, where the first city is the starting point and the second one is the destination.</p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;">Sample:<o:p></o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Demopolis Birmingham<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Mobile Huntsville<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Output<o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Output the shortest routing and distance for each input problem. The sequence of cities will be separated by space. And at the end, there will be a number for the total distance in that route in miles.<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;">Sample:<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="">Demopolis Tuscaloosa Birmingham 124<o:p></o:p></span></p>
<span style="font-size: 11pt; line-height: 115%; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;;">Mobile Montgomery Alabaster Birmingham Huntsville 367</span></p>', N'In_4.txt', N'Out_4.txt', 30, 9, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (38, N'5', N'Chess', N'<p>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Word.Document" name="ProgId" />
<meta content="Microsoft Word 12" name="Generator" />
<meta content="Microsoft Word 12" name="Originator" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_filelist.xml" rel="File-List" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_themedata.thmx" rel="themeData" />
<link href="file:///C:\DOCUME~1\hasnaeen\LOCALS~1\Temp\msohtmlclip1\01\clip_colorschememapping.xml" rel="colorSchemeMapping" /><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><style type="text/css">
<!--
 /* Font Definitions */
 @font-face
	{font-family:Vrinda;
	panose-1:1 1 6 0 1 1 1 1 1 1;
	mso-font-charset:0;
	mso-generic-font-family:auto;
	mso-font-pitch:variable;
	mso-font-signature:65539 0 0 0 1 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:1;
	mso-generic-font-family:roman;
	mso-font-format:other;
	mso-font-pitch:variable;
	mso-font-signature:0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-1610611985 1073750139 0 0 159 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin-top:0in;
	margin-right:0in;
	margin-bottom:10.0pt;
	margin-left:0in;
	line-height:115%;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
p.MsoNoSpacing, li.MsoNoSpacing, div.MsoNoSpacing
	{mso-style-priority:1;
	mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	mso-ascii-font-family:Calibri;
	mso-ascii-theme-font:minor-latin;
	mso-fareast-font-family:Calibri;
	mso-fareast-theme-font:minor-latin;
	mso-hansi-font-family:Calibri;
	mso-hansi-theme-font:minor-latin;
	mso-bidi-font-family:Vrinda;
	mso-bidi-theme-font:minor-bidi;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin-top:0in;
mso-para-margin-right:0in;
mso-para-margin-bottom:10.0pt;
mso-para-margin-left:0in;
line-height:115%;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;}
</style>
<![endif]-->
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal">I have a standard chess board and 8 queen pieces of same color! Your task is <span style="">to place 8 queens on a chess board such that none of the queens is threatening any of the others. A chess board is an 8 x 8 matrix of squares and queens may move any direction along a row, column or diagonal. I will put the 8 queens in eight squares and your task is to find if any of the queens is attacking any other. <o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Input<o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Each input set will contain 8 numbers separated by space: a1 a2 a3 &hellip;.. a8 where a1 is the row number of queen 1 in column 1, a2 is the row number of queen 2 in column 2, and so on.</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;">Sample:<o:p></o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">3 5 2 8 1 7 4 6<o:p></o:p></span></p>
<p style="margin-bottom: 0.0001pt; line-height: normal;" class="MsoNormal"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">1 8 2 5 3 7 4 6<o:p></o:p></span></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;"><o:p>&nbsp;</o:p></span></p>
<p class="MsoNoSpacing"><b><span style="font-size: 12pt;">Output <o:p></o:p></span></b></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">If any of the queens is attacking any other, print &ldquo;Invalid&rdquo;, otherwise print &ldquo;Valid&rdquo;</p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing"><span style="font-size: 12pt;">Sample:<o:p></o:p></span></p>
<p class="MsoNoSpacing"><o:p>&nbsp;</o:p></p>
<p class="MsoNoSpacing">Valid</p>
<p class="MsoNoSpacing">Invalid</p>
</p>', N'In_5.txt', N'Out_5.txt', 30, 9, N'3 5 2 8 1 7 4 6
1 8 2 5 3 7 4 6', N'Valid
Invalid')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (39, N'01', N'Problem 01', N'<p>Some pairs of letters appear frequently next to each other in words. For example, <br />
''a'' and ''t'' appear twice consecutively in the word &quot;attack&quot;, and also twice in the <br />
word &quot;tattoo&quot;. We don''t care about the order in which they appear (&quot;ta&quot; or &quot;at&quot;) or <br />
if the same letter is counted twice in the same word (thus we count two occurrences <br />
in &quot;tat&quot;, for the same letters).<br />
<br />
You will be given a list of words, where each element is a single word. Find the <br />
pair of letters that appear next to each other most frequently, and return the number <br />
of times that pair appears in the entire list.<br />
<br />
- words will contain between 1 and 50 elements, inclusive.<br />
- Each element of words will contain between 2 and 50 lowercase letters (''a''-''z''), inclusive.<br />
<br />
Sample Input:<br />
<br />
attach tatoo<br />
boo boom cool<br />
aaaaa<br />
<br />
Sample Output:<br />
<br />
4<br />
3<br />
4</p>', N'problem#01-input.txt', N'problem#01-output.txt', 10, 10, N'attach tatoo
boo boom cool
aaaaa
renaubbbksyfrmxeuckrngpbnlunrjhinxjhykikfirwxpcrto jgxahmnbzemjnzgyigktspbmnabssugdbffkstorxacmckkkqx dlmhxcjaubwcezimkafytcywragdnzaskpbjrljnmfrthzfrbm pxqpthsblfalxmcbxtmgiaoavvbcmfodcfuxmmyzrbnrnpsnlg ttgjteexgscvxgasdoeboyedrusjhdraxzmsdsrknthkbjeexl injmqcgjnnoeqndcgjwxvjtcwunabknjayvqaebntstjfxnlim ldvghrcwudijmiikbiqeyjwrvcqkpywadugmllihotrbbbncjd jjmfbjhtuxuqzxmimytwhhpaktbzxncgwrmzavtwsnpumbcabv zjeojrjnqhatnymbamxtlrianwbpzdmyotozkymahovwphypwx khquheqkvrpirddifngtnpkjlzqlomiyvbuchkpceemvkpdrcl msawbovtzlikldlfiuszwwdjtpaxidkvvnrybptccbmofzvptp osntdhjdgtiqofdgdgxxjzyxpfxlwsakmogpxrtdkbvzhzhmfe jodkovrlgofiasyghxxcaiewjnxqzcultzvhuouceblftlndjn flvlheyewajqlerinoyjqdkdkgpxlakslhevnebjgmbrqvbfja ozdbdnjumuwzohiuewbghhslblgcspcjqhkvwvrjrnkfvsazqb hykallnrofisoyaawwvnfmbruykuzaxhajjlvwcjdmdsndsjaq yhezzyzlubntiodtzyrejusmofqjqsbpbfqaeqnytbsdpvwqvp welpscukllcmcetsgxkuydvqimnecivzohoijktwxxkbddukbg gbmdrurgbtqwuefkoqxhmuhwykcsufacgofzlwfmsvkobsbpiy zxugvsqxmncprkdxjqvocplpgojherffobnkufjgsoxkybjirg ywymneawlgpslgtasngbwyptkqwvaqcyoambenzrtqjhwchqsn sqojlabiwbyycoaopgdqxxgigfmnvedpwtbiteqpiqpkeravxe nwdvejctyaxbrwuueqzwfhmxtsotpmxekazrlckkejlvfiqjyp ffwterntkchkgrmikymuiqevljfbtdsalquphhksmrcslqcvoo sygwusfzvafodsexhmesgslknyapwrgopmmlernausqxkuwtic nqvbcibdxxwfnnszzytmyngqmsninxmboheqpfvpdruqfosgnl unacemurwjoimeqqxhwsybmvttjlbywvmyxsktjiczrpgjfdsd xrglmaexnfwmckkzcxsnfxmwmuhtzaxxrfkffpevwcjzmtaoqv bysqwgkezkgyjzetelkkijnrizlkodfrbzhyfuehgkfpjlkpzx zjgobqooaetivxhfvpzbwfndwwrinqhmzndcfrsgxmqujxzgoa hkhuodsfofxvtylwdqpvymhojqoiyclfnsbdyvkmajjuhusmni ilwpafiqqgsbohvrmtnwhpfrlpnebaojmmboulektynjgkbseq rlfyernsxrslcgxdutqafkzuthfwbjmswsrblgtixnvawufsow ttiuoddtaecozyiqbtywdwkyyitfahbvclpqpsjrznfyoqqrjo onmylkggqintesfviwouppjwnzmdrwrflefyqnfgvucbmjxxfn twccspcfuvdlaqrhoiwvqrssvgbsdifwehbzydgsajfcbzjpjf nzyfutnxnrgspmbqlzvrtxczzdyivhpkiqpcleczvirnwvfiud bqaepajpkgyaqgshldmncjxwwtredlhfdhlsjwjudhwtoobbrp owylsxgjbkwkpatcudyezdlvxblaeepsapfsmodpyabpavrwar azvowurjwwnlqqcykrmogkoibqfumhlpgidecwnascljsqjdhv tnhhxizecnlnctyhxcgmdyrqjlgsqnnjdwqaerhgfswjoutnyz cbxtsjeydvorerpxtuoaavvyflsayrzauyvmjannxdgduvcnpr qsonqvylvyewzyvunewcrvfxzzvdokugcltvgtgcsmytmvnzcm dvhivijqoaakgfvcccxigpwgiicykgmnbvywghmujpesuauwet gkjcstmwtwcfmebkahtpbdefvyhrwlmcxvgqrumkrpqfvrpvak kbnqikoqdmbqqznypgtdrmuhrpainaszdgqlsgdytfqjgdixkb adpvmgmoozogbtorgjxkhspxcvcmsonurcrfketadjgecxxjgv tnnkmrhodzfsvywnegrxgwhpbjmyusvnhlztegjihocdnzqrhh qqfxfgjthdletsrsnwbwgililajdrrmjhshoashhvuoqoflbdm xlukuikdlduyndqwrqoaaluqcixplbblmxvifiorlkraojwhbm
anasgfqnyjsenbfkzoyhxvdneryrholjdnblsrardsxqvecusb eryhecbftitgtywujqojjtbhjwlntgqzzoietjlotgxmetjnjz yvszedxpqsxhrxxadqlqffwetcxcpibpdvohynzpiyybxxdaop qvwozpqyuhgvwmrmvpcwgkvglsepvuglrccqrsqlcyjymclitn eczzikuobpihczlerfzhsbibzufmczbjbaklleaoviyyijebod lhgtkgnquqrwbswldjqfyloylyhqzyvkfcfrkthelycmszxykp dkdriorqgtocfvelmqewupwxbpyaniqqttkbjdtqwjuceanrqt pkiljlajnpudinyuqkxmauvwyawntmgiyqtkdwtqnnwvcwpvgp hilcejeawzmehnudxxbqpoglmikdfqsmbdrfoxikxwqejkjgjk zzbhmnryqxpllqqcxfafrzcifnspwebxfeerrvskuhvgzniysk ekjiupxogtsjqxowrhujrosoutcfrwrxibfcsdrayljrlxnefh nywhpqatxtppryswckbvmcjvtuvgycqncmwrewkepctgclfexi cjklgffboffesisozwmmcdovmqgtwfbyoojxtoyjtennmfdnep zgtpchfkacsbcgrmfnaewwkmlyrpnxenezeigmuiqmksvdeaqh epfqbqoufesmtwnxewjaeznqsiuyimfpdkhebybictwvpksvgc xmdkdxszwdnburobxpzazbtwwkgphotfcyphwkgsnwvjpjkoak pcniyktgbcwwhyuxgsjomykkhbtrqwdfyrpydkeenacuaytitc xfajphllbdjekjxzhakngzpitpjnycrxhsizbtmcyxhigeipfu cntrwoifdihvhqpqrqjftkcasigcznybbruzifglnpivhxnzoy ehihjbrrfrheukxrjhwrtlgdinbvorutyecjfvcnojrjtqaeyy vtlbwurxrfolaoqezxacmondzjwbnuzjplmlhdlylzmlqeqrbs vqijvisrjhnlqcwdodizdtaphstzkxrfnbqijkctspgkscpiha hkvjcccxdouwvjyouhywcsnifhmwptwygsiiwmfaccwxnulhcm fggtpnabkqxgqdaanxmuxqwvomqbtunzawurjuttmqcfvcfkbu eykdwapmciirjinfazcvuqnwvkbbucxydhbzisnmbvdmftsfsw compnizoltsiuxrxybqlntirfomzvgvyukphsrxfkspgpgeoiu bxnmquccuxirxddnmxekcqcrxtadjixnhkzyebaaaluaqxncvt oxlsrkmrnxbkkiwlgdojdpuzrkxgouzdrmvkzjboheztnxfvat egkyfbkchzwicqxzawjeksillxlqtlmxrwyzakbjjasnsrnuny azqjlbgwubjgzdezcgjfqvfkizbxuoxupnfcroanpkvqpzrrid yyygkiflibbfwqvdtmrvbjfwzwxrnfumfuspczakbdsxuncpzu kadsyeovxebrsgnkyslacmewlyjopikbkntirkgrohiipyunqf ousurduarjlbkvqggksmbivlqmjkcbpswjmnngngpykbwcjemd splnddbmpdofvmojzdpokgnwklyvpnzjcmyfqzufdkmawdkxgb lsiaoulppccolgdlotlkaqwpssseragcvqdlkqazveqiltuboh lqxhfrbzwsacwvubgeujfpnvxyqtbeamvztcrwcnqcrnznqhrk qyzeuzemugrvuowqqnmscfwvsxiifbtvcubwtikoqblmphcixr abwzxqwhybltznqcllmvbezmrowvytobukatcybbcowbbmfmyu jzyiorzknxfbyboavqzytbmsepgjdgfmggvwxuimrpqsqgsnwr nssbkyqskvzpihvddvznhsczksfficwxwrzipraznzrxiocljb yrvcqixynfclcycdguxivmkojsdlgmoefjjwrgwelyqpwuveqs omeyanrdazsofxzovrurxhppxnmurcmgqsgthzyhyqxeowslpn dpusgtgsnzxbhptoianjjmzgspfkduzglwasrimhijipzefjgv sqjuybjdnmanullvfedslnbwfccmmiheaqybrkefygutuhqzlv rxlvvqxxclhkqkcqlucrbbyxwueotpjnowklmhirvsdncfdnbg ecjebhyfvsxghndrzrajkvbnidvoqywxdhbeoaklujrbwusvou fyqimamjqchmzmtdrjdduxmoaiiugwonxgvlhhuzmdmnqhqhtt knsybugmookfbhlxsugousuiikrytksfymdbhlnxaaebhsacoh sibmsjwkirucwuqbyznlxnndoxvrbkytubgpnezvwvzuspwqpj dowrtmqpdrzdkvfqksvlpthqnbfjrwswmqngfdxiuyohttxenu
unutsjrjklmiuijfkgfaetrbbhxyapeweypxhhgtuuboelvptd rxylbasyasqeoueeronzhhtlxyyuprxiqwtryosaikezgkfays zibttattuikuqcsmwqaqqkawjggoghiirjdkjwfggpaytskpkm faxhyiqexwnfgerjqchvinmkogcyvmndomkmuattzgzfnsrduy zfolpctucpgpuxdejyherinspakgdhhemvsbxlvzcerwdwdouk tosgihivqncxsoskrpvpqavjwygzmcjhsdnbnxwdlaadqsphjm ybmtnjrtigxunqzdtmarplrrqhjfquspygklpcgakdwxvvaokd hzoyrfhcmyzepxlzkcdqentalpwnfgqnhhnaovfavehkdulnyp fdcydppbfxjvkteztswavrgcdjypywgdziedavgfsqcclheeba hwunaxzyozvufwfjzheimxaoblxfrbiyxcoabnyqmvmrstctaj boibdjocrgdzgddudejbwyzlrreukhfovnraygdpoiqwlttoac swcrjuioquxviuiavgiayyiouwknkkseiuvsofigahbkblkwsu ysshipdscpewuptrhhxroxyrjzduyxqwpjfxykscaybwnunwdk ntjnltpqpnnfleqtdqdxvfwwblqpivzxpllcecstrhacnrvshb qegoaizsxjoyhfjujnwdinkjrzcprjqjqwxqgzldibcrgnnpbl ulagusfwjyiziyxhqegbjrcnikbybejvpkbkcginhsmrslyjph kbapokzpibtsyjeaviifvpajisuhbmqonsfbcetnhmfgxliutq coicxqutzyfrmujtyoxrbhfipftzzmpbazfzsastyylmuwfske jnnrvcwqbvetzguefmgyggytuspbncgypvpnalddjiykotqwhz upfuicoydbclcrhrejfkmqslaigsenradzunblngmpsqjbinkp xyfrjhcrzgfthksdzvonbdettnwddgsafxuqgwigepbnbtraoh prmwnijjlmqgpxflnmhxulmvzpossebjxofkyrujdmpujvfyho wdakybcovusydpojamawwfinctkhrtwpwycubeiyycwbslmuxo svwalyvvhmpfelfggikqgitflnsajrobnmdymyvukkbqwhwepg uyondcaxcjoqkdfndrnzlajpqfwnlntgnktsmwpqfegsjnhnfv msvvhndfaovwwiiqbwosmtyuniivvnsjfpgpcjudapbwajodfe vrywlngtidiamopsfuezxgraetjvwozthzrunxovayymophtjl tirmixftsdjswqronenbcozcaorhjduennqylxrdadvzvnpitc lvqlxtbrcmwxrlmhjxhdbjgyidnzmhexewkepnvuattrefaqdh tgrbgbeubsdfqhbaltoinqbghilhyqrrwiudjazmtcrjlvlzob hbrljatuirlzkjjeougnhzryifvwejxnmravrtqzmdawolcdgj snkmnvtjrxsqmhhncziuyvxbtomwtuhnhrzxosgfrawehdtkcb gdwegqusonnxawqctfwbkqeiunopzqqgvpkbhewvtlutjkxdpu gckkkgyavxrndocpsjvogobakklhpcdwenirvgrqgkglbibtuy hankbzuogkqkgxzoovxhnfstqteroyqvafhbebpmliytfyktvj cioueepkydiqaivhmbldpynossoenjnqtdmzhejfhtxkesrqve vldjbxdpbryqjttvtczekjyhtccmuxrrkwcltgcuzcmiwffrjh vtqvblzfzvesnpopchvhdujpehwkygrwbjtewtjvooobfctjko qnlafrhbbihugjfznbszxhnnkupddbuurhuwydzcljyruerjfl ieuxrfrjkvmgpdnlboodsamqtgumpayagsxyzphkmvqbzgmcwc foctgyzbkrditjdqjchsmtofwpnkrjnzzrufpwianlkgxnygqg zebnjycykvhxwiproenygckrkhgipyqoduboufnebwcxfrqvxd vgffzpofaegsujmwzgdolglpesiuphaknfsmxguxmaphlefkki zxpmmvewrverfrzzgygavuambnqixdtyakmphslynpsvjtuprc poxraaetjdyeeyoqpvjbvysntbgosxqjnnaoqgjzmhdqhtizot cjsuzlyhzshscuhckxltyzcdpmwzlmtnyljxyjgacnseibiszv ozusdlgzlrmggmtsjrbrrffllpnujorxnmsqzysksgsyslsddu uwbbinqxjanazaortosnakttkngdsjzmiaosngpwgczienzzdt medfzquftmrsbzurtixiggmhosxpsajegomfeilxverwfmpywm gesumiolyglhnsvbzajmzeqtcvfrtdgbjaxxjmihuuojolknnu
lxhjvdrkccwohtpnyzdvqllxjdldqdkbctkaxekbggpnbhdzii wawjxfmijeovgqrsqowcrekiuopzpzhmzdxwjmhuqxrwnirgyn kpuvaojpnapuoqamnjyufotwnghgoftzxpwxdhoqhfnwwnklyi hdyabniitxqpypeuoidcamkpiicstacafdahqirkhhzfydbmng rotbdbliwekaeqdezuoqgwafdykfnaneoghtksdiyoicgoihkw zquzxyahfphsvxzetlywtwmbysribbgbrbaobcyirfcofdsyoq whmllmfcuhebivekmhnkpgptvwxpwlgtvseghjkbqoeamklyry kigzcdybtumbpjttpcfagxqkacxlcqlmbrodxmgsiutyeottra vxaojasglvxwjypzdmnjewdxwhopdfsacsolshsderbnrqpufc flaklwuzmxegziyotqxnvbgwqxoftviyjilwffvtebzdlztgpq umrckicynvwxwfihbpoyisbjxmkrszhonbrxjtvyqtymygvbvj zfdcqboashbbvocolnhioycmmcuigrrhyvkqyysqfttdjwrwlb ezbinnljxtcraaoksmjkeqfxtovnkhqrirzygmhefkvgmlqfxb pdsvanlyawhsnpjopsbzwgjtoxefedgwgatiqegqcnlrfugwmj vkpgdeejliotguwzdmgleibpaikieyraligqmmazxovdlrdqdj dhtexvojdtjuvudblrqntndoqofvgkgkrcoqxfbbynxvjawuuo jnbpbudirmsywlamezrharuymealawzmjbbmxgwosqmqcodiow pqomqcqrnsnpezshnpokdiaszeicmwacpqqftgwiamxhnpoaec mknpcmtkqijqmyhcdakckkqirdxifemsqzhslcebknsynbardk vnxlvqovytblnrmulyzpblfvkswklbxgpurkkhhlbkyobklokm emxjhhdguphtxwprjbysmbdmsgxfvhrbvomdyplugupetevefv wuxbgrkfwhnpiidundlazsvowoutsaqqwpuegekclzrvjxpxca zesusqknlepcvlrrravbeiawdkvujzuidpfyhplvucxrnqigqf ivnktswqmhriqvzxthmgeiidzxthdmonjdaevwwjenuwkttfch lgqvjpsfzyrpnctngomcasruocnjhqsvyiqialnbjgqwkjksay waqnugpjpzbhuaskksvztghjdrvpjvnfxdstjkcalgjfgdrsvp rqvycarzraughrlbmwnowyuidclxwjmpbjpfmgediakptvtfsg uqfqakvohtxvjahygthmyrnkhgicmaiispatavhjrghaioaojj bjboukwcmieuqwkrrmoaxhiehrukhftipuyjexlqfpnynzrfnf hkpqpwjliqrcbgybpdyaverkeejvlwcvjrlyqulymccnibpxgp zdvsozzzukyzfhqshioshbvlqdohdwxeasxouwpqinpquiidqz wzarlswzabwziytfonddelrvdndmrwlnvnggfeifgggogavuna xtnqrrewdxsqkodswkwgseoyuuyroormjfcawixbfprrfwjcgi iyoxxlrvcilwuvbyxzjuaomrirnrvtbgusfrdyofgabcxebudm rdafwiwlcuffabxfsadgikilofspcvdvbeaxoylssqyutxzlyf tiretfjlxnjaikgijxhupbmpwfnxsncmvvqodbcarnczxjkigt fxutnszcqtpufksxavbcvspxtoifzqyeovxdnyffsuczguxgpy lmsallrwrsmrwcmvfcumjoilnohmvymgkeiysbujticplrlsth fevpskezxzyjhkopkgrgrkpvccmpwfydmttefxfcyfmfqcuckn jdaaycelraspeekxipwquuvgznkvqujbxjdvlhiehbvnfhmqyi gscbabrkxhgikdrnbewjkdkhtsofkooshsvhumuttadfgushao skuftnxhujvibedwozjisekxkqtezttsfpxyewhyfejglmezlp jfutcgmxklqffxwcxaagbhmkpxyuyjjjqffulrryejfkicofep nfwzpozpixathqzmmmfdmjosvwwkdabqgzsxnrnvqnrzgqnscs ypemjzlflqfmjnmblbuyzknqmtgzokumbyamznrlezxnmlqxpk xowleigmkuyegccjodwioahopvbfvqrseofkymyigzmpbqyruw zkxiyogaubsltzbzjcnkkvjzkkpkblhdwgnwutyqwreqqfrbjg lubuvmemyiyfnwncsiyryukemakfbtlnpnhkboxzyxhltunnel gfiqjusvaurljgastbgsdepmrkihxnseuawdxpbxlsiualmtmv nrbcdvmmcmbwsxzqcwfdtqxdmyobtdyhwzlawaoymrvgouwqse
kamghhbjqidrumhkhyghznypohqvcjjomxwtexcwhhqctxobxw kyjiozpewtqiiefexkebinjypewfftcssncgpsmnncvvgbcfni jvvuwnysugnwahmcpbwcqkgmhnpjuetfzpzxearygfxiojkemh gcrmqybfkylddnudkadczljyvxjfbvojzhysizzszlxdyuiiun mvavvvtecuzrgbyetgfsafdykduumqhyojwjgpoilpzrqavlgb ehijhsndmbtvbhgxtmohucwwvpwtacuglesuyhxmirhlanltzb cvdzrzonsqsoxdupyswvegonrraembgpylqqmgdewxutboibig wmmnzggbksesjdgztsfyzcwvxzkgasoyhbnihtktoooxruzmoe nniljgkvompckwfyhmrrifhyfbsengkawtnhbxcrjttwqzuxnn qxtxvaypeoyoqujedkdfdnyxjqyfpnshnnfinfattykmutqxgt ejicitvgymwrujgbtugtncrxqntgkbbokmttfqbeczxyidzczi vpmpoccjknkldvxyqfotjrtipbnrdnzbelqspsczhmmljklzpa tatmkkpxbvmcwqpolegpfqdsdneoovojvjxhunexktaglruwyc ndurvxgzmwucgrmfyiuffeyhmjbgizlvcfoyduxrrutzlhekrb rxfpgsahaiilgltujyrirkcmjqupalqrkyitqicqtlezyzthxk rouwcfmwxokpfwnprdxuwqhcrfbloaxfqudszprydbokzbzrhz ndrufjbiwpitwapasrpjpvmdfmhhfqistboakpkigsccstcmku wapkfwymddcnxxpnzzcjkkdonxhpkslisasxxrmcwqquqfjrgo bqygelemdogoyyrqxojlqgegcunlluzomavrnbfqrlhplyfiop wgxapzwcmjwoaloxcbyjupudehdlrrcnxzpmynpnznbzyrwcuw lqlhtrqwcipfvnenbfasuzixaiowlkuybfiwwyvbgkgezmrbtt vnvdkvmauzlozowhkuihvqsdwrspunjsbgvnbjoxkbmkrktded lcufhqybivptnqzkfauvaeyoqpykvengijlscjtkeidtacegey dgecuvtshozuuhghzitvuzdxtgbxohxrodtiyndfbecylkhnua iocnnvvqujxtbnwwyvlbcnhgnuquhkxrazhnucfqmdjpsflqcx tfmanbvgvessytrfinjodxtmmluaewxxdlarmvzhbrczmvgvjq longdcrxcxtbxzmxqaspjtilvvhbssrdghjjjcilccmzbawtaq kjlsxgpgihabmgivstaaecesbhuzcwpoiajhjynrgnusvdqpws sduwxxguwkqnzynifygurojmjfrbwptoupnsotmkdczcdmmknv fejoquvjvszogtftntozfueeyjtltggamrpdmmohenynjfiwzx ygtclrnecgmijycydomsvthviqbqncpliiptaczeknptmrtrfg jcbrajjdzwfrjnbyjdckinyximqcdxkpzlgbwpexojoxzsykvc wfrueaiuemrqbtdjuzazyoinojhovcssikommxjslaiotnxqoz pmqzbeliuglmyvynjmksexvolqbkgrjvezxffiobobqnyqchdo chlxywnbiutrrxtqcaasepvuetmidpwfzhexdrylntehqzzvca pgrlcvgodlezqdiwclqcyfwemmgojiozofmscugfgmgyrovvbl ybquhfintuvhtlohfqbmxhafiuvdpyqnzijinuwiotrjhfqmxt aubbblxwqmugcvoneehcovvgeenwrnqrjtulerhugecibsvhyf jnahvhlkfcxvwhqqswibqqhuyjnvqlaaydjvmugrzdpvkhlcev gulnrlwehppjrqmanawtsvxjqjqeouburpjiagojxftovhqjim eciblandgbaixtzgdzorllwezunpfvejxonkoaqxdqhajggohv fsidwixkzchfohtbtidjfgzoikuoyblfuujseieflmlbveeooh yvpzjxkdnkhbsbvbtbjyiwmtxhadvoktkbvvahzorgrjjomcpw cxuqtuztxvhkqtllposqcmwvxhjkjyioxegqygjydtitmvhdjb tnprinyrzkrjapnghmmtkpmulapuebxzonrzcpqdbkmbzziinw bzontbqlvwmsvchmbleuofechfernrpptdeoeuzbqnwoqfarrg nhorkxyoomhddajhppeqtwepkuwnnntbxhuhgtxuhgakjltyax qvwukgqhvewrhtybcfwzbdidnrohrrghoeezluiiagzhcalehh gilooyfehwxqfmujnhexqgdpofpzmwgshtivspzbnztsloeyvk vnqadggufurooahwvbnwfaxyuimyikkfxbgchoxpiqfwqounsh
efzseboafjisdreksabibsfjcltgpovvtuoxvczcniuqzyarad bbvgmzrfgjtbgpvumsymulwqevqeoqkrtfyffrmlchmjwjflbe xxrvnvsdcivmzotzvyrjlvqxenimajqzgjuvhmajuvxtlqtipm rajkaoziazusyadsykgyvawstjjouaclcmxccwnexhyxjbpjmx kjxgctrnjlnmzrywuavjeuscsbfjlthvdedfzuujgjvfavdwxa fbvxfnbkwoedljkoojkkustpztmdqjfxmaxrnyemoipzrbphlz thumxthlyxvexheubuufgipxjizyrmzkttwspdgndbtakawlwq scahbjrchiqgsmcqgrwmgzpcbcczpypicprfajihrapkmtcvmy htzzvcbzbqzsabjsgjbqssrkefdjaqhkjjlgnmhregjfhvxpga gzszjzemiherrpccvqqejwksbtpajwcrxvqiwwugdbzwqcyouq sdndxqwprhltykqqsonouspwpgypuugmztrwjqlcxyyyiqoahd rdwgzlmzaitixudorneerefrcpkqsrujuqpudetfmpojjracge jaiqrmfbdxszgnryjucezotnafhahngsnrifdoigndfusyubsw fumbhmgompevirmsypghwwkdsccmfwimqunajvqxlusvmenkuw tqufvmjzyoyidoesonohlbbdwpilccjvudbrrmrpdrzgfeywrm dcpginwqzyskvoqyfhlyzopywxeuvwjaaygimeaneuzaipaqzn oadgyzffwabfadfgmtnmgrhgtrxwhyjyynexmleilfplivtwog lxaufvlervdbtbozackenvjciuzdsqmfnmzshnwzizabdqcdsm ihjtktpjwizinowniecffkghnjxpprdxzoqlhgwfqwqdmmsvsu cxgketwdilxniwbajkifqydgequylnvnkbxrvtwfgttorwrahz gxajfgzzemmzbzdzqaumfbiarzxiaekidmristjwfwyhxdipde dkfllzlkjnotvthobzhmypiwyhbgwemaoslbtylcnbyiwfxxfg mdvubteebaiocyiqcdopfctdmpljpqqbvnxyjbcmemagkkwonn evrxadolpddheywcyffcsjouqbfopudvpuuqajbrmhathwxgec iwozsgazuruynlujdwsfnhmnatmzbqbmoplgxngsecstpmdtjx yygmmghyhlqjxeakkyxssdwmxmycfjbfkityqcyynojmslwelv zdzvrwhsambbtnlmlcpjcexntrypwklvpmshkazkocnisbwdfn nhumuneuccepzwbrflrexiinsaoqgtetcyhwllqpnxhovkgayz gvhokbrysxtwsvwztjnmycjhresxgqwmngcyhtyzssxmptojcd vdfgkymexsuwekcgklcknweklugzfkcapjiakuehobdunhczvg jidouqkcppntpeezeovlyjodfdnhcionstbmjlracgvtkbspsn cqysvdvinzsbmkuqzfdsfgycziduzvhblivhnsrarkdewzwxez plfnnhwrbxmkzaswjgpcigommlliksiadpptwnmzlykmacijkx mvgajunwdyonauerpdhbcszmgcroldozywchqpgvpuirqplfss gumijskagxfwzesbnlstgkqrdigooagwwugfmshvqnrptmsgzk chuuyycgosgxrdrxkeqsbifuzygrghdkpagpylwofelwjdwujo mkwtevtnoburmlrubrfxgldtjnyfhhtvtroyojnckjwyvptwja vrnakxnjewsarmrhmiqbmbkizfaudjvaaibkhqvmnqmgefoqng rahdkjlkfqvarvluismdezvqizywpleinooaxzmcpifidqenir tpqohaofwfrdogrcgodtssbzdgrhwayprrdyrreqxxtndkrmau fuoiwtqnbmpzbgshfmalcxixmnjfzlbgfsqbljrmxgobngiuui fwipvweecgpdmxxfajqrvnylonuwhohmnpdinhnpnevcdshgdx xzkxmbmgxtvghixkslshchmzjrsqxvpxwcwjdjrccojmwgwrtq ywymvhepabnraltxwygobkcmwbuvsolqmldjvjzvkomlzikwgq kjamxzpsuhihautfdooelasznsjxoqpabsozrernnbupvpuafk hqnzsctbcjtrjvjywceprrqmhnddpjqwbfythrvjbqbmnmkjrq aikqwtfawvjotktrgbjdmmtnyjclsvdtdnlcgrcfonthznzfqk kcygsypwljrpewcqajjcqxrjgryhyqtlttrnsilfrcuwazobkx fawzjcqkmqafbvzsitatyuxvqauedgdkgzjrdbbpsextzwokpq fpkdkcfgiimlusmemqfphztetvcjfrbkjoptquabeoobjbfvtm 
omcsbbslibqvbhvawavfiovsvbxquhmkvqewrxibyaybitbevz lepiykmvcieosagxwzwgawhayrubxrckvrttbhqepxuhzbgvac edznfzgzcdrfnowikapcgezcoyfuwizcnapsbvsdalinbhwnhn qpsrrgqzcohdqudhmeegkgtutvbrkkhabzsthkujabnqvszjzf qjljfggharthtvgnqnxkyxlnpigqrfvjqgvvnbenuawqvcdnrd zrcmfuulknsgxkouhdxoquooklqpajszbvlirhvbupjtzynibn wuhmirxbgzmbynyjxpqsqnhaiiayrdlpzscklblrbxsznqlmhd fysmabxcbofmdfghprjckkbflqxydfeifwwfxthajompvuwmlf oyrsdfiadlhhvmgurfpagzrsqmpmzaspalhdsqgydnhbcnvttm wznntdbiqalkslxzrqrxoxmvaojxkejidxxycyjsbwethcuauo xilmflcokmutuzstyvsjptfwooaipuwocjahwdygrscosuhsrz bhuifiwfrlzpadbcmxfmgzhinzeutwwwfqekzarsosjqvksjka wqbdaoegkzeivjzzvabourgdhbqcnacjsdoutsafrfooqpnorq clijqrmgtzixkccywvszblerzwgomxhpkpaaiojcqrzawcbszt rchxviwbziagzkxbnfqwhgpjglnjgodxrmxmutqtbqzdbyeqeu mncdwlpjuvazutlrfgmxbqqdtrbzjfuvvwyrjpdemddjwrcdzp dahtfamhzvovqjuqddigjwlnfjeimfzrfgklgwuhrkdjuzcxck fogsbmbhwpmvhtbrgjoaqhnvrhutgzfnnlfqzgzvvnscgtwpcm rvtesmlphtomgdalvbruxphrtplpepbwmvafjourhkfonfbkhv egknxdckthcwforftbvpudzztofuyopewbtvfwgafiwmyqrutp jnulmnbtjcjbghcadjyllfvirtakntzzitkwinqspbvyjxamjy xudseungedzgchzoeibwcrzxriwrwhpveupiofpuiqakacagkb coudllojcmrtivnzddeuyonaapcavoezcacpoqzqdqmnlzoqfv ndjcfkrkmmyqldrpsfgrxljjaulonqlcvvechvmthlkuodjiip chcltcigtxweztbdvkaiehvqbltmtdcxkglflvlesjktcoyayy icfduionujsyjfhukspwwjfickwakvauzfzuppjlycmhjtdtls rhdzrfjohvljpmoogfdstdwfnfyqyjlssorjwczfzkpqzfghnj zgovldcjwbshvkvmttqvzphqhgvnoiypomlzspioqavnmsbior dnikfprachlawzpjbhzlvrosfamgiaalpkyuapveyihuhwekff wcwkwdmikvjmiawgvyxsdvamsjkyupdstbcpfozrlkdwlbeiae afzcrtnbrhqwblafchwbyhmdfzgkhgojlplcjydcivbjgbpikn mkuapazvmgcarppeuacxfmviydlpovcafyauabpmjtmajeefgi elvztvfektbovgmxcnaszjnojyupdaxioujjpoqbjrpgycfcrf wsokgziaoodoyrihaayqbhitqivvkobhgrtnrdphrsvplezmex ehgmawwxsjlvssmlhfownirixcowquvvccjcygcsrnpjhewojk nysghskxqbsmyuqhyopajgqarzenooadoulvmvtfyntwhjghzx ikgalxzpnpfnuuhfrwdmbdzwcifiqgfarncelbvytblnxuvqqa drdepfnwpfdxfwkhcvkxvdyirxdoototnrxczmzorenycyfevs btvcbmzgcpaqipiitjuuzoanmcnugimkbhmfwnlydnpnezvais ujivwuxjogucqxkecitqiwfxmkyjkidgslbqgbawjuzbrlhwva odztdlfbwrmayglbwreyqnsrqmexkzayczrfmxjioxioduqznw ydkswcgacqzcocbijnfuxvrgmuccwpauvmorpxsrnttexwmhlt diqvqcpsglkhhftyyivsbimwmjuashtwsmrioidvunedsxbqiw jlhxiviewdmrzedsmucrpyevcyufrcccqlzygheekqylubfjvk amihjkfeswiwayhzwpjdwvtujqxobvydjjktvsxnqfjreqqcib fexbygrvwssxvcggvbaurqzahftakdbphaqhgjedbxczzkhwlh qexrfhxahjdkymlrtraxwewadvkktyrjcqdjxcjglorjacctvf tujpuonfagdtsfjvpjxapkpitrmynidgeoxyemfetkxnsikjrh jjtarmuemhorpshmslbypuiojaxtjqcvzvxtjrxwynpphxezif zabkqkmpdygfthcsalkzhkmzatwevgluimezwrozpwgkeicevo 
wmdadupwqauzurgnumxovhndsujbbuxxiaalvpjnrdolwwyqix eehujzosasoyrwarixitlzzbmvymoikuoroxqfptzftsctmmtu fgwehiahvqshkgybgqixlhdebfanrtiybedkofsjvksfssiyjq wuxzbzedoxywvzcajtfdecnxkgpsgalcxkbylhdagbyecbelwm paqexcmnxtpivmszkeipepqcvsfzgbnxcgbbiqqfjgngsghfkq uqhnucfadndtkfzojheznphcxakfhuxdmeqhiyhnlkiyshmdrs cghkkemvlvriyeopnypumagwaagmdzgifnupuimhdeqbigsvfh rtkzpkcxzhwfrdvlvrthywlqavzsseajzklqwpovwkboqyblpx spteivbhounofmaqcwfssefvuvtvgkuabqgjliqzcdphrpawoh oglvdhqyfyizzjphvbplctrsbkjdgxkxfysiflikjsmkebuzej mjdfbgqkjwkvvptoazzilkbzxfbtghcsqhatpqgaoqwkfryfqz qeltdkagdgqiagracjqijhyhrdzrlrsdxdwbqwjvezdegxhkgz srgqzxvaoitglrmhsefbzjddolcvviunbddcaycrjwzunnehrj krtnwjyygticgjflmimqbvocrdqvkjfxcykajlapgirpuxaifo yijnkdqaydmdaodmpmzpbgavvusxczochzptciublignwkznyb fchfxezrddsrfbrxuthqwsydhxniknjppquowvhaazrgckfxgm ncgofnluvvihlzxhqwdxwdzplbasygeoikcqznkxkuevudfmzk jvpknbmnvmvacfmgvotilgcpdysikuswpigclurghoiluxsrln zwtcnxahfnbyjtipxtkrbtfkezhwrukssdufaxoiksgtlqkkjw bmpjwukfsbzcwtiqaknpszjaswqfgbbkortmndshhtkdnuvnel ezknzdjqkstlchexuraozjjlmwhkmnvsmfimkteunzgrhkoder rfacspzzbnmwhbbrpmlviyuqsddgghxzoacgrdhsstobwrtlfg gogbeyehfnqemggomzttrlphnlbixgofuugbtnkyademjndymy tekinzwohvvvarpjuiwhiympkvcpvoopuazizvyisvdvpuejfc spaeemagevxsmrumbtjcdcxixmcdwhhqzjvdvvmzsjtfcntgic ileftdsyiqhpggybkwyyxthtalgtrrvzecfyhxyqpfhxmizygz wdsfwsqfniwlhcnmcwlaocgwaugzuoaqrtvqnnxdvvodxdrazf aohimjeukyilqbgnrvbqywloblrvltcnhlwvvcpfbxsryyfswi kugwlkjcfuxjheufzpiqxlppcoqjimtsiaqtkzyrvvafcwkdmu ulfjckzsvjepeppwibyiutgwyisllgfhrnruxsoucvjgkacuda dxwltutohgupoochkbzavdvhjfhocnqhkmsgjlwstshhglqsoq tmvotfwcvarnhcczknmgffypphcfbrxudtlyajcvjukqymrkzf qhkqwbzyhbrexuxiuztzucthuttndvsvcfnygnynqqunmtwjtp ipudwqwsebnyypdlpmapbqhveurcdmtnbnqagoumrhkpyqapcb edrmbxisznetahisjogdaxklmkbozdreilsjiabinhdprlhaan ecmqpadqocviietcnbcrlryogpcnsecygoqwotofykngqijfln wxfxnnorbivdgcuzyksmpqyezqmiwavuzctmqkgtsbybdsaddu sulqbkhpufprbouvdmhjhzkfcqyctdxlzkeawnqqufjvudsxrz gyzqgdieicjhpirvjpizfeeoaausxnsfotyuygagijnatgvcvg dckktmkphkczpsupmswmbgxogrxevsmzxylqlxhshltzeposjk hktebzxyftsrupqhhdeoxocqpghdyqqfdjmeklcqgwjcmbjvgq mdeovtwcywvoeyzsckdgckcnmqpyovoabsqwnoblkwcqubiwnm erygfmzwkntypusftfturfqtwmweiksodqwidvgpiaoxwgepoz lffbabnwhxiclmukwzffpqhdpdluvztggykgbzflxpnkdhuchc hwsqbhtodqqxzwxjfbimmhbbuhiojrsspkisudhxuxuvvueavo ojwskqzsgkmzeblowfrddncziztocodqxbijrjcztqazrmnntf swuwwfwrtyiwqhxzrqivselsdegtuaaowuluzjmthwrxdryuhj rbncusjaldalrziethnhcwdwuhnudwdvyszuliuylxmfwujrdx ziteepltmrrporinlvwitjfhobbyufxtnsytklmwedlsvvgise qmnvvcyxctcbortmkdaybebnzykhjdlzraxmevjgqnjfgftqkv 
xqsogzpzswruyfviijpjfbajsqhpoqxlgrbmsroknheomzwukl groibhakwoavbjodxgwlsluzzgaxdljlczvfiwqeksbmbprzxn mqahpappxucifhkdmszezjxaxysqzrfmhgvygkqffsqmzaposq srcruzqosrfxfpdanjldrsyhgxhylzogtqxpspfkhkhmblnrwa unuuuasdaffplafjpxaujhgrwkcjbalxohskhmqirvzfveomeq inyqguaifbjszzztlifbswyrbvyrheirtiiaeikjmvdnucgiml lfjkwlfwepaoiuwqwabglncoaysigftukceiplfuchildhdzhe gvtkjviedrjwlvbrdqekkhuvuxczxlefizpuvzyysjxfeywjqb udkoygncfmplrylisiksicbfkffgoyjkbvabdofjcuwuuheopq gavjffqnnhlxrouupykuhmqfinnpbefkecvmhmbvtmumaogrms lvhdbpqqguwogbqbpanqviervefdxuwirdnuuekbajrgkhhbhx refvvabdgyzeisjvndbzgbixjuhrvoqmvvjsykxekwiuprsewt dfxocgijzgapsxleploprblzvcsniqjovicaqmlqslhnkurafh pwicxghpvpiefdohdfwpxocednzupecedmiaspsohaumdlwjqu ypkctopsiezmkcbvctmujtugiargjjcjymltadmljnxupyptub ofxklhmepvprgndshexvrgkoczptulxkquvcdhiufyllnqfuwc rnjbelctfzecjuyeydohxvfkgsaopxqikbmonqjupnyzkyfkbv taqakztknkjfuuhikwbusqjqrvqzgtuztnafmvrbhbgdxpmhln ddfpvzknysgsubhwgvtawabffyuthiilloajnkwnfdhzgpvpko pjqqovqkrxszkepkpexlrcqzdxoymyobhetxbliskauvgjfxoe jfgzejyujkvxnedichtmbgovbxhguvldatfhfdboqwodbtofcj rgphdqekzzfmeihjpmpsdfrtiumyzrisxxzaqelpfsdjakvpzk kcpbvzxjyycgqzfrcvxpmehroielzdvjhmmcnjnlhqtzrbrtyq invqejyiwxnrjufvwsfmgocbotcfpdvxqspwbpfzpusypxvnsc zyrdbfxgmojjnbcdxfueflzxjoxhbpjdpcgshfyvtjfhkjmkoi ovuptffsmhhymyasqkypftymclvqvmzljtbcygunpdlbblwsxu jdpjrsupirbhdmcgrdmnqerbhuodmmzxrphijbzrtcbypdeggs tywkzehqhtejrxyahjbhawjduyjagrtaqrmrvtjfpnqikqiszl bbikfelohthctxtirrbayqqoaceiwdwxegkjmxztqjvkipsziv cgouuowyztdvshbctnzuhsfeeovypdttjhnfykfxfisxsvcnid jrvpwbdtzuxtoicbqanvzsgtsaownzzwqxnoyqiylhtzpxcfyq dzkltcljyaiaybzmrzezxrgssyqvfqlipxvkagwaigchhdtbdz aarjvjhlgmbtxsrsftbdvjjystbluenuhefepmpwbspamgutzv wvhgvzzynvfarogxsvjhrmbhmpnjjpgfmnlhpmhehmezamwshh bbueiiuxtdmaiynuheipiqdopeanyiucjqgtbcquffuqfkmnou exkhlbnmomwjqhzyacbsxixtyfdkusfyrrfctvqhhoszvuxxwy qvjpphusuombmdsuinraxyppzklwiixadgpunmpjadkphflrsc rrcihbtszdcwdicucsgtbjxoygtlxnnqfrzmsugtzlqetuyxmh rqqoequxbtmolrhkfzgmuhzklsfmpttillwpbsoclbsxszjaas muzlfnfmbwhwfthbkiwzmhcegwdswfkkzlxgacubzcxgxejhof icnkgvhlndqzoqlnylqtnrvmxstgbhmkkbwsydemjwlzoymnke gzxdluxedyopkashsqmyexxsylqnyargbpjnlitohhftjxacqp cwobonnfanhtwjkfyyormxbuqkttojktgyuwljbnzljvuvcuts niroeibxdpjpirnfnbopqpazkwxnsshfazuejveomndxeqcrrs iikkjuigjazrgbscibzmplbskfioycjhmtrxpaezafsiikksnl gexhwjogynkhuwclurnaqqhkyrwlkjwsntalfquddemxdolzfa zyqikpzhalsweisgvxwpcauozzemylnxjdhuuiduuxtahngdmc sqeogenkqlvdkhjtddciawfvyniequikmnbstoclczrmgaijfk rfizagokmeguqsjrkeimqkmhyujggoqzwayygmjsspplkacufm jxwxgxrpdxfwzdwxcfmnzgeqrorwjyiuvhrbeksjkzfjfeihlu 
gmpgmkyseyhztfnmxisqeovcgfhgrkfzyufnefhldokzvxltgd jmsgoalyiekndljkapphavykutkhmslxeffvhtvpxfedqpnqef ahaytwtdfgvsfcxlzeeutdzzgsouktbkcdivbczgkwzrawczdi vymxyspoozhpkluuhvwgciedafzegencdbzdtqrkpbbbmwwttu bvdiyfpajvgyzlzaovqifilglzejvyeyvjgwqxwzveyuqxxgsp ozzbilbowwmcukndgdaefvidsycpfxevyexgryvnwjsstfvzjw fototloxatwhpvnobgoyvkincbtydewiupyndnmfijmxebnhhb gdlqsqtlqwpmhjdhyiunodwccceqlltrqfjjxdwnbobkxgsypm ldrjfullkwxdqpkbyjexwilzskikixzvcqejkrvwqucglohmyo jwwuyqegdpdcmhstqfkndajfivwshuissemqwswzjbbwiwpbdb qgeaooxkigeqyywkptensopwkzsbcvevdkxrzubhahyygukxpo kicbeodyrhvycyizqhttrvbpthlfebuqlysppxpiekghkricye wrzzgviuamvwegxyxovowaafjkytpyxnqxmysusuiptmvqluei ickijvvhpkgmxwlluffnanctbalowpxfrhpddkkswqgvosgjxn yzccueefsbupiozxrckdwiuegkwmvwatveysicxbfusnkrndvz gtjcypnwciseeqicitghuobobliqqdrxxbzxqotuzoydgjhqcp xydbofowxfcpebqfygutbtjbypmhfqwfqagfhwdebfvhglnguh axcjycbnjgdfnuftbosetvmqdscqzyzbvbmvdniouothibdlpx rksdbvyflzdkcanovscggyuchefmpujihcokxorlnwvpwlftdh zmhtopxtbopnxypniobbzoxxfvimpnwozdkpujkyyclxacklql mqbkpihzuwmqnowxfqgqogsbdudnfuaumbgbjnaekowxeswkje azlubooeewyeqkgwnrjpvveuuimqsxvuxiqyyhecddhvpprfgc ueyaysjkldiiahqqfozjtcoaxgpqnxthbtizntmyywiadatkps tivkkusbnfyiocbybqtppslzuoanyrgubdglzyomfoutqxsuol lffxecngpmxxiycolcozqtqnoikgcauohbnodautosswsvmgza hpvxekgrqkrmazonptojoedhbwencdqjuljzvpqobjcckqrzmh jamohnmlcqquclglmdcetdnwhaozzagkbsbkhnymeoggbotnsv tlahjijyhiynvbiwoplmbpckveyqtqlnemwnwfndpmsmpakdsw rtludjaezvwnkaziqxndafrsthvemnaeinyoyasavongroohle mnlgfenckbrmfaafoyfgabwnjnbxwodjbopjvelfhdsnfustua bvbximlmjhcpsefjnapaixdcmiwgdsgenjcyvnmhwowpsdaheq iopnqbyohbgqguzkuxzgevucmpfnwlfezuspvqfetmuziwlctk izgebutghssmwtgqldiqkccedkcpoxzywhdxcyglqaapvihgmq xwubcxohoceqdbzgabgipzkpqgxxolpnjjpojfvxjbnmenufqb phccwsiwpyhfmtodhxicxtdkgizcpsfgzhiyzsuprdwfwmifmq hjlnvtxxwopbwqjhoizkzsqvzoihuwzdflscepzcfqechpjvzk izfywemgogcnkjacohunjzepdngokgzshgqdmdmalqqxaqaozw djvjabwhphpobwwsbjxnlkebiguiwtebeblhcjousdiubhocqn sbxyffgzpeutfzxsibcwvwbgsenggfvaitynygookljqmikuko qhltpdxcmfjhguaghbnypxjapvjapvohczcufzytgiamcdvlgi lxhuxxrixidnriptcuuapbkrpoukccsnzakxzdhwmlldvazzwt blumdkczwecrsbrcasfiqtvbzscyryrskognajownqnhugluyt eombqltujmsdferntryipmafvulhrmaxcmzsasolfhomnhbhya rqorvjmiqfuqcxfbrhwgsdphreoslpschiucsimknhdrgktxrr fjuwqnbhfoyatfipjcxvnmeqdkaykrrrcnqvatcghcichqrsvq nicsaieciovcixpysqrwyaygdhyuzvnpdpjfznjkeemmebkytd xrfxzifafgvsvbjgilusvayhmckydedaxixzrezylwqixbpgml ajlyqxbdxejaggidhbigztfrdcvskhdkrqjjnmmmsxmyexbnyj uaezrkdmcqwiapylyoxnapkpnqmremcamjbgteuvwqfxfgigui vwzfnnyzgcmieyrfeklziirnhztrfpzcozhbohbulpeppwwwii 
ctdorhtpqqvpqmhkorutahgcfjjdhoxjhcxajspclmrbaynprj kuqtwvcfakvavecteonwqaihclirabbmvrfupkbruxrrdumkia gacqjebtydvbqsuvmjfqdbnutsqhcyhiykbkqedqiyryrovfxd vcekxzdnhfoqqoctyvxclfaffttdbsgwvkjummhvtvllmoekle mwlpdtkywlrckootichrxcpjobzulkyaimpofbmbpffzvtudwb xvfmevnfqapqaacrohvaikipjdjdjhggclujhjozjgpmiufwba ymkgbtkmytvgzautldcbcnhtzrnfnrfmfssilcvmxssyumrfrv htjqpkicrxvzjarejeigqgylevzyarvjmgcbrmgkjbjtecznhh vzpvkuqkutdpcpwerpqxzcalxenwtufquvmgreslxvcanygenz dpbdaaknwfkbwgwiopmhakedmrduxtvaiygkyszuxjytrudgmq nmctrqlxmiqilagtkfljbivzcmwfuixjwbdqtongyfolhuerbp cdyzccoyhiihsfkvvelkklpyxwubpwrtbptdrjearojltugqyt aifricpcdgawcblvhegnhxbqlxkrnknqusjcwzhbhhyjllgusm hzmirxfeqvodljxuntvuxdexmpitjchsbtctqixhfnkqwkmmfi gclkzzbkummcgqvjlotkvyxhowraizkqbvddxgprtdvzvtkghd qebqlpmfswgcmjarozydqtjouehfnqidukvhbhotfuyueylszl ypejfznogaeogaybkclaxsxvmbvavulvmsettuizwoneroidqv dnnalcdiebdrwrjdkcxubvjraafifxdimqjxuoiypnqoebrqeq lhluylwftbcylprwollymcleqpfjglzrvnntalzwodubulylzl jnnvrgmyrumtnhgacgndcdhxfdkdqlqaydxrljqdeewrlcupkj tnncmufyzwkpyisxcegujmyfglhcarntgaxswdrvbdkblfyplg juvhzbsiftbsoivmcrrvpuybvmgtbtzlpuuoxnyciaxyksmold maxkesykncgppvljmjyknimmjyevnszbuynytmlgqrvfmjqysr lhbxukyainshopfbnapyhfpemenfehyrpzrlmplucgdqvkrilh juoaybgmilvgckhtxvkjpmrucmfwwsfhmvimwoagbwmggwzerk pjyiddwkbscgcqbkdaadiczviitjokvftunxzjjadogfejrjls nuworeykpmultqhingrygxmoerzwclqrhmgysgihveuoubxjjq krpwfupfssskjzwrzqyjxtpsjmvivfzfwqeemtlelfoxemofco ocjdwvprdnyeuxvybhuoofteezrtevjuxtztorntglyaivblev bscuxhtqczlltjgvewmrssdqunnvbrsckvzjeuzguktpvckcay tsqyknoxiprdtbysmcnlkjxdyvflxijsacrnpfkzwdcpeckqex doidugybtvjfpmhgzynlzjpebtglmnkrdsuxasbupkzfyinxib jhkynntuyhjkzmcvmfqnzhzaoakcxsfgbrgpfajdjuokgsguxy jyflyuliyicdreuztbbeflyvvgpdbnbknhxodiydtbgmfclaen elaeivmxbnmcaalxqoiorbpzpweawkpcvpidlvcmkpqmrcmhsu xmxnnmlrokbemytxdesisezlrqndzhzwtwljkzayjecxewukco sxtrimjxpieogamujwtlwcpzzwvwgzkywfrerabgkgwqikmrgf cfjuelqbhyaryxxpdqpfxbnvrvggoolqtxmziearcbicahtdyk kxlxufuclirybmvpmfuowyrfbtowxohhnshixdkiodhrscggia wgbonehcagshqgazqzccisirjctqidsgmtuzxedykwhaehzwhe arwiigmdywjqdvmxujbyjowroaaqwjuycqhkyvqwsznvuzuqky owmkpcmrskbojdhsqfngcffrabqvrctiyhsnjhfcrisanzsffg ljlsaovsjnuexvlrkwypaqztqnslsxrgieaiswadjxjiuwzety wtovmgkhrfgklpplxjjapuzyctvcxqatjqpywzfqglcratfado aulzsnspppfrlrhapgbwyijabkwikbzmvknnxffpwmghdqjuwl suvcwyoshatgmqszerglgcxpmdfvzbisxdwvckolkjtwalxged tlhsavvfrvibphhlcjvswhepdeccmghhtozvkvcdsmejtlwwwt ouasjfynhmwotretnqqrvkectxnpvmimgiesnfhwtdmpvqkkha bckfeffuuaiemqotkdasztvlksducmwerilxnqtjrbpdudyeiy whuuuemybrmzvdigbxxujqyyvseuymsvworsvfswwfvrifaldx 
irnqeovxwatvazayvciymtdpfrrcfpnogaenpbmnbhidiledpo dbihsnykrezeuggatxbhkfpvixgmdvdgzlntaodrufxonfoidp ppuekfcstfqwlrjbkjpqcjvbxihnqmcfbzmoeogxvywipfjcra svjpzixgvpuawvzijfysevsaekipmzqgwbvvkudhjxjhvisenq ysotusdchpdxvcbsxlmduvaeevmwccpcwdvqxyvgpygmaheasq donfssbhqflhhhkdzjduqtvwfxdkxxccnsigmjpcqakxjwaige fyzawezzqxyvblnjtzuidkkpitmkeuqlupnqwmrolplncywyzr gdbtuloiwucmfyeuochfquwchbcgzcxhhaadopmklqyrpeldgu lxpjbwkdelhdtqevuukgewwepnjcrpxeoonpmavrleugxacruo zamxfbnogeffkutzlfziwnnrtkrxdmmemydtcqjiwpnglggynh hkuubqgunjiznxaqqcjcmftzmehueublgyhjonedwofllfeejn gvszwgfdajzexicerssxxomcczhgfqvlnpmjwtoyfoccyggpay nypbatckzicwvqlkzhdoiiemkctttvritijwbmgcwiyrambatf qdpuqcyjvreoaazlwaxefvofnprornvhqldgpbrkuyauyziwch ahdooqfggwtcdlpgsejlqgjqahqkdssfbvwpnbxtysxdemmysx jidtbgcrqilinmfjbsnboltlqxycvschbfaclcvckgmauulxmy yalsmcrmgngiwjownbaifnqsnkmyiazgdkyroqdxflhdvxzizb reohydumecndkqpjhgbmdixklskmdjnupedohzalbpomfgxoma crkadxunlzyyvoebemagzcwoqdwnuipwbzyeyvsjuqjqgorkar tzvrplunaqxpnyqndoixzdnjvwxmizfbabsqopfpfdgubzieps bpxrysnvgvwozwprofiuwqxfkyeufvpikmzkfofnmbblascoyn iwdhbpifkpbzxnnzyspfibjjmjerxeeiajrcyzjkokjoazpyte dbgonuxrnxvthxcyzbajlovxevwtvrybtgpgapzqowjvtmttpt eckzbqxzkurkvmqnssetispsnkgifxejbolfgkeqexacjqpdlt wtnnnaavifumrwccbjohbsfcuoulshgqbteqveogliscgxgjiu tjpynloiziphzsdflylzeyjzdswjdegwpvwdinlhvcpwxsdisq jxpuysmudsajopgnupahyxknwjhztcqezhyzznvcfvovmukhlk qkkaxglhfejxkkejjfyeifbyapsnyexpqhrnpdwvjhuurzfcef gokjmmzhzxnxmdgesyjrvuypoqovsvablkkyxjhyjwxvzgbtem kzhjoxbfttavwlihlhsufbqdxrjannnxouicrjhmfjibxqkixd deevhdpqecftztpkyivhvcrfeoxqywtdayzidoajqicrbtdbcz jzbcehqdyoztuzttjxjmibuluxgazizkhcmnmcqksrdorzjcws oevirsiashitrsvdhhhytbrzqkyznwudcrmwjuwddgwwyubgdk gxlxydkwfxubaysouekqhnxgjxamfdwncinanxyswutwtonnsx gblfhwejjknhzrrmufluzhpvekjtzdqhedmmctvnfkueemtyte ssmjpstylvbbcifrujkrwpeqvieoixtcsfohzhgkejnhtuypdi hzznsuvwjfweholvvkfbwjnjsgeqwhafjzsbupzfwvjdjwbfgi ictxnmereczfjkeblasmhoiqtrowywehayeomkfqogvxqcadcs qkiycerraspfbqfhetsjjishgijgmnbczlccpvvsnkzoagwgzq qkyktgscpgsskrfmvvkqpxdoofummtcefcozjidypvsznxoiuy bjxexnjrzxmbbsgrtpawppshqhgerbeukeykrkbrjqulkacdrc zgttpkcyquzvolbpvubxnkpixzkaccedkyzckbaaxbxmmydive hiqyqoxdqbhugtufvejxhgaeunfxxadgiuebkbeaenwkgrsexb behelerqbqshwadabnbhphultbelfcmiiwmvafldvdmrgptjeu rtdnfxojivnxgytutvahaxmnpscichfvckihhztqwipcikxcfz lhwxulqxwugdpinxsvwnnvxexgowkvvvcsuxdkwbgegvouvgrt vgotkmbailveizwcybpwfvaltphoxahvgwoskpsscpykpwmnyd kfzmqsdaibapyjlmbvduqflqranfqljcskokcskkvlbtuphxmm rcrdtkfipvtyznioxmiiydvayrrfodriikndwsllqgmptwfqjn ajsvlqmcxdgqlqcatysemkmycfwhxfxyprtakifjllaybeywfs ', N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (40, N'02', N'Problem 02', N'<p>It''s only 9 AM, and already your day has been fucked up. You overslept your alarm, your coffee <br />
got cold as you listened to the traffic report, and the water in your shower was frigid. To make <br />
matters worse, as you got onto the highway you saw a horrible traffic jam. To try to make your <br />
day better, you have to figure out the fastest way to get to your exit.<br />
<br />
You have been given lanes, a int[] listing the speed (in feet per second) of cars traveling in <br />
each lane on the highway. You begin in lane 0, and your exit (located dist feet away) is also in <br />
lane 0. You are allowed to move into an adjacent lane only if you have been in your current lane <br />
for at least laneChange seconds; otherwise, you won''t have sufficient time to make sure there''s <br />
no accident! This also includes exiting; if you change lanes during your trip, you must return in <br />
lane 0 for at least laneChange seconds in order to safely exit the highway. If you do not change <br />
lanes during your trip, then you may exit the highway as soon as you reach your exit.<br />
<br />
With this information, return the least amount of time required for you to reach your exit. See <br />
the examples for further clarification. <br />
<br />
- lanes will contain between 1 and 50 elements, inclusive.<br />
- Each element of lanes will be between 0 and 528000, inclusive.<br />
- Element 0 of lanes will not be 0.<br />
- laneChange will be between 0 and 60, inclusive.<br />
- dist will be between 0 and 1000000000 (109), inclusive. <br />
<br />
Notes<br />
- Your return value must have an absolute or relative error less than 1e-9.<br />
&nbsp;<br />
Sample input:<br />
<br />
1 2<br />
2<br />
15<br />
<br />
1 2<br />
2<br />
6<br />
<br />
528000<br />
10<br />
1<br />
<br />
1 0 10<br />
4<br />
1000<br />
<br />
12 0 18 0 0 0 0 944 0 0 0 0 0 0 0 0 0 0 0 528000<br />
15<br />
1500<br />
<br />
Sample output:<br />
<br />
9.5<br />
6.0<br />
1.893939393939394E-6<br />
115.2<br />
123.33333333333334</p>', N'problem#02-input.txt', N'problem#02-output.txt', 10, 10, N'1 2
2
15

1 2
2
6

528000
10
1

1 0 10
4
1000

12 0 18 0 0 0 0 944 0 0 0 0 0 0 0 0 0 0 0 528000
15
1500

1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 528000
1
1000000000

1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
1
1000000000

528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000
1
1000000000 

1 527999 1 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000 528000
1
10000000

8114 4593 26656 10674 47815 40607 7358 9461 45816 22936 26299 22567 31836 25180 40656 13543 49324 3094 26027 26009 43079 10556 43881 21388 5580 15736 48306 14536 7515 44548 31872 7184 4353 13061 10152 38016 13890 4927 20248 620 9872 29388 35584
58
4004207 

206698 14991 452376 278898 484715 497052 329171 114189 43559 192506 146010 237016 290224 333109 184539 18000 253378 10109 217053 371081 97114 55338 429989 195426 444067 209147 231223 288787 380231 40532 36122 479281 475875 380850 230179
51
235202255 

20290 222647 252970 399051 163080 343631 26593 374857 418627 221312 177886 527214 36355 393512 224090 206412 427479 85610 82969 366189 136274 70355 255641 252620 461433 318987 37888 386338 212566 527770 323284 232856 222417 468606 524260 277849 284237 443205 17059 67217 136518 194945 486783 172873 60458 182873 271637
10
826620484 

287684 371376 343542 27936 275107 509445 27756 221179 362418 426887 433412 127348 408172 427659 366009 50336 305210 510342 411587 454206 359301 425713 411372 319321 97255 128819 524599 29721 109904 523939 99811 289940 259667 335705 210228 427127 317150 237984 12658 43920 29224
23
389867270

218478 404757 317314 366471 21729 143100 157459 59618
59
899058026

6
20
1000000000 

1 2
2
6 

1
1
1000000000  	
   	 
1
0
1000000000 	

9 6 5 7 4 8 5 5 2 8 3 5 4 3 2 6 7 6 8 2 4 3 1 5 2 9 4 5 3 5 5 4 5 4 8 1 2 7 7 1 0 1 1 5 1 7 5 0 7 4
8
89 

331090 227858 2130 266904 250571 68661
34
483689686', N'9.5
6.0
1.893939393939394E-6
115.2
123.33333333333334
1991.939356060606
1.0E9
1893.939393939394
20.93942602164019
326.9202806122449
673.940883247564
1688.476944845926
877.3860770053686
2275.5355633132967
1.6666666666666666E8
6.0
1.0E9
1.0E9
9.88888888888889
1460.9009211996738')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (41, N'03', N'Problem 03', N'<p>You are given a list of people, and you must divide them into as many groups as possible. <br />
Each person must belong to exactly one group, and each group must contain one or more people. <br />
Friends must not be split apart, so if two people are friends, they must be in the same group.<br />
<br />
You will be given a String[] names, each element of which is the name of a single person. You <br />
will also be given a String[] friends, each element of which is formatted as &quot;&lt;name1&gt; &lt;name2&gt;&quot; <br />
(quotes for clarity only), meaning that &lt;name1&gt; and &lt;name2&gt; are friends. Each &lt;name1&gt; and &lt;name2&gt; <br />
will exist in names. Return the maximum number of groups that can be formed.<br />
<br />
- names will contain between 1 and 50 elements, inclusive.<br />
- Each element of names will contain between 1 and 20 uppercase letters (''A''-''Z''), inclusive.<br />
- All elements in names will be distinct.<br />
- friends will contain between 0 and 50 elements, inclusive.<br />
- Each element of friends will be formatted as &quot;&lt;name1&gt; &lt;name2&gt;&quot; (quotes for clarity only), <br />
&nbsp; where both &lt;name1&gt; and &lt;name2&gt; are elements of names.<br />
&nbsp;&nbsp;&nbsp; <br />
Sample Input:<br />
<br />
{&quot;BOB&quot;, &quot;HARRY&quot;, &quot;ALICE&quot;, &quot;SALLY&quot;}<br />
{&quot;BOB ALICE&quot;, &quot;HARRY SALLY&quot;}<br />
<br />
{&quot;BOB&quot;, &quot;HARRY&quot;, &quot;ALICE&quot;, &quot;SALLY&quot;}<br />
{&quot;BOB HARRY&quot;, &quot;HARRY ALICE&quot;, &quot;ALICE SALLY&quot; }<br />
<br />
{&quot;CHUCK&quot;}<br />
{&quot;CHUCK CHUCK&quot;,&quot;CHUCK CHUCK&quot;,&quot;CHUCK CHUCK&quot;}<br />
<br />
Sample Output:<br />
<br />
2<br />
1<br />
1</p>', N'problem#03-input.txt', N'problem#03-output.txt', 10, 10, N'{"BOB", "HARRY", "ALICE", "SALLY"}
{"BOB ALICE", "HARRY SALLY"}

{"BOB", "HARRY", "ALICE", "SALLY"}
{"BOB HARRY", "HARRY ALICE", "ALICE SALLY"}

{"CHUCK"}
{"CHUCK CHUCK", "CHUCK CHUCK", "CHUCK CHUCK"}

{"A"}
{}

{"A"}
{"A A"} 	

{"A"}
{"A A", "A A", "A A", "A A", "A A", "A A", "A A", "A A", "A A"}

{"A", "B"}
{}

{"A", "B"}
{"A A"}

{"A", "B"}
{"A B"}

{"A", "B"}
{"A B", "B B"}

{"A", "B", "C"}
{}	

{"A", "B", "C"}
{"A C"}

{"A", "B", "C"}
{"A C", "B C"}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{"AA AB", "AB AC", "AC AD", "AD AE", "AE AF", "AF AG", "AG AH", "AH AI", "AI AJ", "AJ AK", "AK AL", "AL AM", "AM AN", "AN AO", "AO AP", "AP AQ", "AQ AR", "AR AS", "AS AT", "AT AU", "AU AV", "AV AW", "AW AX", "AX AY", "AY BA", "BA BB", "BB BC", "BC BD", "BD BE", "BE BF", "BF BG", "BG BH", "BH BI", "BI BJ", "BJ BK", "BK BL", "BL BM", "BM BN", "BN BO", "BO BP", "BP BQ", "BQ BR", "BR BS", "BS BT", "BT BU", "BU BV", "BV BW", "BW BX", "BX BY", "BY AA"}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{"AI AB", "AI AC", "AI AD", "AI AE", "AI AF", "AI AG", "AI AH", "AI AI", "AI AJ", "AI AK", "AI AL", "AI AM", "AI AN", "AI AO", "AI AP", "AI AQ", "AI AR", "AI AS", "AI AT", "AI AU", "AI AV", "AI AW", "AI AX", "AI AY", "AI BA", "AI BB", "AI BC", "AI BD", "AI BE", "AI BF", "AI BG", "AI BH", "AI BI", "AI BJ", "AI BK", "AI BL", "AI BM", "AI BN", "AI BO", "AI BP", "AI BQ", "AI BR", "AI BS", "AI BT", "AI BU", "AI BV", "AI BW", "AI BX", "AI BY", "AI AA"}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{"AA AC", "AB AD", "AC AE", "AD AF", "AE AG", "AF AH", "AG AI", "AH AJ", "AI AK", "AJ AL", "AK AM", "AL AN", "AM AO", "AN AP", "AO AQ", "AP AR", "AQ AS", "AR AT", "AS AU", "AT AV", "AU AW", "AV AX", "AW AY", "AX BA", "AY BB", "BA BC", "BB BD", "BC BE", "BD BF", "BE BG", "BF BH", "BG BI", "BH BJ", "BI BK", "BJ BL", "BK BM", "BL BN", "BM BO", "BN BP", "BO BQ", "BP BR", "BQ BS", "BR BT", "BS BU", "BT BV", "BU BW", "BV BX", "BW BY", "BX AA", "BY AB"}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{"AA AD", "AB AE", "AC AF", "AD AG", "AE AH", "AF AI", "AG AJ", "AH AK", "AI AL", "AJ AM", "AK AN", "AL AO", "AM AP", "AN AQ", "AO AR", "AP AS", "AQ AT", "AR AU", "AS AV", "AT AW", "AU AX", "AV AY", "AW BA", "AX BB", "AY BC", "BA BD", "BB BE", "BC BF", "BD BG", "BE BH", "BF BI", "BG BJ", "BH BK", "BI BL", "BJ BM", "BK BN", "BL BO", "BM BP", "BN BQ", "BO BR", "BP BS", "BQ BT", "BR BU", "BS BV", "BT BW", "BU BX", "BV BY", "BW AA", "BX AB", "BY AC"}

{"AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL", "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL", "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY"}
{"AA AR", "AB AS", "AC AT", "AD AU", "AE AV", "AF AW", "AG AX", "AH AY", "AI BA", "AJ BB", "AK BC", "AL BD", "AM BE", "AN BF", "AO BG", "AP BH", "AQ BI", "AR BJ", "AS BK", "AT BL", "AU BM", "AV BN", "AW BO", "AX BP", "AY BQ", "BA BR", "BB BS", "BC BT", "BD BU", "BE BV", "BF BW", "BG BX", "BH BY", "BI AA", "BJ AB", "BK AC", "BL AD", "BM AE", "BN AF", "BO AG", "BP AH", "BQ AI", "BR AJ", "BS AK", "BT AL", "BU AM", "BV AN", "BW AO", "BX AP", "BY AQ"}

{"AAAAAAAAAAAAAAAAAAAA", "AAAAAAAAAABBBBBBBBBB", "AAAAAAAAAACCCCCCCCCC", "AAAAAAAAAADDDDDDDDDD", "AAAAAAAAAAEEEEEEEEEE", "AAAAAAAAAAFFFFFFFFFF", "AAAAAAAAAAGGGGGGGGGG", "AAAAAAAAAAHHHHHHHHHH", "AAAAAAAAAAIIIIIIIIII", "AAAAAAAAAAJJJJJJJJJJ", "AAAAAAAAAAKKKKKKKKKK", "AAAAAAAAAALLLLLLLLLL", "AAAAAAAAAAMMMMMMMMMM", "AAAAAAAAAANNNNNNNNNN", "AAAAAAAAAAOOOOOOOOOO", "AAAAAAAAAAPPPPPPPPPP", "AAAAAAAAAAQQQQQQQQQQ", "AAAAAAAAAARRRRRRRRRR", "AAAAAAAAAASSSSSSSSSS", "AAAAAAAAAATTTTTTTTTT", "AAAAAAAAAAUUUUUUUUUU", "AAAAAAAAAAVVVVVVVVVV", "AAAAAAAAAAWWWWWWWWWW", "AAAAAAAAAAXXXXXXXXXX", "AAAAAAAAAAYYYYYYYYYY", "BBBBBBBBBBAAAAAAAAAA", "BBBBBBBBBBBBBBBBBBBB", "BBBBBBBBBBCCCCCCCCCC", "BBBBBBBBBBDDDDDDDDDD", "BBBBBBBBBBEEEEEEEEEE", "BBBBBBBBBBFFFFFFFFFF", "BBBBBBBBBBGGGGGGGGGG", "BBBBBBBBBBHHHHHHHHHH", "BBBBBBBBBBIIIIIIIIII", "BBBBBBBBBBJJJJJJJJJJ", "BBBBBBBBBBKKKKKKKKKK", "BBBBBBBBBBLLLLLLLLLL", "BBBBBBBBBBMMMMMMMMMM", "BBBBBBBBBBNNNNNNNNNN", "BBBBBBBBBBOOOOOOOOOO", "BBBBBBBBBBPPPPPPPPPP", "BBBBBBBBBBQQQQQQQQQQ", "BBBBBBBBBBRRRRRRRRRR", "BBBBBBBBBBSSSSSSSSSS", "BBBBBBBBBBTTTTTTTTTT", "BBBBBBBBBBUUUUUUUUUU", "BBBBBBBBBBVVVVVVVVVV", "BBBBBBBBBBWWWWWWWWWW", "BBBBBBBBBBXXXXXXXXXX", "BBBBBBBBBBYYYYYYYYYY"}
{"AAAAAAAAAAAAAAAAAAAA AAAAAAAAAARRRRRRRRRR", "AAAAAAAAAABBBBBBBBBB AAAAAAAAAASSSSSSSSSS", "AAAAAAAAAACCCCCCCCCC AAAAAAAAAATTTTTTTTTT", "AAAAAAAAAADDDDDDDDDD AAAAAAAAAAUUUUUUUUUU", "AAAAAAAAAAEEEEEEEEEE AAAAAAAAAAVVVVVVVVVV", "AAAAAAAAAAFFFFFFFFFF AAAAAAAAAAWWWWWWWWWW", "AAAAAAAAAAGGGGGGGGGG AAAAAAAAAAXXXXXXXXXX", "AAAAAAAAAAHHHHHHHHHH AAAAAAAAAAYYYYYYYYYY", "AAAAAAAAAAIIIIIIIIII BBBBBBBBBBAAAAAAAAAA", "AAAAAAAAAAJJJJJJJJJJ BBBBBBBBBBBBBBBBBBBB", "AAAAAAAAAAKKKKKKKKKK BBBBBBBBBBCCCCCCCCCC", "AAAAAAAAAALLLLLLLLLL BBBBBBBBBBDDDDDDDDDD", "AAAAAAAAAAMMMMMMMMMM BBBBBBBBBBEEEEEEEEEE", "AAAAAAAAAANNNNNNNNNN BBBBBBBBBBFFFFFFFFFF", "AAAAAAAAAAOOOOOOOOOO BBBBBBBBBBGGGGGGGGGG", "AAAAAAAAAAPPPPPPPPPP BBBBBBBBBBHHHHHHHHHH", "AAAAAAAAAAQQQQQQQQQQ BBBBBBBBBBIIIIIIIIII", "AAAAAAAAAARRRRRRRRRR BBBBBBBBBBJJJJJJJJJJ", "AAAAAAAAAASSSSSSSSSS BBBBBBBBBBKKKKKKKKKK", "AAAAAAAAAATTTTTTTTTT BBBBBBBBBBLLLLLLLLLL", "AAAAAAAAAAUUUUUUUUUU BBBBBBBBBBMMMMMMMMMM", "AAAAAAAAAAVVVVVVVVVV BBBBBBBBBBNNNNNNNNNN", "AAAAAAAAAAWWWWWWWWWW BBBBBBBBBBOOOOOOOOOO", "AAAAAAAAAAXXXXXXXXXX BBBBBBBBBBPPPPPPPPPP", "AAAAAAAAAAYYYYYYYYYY BBBBBBBBBBQQQQQQQQQQ", "BBBBBBBBBBAAAAAAAAAA BBBBBBBBBBRRRRRRRRRR", "BBBBBBBBBBBBBBBBBBBB BBBBBBBBBBSSSSSSSSSS", "BBBBBBBBBBCCCCCCCCCC BBBBBBBBBBTTTTTTTTTT", "BBBBBBBBBBDDDDDDDDDD BBBBBBBBBBUUUUUUUUUU", "BBBBBBBBBBEEEEEEEEEE BBBBBBBBBBVVVVVVVVVV", "BBBBBBBBBBFFFFFFFFFF BBBBBBBBBBWWWWWWWWWW", "BBBBBBBBBBGGGGGGGGGG BBBBBBBBBBXXXXXXXXXX", "BBBBBBBBBBHHHHHHHHHH BBBBBBBBBBYYYYYYYYYY", "BBBBBBBBBBIIIIIIIIII AAAAAAAAAAAAAAAAAAAA", "BBBBBBBBBBJJJJJJJJJJ AAAAAAAAAABBBBBBBBBB", "BBBBBBBBBBKKKKKKKKKK AAAAAAAAAACCCCCCCCCC", "BBBBBBBBBBLLLLLLLLLL AAAAAAAAAADDDDDDDDDD", "BBBBBBBBBBMMMMMMMMMM AAAAAAAAAAEEEEEEEEEE", "BBBBBBBBBBNNNNNNNNNN AAAAAAAAAAFFFFFFFFFF", "BBBBBBBBBBOOOOOOOOOO AAAAAAAAAAGGGGGGGGGG", "BBBBBBBBBBPPPPPPPPPP AAAAAAAAAAHHHHHHHHHH", "BBBBBBBBBBQQQQQQQQQQ AAAAAAAAAAIIIIIIIIII", "BBBBBBBBBBRRRRRRRRRR AAAAAAAAAAJJJJJJJJJJ", "BBBBBBBBBBSSSSSSSSSS AAAAAAAAAAKKKKKKKKKK", "BBBBBBBBBBTTTTTTTTTT AAAAAAAAAALLLLLLLLLL", "BBBBBBBBBBUUUUUUUUUU AAAAAAAAAAMMMMMMMMMM", "BBBBBBBBBBVVVVVVVVVV AAAAAAAAAANNNNNNNNNN", "BBBBBBBBBBWWWWWWWWWW AAAAAAAAAAOOOOOOOOOO", "BBBBBBBBBBXXXXXXXXXX AAAAAAAAAAPPPPPPPPPP", "BBBBBBBBBBYYYYYYYYYY AAAAAAAAAAQQQQQQQQQQ"}

{"EETJLKLMBHSNEKEAVA", "RUINXGD", "VXPMVO", "TV", "WNPUFPSGNGIHEII", "RDWCFMOMESX", "RMNJKXVKHJKMOW", "OGWNU", "GRAXY", "NYXXHHRYOEVEVXRY", "PHY", "NR", "ETDXUDKDEAIJH", "HYGK", "ROLIHJXVQPIPTO", "YFEFEOPMJJHXMFX", "CFCLAPWVMMJMLPEYT", "DVSLKLQLPIQQNW", "FGEWYTF"}
{"PHY WNPUFPSGNGIHEII", "HYGK NYXXHHRYOEVEVXRY", "YFEFEOPMJJHXMFX RMNJKXVKHJKMOW", "PHY VXPMVO", "DVSLKLQLPIQQNW PHY", "ROLIHJXVQPIPTO WNPUFPSGNGIHEII", "OGWNU EETJLKLMBHSNEKEAVA", "DVSLKLQLPIQQNW NR", "OGWNU NR", "EETJLKLMBHSNEKEAVA EETJLKLMBHSNEKEAVA", "YFEFEOPMJJHXMFX RUINXGD", "TV VXPMVO", "NYXXHHRYOEVEVXRY ETDXUDKDEAIJH", "NR NR", "RUINXGD RMNJKXVKHJKMOW", "ETDXUDKDEAIJH DVSLKLQLPIQQNW", "GRAXY OGWNU"}

{"DEUOVYLBNJYKAJWOVK", "UGRVOHEKSPHMX", "KWJJNSRQRQJJ", "E", "DBQSLE", "PAYGYFQRGYQQXEK", "CIMVMYHVXB", "IABFMGQNVNMJQH", "AD", "EREVUFGEIEASLIVYGY", "XKIEWTIOYML", "ICSX", "FO", "TDPGNHUEGK", "RELUSLPQ", "DJXJFAWTKF", "INAYGQYQEXGXXUV", "KGMELMBFSTLUYHY", "KSQGBVBKRLYJKOYVKFVP", "VLGOKWYSWHFSRDCG", "QGRFKX", "DPP", "HKWGJIQHA", "RPHBVLLL", "H", "VWQWVFJJO", "BSFHSMPVTUKYYXN", "VIIAXPXMWGSC", "LGJDC", "FICGYDPOAKVANGUN", "LHOQCATFPYPIJLCOACVN", "TUJRHSDLEOHPPB", "CXSFKICLGWHF", "QRFGDYTAWOTMOVX", "J", "Q", "IPVECVKO", "GIQR", "DBUXVQONBPJ", "IBRIKHWOG", "LUXWUEHHKJLXG", "VDMRFJUMPYMAPMRU"}
{"FICGYDPOAKVANGUN VWQWVFJJO", "CXSFKICLGWHF HKWGJIQHA", "QGRFKX DEUOVYLBNJYKAJWOVK", "Q KWJJNSRQRQJJ", "FO Q", "KGMELMBFSTLUYHY IPVECVKO", "DBUXVQONBPJ DEUOVYLBNJYKAJWOVK", "FO DPP", "KGMELMBFSTLUYHY KWJJNSRQRQJJ", "RPHBVLLL DEUOVYLBNJYKAJWOVK", "UGRVOHEKSPHMX E", "LUXWUEHHKJLXG ICSX", "Q LHOQCATFPYPIJLCOACVN", "KGMELMBFSTLUYHY J", "DBQSLE TDPGNHUEGK", "E DPP", "RPHBVLLL BSFHSMPVTUKYYXN", "FICGYDPOAKVANGUN ICSX", "VDMRFJUMPYMAPMRU INAYGQYQEXGXXUV", "DEUOVYLBNJYKAJWOVK RPHBVLLL", "GIQR CXSFKICLGWHF", "LUXWUEHHKJLXG QRFGDYTAWOTMOVX", "VIIAXPXMWGSC LHOQCATFPYPIJLCOACVN", "FICGYDPOAKVANGUN AD"}

{"UIKVMKNJYSCK", "RPVWDXOSJUHUAXBEOOH", "ATNWIPFUR"}
{"RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "UIKVMKNJYSCK UIKVMKNJYSCK", "RPVWDXOSJUHUAXBEOOH RPVWDXOSJUHUAXBEOOH", "UIKVMKNJYSCK ATNWIPFUR", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "RPVWDXOSJUHUAXBEOOH RPVWDXOSJUHUAXBEOOH", "ATNWIPFUR ATNWIPFUR", "ATNWIPFUR ATNWIPFUR", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "RPVWDXOSJUHUAXBEOOH RPVWDXOSJUHUAXBEOOH", "ATNWIPFUR UIKVMKNJYSCK", "ATNWIPFUR ATNWIPFUR", "UIKVMKNJYSCK RPVWDXOSJUHUAXBEOOH", "UIKVMKNJYSCK RPVWDXOSJUHUAXBEOOH", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "ATNWIPFUR RPVWDXOSJUHUAXBEOOH", "RPVWDXOSJUHUAXBEOOH ATNWIPFUR", "ATNWIPFUR ATNWIPFUR", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "ATNWIPFUR ATNWIPFUR", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "ATNWIPFUR UIKVMKNJYSCK", "ATNWIPFUR RPVWDXOSJUHUAXBEOOH", "UIKVMKNJYSCK RPVWDXOSJUHUAXBEOOH", "RPVWDXOSJUHUAXBEOOH ATNWIPFUR", "ATNWIPFUR RPVWDXOSJUHUAXBEOOH", "RPVWDXOSJUHUAXBEOOH UIKVMKNJYSCK", "UIKVMKNJYSCK UIKVMKNJYSCK", "RPVWDXOSJUHUAXBEOOH RPVWDXOSJUHUAXBEOOH", "ATNWIPFUR RPVWDXOSJUHUAXBEOOH"}

{"NUIHFSVSFTV", "BFIPUDYMMXTHBSHJJOY", "YKLBRVAMICEAHIWYOU", "SA", "VBRPFULPSWAOCT", "B", "MR", "BRDDXXVYTXRLAYEYAVWB", "JWSB", "IJERIETFCMBWNKAKC", "FNOCJRIVKNPGMJCTSRE", "ILLRHYHVQFP", "IYRQOOG", "LTYUEPENVGMIQHKSGR", "EGFWQAQW", "O", "PUMHJTEMH", "DEYICIBIBVUMBDI", "EQNFUSEMSHBMWDPJFPA", "JUUIMWOQ", "VKHIGMXTEVAXVL", "CNEOUCFFTRGHFLAAPO", "IWWEAAHRMXUITQMXX", "RUAATQJWBWC", "MPONBWCEPACIVRW", "ECQEARMXANBMAW", "MHDQEYTQKYFDRRAN", "EBPAV"}
{"CNEOUCFFTRGHFLAAPO DEYICIBIBVUMBDI", "VBRPFULPSWAOCT ILLRHYHVQFP", "SA EQNFUSEMSHBMWDPJFPA", "EQNFUSEMSHBMWDPJFPA JUUIMWOQ", "LTYUEPENVGMIQHKSGR PUMHJTEMH", "MHDQEYTQKYFDRRAN IWWEAAHRMXUITQMXX", "O LTYUEPENVGMIQHKSGR", "LTYUEPENVGMIQHKSGR EGFWQAQW", "PUMHJTEMH RUAATQJWBWC", "DEYICIBIBVUMBDI NUIHFSVSFTV", "VBRPFULPSWAOCT O", "VBRPFULPSWAOCT VKHIGMXTEVAXVL", "VKHIGMXTEVAXVL JWSB", "IWWEAAHRMXUITQMXX YKLBRVAMICEAHIWYOU", "IJERIETFCMBWNKAKC EGFWQAQW", "CNEOUCFFTRGHFLAAPO B", "ILLRHYHVQFP RUAATQJWBWC", "EQNFUSEMSHBMWDPJFPA VBRPFULPSWAOCT", "DEYICIBIBVUMBDI PUMHJTEMH", "VKHIGMXTEVAXVL ECQEARMXANBMAW", "JWSB EBPAV", "EBPAV FNOCJRIVKNPGMJCTSRE", "MPONBWCEPACIVRW YKLBRVAMICEAHIWYOU", "BRDDXXVYTXRLAYEYAVWB RUAATQJWBWC", "EGFWQAQW IYRQOOG"}

{"SXJNBDJSOECHIE", "WNHXRAOT", "SNCPCJHDWXXDEEKJAJLE", "DIRFRUGHOYKQUPYJNI", "JWDMBJ", "YVLTQACLG", "FRSE", "LBUE", "TDDMGS", "EEYODSN", "YREAE", "QCVBU", "VCBMJIOTUHAHMCJWFR", "LMBEKULNEKMFHSJ", "GRL", "NJSJCGGFMTNKSA", "NTUHGEYGNHN", "DHAFBFQMKHJEFETSMOD", "IQBTCNICNSSW", "JHWQBGYRBQKTPRYOHF", "GFO", "INCLIYQBJKLVACEIBRYY", "CHKG", "V", "WPDVHYOPY", "QSJOEOHNVJRJA", "GVFXQNINGKGCOTP", "IMBLWOVPLSTWF", "JRT", "UBKAQRFST", "KTFTSCARCCMXBOIU", "RBFPQ", "PMPH", "K", "PINNONLIHCVMIXN", "JPEYDFFCTE", "YSTXSHKEUOVYLSRLYTRN", "PAHXVRDUQKQ", "FORMDRCNW"}
{"LBUE JHWQBGYRBQKTPRYOHF", "TDDMGS EEYODSN", "PMPH PAHXVRDUQKQ", "KTFTSCARCCMXBOIU GFO", "GFO CHKG", "IQBTCNICNSSW WNHXRAOT", "IQBTCNICNSSW DHAFBFQMKHJEFETSMOD", "IQBTCNICNSSW JHWQBGYRBQKTPRYOHF", "WPDVHYOPY SNCPCJHDWXXDEEKJAJLE", "V IMBLWOVPLSTWF", "DHAFBFQMKHJEFETSMOD WPDVHYOPY", "KTFTSCARCCMXBOIU IMBLWOVPLSTWF", "K YVLTQACLG", "IQBTCNICNSSW YVLTQACLG", "YREAE GFO", "SNCPCJHDWXXDEEKJAJLE JWDMBJ", "VCBMJIOTUHAHMCJWFR LBUE", "QCVBU IMBLWOVPLSTWF", "DIRFRUGHOYKQUPYJNI INCLIYQBJKLVACEIBRYY", "DIRFRUGHOYKQUPYJNI JPEYDFFCTE", "JWDMBJ TDDMGS", "KTFTSCARCCMXBOIU YVLTQACLG", "FORMDRCNW JHWQBGYRBQKTPRYOHF", "KTFTSCARCCMXBOIU NTUHGEYGNHN", "IMBLWOVPLSTWF WPDVHYOPY", "V YSTXSHKEUOVYLSRLYTRN", "JWDMBJ EEYODSN", "IMBLWOVPLSTWF JWDMBJ"}

{"H", "EBGPEQYOLSAMISUFMDT", "VBVUKJOPHHTDV", "BRODKJIOPA", "WOMDW", "IHXUFTRGRQGFKO", "CMXK", "NNJAWXLRQUGS", "VCISDMBJBPDUSBXH"}
{"CMXK CMXK", "WOMDW NNJAWXLRQUGS", "VBVUKJOPHHTDV VCISDMBJBPDUSBXH", "IHXUFTRGRQGFKO WOMDW", "NNJAWXLRQUGS VBVUKJOPHHTDV", "VBVUKJOPHHTDV IHXUFTRGRQGFKO", "WOMDW VCISDMBJBPDUSBXH", "VCISDMBJBPDUSBXH NNJAWXLRQUGS", "NNJAWXLRQUGS BRODKJIOPA", "VBVUKJOPHHTDV VBVUKJOPHHTDV", "CMXK CMXK", "CMXK VCISDMBJBPDUSBXH", "BRODKJIOPA IHXUFTRGRQGFKO", "NNJAWXLRQUGS CMXK", "VCISDMBJBPDUSBXH NNJAWXLRQUGS", "VBVUKJOPHHTDV EBGPEQYOLSAMISUFMDT", "EBGPEQYOLSAMISUFMDT CMXK", "VCISDMBJBPDUSBXH IHXUFTRGRQGFKO", "NNJAWXLRQUGS CMXK", "VBVUKJOPHHTDV VBVUKJOPHHTDV", "CMXK H", "EBGPEQYOLSAMISUFMDT CMXK", "EBGPEQYOLSAMISUFMDT VBVUKJOPHHTDV", "NNJAWXLRQUGS NNJAWXLRQUGS", "VBVUKJOPHHTDV VBVUKJOPHHTDV", "NNJAWXLRQUGS VCISDMBJBPDUSBXH", "BRODKJIOPA CMXK", "BRODKJIOPA BRODKJIOPA", "IHXUFTRGRQGFKO VCISDMBJBPDUSBXH", "NNJAWXLRQUGS EBGPEQYOLSAMISUFMDT", "BRODKJIOPA NNJAWXLRQUGS", "VBVUKJOPHHTDV H", "CMXK EBGPEQYOLSAMISUFMDT", "CMXK CMXK", "H NNJAWXLRQUGS", "NNJAWXLRQUGS EBGPEQYOLSAMISUFMDT", "VBVUKJOPHHTDV CMXK"}

{"MMIOHYQV", "CUPYCHTVXTGFO", "VOY", "PTPBTHHEGYTOG", "WO", "RFCGCDGXAQ", "FFE", "J", "CRQKTJP", "PYRUXKBGWBDCUP", "WRLNAYTNQKPCMQFXTHX", "YVJBSPKIJOEMXWI", "OU", "NLYJVCUTFERDBT", "RCBHYPXKXYPIFWEMWMKX", "IMHFUUCAWIWWRSSLCMYE", "QOKUQLDYUSYXLASOIYU", "FYECOIUXPNHPRNATUK", "UTNWONFK", "XVEALFVNNJJYUFARF", "GPWJNHTDPJC", "JTFSH", "GATYNQIERIWGOEPSFSYD", "SBYJS", "OQUDISMUI", "DTUDRLJPKUA", "VFRTIJLJDRJVYIVYLWCJ", "PP", "IXAF", "TQIMMGVBPRYRLX", "ILFQQ", "CKOQCMM", "DDXIWL", "IAOSWYQXOT", "UNLRWDASSLWM", "EYJ", "FT", "PTEOQJBNEW", "LLPCGBBKSVCVYBJRLLYB", "XFGTCOGWCNRDFJTP", "BEHV", "MVUQNYMNMOPCUVVX", "KSIBSTVWSLIBONUTEPW", "UCGTKAAEQG", "JHYVEPFDQTAQ", "MWRTPEEWA", "OPOUNKKVQPLUJVFVCU", "OJOFGWLMCJYB"}
{"KSIBSTVWSLIBONUTEPW XVEALFVNNJJYUFARF", "KSIBSTVWSLIBONUTEPW FFE", "OQUDISMUI WRLNAYTNQKPCMQFXTHX", "BEHV IAOSWYQXOT", "PYRUXKBGWBDCUP MVUQNYMNMOPCUVVX", "WRLNAYTNQKPCMQFXTHX JTFSH", "ILFQQ FYECOIUXPNHPRNATUK", "UNLRWDASSLWM XFGTCOGWCNRDFJTP", "PYRUXKBGWBDCUP SBYJS", "RFCGCDGXAQ TQIMMGVBPRYRLX", "CRQKTJP OQUDISMUI", "XVEALFVNNJJYUFARF UNLRWDASSLWM", "JHYVEPFDQTAQ BEHV", "FYECOIUXPNHPRNATUK VOY", "LLPCGBBKSVCVYBJRLLYB EYJ", "PTEOQJBNEW PTEOQJBNEW", "TQIMMGVBPRYRLX GPWJNHTDPJC", "RCBHYPXKXYPIFWEMWMKX MVUQNYMNMOPCUVVX", "ILFQQ EYJ", "MWRTPEEWA XFGTCOGWCNRDFJTP", "DDXIWL DTUDRLJPKUA", "PTPBTHHEGYTOG CRQKTJP", "UTNWONFK QOKUQLDYUSYXLASOIYU", "MVUQNYMNMOPCUVVX IAOSWYQXOT", "FT FFE", "GATYNQIERIWGOEPSFSYD PYRUXKBGWBDCUP", "CKOQCMM MMIOHYQV", "CUPYCHTVXTGFO UCGTKAAEQG", "UNLRWDASSLWM WRLNAYTNQKPCMQFXTHX", "EYJ FFE", "WRLNAYTNQKPCMQFXTHX IXAF", "XFGTCOGWCNRDFJTP UTNWONFK"}

{"IFR", "K", "PQTDORRDDVAOFVSXTEJ", "VMBWEAQX", "BLGHWQLJTXFLOXOXJNLD", "RFHR", "QDVFFKLDC", "QWVPMPP", "FKVXUEUMDHKLOASVHTFQ", "YHCTADOLD", "TPSAIQTFIFU", "QKCHRWDVVON", "VFDQLALTATMFWHDMXNP", "KUNVNDRVXAKNTJJRER", "YMEVVIHEQURQMPTPRSU", "BTBCC", "G", "KI", "EECVMXNSWWTRHC", "MYTKOSPKRIFFWIHVALI", "KK", "NUHDCEBRTCQNXCISU", "IQJ", "LFMNPPSPPOFRLV", "MYXYQCGGFGLXUSWUELB", "WRFMDEJCJ", "LYKGR", "GUGOVHPSXYHYJSHOFFO", "RWADUCSDT", "GPCVNUIHEQXITCQ", "SBXHB", "TGSQYQMOXJIMPXF"}
{"YHCTADOLD BTBCC", "TPSAIQTFIFU LFMNPPSPPOFRLV", "KI MYTKOSPKRIFFWIHVALI", "GUGOVHPSXYHYJSHOFFO TPSAIQTFIFU", "VMBWEAQX KI"}

{"XVEEOJQAA", "FWOXVBJAVLDBPSAPVUB", "SXEJJJLCGXJBNDJ", "DIBNMUOSS", "BQDFKCTWJO", "ILWIJKKGGJVJ", "WMGTSRP", "VDBMCTNLJBORJ", "KRWEKVINDRICCSRKLOU", "VROJTWWJNNXMVBGG", "PUGMTVS", "AALMVTLGDNQNJXCVNTWD", "ELBBT", "SWMGUKNRITKQ", "OBVMEXBKANDJX", "NNCEONUUQS", "NF", "ATBVNYEMFOOUMJ"}
{"DIBNMUOSS VROJTWWJNNXMVBGG", "OBVMEXBKANDJX ATBVNYEMFOOUMJ", "ELBBT ATBVNYEMFOOUMJ", "AALMVTLGDNQNJXCVNTWD VROJTWWJNNXMVBGG", "NF KRWEKVINDRICCSRKLOU", "SWMGUKNRITKQ VROJTWWJNNXMVBGG", "NNCEONUUQS PUGMTVS", "FWOXVBJAVLDBPSAPVUB SWMGUKNRITKQ", "ATBVNYEMFOOUMJ ATBVNYEMFOOUMJ", "BQDFKCTWJO BQDFKCTWJO", "KRWEKVINDRICCSRKLOU XVEEOJQAA", "KRWEKVINDRICCSRKLOU NF", "KRWEKVINDRICCSRKLOU SXEJJJLCGXJBNDJ", "DIBNMUOSS FWOXVBJAVLDBPSAPVUB", "KRWEKVINDRICCSRKLOU WMGTSRP", "KRWEKVINDRICCSRKLOU FWOXVBJAVLDBPSAPVUB", "VDBMCTNLJBORJ XVEEOJQAA", "VDBMCTNLJBORJ DIBNMUOSS", "WMGTSRP ELBBT", "PUGMTVS SWMGUKNRITKQ", "WMGTSRP PUGMTVS", "VDBMCTNLJBORJ ATBVNYEMFOOUMJ", "WMGTSRP KRWEKVINDRICCSRKLOU", "VROJTWWJNNXMVBGG NNCEONUUQS", "NNCEONUUQS FWOXVBJAVLDBPSAPVUB", "NF BQDFKCTWJO", "NF BQDFKCTWJO", "FWOXVBJAVLDBPSAPVUB OBVMEXBKANDJX", "KRWEKVINDRICCSRKLOU VROJTWWJNNXMVBGG", "NNCEONUUQS AALMVTLGDNQNJXCVNTWD", "ILWIJKKGGJVJ ELBBT", "NNCEONUUQS NF", "NNCEONUUQS ATBVNYEMFOOUMJ", "BQDFKCTWJO ATBVNYEMFOOUMJ", "ATBVNYEMFOOUMJ ILWIJKKGGJVJ", "FWOXVBJAVLDBPSAPVUB WMGTSRP", "SXEJJJLCGXJBNDJ VROJTWWJNNXMVBGG", "KRWEKVINDRICCSRKLOU DIBNMUOSS", "OBVMEXBKANDJX PUGMTVS", "ELBBT ATBVNYEMFOOUMJ", "WMGTSRP SXEJJJLCGXJBNDJ", "NNCEONUUQS OBVMEXBKANDJX", "ELBBT SXEJJJLCGXJBNDJ"}

{"TKPW", "USMYCD", "AHDFLKWRHXYK", "BQCMTTRTJRPLTVGTXOUE", "CVINIBIDYEINHSETGDHA", "K", "GRQEOPUACQTNWA", "AIGJP", "WNWNLTUBHFNURCS", "F", "HPJPYVYXLSGWBN", "QMTASLTMXRPEF", "KTYDPAJOQCWXNUSDNXQY", "TKOGPHGOIKLYN", "I", "JBKDPL", "EDDSAACJOJNS", "HW", "CUCQULQMVKW", "SBHTBGSQQFOBFSAS", "NYUOGAJCVRNHQB", "SXVVAKWWYJTEFLMPAST", "IBQIJFRQKYW", "TMKRULA", "FUTSTUNXWQO", "FVFLFNF", "JKKSFEKCMNBXQVG", "YXFRXEX", "CXCFNPDNQHVMC", "SBYDORWXLGXROKPGA", "TTPLIQIGLNPTAAKSJ", "RMMLGNCILHTIPFKIPO"}
{"SBYDORWXLGXROKPGA IBQIJFRQKYW", "SBYDORWXLGXROKPGA CXCFNPDNQHVMC", "JBKDPL GRQEOPUACQTNWA", "WNWNLTUBHFNURCS KTYDPAJOQCWXNUSDNXQY", "K F", "USMYCD JKKSFEKCMNBXQVG", "KTYDPAJOQCWXNUSDNXQY QMTASLTMXRPEF", "K EDDSAACJOJNS", "EDDSAACJOJNS AHDFLKWRHXYK", "TTPLIQIGLNPTAAKSJ USMYCD", "TMKRULA JKKSFEKCMNBXQVG", "TKOGPHGOIKLYN AHDFLKWRHXYK", "RMMLGNCILHTIPFKIPO SBHTBGSQQFOBFSAS", "SBYDORWXLGXROKPGA I", "JKKSFEKCMNBXQVG TTPLIQIGLNPTAAKSJ", "CVINIBIDYEINHSETGDHA TKPW", "GRQEOPUACQTNWA YXFRXEX", "AHDFLKWRHXYK SXVVAKWWYJTEFLMPAST", "JKKSFEKCMNBXQVG AHDFLKWRHXYK"}

{"HHVLQGQNCE", "PEGVRHCGYPPU", "YGWCD", "GXLQT", "NUKNQISUOQBNYKIXTGAY", "QRKHCFTJ", "NVOLXXONBCBRIDVSP", "HWNOVSPTPUUQTNNEYYJS", "VOODPKMBBYOAUCHIV", "MLUSIOAFMFNWUPCWGNFV", "MBMUC", "SUSMFSXPCLQCQ", "LEPCL", "QMBIPLIF", "UYOJKA", "YIVN", "FWSYOLLKCLVERUE", "DQRYYWWYJNQLYUQUN", "DXTYJVXU", "BTKDKLNPOVIOTAV", "LUROWUYUOWXDOGD", "LHTGRAIXQXEKBGFFYRFF", "LMIBNRVMOWAAQUKNCSY", "BFJYXMOIINWVLH", "XDMQDXJGA", "CQPHQNR", "LPUCFHFAJINJWME", "BCWBFUVAJVR", "ACATJBUHIJLUTRX"}
{"HHVLQGQNCE LPUCFHFAJINJWME", "ACATJBUHIJLUTRX ACATJBUHIJLUTRX", "VOODPKMBBYOAUCHIV BCWBFUVAJVR", "LPUCFHFAJINJWME XDMQDXJGA", "FWSYOLLKCLVERUE LHTGRAIXQXEKBGFFYRFF", "BTKDKLNPOVIOTAV NUKNQISUOQBNYKIXTGAY", "QRKHCFTJ DQRYYWWYJNQLYUQUN", "BCWBFUVAJVR GXLQT", "VOODPKMBBYOAUCHIV LEPCL", "MBMUC LEPCL", "VOODPKMBBYOAUCHIV BTKDKLNPOVIOTAV", "HWNOVSPTPUUQTNNEYYJS FWSYOLLKCLVERUE", "DQRYYWWYJNQLYUQUN LEPCL", "MBMUC LHTGRAIXQXEKBGFFYRFF", "GXLQT XDMQDXJGA", "DXTYJVXU YIVN", "XDMQDXJGA BFJYXMOIINWVLH", "VOODPKMBBYOAUCHIV YIVN", "CQPHQNR QRKHCFTJ", "HHVLQGQNCE VOODPKMBBYOAUCHIV", "HWNOVSPTPUUQTNNEYYJS LUROWUYUOWXDOGD", "QMBIPLIF LUROWUYUOWXDOGD", "BFJYXMOIINWVLH DQRYYWWYJNQLYUQUN", "QMBIPLIF YGWCD", "PEGVRHCGYPPU QMBIPLIF", "YGWCD NUKNQISUOQBNYKIXTGAY", "VOODPKMBBYOAUCHIV UYOJKA", "QRKHCFTJ LUROWUYUOWXDOGD", "FWSYOLLKCLVERUE BTKDKLNPOVIOTAV", "BTKDKLNPOVIOTAV QRKHCFTJ", "FWSYOLLKCLVERUE CQPHQNR", "NVOLXXONBCBRIDVSP NUKNQISUOQBNYKIXTGAY", "BTKDKLNPOVIOTAV BFJYXMOIINWVLH", "QRKHCFTJ QRKHCFTJ"}

{"AIFVQOHBTPQEYWUHG", "SLIDYXTWWECFQ", "JTLE", "FH", "XTFR", "BCWBINAHJGDBDMIEMDL", "LH", "KEEAGBG", "VHQRJ", "PXIPGLWSQNS", "DJCGSOG", "PLBIADQHLBYU", "RPCJTG", "SXBQ", "CVLJMQHXH", "C", "DVIGEBIURQCFXOKJH", "IPWXBWLKFBYRN", "XJOCXLNEFJIPKOPMCS", "OBWHQAGRLXCWPCXK", "ULG", "KDFEIFLBJ", "OWVHWOCASBCLFQDO", "TJMMWBUPDBTYBRNLG", "GNSGODKFOUS", "RXMQUOMEBXP", "OXNXJDABEUP", "VWNDK", "H", "RYMBMXOQPNFRSB", "KMHSO", "XBFERENNDQN", "SBGAKQ", "LNMPNUSHMRLHUIPRQ", "HWHYKAOEFVBFGGUST", "HPAOIVPDHPPWGTA"}
{"PLBIADQHLBYU VHQRJ", "SLIDYXTWWECFQ ULG", "SBGAKQ PXIPGLWSQNS", "SBGAKQ GNSGODKFOUS", "KMHSO H", "PLBIADQHLBYU BCWBINAHJGDBDMIEMDL", "TJMMWBUPDBTYBRNLG CVLJMQHXH", "XTFR DJCGSOG", "DVIGEBIURQCFXOKJH SXBQ", "PXIPGLWSQNS JTLE", "SLIDYXTWWECFQ IPWXBWLKFBYRN", "OWVHWOCASBCLFQDO BCWBINAHJGDBDMIEMDL", "PLBIADQHLBYU C", "HWHYKAOEFVBFGGUST DJCGSOG", "SBGAKQ XJOCXLNEFJIPKOPMCS", "LNMPNUSHMRLHUIPRQ VHQRJ", "C OXNXJDABEUP", "XBFERENNDQN VWNDK", "PLBIADQHLBYU HWHYKAOEFVBFGGUST", "HPAOIVPDHPPWGTA CVLJMQHXH", "HWHYKAOEFVBFGGUST RYMBMXOQPNFRSB", "KMHSO AIFVQOHBTPQEYWUHG", "DJCGSOG LH", "HPAOIVPDHPPWGTA SBGAKQ", "XTFR IPWXBWLKFBYRN", "PXIPGLWSQNS SLIDYXTWWECFQ", "KMHSO OWVHWOCASBCLFQDO", "FH KEEAGBG", "CVLJMQHXH LNMPNUSHMRLHUIPRQ", "SBGAKQ DVIGEBIURQCFXOKJH", "OXNXJDABEUP DVIGEBIURQCFXOKJH", "KMHSO XTFR", "OBWHQAGRLXCWPCXK DJCGSOG", "DJCGSOG VHQRJ", "HWHYKAOEFVBFGGUST H", "LH BCWBINAHJGDBDMIEMDL", "HWHYKAOEFVBFGGUST XJOCXLNEFJIPKOPMCS", "H SLIDYXTWWECFQ", "VWNDK CVLJMQHXH", "VWNDK C", "SLIDYXTWWECFQ SXBQ", "VWNDK PXIPGLWSQNS", "AIFVQOHBTPQEYWUHG BCWBINAHJGDBDMIEMDL", "JTLE KEEAGBG", "DVIGEBIURQCFXOKJH SBGAKQ"}

{"GKSDUTMIQMMCYWKKXW", "VE", "GFUCWPJQVCFK", "UCJQD", "XTLVFX", "KKXVGNOVXSDYOB", "IGSTNDTYX", "IOGQEUYNKTTBGJGUF", "AGEA", "VPX", "RRIPSMVM", "VOFMKDDWOSYEO", "CTKVSPCFUSH", "TSHRLYNGMXTQVTQX", "JROVV", "KHONJFGILXTATULADFAK", "XQPOYUGBKFKCTXF", "XJKANKLSYIVVUI", "LJHFO", "LB", "AMCOUTGVJKJXB", "XCNAHMBVWN", "EWKCHUCMFOWQTJ", "SLBPVDNONBTV", "YRAB", "WJOEREYJOF", "LTMPULGYQNFYRVRHRR", "OLPHIPDSRLEV", "AJNSIKGOWCNINOMLXMN", "XNN", "IY", "VFT", "TBTHHHN"}
{"XQPOYUGBKFKCTXF XTLVFX", "XCNAHMBVWN XTLVFX", "IY AJNSIKGOWCNINOMLXMN", "XTLVFX LB", "XTLVFX VOFMKDDWOSYEO", "KKXVGNOVXSDYOB OLPHIPDSRLEV", "TSHRLYNGMXTQVTQX GKSDUTMIQMMCYWKKXW", "IOGQEUYNKTTBGJGUF VPX", "KHONJFGILXTATULADFAK KHONJFGILXTATULADFAK", "IGSTNDTYX CTKVSPCFUSH", "VE EWKCHUCMFOWQTJ", "TBTHHHN IY", "RRIPSMVM LTMPULGYQNFYRVRHRR", "XJKANKLSYIVVUI XTLVFX", "LB XQPOYUGBKFKCTXF", "TBTHHHN XCNAHMBVWN", "VE XCNAHMBVWN"}

{"QUDTEMOP", "XVSDLRFPI"}
{"XVSDLRFPI XVSDLRFPI", "XVSDLRFPI QUDTEMOP", "XVSDLRFPI QUDTEMOP", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP XVSDLRFPI", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI QUDTEMOP", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP QUDTEMOP", "QUDTEMOP QUDTEMOP", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP XVSDLRFPI", "QUDTEMOP QUDTEMOP", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI QUDTEMOP", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP QUDTEMOP", "QUDTEMOP XVSDLRFPI", "QUDTEMOP QUDTEMOP", "XVSDLRFPI QUDTEMOP", "XVSDLRFPI QUDTEMOP", "QUDTEMOP QUDTEMOP", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "QUDTEMOP QUDTEMOP", "QUDTEMOP XVSDLRFPI", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI QUDTEMOP", "XVSDLRFPI XVSDLRFPI", "XVSDLRFPI QUDTEMOP", "QUDTEMOP XVSDLRFPI"}

{"LG", "IHCPCHEVPHPTJHK", "USEANIBDPMWCLU", "X", "VINFPXCJ", "TGKXGCOL", "MNWIVDFLUNOOYGIANCUC", "POHYCG", "SK", "DRSWTMS", "VBRDXSDFGNIGCCF", "LCOYLMIJIORE", "UVBFPAFSBRIFOWUCCXOO", "VOCIUPLEULMDJUHT", "F", "LMMJLIWTV", "WCNFNGBCFJFWO", "KWOYBXBTCCVEQBSKT", "WNAM"}
{"WCNFNGBCFJFWO UVBFPAFSBRIFOWUCCXOO", "SK X", "X TGKXGCOL", "KWOYBXBTCCVEQBSKT X", "LMMJLIWTV UVBFPAFSBRIFOWUCCXOO", "POHYCG VOCIUPLEULMDJUHT", "LCOYLMIJIORE WNAM", "POHYCG WNAM"}

{"MM", "BGUKPSAYJBKJS", "KKEITXCKOWPQOL", "NUJMNJKNNIREEWGWL", "WKCIHEBCBHLPHE", "FIAPJOGWQSSUUCVKW", "PXBLTOGULMDYMIEWP", "VYQFR", "NMHOLBBOFOHCQTBSMSFC"}
{"FIAPJOGWQSSUUCVKW PXBLTOGULMDYMIEWP", "KKEITXCKOWPQOL FIAPJOGWQSSUUCVKW", "BGUKPSAYJBKJS BGUKPSAYJBKJS", "NMHOLBBOFOHCQTBSMSFC NUJMNJKNNIREEWGWL"}

{"BOTNKL", "WEYTPXNFOA", "AGGVYMOYIMG", "BGXLVL", "KCBDWWCYPNB", "QRGAQWFPWJCGO", "LKHI", "DPN", "GDCWIMJUXBTSOMMANFIX", "XPLUCUYLVNK", "YWPGPLPEJX", "SIQWPHEBBNFBWM", "DMEQPU", "DBQTBSDAFUHNXNHDPLB", "JHQPATUPGLMMXCLKQ", "WX", "FWFIWDJSKBOGUSWHRL", "DFYFDSIGAXOHEXI", "WHYH", "SRALCXAARB", "DNRERFKFE", "MRFMWNTEGBMOK", "EIFOULHSPSVKIHPWUO", "THQOMSJHOUQ", "R", "XKARWY", "GUQRCDUSXNCYHKRY", "SRID", "DLMOJKMXRVRHKSOC", "OPMS", "TRBWLIHG", "CKLLIYIKL", "CLKXJWRUREQEWGMEWTUE", "QYVWBKRUNGVBGF", "L", "HC", "JUCR", "UYQ", "RPXVDU", "QXOHQDUYTMMPKKRSS", "QGNKVCBSNW", "KRJFR", "XAWF"}
{"FWFIWDJSKBOGUSWHRL DNRERFKFE", "DBQTBSDAFUHNXNHDPLB WX", "OPMS THQOMSJHOUQ", "UYQ YWPGPLPEJX", "XPLUCUYLVNK XKARWY", "GUQRCDUSXNCYHKRY GUQRCDUSXNCYHKRY", "HC HC", "LKHI THQOMSJHOUQ", "GDCWIMJUXBTSOMMANFIX QYVWBKRUNGVBGF", "TRBWLIHG QXOHQDUYTMMPKKRSS"}

{"DTK", "DHQARMGOGAIAFVACYWS", "KNXYCUO", "EIBSDROXUGADYBBI", "WLELMEJUHHEF", "FP", "AGRVLGNTRXFFAD", "KUSQA", "GWINIUIJU", "WYRCXCELOKA", "IYABTHHDGUNDXKKHLTEY", "BHPVUEA", "RPFAI", "RCWREVIFNPEEDKLPJ", "MCKXX", "AGGOUAN", "PYF", "OEBW", "VUULVIITGIRYMNPFXBHI", "PDKVUJMXY", "WIJWIRGFSXKBLNNM", "LFQLFLSCISJRHPAMJ"}
{}

{"QHFNJSPTVFQXKFIDE", "WVRFKGJDONUY", "F", "LSBD", "DORRVBUKMUDXKA", "HTMKLPUNPUEJTM", "E", "QLKPAAMFNBD", "IXETJILCSNS", "PIFPPOOKAOLEMN", "FUNCEMEFRHSI", "NJDKEMJAMGBW", "COAHDIKAMVNAFJ", "TXTCBNIA", "WSTNLEUUVHVLMCNOKOP", "UPAYPSUASPWEC", "MXAQROLVNX", "OTY", "WKSULPLYSTBWJHJXFPJ", "CRWNKRHA", "PSNYYUUHVELXQIHSC", "VORIHG", "YWPHAAKAPYNQSMI", "GCFT", "WKK", "TWMFYRAFQNNMS", "LLKJDOWCYAUHOACLDTNW", "AEUJPUM", "QMNHCUKJMRECOECMCYHX", "IGIYACOENVHKIIHOPVVW", "XKXK", "OLBL", "DNHLJHVSWSN"}
{"HTMKLPUNPUEJTM NJDKEMJAMGBW", "FUNCEMEFRHSI DORRVBUKMUDXKA", "VORIHG LLKJDOWCYAUHOACLDTNW", "IGIYACOENVHKIIHOPVVW CRWNKRHA", "NJDKEMJAMGBW YWPHAAKAPYNQSMI", "GCFT WSTNLEUUVHVLMCNOKOP", "PIFPPOOKAOLEMN LSBD"}

{"UYNPKWQSBHLPEUWBOSS", "XPFXMLCYOIHTU", "YUSVEANBCCQEPWJFFD", "SSJGTOINXWDDRXKUPHME", "VHNKYAVFPYG", "XEKAUOGCLKCDNITFJ", "X", "L", "Q", "LTUEHVJNKQJ", "QKWFVJRLPTOFWSHDUS", "GSRATRHPBGNC", "BULTNXFK", "QGKSIMTFLYKQG", "BOV", "PIWXTD", "BFKXWJC", "IMBAWVWLFDVAREPEF", "VJCYCYLGRVKU", "NFODYQXKUEVFBRUTAJM", "NYEYLRMQPHGSQ", "VQHDAXAQXNDODPQSTVVJ", "KOLUAJMDXWTROGFBPGWA", "LKNLOILFFHQBSRVULJSG", "PWMRJITWGRUYG"}
{"VJCYCYLGRVKU GSRATRHPBGNC", "VJCYCYLGRVKU BFKXWJC", "NYEYLRMQPHGSQ VQHDAXAQXNDODPQSTVVJ", "NYEYLRMQPHGSQ GSRATRHPBGNC", "LTUEHVJNKQJ BFKXWJC", "KOLUAJMDXWTROGFBPGWA PIWXTD", "BFKXWJC SSJGTOINXWDDRXKUPHME", "XEKAUOGCLKCDNITFJ QGKSIMTFLYKQG", "SSJGTOINXWDDRXKUPHME QGKSIMTFLYKQG", "XPFXMLCYOIHTU BOV"}

{"AKQPUMMTSWNLYKHJH", "HPVFGHDOY", "IEYDJPXUR", "DWNYDEBLPXNURPIJKSMI", "I", "MEKCSBWTRAH", "ICACIKVIBJTRJ", "THNQMACEJWMQLYHOHS", "NEQGXPWH", "LCHAXM", "NAXIUEVUPDFNQJOJTYH", "OAQ", "R", "K", "TQGPQIAWAXGQPM", "NBBNJUADAXSGPSVD", "YHAXKSRTQSXVOSPL", "GHRMFEJDUBBBTKRX", "PATENIMCB", "Q", "YJNWLYMV", "AIBCUNMKKKKAE", "UUMQJGFIMOOEDBFJYDS", "DWX", "IANOMJAUEQ", "QIM", "NONPONMJTMLTGPTBWRL", "JAYWTHW", "OITQXNOLSHEWA", "NHTEAVDAI", "SEV", "ALTOI"}
{"NEQGXPWH DWX", "JAYWTHW ALTOI", "TQGPQIAWAXGQPM GHRMFEJDUBBBTKRX", "AIBCUNMKKKKAE OITQXNOLSHEWA", "TQGPQIAWAXGQPM OAQ", "OITQXNOLSHEWA AKQPUMMTSWNLYKHJH", "OITQXNOLSHEWA OAQ", "AIBCUNMKKKKAE R", "AKQPUMMTSWNLYKHJH QIM", "DWNYDEBLPXNURPIJKSMI ICACIKVIBJTRJ", "YHAXKSRTQSXVOSPL THNQMACEJWMQLYHOHS", "YHAXKSRTQSXVOSPL NBBNJUADAXSGPSVD", "OITQXNOLSHEWA OITQXNOLSHEWA", "HPVFGHDOY IEYDJPXUR", "NONPONMJTMLTGPTBWRL ALTOI", "AKQPUMMTSWNLYKHJH DWNYDEBLPXNURPIJKSMI", "NAXIUEVUPDFNQJOJTYH QIM", "YHAXKSRTQSXVOSPL OITQXNOLSHEWA", "TQGPQIAWAXGQPM OAQ", "NBBNJUADAXSGPSVD NEQGXPWH", "NHTEAVDAI NAXIUEVUPDFNQJOJTYH", "YJNWLYMV LCHAXM", "OAQ AIBCUNMKKKKAE", "YJNWLYMV THNQMACEJWMQLYHOHS", "QIM NAXIUEVUPDFNQJOJTYH", "QIM MEKCSBWTRAH", "MEKCSBWTRAH OITQXNOLSHEWA", "NONPONMJTMLTGPTBWRL GHRMFEJDUBBBTKRX", "Q JAYWTHW", "IANOMJAUEQ IANOMJAUEQ", "NONPONMJTMLTGPTBWRL I", "NONPONMJTMLTGPTBWRL GHRMFEJDUBBBTKRX", "IANOMJAUEQ K", "NAXIUEVUPDFNQJOJTYH IEYDJPXUR"}

{"CILAFVRHBNVNY", "NMOQKXEEBKEAWVUAJ", "UUYLOFARQRK", "LACKC", "YBDWJIYAEOMLB", "RKQLDFDNUCMJ", "DGIXXADRLREVJUAVHTO", "WFCTGGIQD", "ACAPBIIHLNJYT", "BO", "VJQKYGYKMDKLXV", "CHAWPWAQ", "PNUARCPFNR", "UJHEDH", "BYYTLNSEYDQPWTXDABT", "SNUARCQOOLG", "QCKL", "BOWGGCYVFFAVSYU", "SBDYKDECEMKGSLGUM", "KIITNH", "XLLQKJWRUQELDOMB", "EXEILYQWLGUUSCNNLH", "VVCBXOMGC", "KJBQBNYV", "RMBNDMWARCOHUK", "HNRHMQXSISJLTQRVC", "IXIOGOKLCRMFARDDSPS", "EOSIIFCWLAKMQVVUN", "TUVOENMFPMJO", "FSQPOPOBIKKCKQLRFC", "TAQ", "VW", "OINOXNNO", "NJIVUJIVKVX", "UHJSNWGALLAV", "PCKKOM", "QBDHRNFGE", "JGXJRCKTJXOJNVU"}
{"KJBQBNYV XLLQKJWRUQELDOMB", "BOWGGCYVFFAVSYU CHAWPWAQ", "UHJSNWGALLAV VVCBXOMGC", "KJBQBNYV VVCBXOMGC", "WFCTGGIQD BYYTLNSEYDQPWTXDABT", "PCKKOM PCKKOM", "UHJSNWGALLAV HNRHMQXSISJLTQRVC", "FSQPOPOBIKKCKQLRFC QBDHRNFGE", "EOSIIFCWLAKMQVVUN CILAFVRHBNVNY", "ACAPBIIHLNJYT IXIOGOKLCRMFARDDSPS", "PCKKOM ACAPBIIHLNJYT", "QCKL CHAWPWAQ", "CILAFVRHBNVNY LACKC", "UHJSNWGALLAV SNUARCQOOLG", "YBDWJIYAEOMLB BO", "OINOXNNO CILAFVRHBNVNY", "VW ACAPBIIHLNJYT", "RKQLDFDNUCMJ ACAPBIIHLNJYT", "SBDYKDECEMKGSLGUM UUYLOFARQRK", "RMBNDMWARCOHUK NJIVUJIVKVX", "BYYTLNSEYDQPWTXDABT DGIXXADRLREVJUAVHTO", "BOWGGCYVFFAVSYU HNRHMQXSISJLTQRVC", "VVCBXOMGC NJIVUJIVKVX", "NMOQKXEEBKEAWVUAJ TUVOENMFPMJO", "PNUARCPFNR UHJSNWGALLAV", "RKQLDFDNUCMJ PCKKOM", "QCKL PCKKOM", "XLLQKJWRUQELDOMB RMBNDMWARCOHUK", "KJBQBNYV VVCBXOMGC"}

{"BX", "CCVUUY", "CDJFSGJEKH", "DPCLT", "WTDRDQBRTS", "DWDFTRARYOYBXMUONG", "GPKHRHIDBI", "LSJASWSTACXNYKDJVI", "GITLXYUYVYCJTT", "TDWISW", "QWKWOSGPJTNJDCQNDWJK"}
{"GITLXYUYVYCJTT DPCLT", "DWDFTRARYOYBXMUONG CCVUUY", "LSJASWSTACXNYKDJVI WTDRDQBRTS", "WTDRDQBRTS CDJFSGJEKH", "WTDRDQBRTS TDWISW", "CDJFSGJEKH GITLXYUYVYCJTT", "CCVUUY DPCLT", "BX CDJFSGJEKH", "DPCLT BX", "LSJASWSTACXNYKDJVI GPKHRHIDBI", "GPKHRHIDBI CCVUUY", "GITLXYUYVYCJTT BX", "BX DPCLT", "TDWISW WTDRDQBRTS", "WTDRDQBRTS DPCLT", "CCVUUY QWKWOSGPJTNJDCQNDWJK", "DPCLT WTDRDQBRTS", "CDJFSGJEKH GITLXYUYVYCJTT", "DWDFTRARYOYBXMUONG TDWISW", "DWDFTRARYOYBXMUONG TDWISW", "CCVUUY CDJFSGJEKH", "CCVUUY GPKHRHIDBI", "GITLXYUYVYCJTT GPKHRHIDBI", "DWDFTRARYOYBXMUONG TDWISW", "CDJFSGJEKH QWKWOSGPJTNJDCQNDWJK", "GPKHRHIDBI WTDRDQBRTS", "GPKHRHIDBI CDJFSGJEKH", "LSJASWSTACXNYKDJVI LSJASWSTACXNYKDJVI", "GPKHRHIDBI BX", "QWKWOSGPJTNJDCQNDWJK DPCLT", "CCVUUY CCVUUY", "CCVUUY DWDFTRARYOYBXMUONG", "TDWISW CDJFSGJEKH", "WTDRDQBRTS QWKWOSGPJTNJDCQNDWJK", "DPCLT GPKHRHIDBI", "DPCLT WTDRDQBRTS", "WTDRDQBRTS CDJFSGJEKH", "BX CCVUUY", "GITLXYUYVYCJTT WTDRDQBRTS", "GPKHRHIDBI CCVUUY", "TDWISW LSJASWSTACXNYKDJVI", "GPKHRHIDBI QWKWOSGPJTNJDCQNDWJK"}

{"YMVBBGM", "KNQWIQS", "TRIRNOI", "JIKWYYHTDSYSNQC", "KVSVE", "QTCDYORAYFDHOTSIXTV", "SUDJKEUG", "XDYWOKPSHXG", "IUQEIVUSHVODCNBAC", "WJEUPHAGMQPBUISTF", "XXIANRQOQD", "LSASARNMFO", "NCUWIBNGKOCXWAHDXE", "HIDXCH", "EGX", "J", "SVHLTJUJK", "ALB", "JHYGTCFOEWHEADTQ", "OOUKQMMBSFHCHFBQ", "GEISNJNO", "IQEWGKYTKTEDCUWOS", "JEKYKOOVIKRHYSULG", "JSXKXVEPFTEKUASU", "CUVI", "MKYRAJAGX", "ASGQOL", "SBUWEXXMR", "BOYRXFFXLE", "DFNSVQGOWSAHBYP", "EYGYYKFV", "FSIJGILYLUTHKGMUDAXQ", "CLJYJ", "YVBMRPISRULGYESNMOBS", "YASROMQA", "KSV", "OYRLRAQPTMXTQDRRB", "AUEKU", "VICQLBVGDTYANJKJ", "X", "GVERAIB", "OWGTTBONPYPCLMM", "JAGEOPGFUJA"}
{"YMVBBGM CLJYJ", "OWGTTBONPYPCLMM VICQLBVGDTYANJKJ", "BOYRXFFXLE DFNSVQGOWSAHBYP", "X J", "QTCDYORAYFDHOTSIXTV KSV", "X GVERAIB", "OOUKQMMBSFHCHFBQ YMVBBGM", "CLJYJ IUQEIVUSHVODCNBAC", "EYGYYKFV IUQEIVUSHVODCNBAC", "WJEUPHAGMQPBUISTF MKYRAJAGX", "VICQLBVGDTYANJKJ FSIJGILYLUTHKGMUDAXQ", "EYGYYKFV SVHLTJUJK", "JAGEOPGFUJA ALB", "CUVI CUVI", "ALB KNQWIQS", "X JIKWYYHTDSYSNQC", "HIDXCH JEKYKOOVIKRHYSULG", "XDYWOKPSHXG OWGTTBONPYPCLMM", "GEISNJNO LSASARNMFO", "J SUDJKEUG", "OOUKQMMBSFHCHFBQ JSXKXVEPFTEKUASU", "EGX TRIRNOI"}

{"JUJI", "SMPRYYAGUEWAPUA", "FXMLYRM", "MENHRKHRRSTJP", "FLSMQUBGRUHPIRYSEVJ", "OWBDRDDMQOPVHFXNFQ", "RPRLIDWAMREYRSUSLMK", "EVOAUEGLHTBNRL", "BQCTGRW", "UJRMPGMW", "Y", "PMXHC", "AXKASESRAFHVKDYDMBE", "GA", "HJC", "WYQBJBY", "EAMGRQWEPJYEPSFD", "HHEAYNYWHBOULBN", "IMV", "BCSNNXGFQTN", "XHVY", "HSLYQWVYQLCKIQMJL", "DYYIPDQB", "UMWUPGNDS", "DDSDGTHJFX", "ST", "YVKATOWVRCUTRU", "OGBHYBXEDGHBLOAUWO", "SRCQLLLEPXVWTQ", "PPFVILTN", "SYRACKSQHKISCBBSPHB", "IO", "KQTCRTGIBFFJQSCEKQLS", "VKBXDXVO", "YMGJCNBNSIRUGL", "TUMUQEUACXJRIKP", "NFIBP", "IQVTWHDOUD", "EPGQUBMTII", "OM", "AOD"}
{"GA OWBDRDDMQOPVHFXNFQ", "AOD YMGJCNBNSIRUGL", "IQVTWHDOUD SRCQLLLEPXVWTQ", "EPGQUBMTII JUJI", "WYQBJBY UMWUPGNDS", "VKBXDXVO AXKASESRAFHVKDYDMBE", "FLSMQUBGRUHPIRYSEVJ YMGJCNBNSIRUGL", "WYQBJBY PPFVILTN", "PPFVILTN AXKASESRAFHVKDYDMBE", "SYRACKSQHKISCBBSPHB KQTCRTGIBFFJQSCEKQLS", "FLSMQUBGRUHPIRYSEVJ WYQBJBY", "YVKATOWVRCUTRU SRCQLLLEPXVWTQ", "FXMLYRM IO", "AOD YVKATOWVRCUTRU", "SYRACKSQHKISCBBSPHB WYQBJBY", "EAMGRQWEPJYEPSFD BQCTGRW", "KQTCRTGIBFFJQSCEKQLS OWBDRDDMQOPVHFXNFQ", "EVOAUEGLHTBNRL PPFVILTN", "PPFVILTN NFIBP", "AOD BQCTGRW", "WYQBJBY HHEAYNYWHBOULBN", "JUJI FXMLYRM", "UMWUPGNDS FXMLYRM", "EPGQUBMTII HSLYQWVYQLCKIQMJL", "WYQBJBY AOD", "FLSMQUBGRUHPIRYSEVJ RPRLIDWAMREYRSUSLMK", "Y IO", "PPFVILTN AXKASESRAFHVKDYDMBE", "JUJI IO", "UJRMPGMW HJC", "YVKATOWVRCUTRU PPFVILTN", "BQCTGRW OWBDRDDMQOPVHFXNFQ", "BCSNNXGFQTN FXMLYRM", "HHEAYNYWHBOULBN YMGJCNBNSIRUGL", "SRCQLLLEPXVWTQ WYQBJBY", "VKBXDXVO MENHRKHRRSTJP", "SRCQLLLEPXVWTQ AOD", "YVKATOWVRCUTRU IMV", "HSLYQWVYQLCKIQMJL YMGJCNBNSIRUGL", "SMPRYYAGUEWAPUA HJC", "EVOAUEGLHTBNRL PMXHC", "BCSNNXGFQTN DDSDGTHJFX", "FXMLYRM SRCQLLLEPXVWTQ", "EVOAUEGLHTBNRL HJC", "BCSNNXGFQTN PPFVILTN", "EAMGRQWEPJYEPSFD SYRACKSQHKISCBBSPHB", "OGBHYBXEDGHBLOAUWO EPGQUBMTII", "IMV FLSMQUBGRUHPIRYSEVJ"}

{"EVRIINMNJXKI", "YVOWIEOOGSYSFPBPWR", "TVJSLLJL", "KJVKJWKSJOPCPORIH", "S", "PTWXKOKE", "QTQSHBEGHLWMDLJUOQ", "GTKGDSXXRDOLI", "QSSWCTSNPVBCDEIFJFJB", "WMQPHLKUSKSDPCAC", "EBYRTWOULUS", "CH", "OPRALNQBCRMQMNWVQ", "LNJVMU", "BPLJTWRH", "FYLGBAYASS", "REGTLBTLMJMRGPPVGPNC", "VPVDSOSFI", "W", "YBT", "STGCTJCNBYQCHHMDGYBL", "CQYLRFHY", "WXYVB"}
{"EBYRTWOULUS YVOWIEOOGSYSFPBPWR", "FYLGBAYASS KJVKJWKSJOPCPORIH", "WXYVB CH", "S CQYLRFHY", "S WXYVB", "BPLJTWRH EVRIINMNJXKI", "CQYLRFHY KJVKJWKSJOPCPORIH", "OPRALNQBCRMQMNWVQ PTWXKOKE", "CQYLRFHY WMQPHLKUSKSDPCAC", "REGTLBTLMJMRGPPVGPNC EBYRTWOULUS", "BPLJTWRH CH", "STGCTJCNBYQCHHMDGYBL QTQSHBEGHLWMDLJUOQ", "WXYVB QTQSHBEGHLWMDLJUOQ", "CH QTQSHBEGHLWMDLJUOQ", "PTWXKOKE TVJSLLJL", "QSSWCTSNPVBCDEIFJFJB FYLGBAYASS", "PTWXKOKE CQYLRFHY", "CH EBYRTWOULUS", "STGCTJCNBYQCHHMDGYBL PTWXKOKE", "WMQPHLKUSKSDPCAC GTKGDSXXRDOLI", "CQYLRFHY WMQPHLKUSKSDPCAC", "KJVKJWKSJOPCPORIH EBYRTWOULUS", "OPRALNQBCRMQMNWVQ EBYRTWOULUS", "FYLGBAYASS YBT", "FYLGBAYASS GTKGDSXXRDOLI", "GTKGDSXXRDOLI BPLJTWRH", "WXYVB STGCTJCNBYQCHHMDGYBL", "STGCTJCNBYQCHHMDGYBL QTQSHBEGHLWMDLJUOQ", "FYLGBAYASS CQYLRFHY", "YBT OPRALNQBCRMQMNWVQ", "CH GTKGDSXXRDOLI", "PTWXKOKE VPVDSOSFI", "S FYLGBAYASS", "OPRALNQBCRMQMNWVQ GTKGDSXXRDOLI", "EBYRTWOULUS VPVDSOSFI", "YVOWIEOOGSYSFPBPWR S", "EBYRTWOULUS GTKGDSXXRDOLI", "QTQSHBEGHLWMDLJUOQ LNJVMU", "W GTKGDSXXRDOLI", "OPRALNQBCRMQMNWVQ WXYVB", "VPVDSOSFI W", "TVJSLLJL YVOWIEOOGSYSFPBPWR", "EVRIINMNJXKI EBYRTWOULUS", "BPLJTWRH YVOWIEOOGSYSFPBPWR", "WXYVB BPLJTWRH", "S QSSWCTSNPVBCDEIFJFJB", "S EVRIINMNJXKI"}

{"R", "OKYTQVYNGWMFXNBO", "JJBAF", "WNFXRREMEVJ", "BTGMIEUUVJKU", "RAMCDFOHBEUTDTICY", "ANSABKEODXLVAE", "QOCWKRUGLFMFIY", "ITXPLQULHWTFFYRQPLQ", "YSTIONPFN", "JYFTDDWWCXR", "BXDOTDTTQETJI", "SJASPG", "VVLG", "XBWQHUQMSLRYXKRMY", "SNP", "SBPFGVVTH", "HEPTM", "RJQJDCDHOTGPVPXUE", "TOVDOTOQCCAIXHMC"}
{"QOCWKRUGLFMFIY OKYTQVYNGWMFXNBO", "SBPFGVVTH ITXPLQULHWTFFYRQPLQ", "RJQJDCDHOTGPVPXUE VVLG", "SNP VVLG", "HEPTM RJQJDCDHOTGPVPXUE", "ANSABKEODXLVAE YSTIONPFN", "JYFTDDWWCXR TOVDOTOQCCAIXHMC", "QOCWKRUGLFMFIY SNP", "XBWQHUQMSLRYXKRMY RAMCDFOHBEUTDTICY", "SBPFGVVTH OKYTQVYNGWMFXNBO", "R JYFTDDWWCXR", "OKYTQVYNGWMFXNBO HEPTM", "BTGMIEUUVJKU RJQJDCDHOTGPVPXUE", "TOVDOTOQCCAIXHMC BXDOTDTTQETJI", "ANSABKEODXLVAE VVLG", "VVLG YSTIONPFN", "BXDOTDTTQETJI SJASPG", "OKYTQVYNGWMFXNBO RJQJDCDHOTGPVPXUE", "XBWQHUQMSLRYXKRMY SJASPG", "SJASPG RJQJDCDHOTGPVPXUE", "SBPFGVVTH OKYTQVYNGWMFXNBO", "JJBAF SBPFGVVTH", "XBWQHUQMSLRYXKRMY SNP", "JYFTDDWWCXR YSTIONPFN", "R WNFXRREMEVJ", "ANSABKEODXLVAE RAMCDFOHBEUTDTICY", "SNP R", "SNP YSTIONPFN", "SNP RJQJDCDHOTGPVPXUE", "TOVDOTOQCCAIXHMC R", "BTGMIEUUVJKU YSTIONPFN", "SNP BTGMIEUUVJKU", "TOVDOTOQCCAIXHMC R", "VVLG ITXPLQULHWTFFYRQPLQ", "ANSABKEODXLVAE BXDOTDTTQETJI", "R QOCWKRUGLFMFIY", "ITXPLQULHWTFFYRQPLQ TOVDOTOQCCAIXHMC", "SBPFGVVTH R", "RJQJDCDHOTGPVPXUE BTGMIEUUVJKU", "SJASPG HEPTM", "QOCWKRUGLFMFIY VVLG", "RJQJDCDHOTGPVPXUE SNP", "R RJQJDCDHOTGPVPXUE", "RJQJDCDHOTGPVPXUE R"}

{"VEGDISQWIXEWHKAKYSF", "IH", "CDEVYOFRJCXC", "GCTDESIHQGICMBD", "DWKYPCKFSFBL", "BXSERGH", "URXTRRBGKEBVUQBPDL", "AEAFXVPMRVQG", "RTIULYFMBHSMRTVTSAJ", "PQAAGGG", "XLYNKSTENJ", "SBLKHYDSL", "KJVBBP", "MYM", "YIATKXK", "IGJ", "VNEQIULRXEKABV", "CYFRSEU", "XRRDTJRQU", "INWFHKQLWTFOP", "XPORNMJRPR", "WAYCKECLOKLKKWQOWF", "SWTI", "GCHKTYPJKKDDBDTRO", "RCBYFVQVTOHVO", "HVNJKUGSN", "KUQYDBYHVUAXM", "OEIFE", "PS", "MAYWGGNWA", "TSNMNJW", "DCNVYYXAMUHGIRELL", "NIRLIHDDDND"}
{"RTIULYFMBHSMRTVTSAJ PS", "MYM XPORNMJRPR", "BXSERGH GCHKTYPJKKDDBDTRO", "AEAFXVPMRVQG PQAAGGG", "GCTDESIHQGICMBD MYM", "OEIFE KJVBBP", "KJVBBP OEIFE", "INWFHKQLWTFOP XPORNMJRPR", "HVNJKUGSN URXTRRBGKEBVUQBPDL", "NIRLIHDDDND GCHKTYPJKKDDBDTRO", "SWTI MYM", "XRRDTJRQU XPORNMJRPR", "SWTI DCNVYYXAMUHGIRELL", "MYM GCHKTYPJKKDDBDTRO", "YIATKXK WAYCKECLOKLKKWQOWF", "TSNMNJW PQAAGGG", "WAYCKECLOKLKKWQOWF RCBYFVQVTOHVO", "IH DWKYPCKFSFBL", "AEAFXVPMRVQG RCBYFVQVTOHVO", "XRRDTJRQU RTIULYFMBHSMRTVTSAJ", "RTIULYFMBHSMRTVTSAJ WAYCKECLOKLKKWQOWF", "XRRDTJRQU YIATKXK", "CYFRSEU DCNVYYXAMUHGIRELL", "WAYCKECLOKLKKWQOWF IGJ", "XLYNKSTENJ YIATKXK", "DCNVYYXAMUHGIRELL DWKYPCKFSFBL"}

{"YVPIMKWLTP", "RSVBHKFKHHADQERC", "NSIDATBBCKN", "VCCGLQIVD", "CEGTJIYSOHCJHMI", "IMAYXXWRGIHRUWOB"}
{"VCCGLQIVD VCCGLQIVD", "VCCGLQIVD IMAYXXWRGIHRUWOB", "IMAYXXWRGIHRUWOB NSIDATBBCKN", "YVPIMKWLTP YVPIMKWLTP", "YVPIMKWLTP NSIDATBBCKN", "IMAYXXWRGIHRUWOB VCCGLQIVD", "CEGTJIYSOHCJHMI YVPIMKWLTP", "RSVBHKFKHHADQERC CEGTJIYSOHCJHMI", "NSIDATBBCKN RSVBHKFKHHADQERC", "YVPIMKWLTP NSIDATBBCKN", "NSIDATBBCKN CEGTJIYSOHCJHMI", "CEGTJIYSOHCJHMI IMAYXXWRGIHRUWOB", "NSIDATBBCKN NSIDATBBCKN", "VCCGLQIVD RSVBHKFKHHADQERC", "IMAYXXWRGIHRUWOB CEGTJIYSOHCJHMI", "RSVBHKFKHHADQERC RSVBHKFKHHADQERC", "IMAYXXWRGIHRUWOB VCCGLQIVD", "CEGTJIYSOHCJHMI YVPIMKWLTP", "RSVBHKFKHHADQERC VCCGLQIVD", "RSVBHKFKHHADQERC IMAYXXWRGIHRUWOB", "CEGTJIYSOHCJHMI VCCGLQIVD", "VCCGLQIVD RSVBHKFKHHADQERC", "CEGTJIYSOHCJHMI YVPIMKWLTP"}

{"HOYNCJDWL", "FIUMWWBUAHWMU", "TJ", "XRRCGANOXUTVPXJYN", "IBWFQKVOVUGT", "LHNN", "UNUEJPFME", "BBQQPWBBVGFUJBJNUIK", "KCPYVRBMGFMJDSDDMT", "TQXPVDQXYRFJNBV", "JDP", "FMVNEWINUSDA", "CXBO", "PB", "JO", "WLLJMOH", "VWDMVUSKAFYVNLCLPGAW", "GAIWOUM", "HCMDWYBOESUPHHDQJ", "TLWDALFYBEHXCFVWGJM", "IDPPW", "UWEU", "TFLBHHEPYHGECF", "LIMWRKNAAWNYSCHFPPTF", "N", "XFRAWJBKWK", "PCXIIVGTLB", "KNDP", "FFYPUCMISHE", "LPUPSJCWIQORLSXYTOIB", "QPJWBUQSACBFRYDD", "FVVC", "PYXX", "WJGMURFLDHBF", "RBN", "QDEJYUDRYOAMNYFICWR", "XYARAFGASHLOUP", "KSXGVVNJ", "YHKRJTKLFVX", "DAEJHV", "JTAHTATKSQMRWPIRKK", "BXMDXJNLYACHB", "GSLLEBYWFNQN", "UNBDTAR", "DMVPJDFATNGX", "YJL", "UQCGFLLYQ"}
{"UNBDTAR TFLBHHEPYHGECF", "BXMDXJNLYACHB YJL", "DAEJHV TFLBHHEPYHGECF", "BXMDXJNLYACHB YHKRJTKLFVX", "KSXGVVNJ XFRAWJBKWK", "DMVPJDFATNGX PYXX", "LPUPSJCWIQORLSXYTOIB PB", "XYARAFGASHLOUP YJL", "XFRAWJBKWK TJ", "FMVNEWINUSDA PYXX", "VWDMVUSKAFYVNLCLPGAW UNBDTAR", "RBN UWEU", "TQXPVDQXYRFJNBV FVVC", "PCXIIVGTLB IBWFQKVOVUGT"}

{"TVTUQJNGONSXK", "HFLOLTOESBOBWNHV", "X", "DRREPOVNGEWP", "QRGXBRKTEQ", "GIPPMUJXHPQUXFYOL"}
{"GIPPMUJXHPQUXFYOL X", "TVTUQJNGONSXK HFLOLTOESBOBWNHV", "X QRGXBRKTEQ", "TVTUQJNGONSXK TVTUQJNGONSXK", "X QRGXBRKTEQ", "QRGXBRKTEQ HFLOLTOESBOBWNHV", "HFLOLTOESBOBWNHV HFLOLTOESBOBWNHV", "QRGXBRKTEQ QRGXBRKTEQ", "DRREPOVNGEWP HFLOLTOESBOBWNHV", "TVTUQJNGONSXK HFLOLTOESBOBWNHV", "GIPPMUJXHPQUXFYOL HFLOLTOESBOBWNHV", "HFLOLTOESBOBWNHV GIPPMUJXHPQUXFYOL", "QRGXBRKTEQ GIPPMUJXHPQUXFYOL", "X QRGXBRKTEQ", "X X"}

{"GAVCQERNF", "UFUFEYUXJCUUOINRCN", "IMGACSGDQIACVRUQA", "HMQD", "DWYIPQTDQDBTE", "XCTTTSDVK", "HPOJPIICRXHDBYMXTL", "NM", "VD", "CBLUTHBEHIAWYAXNVRO", "JEUPNODAUIO", "UGHNTOKXFVCXV", "JM", "UJLP"}
{"HPOJPIICRXHDBYMXTL UJLP", "UGHNTOKXFVCXV JM"}

{"JFAQM", "JQO", "FLHMXSMKXRPOGUYK", "EUPXTEOAYJYDK", "NHHWSYGDEQXDDOWV", "AUFDEFBNOKMXFXOXVFEA", "MGOUUSAYWVVH", "PDTNTXG", "FHKXUAEAWMBYJND", "BEDXS", "YLB", "IBXVSYWDJD", "YCFPOGSNMWMLBA", "GWXLXHCOAGOGJBV", "BNLDMGXUJVQAE", "HABIIQCGHOYXGTASG", "QGBYCKJLRTNVGXGF", "XRIFNTXVXSMPBKG", "CUUNFTEFKUOOJOG", "IWBXSKC", "UHDXFTOP", "XTXWYAGHL", "MWWXPLLDCHER", "SI", "YATMDMQYC", "PHPORJSWDTYGIGTFT", "PQMFHDOYJXMII", "YJOUKADVBXSGAVQW", "UDCYMLRJGYJVAJMC", "JRAWEWTBMI", "WWYW", "CPVJBAMCEAWXNEVOU", "QQHTVOVDAVQVPILTBJXF"}
{"UDCYMLRJGYJVAJMC FLHMXSMKXRPOGUYK", "MGOUUSAYWVVH YJOUKADVBXSGAVQW", "HABIIQCGHOYXGTASG PDTNTXG", "IWBXSKC UDCYMLRJGYJVAJMC", "GWXLXHCOAGOGJBV FHKXUAEAWMBYJND"}

{"BOB", "HARRY", "ALICE", "SALLY", "A", "B", "C"}
{"BOB HARRY", "HARRY ALICE", "ALICE SALLY", "SALLY BOB", "A B", "C A"}

{"ABA", "ACA", "ADA", "AEA", "AMA", "ANA", "KONTREC", "ZIZOU"}
{"ABA ACA", "ACA AEA", "ABA AEA", "ADA ACA", "AMA ANA"}

{"A", "B"}
{"B A"}

{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J"}
{"A B", "C D", "D E", "I J", "I J", "I J", "I J", "I J", "I J"}

{"TEST"}
{}

{"ASD", "ERT", "QWE"}
{}

{"A", "B", "C", "D"}
{"A B", "C D", "B D", "B D"}

{"A", "B", "C"}
{"A B", "A C", "B C"}

{"A", "B", "C", "D", "E", "F"}
{"A F", "F E", "E D", "D C", "C B"}

{"A", "Z", "B", "Y", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "S", "T", "R", "U", "V", "W", "X", "LGRT", "ZZZZZ", "AAAAAA", "GGZ", "AB", "BY", "EC", "GD", "YE", "AAB", "ABY", "AEC", "AGD", "AYE", "ZAB", "ZBY", "ZEC", "ZGD", "ZYE", "ZAGHB", "ZBYGGH", "ZEAAAAAD", "AAAZYE", "VWEGWH"}
{"A B", "A C", "D A", "A E", "A F", "A G", "A H", "A I", "A J", "A K", "A L", "A X", "A Y", "A Z", "B C", "B D", "E B", "B G", "B H", "B J", "C D", "C E", "C D", "C G", "C G", "C J", "C X", "D C", "D K", "D G", "D E", "D H", "D J"}

{"A", "B", "C", "D", "E", "F", "G", "H"}
{"A B", "E D", "F C", "B G", "B E", "E H", "H G"}

{"A", "B", "C", "D", "E", "F", "G", "H", "I", "K", "L", "N", "M", "O", "P", "Q"}
{"A B", "B C", "B I", "F E", "D D", "C B", "H C", "I D", "A A", "E F", "E F", "I B", "O N", "K L", "P O", "M L", "M N", "Q K", "Q P", "P P"}

{"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"}
{"A B", "A C", "A D", "A F", "D E", "D F", "G I", "J K", "A M", "D M"}

{"A", "B", "C", "D", "E", "F"}
{}

{"SNB", "UJD", "YTV", "PTM", "RDJ", "IQC", "MZP", "BXY", "KEM", "YJF", "VDN", "FEE", "HSS", "GJO", "LIM", "ZPN", "WAK", "MXH", "OJC", "ZVM", "LAT", "QSU", "XAY", "FFV", "EXW", "RVL", "NWZ", "QKH", "KCY", "LOZ", "CIH", "BWY", "WAG", "JMN", "ZDV", "TTD", "ITL", "OUG", "RIV", "QFQ", "LYF", "GDX", "CKF", "YTM", "AUA", "QST", "AJF", "GKR", "KKP", "MTK"}
{"BXY EXW", "ITL AUA", "ZDV CIH", "BXY ZVM", "BWY GJO", "BWY ZDV", "HSS MXH", "RIV YTM", "VDN XAY", "PTM RDJ", "UJD KEM", "SNB LYF", "ZPN SNB", "FFV YTV", "ZVM RIV", "YTM XAY", "FFV YTV", "LIM XAY", "SNB GDX", "LYF YTV", "SNB MZP", "OUG XAY", "CKF SNB", "GDX RVL", "IQC MZP", "KEM LAT", "XAY MXH", "KCY GDX", "QSU UJD", "UJD BXY", "CKF LOZ", "GKR XAY", "YTV HSS", "GKR CIH", "KKP JMN", "YJF AJF", "FEE OJC", "CKF YTM", "WAK MXH", "XAY LIM", "ITL KKP", "KCY GDX", "GKR LOZ", "KCY UJD", "ZDV BWY", "WAK FFV", "LOZ AJF", "AUA KKP", "LOZ TTD"}', N'2
1
1
1
1
1
2
2
1
1
3
2
1
50
1
1
2
1
1
1
5
19
1
4
14
1
17
27
1
14
5
4
18
1
11
6
35
22
26
15
5
13
1
22
6
1
1
9
1
33
1
12
28
2
4
1
6
1
3
1
1
1
36
2
4
5
6
10')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (42, N'04', N'Problem 04', N'<p>You are given a list of integers, and you are allowed to group elements into pairs. <br />
Each element must either belong to a single pair or remain unpaired. Sum the products <br />
of the pairs with the values of the unpaired elements. Your goal is to maximize this sum.<br />
<br />
For example, consider the list {0, 1, 2, 4, 3, 5}. If you make the pairs (2, 3) and (4, 5), <br />
the sum is 0 + 1 + (2 * 3) + (4 * 5) = 27.<br />
<br />
You are given a list of integers. Return the maximum possible sum. <br />
<br />
- data will contain between 1 and 50 elements, inclusive.<br />
- Each element of data will be between -1000 and 1000, inclusive.<br />
<br />
Sample Input:<br />
<br />
0 1 2 4 3 5<br />
-1 1 2 3<br />
-1<br />
-1 0 1<br />
1 1<br />
<br />
Sample Output:<br />
<br />
27<br />
6<br />
-1<br />
1<br />
2<br />
&nbsp;</p>', N'problem#04-input.txt', N'problem#04-output.txt', 10, 10, N'0 1 2 4 3 5
-1 1 2 3
-1
-1 0 1
1 1
-614 -17 662 202 -398 397 325 -830 -885 253 -221 905 15 -488 -131 308 -259 -553 842 -445 -631 -40 321 833 -300 -106 247 -65 -387 693 517 -692 -339 223 -477
365 143 323 -450 -817 626 -350 -405 629 799 -502 982 490 -254 -519 281
568 -777 47 265 85 592 -566 5 -818 -11 -528 -939 838 309 239 -653 -262 123 -306 -269 -959 816 265 -679 685 -486 341 -665 589 516 284 -484 622 428 -959 -438 -365 766 -49 554 439 186 844
-696 436 265 573 32 -94 -487 22 -191 -39 283 -446 70 -926 943 584 -834 907 816 307 -435 -327 -115 659 479 675 307 214
867 -626 429 993 292 -173 393 645 433 -507 -733 375 980 -721 -672 -272 1 758 106 248 189 -216 392 895 837 778 -535 -466 147 594 368 706 942 -515 586 391 -608 -881 -28 -994 851 95 257 335 -626 -36
609 47 -806 -738 484 -317 -932 -963 -906 8 -37 456 -67 -88 996 -57 756 -128 506 461 247 130 -675 -234 649 730 -676 994 82 -7 187 431 779 545 -99 -187 -66 469 911 988 411 -306 420 -705 -995 200 -196 501 499 -861
-713 -187 -666 713 -499 657 -364 707 320 -892 174 -697 -719 57 915 -604 -319 -362 276 -727 -552 -547 -399 -135 -227 -375 -171 950 487 -458 563 -613 -364 -383 271 -998 -764 -72 833 184 -334 60 150 -192 -328 -990 -960 589 -545
1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000 1000
-1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000 -1000  	 	
-1 -2 -3 0 0 0 1 1 3 -1 -3 -6 8 9 -9 12 11 1 1 1 1 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 1 1 1 1 1 7 6
837 -226 508 -30 481 728 -670 306 979 -103 -499 -640 269 -594 -705 345 -963 -617 318 -445 -365 -604 -973 -123 954 -264 -471 623 997 -857 603 553 -637 85 439 -577 353 -844 -955 -101 -84 721 799 184
388 861 794 135 904 -75 -272 753 -826 401 -207 -41 -309 -98 382 746 -888 -264 -414 918 616 29 734 90 742 -677 -749 447 -924 376 503
107 -539 -580 375 -397 -244 -309 -652 692 866 450 -406 196 -111 -384 354 67 733 971 -719 -199 568 316 607 179 899 689 600 -581 712 -17 -979 -657 -328 804 -193 -356 -162 920 682 851 864 -857 -63
-871 -579 805 -506 973 843 752 388 104 185 -293 -474 -744 -487 -445 -429 -554 -38 -330 -541 -835 535 -672 327 -621 -12 -523 239 559 876 -662 -924 472 -648 -193 -590 -66 835
112 -13 262 188 -686 658 -393 339 530 -287 -889 -248 782 -383 -637 187 504 180 -883 -518 641 439 601 -584 859', N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
25000000
25000000
417
7911512
5176022
7281612
6452112
3523599')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (43, N'05', N'Problem 05', N'<p>A rectangular polygon is a polygon whose edges are all parallel to the coordinate axes. <br />
The polygon must have a single, non-intersecting boundary.<br />
<br />
You are given several horizontal line segments. You may remove some of the given segments <br />
and add any number of vertical segments to construct a rectangular polygon. Your goal is <br />
to maximize the number of edges in the final polygon.<br />
<br />
You will be given int[]s x1, x2, and y. (x1[i], y[i]) and (x2[i], y[i]) are the end points <br />
of the i-th line segment. The given segments will have no common points. Return the maximal <br />
number of edges in a polygon that can be constructed using the above method. If no polygon <br />
can be constructed, return 0. <br />
<br />
- x1, x2 and y will all contain the same number of elements.<br />
- x1, x2 and y will each contain between 1 and 16 elements, inclusive.<br />
- Each element of x1, x2 and y will be between -1000 and 1000, inclusive.<br />
- Corresponding elements of x1 and x2[i] will not be equal.<br />
- The line segments described by x1, x2 and y will not have common points.<br />
<br />
Sample Input:<br />
<br />
1 2 3 1<br />
2 3 5 5<br />
1 4 2 0<br />
<br />
1 1 2 2<br />
3 3 4 4<br />
0 2 1 3<br />
<br />
1<br />
2<br />
1<br />
<br />
0 0 0<br />
1000 1000 1000<br />
0 1 2<br />
<br />
Sample Output:<br />
<br />
8<br />
4<br />
0<br />
4</p>', N'problem#05-input.txt', N'problem#05-output.txt', 10, 10, NULL, NULL)
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (44, N'01', N'Problem 1 - Simple Mathametical Problem', N'<p>We have a large rectangular piece of chocolate. As usual, the piece of chocolate is divided into squares. The piece you have is W squares wide and H squares tall. For the purpose of this problem the squares will be numbered from (1,1) in the upper left corner to (W,H) in the lower right corner of the chocolate.<br />
<br />
We can break the chocolate into smaller rectangular pieces. In each step,we can take one of the pieces we have, select one of the lines between the squares (either a horizontal or a vertical one) and break the piece into two new pieces along the line. <br />
A few of the cells are special. Their coordinates are given as int[] sx and sy: for each i, the square at (sx[i],sy[i]) is special.<br />
<br />
We want to eat all special squares and no other squares. Before we can do this, we have to break the chocolate into several pieces in such a way that each piece either consists of special squares only, or it consists of non-special squares only.</p>
<p>Compute and return the minimum number of steps needed in order to break the chocolate correctly.<br />
Please Note the Followings</p>
<p><br />
&bull;&nbsp;&nbsp;&nbsp; W will be between 1 and 1,000,000,000, inclusive.<br />
&bull;&nbsp;&nbsp;&nbsp; H will be between 1 and 1,000,000,000, inclusive.<br />
&bull;&nbsp;&nbsp;&nbsp; sx will have between 1 and 40 elements, inclusive.<br />
&bull;&nbsp;&nbsp;&nbsp; sy will have the same number of elements as sx.<br />
&bull;&nbsp;&nbsp;&nbsp; Each element in sx will be between 1 and W, inclusive.<br />
&bull;&nbsp;&nbsp;&nbsp; Each element in sy will be between 1 and H, inclusive.<br />
&bull;&nbsp;&nbsp;&nbsp; No two squares described by sx and sy will be equal.<br />
<br />
Sample Input : <br />
3<br />
3<br />
{2}<br />
{2}<br />
Output: 4</p>', N'prob1.txt', N'prob1Out.txt', 10, 11, N'100
100
{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79}
{1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79}
3
3
{2}
{2}
3
3
{1, 1, 1, 2, 2, 3, 3, 3}
{1, 2, 3, 1, 3, 1, 2, 3}
547
523
{10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400}
{10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240, 250, 260, 270, 280, 290, 300, 310, 320, 330, 340, 350, 360, 370, 380, 390, 400}
9
9
{2, 8, 8, 9, 1, 1, 7, 9, 5, 4, 3, 2, 7, 2, 2, 7, 6, 4, 8, 8, 6, 1, 1, 2, 8, 3, 9, 9, 6, 4, 9, 4, 3, 6, 6, 9, 1, 3, 1, 3}
{3, 6, 5, 2, 1, 9, 6, 8, 5, 4, 8, 6, 2, 9, 8, 4, 2, 6, 3, 2, 6, 4, 3, 2, 1, 3, 7, 9, 9, 9, 4, 8, 4, 5, 4, 6, 8, 1, 2, 7}  	', N'158
4
4
160
39
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (45, N'2', N'Problem 2 - general chenkov', N'<p>The formerly celebrated general Chenkov has retired after losing the fifth army. His new peaceful lifestyle made him fond of board games. A particular one is a two player game in which each player has to take a checker across a sequence of cells on the board until reaching the final cell. There are n cells in the board and they are numbered from 1 to n. The dice in use has d faces and each number between 1 and d&nbsp; has the same probability of being the result of a dice throw. For fun purposes, Waving may play with insanely multi-faced dices. In each turn, a player throws a dice and then moves his piece up for as many positions as the face of the dice indicates. A player wins when he reaches the cell n.<br />
<br />
Waving has been playing against his wife, Esther, who has added a new rule to the game called ''bouncing''. This rule comes into action when a player whose position is on the last cells of the board gets a dice value that is larger than necessary to reach the n-th cell. In that case, instead of winning the game, the player will bounce back to the previous cells.<br />
<br />
Formally, if a is the current cell number in which the player''s checker is located and b is the result of the dice throw then the following rules are used:<br />
<br />
&nbsp;&nbsp;&nbsp; * If a + b is less than n, the player moves the checker to cell (a + b).<br />
&nbsp;&nbsp;&nbsp; * If a + b is exactly n, the player moves the checker to cell n and hence wins the game.<br />
&nbsp;&nbsp;&nbsp; * If a + b is higher than n, the player moves the checker to cell (n - (a + b - n)).<br />
<br />
Chenkov has been wondering how does this rule affect the odds of winning the game at different states. You are given the number of cells n, the number of faces in the dice d, the cell on which Archibald''s checker is currently located x and the cell on which Esther''s checker is located y. Archibald is the next player to move. Return the probability of Archibald winning the game.</p>
<p>Please Note the Followings<br />
-&nbsp;&nbsp;&nbsp; The returned value must have an absolute or relative error less than 1e-9. <br />
-&nbsp;&nbsp;&nbsp; n will be between 10 and 5000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; d, x and y will be between 1 and n-1, inclusive.<br />
&nbsp;</p>
<p>Sample input 1<br />
10<br />
6<br />
1<br />
1<br />
Output: 0.5417251215862328</p>
<p><br />
Sample Input 2<br />
10<br />
2<br />
1<br />
1<br />
Output: 0.6090494791666666<br />
&nbsp;</p>', N'prob2.txt', N'prob2Out.txt', 10, 11, N'4968
4367
4562
4752
10
6
1
1
4282
1
1789
236
5000
4946
4604
35
4997
4983
4990
4996', N'0.5000572540936831
0.5417251215862328
1.0
0.5001520010016038
0.5000501756146678  	')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (46, N'3', N'Problem 3 - childhood game', N'<p>You are playing a game where you have numRed red boxes, numBlue blue boxes, numRed red balls, and numBlue blue balls.<br />
<br />
You must place a single ball into each box. Each box is then scored as follows:<br />
<br />
&nbsp;&nbsp;&nbsp; * If the box is red and it contains a red ball, you get onlyRed points.<br />
&nbsp;&nbsp;&nbsp; * If the box is blue and it contains a blue ball, you get onlyBlue points.<br />
&nbsp;&nbsp;&nbsp; * In all other cases, you get bothColors points.<br />
<br />
Your total score is the sum of the scores of all the boxes.</p>
<p>Return the maximum possible total score you can get.<br />
Please Note the Followings<br />
-&nbsp;&nbsp;&nbsp; numRed and numBlue will each be between 1 and 100, inclusive.<br />
-&nbsp;&nbsp;&nbsp; onlyRed, onlyBlue, and bothColors will each be between -1000 and 1000, inclusive.<br />
&nbsp;</p>
<p>Sample Input:<br />
2<br />
3<br />
100<br />
400<br />
200<br />
Output: 1400</p>', N'prob3.txt', N'prob3Out.txt', 10, 11, N'2
3
100
400
200
2
3
100
400
300
5
5
464
464
464
1
4
20
-30
-10
9
1
-1
-10
4
29
86
-664
465
-199
1
1
0
0
0', N'1400
1600
4640
-100
0
20734
0')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (47, N'4', N'Problem 4 - alternate chess piece', N'<p>The unicorn is an exotic chess piece similar to the knight. The difference is that while the knight moves two cells in one direction and one in the other direction, the unicorn moves more than two cells in one direction and more than one in the other direction.</p>
<p><br />
More precisely, each unicorn move looks as follows: <br />
&bull;&nbsp;&nbsp;&nbsp; pick up the unicorn;<br />
&bull;&nbsp;&nbsp;&nbsp; pick one of the four basic directions, and move the unicorn more than two cells in that direction;<br />
&bull;&nbsp;&nbsp;&nbsp; pick one of the two basic directions that are orthogonal to the previous one, and move the unicorn more than one cell in that direction;<br />
&bull;&nbsp;&nbsp;&nbsp; put down the unicorn.</p>
<p><br />
We have a chessboard that has R rows times C columns. Each cell of the chessboard contains one of the first L letters of the alphabet. To keep the input small, the content of the cells is randomly generated using the method described below. <br />
You are given the ints R, C, and L described above, an int seed used to generate the letters in the cells, and a String word. You want to trace the String word by taking a unicorn, placing it onto a cell containing the first letter of word, making a valid move that takes it onto a cell that contains the second letter, from there making another move to the third letter, and so on. Return the number of ways in which this can be done, modulo 1,000,000,007. <br />
&nbsp;</p>
<p>The content of the cells is generated using the following pseudocode: <br />
x = seed;<br />
d = (65535 div L)+1;<br />
for (int r=0; r&lt;R; r++)<br />
&nbsp; for (int c=0; c&lt;C; c++) {<br />
&nbsp;&nbsp;&nbsp; x = (x * 25173 + 13849) modulo 65536;<br />
&nbsp;&nbsp;&nbsp; chessboard[r][c] = character with ASCII code (65+(x div d));<br />
&nbsp; }<br />
&nbsp;</p>
<p>Please Note the followings<br />
-The path of the unicorn can contain the same cell multiple times.-In the pseudocode, &quot;A div B&quot; represents the integer part of A/B. For example, 14 div 5 = 2 and 20 div 4 = 5.-The author''s solution does not depend on any properties of the pseudorandom generator. It would solve any input of allowed size within the given limits. <br />
<br />
-R will be between 1 and 300, inclusive.<br />
-C will be between 1 and 300, inclusive.<br />
-L will be between 1 and 26, inclusive.<br />
-seed will be between 0 and 65,535, inclusive.<br />
-word will contain between 1 and 50 characters, inclusive.<br />
-Each character in word will be an uppercase letter (''A''-''Z'').</p>
<p>Input:<br />
3<br />
4<br />
2<br />
47<br />
&quot;AB&quot;<br />
Output: 2<br />
<br />
5<br />
5<br />
2<br />
47<br />
&quot;CD&quot;<br />
Output: 0</p>', N'Prob7.txt', N'Prob7Out.txt', 10, 11, N'3
4
2
47
"AB"
300
300
26
47
"QWERTYUIOPLKJHGFDSAZXCVBNMQWERTYUIOPLKJHGFDSAZXXVB"
300
300
1
35612
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
206
289
18
19554
"PCJKHDHKNHQODECKDEJADLQIPNNNLBNJLMDNQGECECEDH"
61
29
17
24206
"IAJAHFMNIGPGLPOMCNCQMFAENIMNHCPGBEINJDLAHDDFLPHIMB"', N'2
814990822
861343945
222491368
557997309')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (48, N'5', N'Problem 5 - build your country', N'<p>There''s a far away country where only builders live. They have built a number of cities already, and some of them are connected with bidirectional roads. The existing roads are given in the String[] g, where the j-th character of the i-th element is ''Y'' if there''s a bidirectional road connecting cities i and j, and ''N'' otherwise. Each city contains a number of houses, given in the int[] before, where the i-th element is the number of houses in city i. Exactly one builder lives in each house.<br />
<br />
The country will go through a two-phase building process. In the first phase, new bidirectional roads will be built so that every pair of cities will be connected by some path. When a road is built between two cities, every builder from both cities will be involved and each builder will be paid roadCost units of money.<br />
<br />
In the second phase, new houses will be built. You are given a int[] after, where the i-th element is the number of houses that must exist in city i after this phase is complete. In other words, after[i] - before[i] new houses must be built in city i during this phase. When a house is built, all builders in that city and all its neighboring cities will be involved and each one will be paid houseCost[i] units of money. Two cities are neighboring if they are directly connected by a road. After each house is built, a new builder will immediately live in that house. Houses can be built in any order.<br />
<br />
Return the minimal possible cost required to finish both phases of the building process.<br />
&nbsp;</p>
<p>Please Note the Followings<br />
-&nbsp;&nbsp;&nbsp; before will contain between 1 and 50 elements, inclusive.<br />
-&nbsp;&nbsp;&nbsp; Each element of before will be between 1 and 100000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; after will contain the same number of elements as before.<br />
-&nbsp;&nbsp;&nbsp; The i-th element of after will be between the i-th element of before and 100000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; houseCost will contain the same number of elements as before.<br />
-&nbsp;&nbsp;&nbsp; Each element of houseCost will be between 1 and 100000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; g will contain the same number of elements as before.<br />
-&nbsp;&nbsp;&nbsp; Each element of g will contain exactly n characters, where n is the number of elements in g.<br />
-&nbsp;&nbsp;&nbsp; Each element of g will contain only uppercase letters ''Y'' and ''N''.<br />
-&nbsp;&nbsp;&nbsp; The i-th character of the i-th element of g will always be ''N''.<br />
-&nbsp;&nbsp;&nbsp; The i-th character of the j-th element of g will always be equal to the j-th character of the i-th element of g.<br />
-&nbsp;&nbsp;&nbsp; roadCost will be between 1 and 100000, inclusive.<br />
&nbsp;</p>
<p>Input:<br />
{2, 1, 3, 5}<br />
{2, 1, 3, 5}<br />
{4, 5, 3, 2}<br />
{&quot;NNNN&quot;, &quot;NNNN&quot;, &quot;NNNN&quot;, &quot;NNNN&quot;}<br />
1000<br />
Returns: 13000<br />
<br />
{9, 11}<br />
{10, 11}<br />
{5, 1}<br />
{&quot;NN&quot;, &quot;NN&quot;}<br />
15<br />
Returns: 400</p>', N'prob8.txt', N'Prob8Out.txt', 10, 11, N'{2, 1, 3, 5}
{2, 1, 3, 5}
{4, 5, 3, 2}
{"NNNN", "NNNN", "NNNN", "NNNN"}
1000
{99, 23, 44, 55, 32}
{99, 23, 44, 55, 32}
{39, 32, 11, 23, 89}
{"NYNNN", "YNNNY", "NNNYY", "NNYNY", "NYYYN"}
54
{485, 324, 33, 89, 206, 336, 310, 286}
{598, 522, 312, 228, 447, 557, 503, 451}
{576, 5, 352, 375, 458, 521, 131, 438}
{"NNNNNNYN", "NNNYNNNN", "NNNNNNNY", "NYNNNNNN", "NNNNNNNN", "NNNNNNYN", "YNNNNYNN", "NNYNNNNN"}
633
{9122, 5738, 26190, 3316}
{14100, 6572, 27559, 5345}
{35837, 9110, 14530, 51671}
{"NNNN", "NNNN", "NNNN", "NNNN"}
27395
{13603, 15919}
{18547, 20241}
{94, 6144}
{"NN", "NN"}
24474
{20524, 3632, 29582, 23452}
{20886, 4255, 30333, 24971}
{43943, 47238, 47220, 34889}
{"NYNN", "YNNY", "NNNY", "NYYN"}
22408', N'13000
0
400408585
5204565047653
858908405796
6817397784872')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (49, N'01', N'Problem - 1', N'<p>A hallway is filled with lockers numbered 1 through N, initially all closed. Out of boredom, Dave and Earl decide to open all the lockers. They make multiple passes through the hallway, each beginning at locker 1. On the first pass, they open the first unopened locker, and every second unopened locker thereafter. On the second pass, they open the first unopened locker, and every third unopened locker thereafter. In general, on the nth pass, they open the first unopened locker, and every (n+1)th unopened locker thereafter.<br />
<br />
For example, with 9 lockers, on the first pass they open 1, 3, 5, 7, and 9, leaving 2, 4, 6, and 8. On the second pass they open 2 and 8, leaving 4 and 6. On the third pass they open locker 4, and on the final pass locker 6.<br />
<br />
You will be given N, the number of lockers. Return the number of the locker opened last.<br />
&nbsp;<br />
Note:<br />
-&nbsp;&nbsp;&nbsp; N will be between 1 and 2000000, inclusive.</p>
<p>Examples<br />
<br />
9<br />
Returns: 6<br />
<br />
42<br />
Returns: 42<br />
&nbsp;</p>
<p>&nbsp;</p>', N'input1.txt', N'output1.txt', 10, 12, N'2000000
101
321
717
989
1631
3053
3971
', N'1999854
82
282
672
930
1558
2940
3814
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (50, N'2', N'Problem - 2', N'<p>Most of the local banks have started using a lottery system instead of paying interest in the traditional way. It''s a less expensive system for the banks, and most people don''t seem to notice the difference. One bank''s current system works as follows.<br />
After the end of each week, the bank holds a drawing. Each bank account holder is given 1 ticket per dollar in his balance. After all the tickets have been distributed, one ticket is chosen randomly. Every ticket has an equal probability of being chosen. The chosen ticket''s owner wins weeklyJackpot dollars, which is immediately added to his balance.</p>
<p><br />
You have just opened an account at the bank and would like to know your expected balance at some point in the future. Somehow, you were able to access the current balances of all the account holders at the bank. These balances are given in the int[] accountBalance. Your initial balance is accountBalance[0], and each of the remaining elements of accountBalance is the balance of another person at the bank. For the purposes of this problem, assume that no transactions other than those caused by the lottery system will occur, and assume that no accounts will be closed or created. Return your expected balance after weekCount weeks.<br />
&nbsp;<br />
Notes<br />
-&nbsp;&nbsp;&nbsp; The returned value must have an absolute or relative error less than 1e-9.<br />
&nbsp;<br />
Input Constraints<br />
-&nbsp;&nbsp;&nbsp; accountBalance will contain between 1 and 50 elements, inclusive.<br />
-&nbsp;&nbsp;&nbsp; Each element of accountBalance will be between 0 and 100000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; At least one element of accountBalance will be greater than 0.<br />
-&nbsp;&nbsp;&nbsp; weeklyJackpot will be between 1 and 1000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; weekCount will be between 1 and 1000, inclusive.</p>
<p>Examples<br />
<br />
{100,100}<br />
100<br />
2<br />
Returns: 200.0<br />
<br />
{2,2,2}<br />
1<br />
2<br />
Returns: 2.6666666666666665<br />
<br />
&nbsp;</p>', N'input2.txt', N'output2.txt', 10, 12, N'{100, 100}
100
2
{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
100
20
{1, 100}
100
1000
{91609, 99034, 57486, 66963, 20912, 22937, 70238, 77187}
283
813 
{86073, 769}
574
1
{40832, 73970, 55327, 42687, 3328, 87546, 72037, 15960, 6732, 9680, 95387, 61281, 59718, 56342, 58328, 94553, 86113, 91198, 80611, 95908, 80529, 81116, 64574, 37448, 78082, 89648, 26608, 58791, 26686, 46577, 88187, 36873, 89793, 28930}
998
767
 ', N'200.0
37.36363636363636
991.09900990099
133233.64918853162
86641.91713686926
56294.4601569225
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (51, N'3', N'Problem - 3', N'<p>Your home directory contains a list of files. All the filenames have equal length. When you type a command in the form &quot;dir PATTERN&quot;, it will show all the filenames that match the specified pattern. A pattern can contain only letters (''a''-''z''), ''.'' characters, and ''?'' symbols. Each ''?'' matches any single character (including ''.''), and all other characters match only themselves. For example, the pattern &quot;conte?t.info&quot; matches the filenames &quot;contest.info&quot; and &quot;content.info&quot;, but not &quot;contemn.info&quot; or &quot;contests.nfo&quot; (all quotes for clarity only).<br />
<br />
You are given a String[] filenames, where each element represents the filename of a single file in your home directory. Return the pattern that will match all the filenames while containing as few ''?'' symbols as possible.<br />
<br />
Input Constraints<br />
-&nbsp;&nbsp;&nbsp; filenames will contain between 1 and 50 elements, inclusive.<br />
-&nbsp;&nbsp;&nbsp; Each element of filenames will contain between 1 and 50 characters, inclusive.<br />
-&nbsp;&nbsp;&nbsp; All elements of filenames will have equal length.<br />
-&nbsp;&nbsp;&nbsp; Each element of filenames will contain only lowercase letters (''a''-''z'') and ''.'' characters.<br />
&nbsp;</p>
<p>Example:</p>
<p>{&quot;contest.txt&quot;, &quot;context.txt&quot;}<br />
Returns: &quot;conte?t.txt&quot;<br />
<br />
{&quot;config.sys&quot;, &quot;config.inf&quot;, &quot;configures&quot;}<br />
Returns: &quot;config????&quot;<br />
&nbsp;</p>', N'input3.txt', N'output3.txt', 10, 12, N'{"c.user.mike.programs", "c.user.nike.programs", "c.user.rice.programs"}
{"a", "a"}
{"c.user.mike.programs", "c.user.nike.programs", "c.user.rice.programs"}
{"xqozs", "iqozs", "xqozs", "xqhzs", "xqozs"}
{"rwopwbekbmn", "rwopwbekbmk", "rwopwbekbmn", "r.opwbekbmn", "rwopwbekbmn", "rwopwbekbmn", "rwopwbekbmn", "rwopwbekbmn", "rwopwbekbmn", "rw.pwrebbmn", "rwopwbekbmn"}
{"uwagkxapfzcfce", "uwagkxapfzrfce", "uwagkxapfzcfce", "uwagkxapfzcfce", "uwagkxapfzcfce", "uwagkxapfzcfce", "kwagkxapfzcfce", "uwagkxapfzofce", "uwagkxapfzcfce", "uwagkxapfzcfce", "uwagkiapfzcfce", "uwagkxapfzcfce", "uwagkxapfzcfce", "uwazkxapfzcfce"}
', N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (52, N'4', N'Problem - 4', N'<p>The prime factorization of a number X is the list of prime numbers that multiply together to form X. For example, the prime factorization of 12 is 2 * 2 * 3. Note that 1 is not a prime number.<br />
<br />
An underprime is a number whose prime factorization contains a prime number of elements. For example, 12 is an underprime because its prime factorization contains 3 elements, and 3 is a prime number. Given ints A and B, return the number of underprimes between A and B, inclusive.<br />
<br />
Notes<br />
-&nbsp;&nbsp;&nbsp; A positive integer number is called prime if it has exactly two divisors - 1 and itself. For example, 2, 3, 5 and 7 are prime numbers, and 4, 6, 8 and 9 are not prime. By convention, 1 is not considered to be a prime number.<br />
-&nbsp;&nbsp;&nbsp; All prime factorizations of the same integer always contain the same prime numbers and can only differ by the order of primes within them.<br />
&nbsp;<br />
Input Constraints<br />
-&nbsp;&nbsp;&nbsp; A will be between 2 and 100000, inclusive.<br />
-&nbsp;&nbsp;&nbsp; B will be between A and 100000, inclusive.<br />
&nbsp;<br />
Examples:</p>
<p><br />
2<br />
10<br />
Returns: 5<br />
<br />
100<br />
105<br />
Returns: 2<br />
&nbsp;</p>', N'input4.txt', N'output4.txt', 10, 12, N'100
105
312
12839
12345
12345
11111
22222
47203
47230
99842
99842
512
512', N'2
7987
1
7045
18
1
0')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (53, N'5', N'Problem - 5', N'<p>We want to send a soldier into a mine field with a directional metal detector. The field is an n x n grid, and the soldier will move horizontally (east or west) or vertically (north or south), never leaving the field. His metal detector can be pointed in any of the cardinal directions (east, north, west, or south) and will beep if it senses any mine in that direction, no matter how far away the mine is. Only mines that are exactly in the row or column down which the sensor is pointed are sensed.<br />
<br />
The soldier can move one square at a time in any of the four directions, pointing his sensor in various directions. But he will not move onto a square if his sensor beeps when pointed in that direction, unless he has previously visited that square. He will continue this process, visiting and revisiting squares as needed, until he is sure that he has visited every square that he can.<br />
<br />
We want to see how well we will be able to do using this type of sensor. Create a class LandMines that contains a method numClear that takes the actual layout of mines in a minefield as input and that returns the number of squares that the soldier can safely visit.<br />
<br />
The layout shows the mine field as a String[], starting with the top row. ''-'' denotes a square with no mine and ''M'' denotes a square that contains a mine. The soldier will always start in the northwest corner (the leftmost square in the top row), which will never contain a mine.<br />
<br />
Input Constraints<br />
-&nbsp;&nbsp;&nbsp; layout contains between 2 and 50 elements inclusive.<br />
-&nbsp;&nbsp;&nbsp; The length of each element of layout equals the number of elements in layout.<br />
-&nbsp;&nbsp;&nbsp; Each character in layout will be a hyphen (''-'') or uppercase ''M''.<br />
-&nbsp;&nbsp;&nbsp; The first character in the first element of layout will be a hyphen.<br />
&nbsp;<br />
Examples<br />
<br />
{&quot;-M-&quot;,<br />
&nbsp;&quot;---&quot;,<br />
&nbsp;&quot;M--&quot;}<br />
Returns: 1<br />
<br />
{&quot;-M-&quot;,<br />
&nbsp;&quot;-M-&quot;,<br />
&nbsp;&quot;--M&quot;}<br />
Returns: 3<br />
&nbsp;</p>', N'input5.txt', N'output5.txt', 10, 12, N'{"-M-", "---", "M--"}
{"-----", "--M-M", "-----", "-M---", "---M-"}
{"--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------", "--------------------------------------------------"}
{"----------", "-MM-------", "----M---M-", "-M--------", "-M---M----", "-M--------", "---M------", "M-------M-", "----------", "-M-M------"}
{"-MMM", "MMMM", "MMMM", "MMMM"}
{"----M---------------------------------------------", "--------------------------------MM----------------", "-------------M---------M------M-------------------", "----------------------M---------------------------", "-------M--------------------------------------M---", "----------M--M---M--------------------------------", "----------------M--M--M----M------M---------------", "-------------M------------M--------------M--------", "--------------------------------------------------", "-M-------------------M-----------M------M---------", "--------------------------------------------------", "-------------------M------------------------------", "-------M--M-------------------M----------M------M-", "-----------------M-----------M-------------M------", "-------------M--M--M-------------------------M----", "-------------------------------------M-M-M--------", "-----------------------------------M------------M-", "---------M------------M---------------------------", "---------------------------------------------M--M-", "----M---------------------------------------------", "-----------------------M-------M-M----------------", "-M------------------------M--------------M--------", "--M-----MM-------------M------M---M-----M---------", "-----M---------------M-------------M-----M--------", "-------------------------------M-M------------M---", "--------------------------------------------------", "--------------------------------------------------", "-----------M--------------------------------------", "-------------M----------------------------M-------", "--------------M-----M------M----------------------", "--M--------M---------------------------M----M-----", "-M----------------------------------M-------------", "------------------MM-MM--M------------------------", "-M------------------------------------------------", "-----------------------------M-------------------M", "-------------------------------M-----------M------", "---------------M-------------------------------M-M", "-----------M--------------------------------------", "-----------------MM-----M------M---------M--------", "-----------------M--M------------------------M----", "-----------------M-M------------------------------", "--------------------------M-----------------------", "------------------------------M-------------------", "------M---------------MM---------------M----------", "--M----M-----------------M-----------M------------", "--------------------------------------------------", "------------M------------------------M------------", "------------------M--------M--------------------M-", "------------------------------------M---M---------", "-M------M-------M-M-----M--------------------M--M-"}
', N'1
21
2500
54
1
1999
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (54, N'P #1', N'ROT13', N'<p><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:"Times New Roman";
mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">According to Wikipedia, ROT13 (&quot;rotate by 13 places&quot;) is a simple Caesar cipher used for obscuring text by replacing each letter with the letter thirteen places down the alphabet.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">A becomes N, B becomes O, and so on up to M, which becomes Z, then the sequence reverses: N becomes A, O becomes B, and so on to Z, which becomes M.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The algorithm is used in online forums as a means of hiding joke punchlines, puzzle solutions,</span><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">movie and story spoilers, and offensive materials from the casual glance.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">A noticeable feature of this cipher is that it is symmetrical; that is, to undo ROT13, the same</span> <span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">algorithm is applied, so the same code can be used for encoding and decoding.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Your program must be able to apply the ROT13 cipher to its input, and output the result. Only</span> <span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">upper case letters A through Z need to be considered, and spaces must be left untouched.</span></p>
<p>&nbsp;</p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Inputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">EXAMPLE ONE</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">ENIVAR</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Outputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">RKNZCYR BAR</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">RAVINE</span></p>
<div style="border-width: medium medium 1pt; border-style: none none solid; border-color: -moz-use-text-color -moz-use-text-color windowtext; padding: 0in 0in 1pt;">
<p class="MsoNormal" style="border: medium none; padding: 0in;">&nbsp;</p>
</div>', N'problem1_input.txt', N'problem1_output.txt', 5, 13, N'EXAMPLE ONE
ENIVAR
NAZMUL BASHER RONY
MY TEST WILL GO AND GO ONE
OK GOOD
WELL
MANY THANKS
FINE', N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (55, N'P #2', N'Password Cracker', N'<p><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:"Times New Roman";
mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Create a program that prints a particular password combination created from a set of 11</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">characters. The set of 11 possible characters is as follows:</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">a b c d 0 1 2 3 </span>&quot;<span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"> ! {</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The program should take as input one integer number per line. For each input number,</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">the program must display the password combination generated at that iteration.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The order of generated passwords must adhere to the following rules:</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">1. Passwords must be generated in the order in which the above characters are</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">displayed.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">2. All passwords of a given length must be generated before moving on to the next</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">length.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The following in an example of correct password generation and demonstrates the</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">relationship between the iteration number and the expected password:</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 1: a</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 2: b</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 3: c</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">...</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 11: {</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 12: aa</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 13: ab</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">...</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Password 8784: 1111</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Inputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">20</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">6789</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Outputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">&nbsp;</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;">a&quot;</p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">0aab</span></p>', N'problem2_input.txt', N'problem2_output.txt', 5, 13, N'20
6789
2193
7878
2010
986547
5564', N'a"
0aab
a2ad
0!ab
a013
1adbca
da!"
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (56, N'P #3', N'English Mathematical Parser.', N'<p><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:11.0pt;
font-family:"Calibri","sans-serif";
mso-ascii-font-family:Calibri;
mso-ascii-theme-font:minor-latin;
mso-fareast-font-family:"Times New Roman";
mso-fareast-theme-font:minor-fareast;
mso-hansi-font-family:Calibri;
mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:"Times New Roman";
mso-bidi-theme-font:minor-bidi;}
</style>
<![endif]--></p>
<p>Develop a program that reads an arithmetic expression written in English, such as</p>
<p align="center" class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: center; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">NINE&nbsp; PLUS&nbsp; SEVEN </span></p>
<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">and that outputs the number that is the result of evaluating the expression. </span></p>
<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">More precisely, the input will be a number from 0 to 9999, written as a word in upper case letters, followed by a space, followed by one of the words &quot;PLUS&quot;, &quot;MINUS&quot;, &quot;TIMES&quot;, or &quot;DIVIDED-BY&quot;, followed by a space, followed by another number from 0 to 9999, written as a word in upper case letters. </span></p>
<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Here, &quot;DIVIDED-BY&quot; means integer division. (Example: 8 divided by 3 is 2.). </span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Inputs: </span></b></p>
<p align="center" class="MsoNormal" style="margin-bottom: 0.0001pt; text-align: center; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><tt><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">NINE PLUS FOUR</span></tt></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><tt><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">FIVE MINUS SEVEN</span></tt></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><tt><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">TWO THOUSAND SEVEN HUNDRED NINETY THREE PLUS ONE HUNDRED SEVENTY</span></tt></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><tt><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">THIRTEEN TIMES ZERO </span></tt></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><tt><span style="font-size: 10pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">EIGHTY SEVEN </span></tt><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">DIVIDED-BY FIFTEEN</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp; </span></span></p>
<p class="MsoNormal"><b><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Outputs:</span></b></p>
<p><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">13<br />
-2<br />
2963<br />
0<br />
5<br style="" />
<br style="" />
</span></p>', N'problem3_input.txt', N'problem3_output.txt', 5, 13, N'ZERO PLUS ZERO
NINE PLUS FOUR
FIVE MINUS SEVEN
TWO THOUSAND SEVEN HUNDRED NINETY THREE PLUS ONE HUNDRED SEVENTY
THIRTEEN TIMES ZERO
EIGHTY SEVEN DIVIDED-BY FIFTEEN
FORTY ONE TIMES TWO THOUSAND EIGHTEEN
SIX THOUSAND EIGHT HUNDRED ELEVEN DIVIDED-BY SIXTY TWO
TWELVE MINUS TWENTY THREE
EIGHTEEN MINUS NINE', N'0
13
-2
2963
0
5
82738
109
-11
9
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (57, N'P #4', N'Run, Run, Runaround Numbers', N'<p><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:10.0pt;
font-family:"Calibri","sans-serif";}
</style>
<![endif]--></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">An <i>N</i>-digit runaround number is characterized as follows:</span></p>
<ul type="disc">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">It is an integer with exactly <i>N</i> digits, each of      which is between 1 and 9, inclusively. </span></li>
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The digits form a sequence with each digit telling      where the next digit in the sequence occurs. This is done by giving the      number of digits to the right of the digit where the next digit in the      sequence occurs. If necessary, counting wraps around from the rightmost      digit back to the leftmost. </span></li>
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The leftmost digit in the number is the first digit in      the sequence, and the sequence must return to this digit after all digits      in the number have been used exactly once. </span></li>
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">No digit will appear more than once in the number</span></li>
</ul>
<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">For example, consider the number 81362. To verify that this is a runaround number, we use the steps shown below: </span></p>
<ol type="1" start="1">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Start with the leftmost digit, 8</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">-</span></p>
<ol type="1" start="2">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Count 8 digits to the right, ending on 6 (note the      wraparound).</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">-<span style="">&nbsp;&nbsp;&nbsp;&nbsp; </span>-</span></p>
<ol type="1" start="3">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Count 6 digits to the right, ending on 2.</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">-<span style="">&nbsp;&nbsp;&nbsp;&nbsp; </span>- -</span></p>
<ol type="1" start="4">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Count 2 digits to the right, ending on 1.</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">- -<span style="">&nbsp;&nbsp; </span>- -</span></p>
<ol type="1" start="5">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Count 1 digit to the right, ending on 3.</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">- - - - -</span></p>
<ol type="1" start="6">
    <li class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Count 3 digits to the right, ending on 8, where we      began.</span></li>
</ol>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">8 1 3 6 2</span></p>
<p class="MsoNormal" style="margin: 0in 0in 0.0001pt 0.5in; line-height: normal;"><span style="font-size: 10pt; font-family: &quot;Courier New&quot;;">= - - - -</span></p>
<p class="MsoNormal"><span style="font-size: 10pt; line-height: 115%; font-family: &quot;Courier New&quot;;">&nbsp;</span></p>
<p class="MsoNormal"><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In this problem you will be provided with one or more input lines, each with a single integer <i>R</i> having between 2 and 7 digits followed immediately by the end of line. For each such number, determine the smallest runaround number that is equal to or greater than <i>R</i>. There will always be such a number for each of the input numbers. Display the resulting number in the format illustrated below.</span></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Inputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>
<pre>
12</pre>
<pre>
123</pre>
<pre>
1234</pre>
<pre>
81111</pre>
<pre>
82222</pre>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal"><b><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Outputs:</span></b></p>
<pre>
13</pre>
<pre>
147</pre>
<pre>
1263</pre>
<pre>
81236</pre>
<pre>
83491</pre>
<p class="MsoNormal"><b><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>', N'problem4_input.txt', N'problem4_output.txt', 5, 13, N'12
123
1234
81111
82222
83333
911111
7654321
2193
2010
4678971
767677
7777
1111
50', N'13
147
1263
81236
83491
83491
913425
8124956
2316
2316
4682519
794253
7926
1263
51
')
INSERT [dbo].[Problems] ([ID], [PNumber], [PName], [Statement], [InputFile], [OutputFile], [Time], [ContestID], [Input], [Output]) VALUES (58, N'P #5', N'Recognizing Good ISBNs', N'<p><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"
DefSemiHidden="true" DefQFormat="false" DefPriority="99"
LatentStyleCount="267">
<w:LsdException Locked="false" Priority="0" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Normal" />
<w:LsdException Locked="false" Priority="9" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="heading 1" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />
<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />
<w:LsdException Locked="false" Priority="39" Name="toc 1" />
<w:LsdException Locked="false" Priority="39" Name="toc 2" />
<w:LsdException Locked="false" Priority="39" Name="toc 3" />
<w:LsdException Locked="false" Priority="39" Name="toc 4" />
<w:LsdException Locked="false" Priority="39" Name="toc 5" />
<w:LsdException Locked="false" Priority="39" Name="toc 6" />
<w:LsdException Locked="false" Priority="39" Name="toc 7" />
<w:LsdException Locked="false" Priority="39" Name="toc 8" />
<w:LsdException Locked="false" Priority="39" Name="toc 9" />
<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />
<w:LsdException Locked="false" Priority="10" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Title" />
<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />
<w:LsdException Locked="false" Priority="11" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtitle" />
<w:LsdException Locked="false" Priority="22" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Strong" />
<w:LsdException Locked="false" Priority="20" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Emphasis" />
<w:LsdException Locked="false" Priority="59" SemiHidden="false"
UnhideWhenUsed="false" Name="Table Grid" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />
<w:LsdException Locked="false" Priority="1" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="No Spacing" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 1" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 1" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 1" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 1" />
<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />
<w:LsdException Locked="false" Priority="34" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />
<w:LsdException Locked="false" Priority="29" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Quote" />
<w:LsdException Locked="false" Priority="30" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 1" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 1" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 1" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 1" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 1" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 2" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 2" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 2" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 2" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 2" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 2" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 2" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 2" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 2" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 3" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 3" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 3" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 3" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 3" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 3" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 3" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 3" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 3" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 4" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 4" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 4" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 4" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 4" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 4" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 4" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 4" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 4" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 5" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 5" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 5" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 5" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 5" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 5" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 5" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 5" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 5" />
<w:LsdException Locked="false" Priority="60" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Shading Accent 6" />
<w:LsdException Locked="false" Priority="61" SemiHidden="false"
UnhideWhenUsed="false" Name="Light List Accent 6" />
<w:LsdException Locked="false" Priority="62" SemiHidden="false"
UnhideWhenUsed="false" Name="Light Grid Accent 6" />
<w:LsdException Locked="false" Priority="63" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />
<w:LsdException Locked="false" Priority="64" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />
<w:LsdException Locked="false" Priority="65" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 1 Accent 6" />
<w:LsdException Locked="false" Priority="66" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium List 2 Accent 6" />
<w:LsdException Locked="false" Priority="67" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />
<w:LsdException Locked="false" Priority="68" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />
<w:LsdException Locked="false" Priority="69" SemiHidden="false"
UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />
<w:LsdException Locked="false" Priority="70" SemiHidden="false"
UnhideWhenUsed="false" Name="Dark List Accent 6" />
<w:LsdException Locked="false" Priority="71" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Shading Accent 6" />
<w:LsdException Locked="false" Priority="72" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful List Accent 6" />
<w:LsdException Locked="false" Priority="73" SemiHidden="false"
UnhideWhenUsed="false" Name="Colorful Grid Accent 6" />
<w:LsdException Locked="false" Priority="19" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />
<w:LsdException Locked="false" Priority="21" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />
<w:LsdException Locked="false" Priority="31" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />
<w:LsdException Locked="false" Priority="32" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />
<w:LsdException Locked="false" Priority="33" SemiHidden="false"
UnhideWhenUsed="false" QFormat="true" Name="Book Title" />
<w:LsdException Locked="false" Priority="37" Name="Bibliography" />
<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />
</w:LatentStyles>
</xml><![endif]--><!--[if gte mso 10]>
<style>
/* Style Definitions */
table.MsoNormalTable
{mso-style-name:"Table Normal";
mso-tstyle-rowband-size:0;
mso-tstyle-colband-size:0;
mso-style-noshow:yes;
mso-style-priority:99;
mso-style-qformat:yes;
mso-style-parent:"";
mso-padding-alt:0in 5.4pt 0in 5.4pt;
mso-para-margin:0in;
mso-para-margin-bottom:.0001pt;
mso-pagination:widow-orphan;
font-size:10.0pt;
font-family:"Calibri","sans-serif";}
</style>
<![endif]--></p>
<p class="MsoNormal">Most books now published are assigned a code which uniquely identifies the book. The International Standard Book Number, or ISBN, is normally a sequence of 10 decimal digits, but in some cases, the capital letter X may also appear as the tenth digit. Hyphens are included at various places in the ISBN to make them easier to read, but have no other significance. The sample input and expected output shown below illustrate many valid, and a few invalid, forms for ISBNs.</p>
<p>Actually, only the first nine digits in an ISBN are used to identify a book. The tenth character serves as a check digit to verify that the preceding 9 digits are correctly formed. This check digit is selected so that the value computed as shown in the following algorithm is evenly divisible by 11. Since the check digit may sometimes need to be as large as 10 to guarantee divisibility by 11, a special symbol was selected by the ISBN designers to represent 10, and that is the role played by X.</p>
<p>The algorithm used to check an ISBN is relatively simple. Two sums, s1 and s2, are computed over the digits of the ISBN, with s2 being the sum of the partial sums in s1 after each digit of the ISBN is added to it. The ISBN is correct if the final value of s2 is evenly divisible by 11.</p>
<p>An example will clarify the procedure. Consider the (correct) ISBN 0-13-162959-X (for Tanenbaum''s Computer Networks). First look at the calculation of s1:</p>
<pre>
---------------------------------------------------------------</pre>
<pre>
digits in the ISBN<span style="">&nbsp;&nbsp;&nbsp; </span>0<span style="">&nbsp;&nbsp; </span>1<span style="">&nbsp;&nbsp; </span>3<span style="">&nbsp;&nbsp; </span>1<span style="">&nbsp;&nbsp; </span>6<span style="">&nbsp;&nbsp; </span>2<span style="">&nbsp;&nbsp; </span>9<span style="">&nbsp;&nbsp; </span>5<span style="">&nbsp;&nbsp; </span>9<span style="">&nbsp;&nbsp; </span>10(X)</pre>
<pre>
partial sums<span style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>0<span style="">&nbsp;&nbsp; </span>1<span style="">&nbsp;&nbsp; </span>4<span style="">&nbsp;&nbsp; </span>5<span style="">&nbsp; </span>11<span style="">&nbsp; </span>13<span style="">&nbsp; </span>22<span style="">&nbsp; </span>27<span style="">&nbsp; </span>36<span style="">&nbsp;&nbsp; </span>46</pre>
<pre>
---------------------------------------------------------------</pre>
<p class="MsoNormal">The calculation of s2 is done by computing the total of the partial sums in the calculation of s1:</p>
<pre>
---------------------------------------------------------------</pre>
<pre>
s2 (running totals)<span style="">&nbsp;&nbsp; </span>0<span style="">&nbsp;&nbsp; </span>1<span style="">&nbsp;&nbsp; </span>5<span style="">&nbsp; </span>10<span style="">&nbsp; </span>21<span style="">&nbsp; </span>34<span style="">&nbsp; </span>56<span style="">&nbsp; </span>83<span style="">&nbsp; </span>119<span style="">&nbsp; </span>165 </pre>
<pre>
---------------------------------------------------------------</pre>
<p class="MsoNormal">We now verify the correctness of the ISBN by noting that 165 is, indeed, evenly divisible by 11.</p>
<p>The input data for this problem will contain one candidate ISBN per line of input, perhaps preceded and/or followed by additional spaces. No line will contain more than 80 characters, but the candidate ISBN may contain illegal characters, and more or fewer than the required 10 digits. Valid ISBNs may include hyphens at arbitrary locations.</p>
<p>The output should include a display of the candidate ISBN and a statement of whether it is legal or illegal. The expected output shown below illustrates the expected form.</p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b>&nbsp;</b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Inputs: </span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">0-89237-010-6</span></pre>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">0-8306-3637-4<span style="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></pre>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp;&nbsp;</span>0-06-017758-6</span></pre>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp;&nbsp;&nbsp; </span>This_is_garbage</span></pre>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">1-56884-030-6</span></p>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp;&nbsp;&nbsp; </span>0-345-24865-1-150</span></pre>
<pre><span style="font-size: 11pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp;&nbsp;&nbsp; </span>0-1315-2447-X</span></pre>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><b><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>
<p class="MsoNormal" style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></p>
<p class="MsoNormal"><b><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Sample Outputs:</span></b></p>
<pre>
0-89237-010-6 is correct.</pre>
<pre>
0-8306-3637-4 is correct.</pre>
<pre>
0-06-017758-6 is correct.</pre>
<pre>
This_is_garbage is incorrect.</pre>
<pre>
1-56884-030-6 is correct.</pre>
<pre>
0-345-24865-1-150 is incorrect.</pre>
<pre>
0-1315-2447-X is correct.</pre>
<p class="MsoNormal"><b><span style="font-size: 12pt; line-height: 115%; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">&nbsp;</span></b></p>', N'problem5_input.txt', N'problem5_output.txt', 5, 13, N'0-89237-010-6
0-8306-3637-4      
  0-06-017758-6
    This_is_Test
1-56884-030-6
    0-8230-2571-3
    0-345-31386-0
    0-671-88858-7
    0-8104-5687-7
    0-671-74119-5
    0-812-52030-0
    0-345-24865-1-150
0-452-26740-4
    0-13-139072-4
    0-1315-2447-X
0-T52-26740-4', N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
')
SET IDENTITY_INSERT [dbo].[Problems] OFF
/****** Object:  Table [dbo].[Solution]    Script Date: 05/04/2012 09:28:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Solution]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Solution](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ProblemId] [bigint] NOT NULL,
	[ContestId] [bigint] NOT NULL,
	[ResultId] [bigint] NOT NULL,
	[time] [datetime] NOT NULL,
	[FileName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[RequireTime] [float] NOT NULL,
	[Output] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SolutionFileName] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Solution] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Solution] ON
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (14, 2, 3, 6, 1, CAST(0x00009D4E01011983 AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (15, 2, 23, 6, 1, CAST(0x00009D4E01014086 AS DateTime), N'Mirror Clock.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (16, 2, 3, 6, 7, CAST(0x00009D4E0101E1FC AS DateTime), N'Below Average.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (17, 2, 3, 6, 2, CAST(0x00009D4E01024CF6 AS DateTime), N'Below Average.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (18, 3, 3, 6, 1, CAST(0x00009D4E0103E239 AS DateTime), N'Prob1.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (19, 3, 3, 6, 2, CAST(0x00009D4E0103F89D AS DateTime), N'Prob1.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (20, 3, 23, 6, 2, CAST(0x00009D4E0104E798 AS DateTime), N'Prob1.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (21, 3, 23, 6, 1, CAST(0x00009D4E01052CD1 AS DateTime), N'Prob1.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (22, 2, 24, 7, 1, CAST(0x00009D6300BD5C01 AS DateTime), N'A.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (23, 2, 24, 7, 1, CAST(0x00009D6300BD987F AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (24, 2, 25, 7, 7, CAST(0x00009D6300BDC38B AS DateTime), N'b.exe', 0.2, N'Valid
Invalid
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (25, 2, 26, 7, 1, CAST(0x00009D6300BE0D7E AS DateTime), N'c.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (26, 2, 27, 7, 1, CAST(0x00009D6300BE21C3 AS DateTime), N'd.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (27, 2, 28, 7, 1, CAST(0x00009D6300BE3051 AS DateTime), N'e.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (28, 2, 28, 7, 1, CAST(0x00009D6300BE473D AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (29, 2, 24, 7, 1, CAST(0x00009D6300BEBFD4 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (30, 2, 28, 7, 1, CAST(0x00009D6300C18568 AS DateTime), N'e.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (31, 2, 25, 7, 6, CAST(0x00009D6300C1CCED AS DateTime), N'Sample.exe', 5.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (32, 2, 28, 7, 1, CAST(0x00009D6300C365CC AS DateTime), N'e.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (33, 2, 25, 7, 1, CAST(0x00009D6300C46065 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (34, 2, 26, 7, 1, CAST(0x00009D6300C476FE AS DateTime), N'Sample.exe', 0.5, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (35, 2, 27, 7, 1, CAST(0x00009D6300C491A7 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (36, 2, 28, 7, 1, CAST(0x00009D6300C4AB5C AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (37, 2, 28, 7, 1, CAST(0x00009D6300C530CA AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (38, 3, 24, 7, 1, CAST(0x00009D63011A9EA7 AS DateTime), N'ProblemA.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (39, 3, 26, 7, 1, CAST(0x00009D63011CA2A2 AS DateTime), N'ProblemC.exe', 1.7, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (40, 6, 24, 7, 2, CAST(0x00009D63011CA5B7 AS DateTime), N'Problem1.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (41, 4, 24, 7, 2, CAST(0x00009D63011D20D1 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (42, 7, 24, 7, 1, CAST(0x00009D63011D7A33 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (43, 5, 24, 7, 2, CAST(0x00009D63011E01B7 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (44, 6, 25, 7, 2, CAST(0x00009D63011E592A AS DateTime), N'Problem1.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (45, 5, 24, 7, 1, CAST(0x00009D63011E9A9C AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (46, 6, 24, 7, 2, CAST(0x00009D63011EA226 AS DateTime), N'Problem1.exe', 0.1, N'', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (47, 4, 24, 7, 1, CAST(0x00009D6301200697 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (48, 3, 27, 7, 1, CAST(0x00009D6301203B68 AS DateTime), N'ProblemD.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (49, 4, 25, 7, 6, CAST(0x00009D630121429E AS DateTime), N'Sample.exe', 5.1, N'', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (50, 6, 24, 7, 1, CAST(0x00009D6301216ACA AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (51, 7, 26, 7, 1, CAST(0x00009D630121929E AS DateTime), N'Sample.exe', 0.7, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (52, 4, 25, 7, 7, CAST(0x00009D630121A709 AS DateTime), N'Sample.exe', 5.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (53, 4, 25, 7, 6, CAST(0x00009D630121E5E0 AS DateTime), N'Sample.exe', 5.1, N'2
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (54, 3, 25, 7, 1, CAST(0x00009D6301232E27 AS DateTime), N'ProblemB.exe', 0.2, N'2
1000000000000
500000000000
2890173410
225022502
7812500000
2222222222
230232
1
426930
42735000
434782174
4999995001
1428570000
1330064
100010001
1
100371373179
1
0
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (55, 7, 25, 7, 6, CAST(0x00009D630123C11F AS DateTime), N'Sample.exe', 5.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (56, 6, 25, 7, 2, CAST(0x00009D6301241494 AS DateTime), N'Problem2.exe', 0.1, N'', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (57, 4, 25, 7, 2, CAST(0x00009D6301242CC0 AS DateTime), N'Sample.exe', 0.2, N'2
999999999999
500000000000
2890173410
225022502
7812500000
2222222222
230232
1
426930
42735000
434782174
4999995000
1428570000
1330064
100010001
0
100371373179
0
0
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (58, 6, 25, 7, 2, CAST(0x00009D630124B157 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (59, 7, 25, 7, 6, CAST(0x00009D630124E176 AS DateTime), N'Sample.exe', 5.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (60, 4, 25, 7, 1, CAST(0x00009D6301250AF3 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (61, 7, 25, 7, 6, CAST(0x00009D6301264500 AS DateTime), N'Sample.exe', 5.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (62, 5, 26, 7, 1, CAST(0x00009D630127899F AS DateTime), N'Sample.exe', 0.5, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (63, 6, 25, 7, 2, CAST(0x00009D630127C9D5 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (64, 6, 25, 7, 2, CAST(0x00009D630128AB42 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (65, 4, 26, 7, 1, CAST(0x00009D630128B182 AS DateTime), N'Sample.exe', 1.6, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (66, 7, 25, 7, 1, CAST(0x00009D630128D9FC AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (67, 6, 25, 7, 2, CAST(0x00009D63012927D7 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (68, 5, 25, 7, 2, CAST(0x00009D6301297718 AS DateTime), N'Sample.exe', 4.9, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (69, 6, 25, 7, 2, CAST(0x00009D6301298451 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (70, 6, 25, 7, 2, CAST(0x00009D6301299F75 AS DateTime), N'Problem2.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (71, 6, 25, 7, 2, CAST(0x00009D630129FCDA AS DateTime), N'Problem2.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (72, 5, 25, 7, 1, CAST(0x00009D63012A3173 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (73, 4, 27, 7, 1, CAST(0x00009D63012AF5A7 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (74, 5, 27, 7, 1, CAST(0x00009D6301312447 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (75, 7, 27, 7, 1, CAST(0x00009D630133D022 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (76, 2, 29, 8, 1, CAST(0x00009D86011EC102 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (77, 2, 29, 8, 1, CAST(0x00009D86011F5A2A AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (78, 2, 30, 8, 1, CAST(0x00009D860121E2D6 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (79, 4, 29, 8, 1, CAST(0x00009D860123A75A AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (80, 2, 33, 8, 2, CAST(0x00009D860124BF08 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (81, 2, 33, 8, 2, CAST(0x00009D8601250CF7 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (82, 6, 33, 8, 2, CAST(0x00009D860125C6B8 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (83, 6, 33, 8, 1, CAST(0x00009D8601266CCE AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (84, 2, 31, 8, 1, CAST(0x00009D860126A6CB AS DateTime), N'asmall.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (85, 2, 33, 8, 2, CAST(0x00009D860127561A AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (86, 7, 33, 8, 2, CAST(0x00009D8601281E3C AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (87, 7, 33, 8, 2, CAST(0x00009D860129382E AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (88, 2, 33, 8, 1, CAST(0x00009D8601293B08 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (89, 7, 33, 8, 2, CAST(0x00009D860129E66F AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (90, 4, 33, 8, 2, CAST(0x00009D860129FF0E AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (91, 4, 33, 8, 1, CAST(0x00009D86012C4C4A AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (92, 7, 33, 8, 2, CAST(0x00009D86012C5548 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (93, 5, 33, 8, 2, CAST(0x00009D86012CFB5F AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (94, 5, 33, 8, 2, CAST(0x00009D86012D6F9E AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (95, 5, 33, 8, 1, CAST(0x00009D86012E2EA4 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (96, 2, 32, 8, 2, CAST(0x00009D86012F9292 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (97, 6, 29, 8, 1, CAST(0x00009D860131D6BB AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (98, 2, 32, 8, 1, CAST(0x00009D86013721C9 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (99, 7, 33, 8, 1, CAST(0x00009D86013979C7 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (100, 4, 30, 8, 6, CAST(0x00009D860139ED5E AS DateTime), N'Sample.exe', 1.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (101, 5, 29, 8, 2, CAST(0x00009D86013A437A AS DateTime), N'Sample.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (102, 4, 30, 8, 6, CAST(0x00009D86013ABE73 AS DateTime), N'Sample.exe', 1.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (103, 5, 29, 8, 1, CAST(0x00009D86013B4253 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (104, 4, 30, 8, 6, CAST(0x00009D86013BE27A AS DateTime), N'Sample.exe', 1.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (105, 4, 30, 8, 2, CAST(0x00009D86013DEBE0 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (106, 4, 30, 8, 1, CAST(0x00009D86013ED552 AS DateTime), N'Sample.exe', 0.8, N'Case #1: 1
Case #2: 2
Case #3: -1
Case #4: 3
Case #5: 4
Case #6: 6
Case #7: 9
Case #8: 9
Case #9: 7
Case #10: 8
Case #11: 10
Case #12: 12
Case #13: 7
Case #14: 9
Case #15: 9
Case #16: 11
Case #17: 1
Case #18: 9
Case #19: 9
Case #20: 9
Case #21: 7
Case #22: 5
Case #23: 8
Case #24: 3
Case #25: 9
Case #26: 11
Case #27: 10
Case #28: 8
Case #29: 11
Case #30: 11
Case #31: 11
Case #32: 8
Case #33: 6
Case #34: 9
Case #35: 11
Case #36: 11
Case #37: -1
Case #38: 8
Case #39: -1
Case #40: 9
Case #41: 9
Case #42: -1
Case #43: -1
Case #44: 8
Case #45: 8
Case #46: 8
Case #47: 10
Case #48: 12
Case #49: 4
Case #50: 5
Case #51: 6
Case #52: 10
Case #53: 6
Case #54: 4
Case #55: 10
Case #56: 8
Case #57: 8
Case #58: 10
Case #59: 11
Case #60: 10
Case #61: 9
Case #62: 6
Case #63: -1
Case #64: 10
Case #65: 8
Case #66: 9
Case #67: 9
Case #68: 11
Case #69: 10
Case #70: 10
Case #71: -1
Case #72: 5
Case #73: 10
Case #74: 11
Case #75: 6
Case #76: 7
Case #77: 10
Case #78: 10
Case #79: 11
Case #80: 4
Case #81: 8
Case #82: 7
Case #83: 12
Case #84: -1
Case #85: 7
Case #86: -1
Case #87: 7
Case #88: 6
Case #89: 7
Case #90: 10
Case #91: 8
Case #92: 9
Case #93: 4
Case #94: 9
Case #95: 10
Case #96: 8
Case #97: 7
Case #98: 10
Case #99: -1
Case #100: 10
Case #101: 10
Case #102: 8
Case #103: 10
Case #104: -1
Case #105: 10
Case #106: 4
Case #107: 4
Case #108: 10
Case #109: 10
Case #110: 1
Case #111: -1
Case #112: -1
Case #113: -1
Case #114: -1
Case #115: 12
Case #116: 12
Case #117: -1
Case #118: 3
Case #119: 4
Case #120: 1
Case #121: 1
Case #122: -1
Case #123: 9
Case #124: 2
Case #125: 9
Case #126: 5
Case #127: 2
Case #128: -1
Case #129: 2
Case #130: 2
Case #131: 3
Case #132: 2
Case #133: 2
Case #134: 10
Case #135: 2
Case #136: 4
Case #137: 2
Case #138: 1
Case #139: 12
Case #140: 6
Case #141: 11
Case #142: 1
Case #143: -1
Case #144: -1
Case #145: 1
Case #146: 3
Case #147: -1
Case #148: 4
Case #149: 2
Case #150: 3
Case #151: 11
Case #152: 7
Case #153: 10
Case #154: 10
Case #155: 3
Case #156: 1
Case #157: 10
Case #158: -1
Case #159: 2
Case #160: -1
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (107, 4, 30, 8, 1, CAST(0x00009D86013EEE95 AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (108, 3, 34, 9, 2, CAST(0x00009DA9011B1A5C AS DateTime), N'ProblemA.exe', 3, N'3 2 5
1 3 1
Not Found
5 3 1
1 1 1
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (109, 3, 34, 9, 6, CAST(0x00009DA9011B4B9D AS DateTime), N'ProblemA.exe', 30.1, N'3 2 5
1 3 1
Not Found
5 3 1
1 1 1
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (110, 3, 34, 9, 2, CAST(0x00009DA9011C57F6 AS DateTime), N'ProblemA.exe', 6.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (111, 3, 34, 9, 1, CAST(0x00009DA9011D630E AS DateTime), N'ProblemA.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (112, 2, 34, 9, 1, CAST(0x00009DA9011F3B90 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (113, 3, 35, 9, 1, CAST(0x00009DA90120CB33 AS DateTime), N'ProblemB.exe', 0.2, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (114, 6, 34, 9, 1, CAST(0x00009DA90122A304 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (115, 2, 35, 9, 1, CAST(0x00009DA9012410A1 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (116, 7, 34, 9, 2, CAST(0x00009DA901253546 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (117, 5, 34, 9, 2, CAST(0x00009DA90125B5B9 AS DateTime), N'Sample.exe', 23.6, N'3 2 5
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (118, 5, 34, 9, 2, CAST(0x00009DA901266833 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (119, 5, 34, 9, 2, CAST(0x00009DA901270728 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (120, 5, 34, 9, 2, CAST(0x00009DA90127F902 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (121, 2, 38, 9, 1, CAST(0x00009DA901287DC8 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (122, 7, 34, 9, 2, CAST(0x00009DA9012889A5 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (123, 3, 36, 9, 1, CAST(0x00009DA90128BB37 AS DateTime), N'ProblemC.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (124, 7, 34, 9, 2, CAST(0x00009DA90128D951 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (125, 5, 34, 9, 2, CAST(0x00009DA901294746 AS DateTime), N'Sample.exe', 5.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (126, 5, 34, 9, 2, CAST(0x00009DA9012A187E AS DateTime), N'Sample.exe', 5.4, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (127, 5, 34, 9, 2, CAST(0x00009DA9012B5724 AS DateTime), N'Sample.exe', 5.1, N'3 2 5
1 3 1
Not Found
5 4 2
1 1 1
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (128, 7, 34, 9, 1, CAST(0x00009DA9012D4A13 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (129, 6, 35, 9, 1, CAST(0x00009DA9012D56D2 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (130, 5, 34, 9, 2, CAST(0x00009DA9012E599C AS DateTime), N'Sample.exe', 9.9, N'3 2 5
1 3 1
Not Found
5 4 2
1 1 1
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (131, 5, 34, 9, 2, CAST(0x00009DA9012EF84A AS DateTime), N'Sample.exe', 4.4, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (132, 5, 34, 9, 2, CAST(0x00009DA9012F63A6 AS DateTime), N'Sample.exe', 4.8, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (133, 5, 34, 9, 2, CAST(0x00009DA9013011EE AS DateTime), N'Sample.exe', 5.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (134, 2, 37, 9, 1, CAST(0x00009DA90130996A AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (135, 3, 37, 9, 1, CAST(0x00009DA90130B174 AS DateTime), N'ProblemD.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (136, 5, 34, 9, 2, CAST(0x00009DA90131E920 AS DateTime), N'Sample.exe', 5, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (137, 2, 36, 9, 1, CAST(0x00009DA90132F634 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (138, 5, 34, 9, 2, CAST(0x00009DA90133B440 AS DateTime), N'Sample.exe', 4.6, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (139, 5, 34, 9, 2, CAST(0x00009DA90134B61B AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (140, 7, 35, 9, 6, CAST(0x00009DA9013579FF AS DateTime), N'Sample.exe', 30.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (141, 7, 35, 9, 6, CAST(0x00009DA901359048 AS DateTime), N'Sample.exe', 30.1, N'', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (142, 5, 34, 9, 2, CAST(0x00009DA901362BA1 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (143, 5, 34, 9, 2, CAST(0x00009DA901363234 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (144, 5, 34, 9, 1, CAST(0x00009DA90136CF6C AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (145, 7, 35, 9, 2, CAST(0x00009DA90136D823 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (146, 3, 38, 9, 1, CAST(0x00009DA9013720C2 AS DateTime), N'ProblemE.exe', 0.7, N'Valid
Invalid
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (147, 7, 35, 9, 2, CAST(0x00009DA901382772 AS DateTime), N'Sample.exe', 1, N'Incorrect
Incorrect
Incorrect
Incorrect
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (148, 7, 35, 9, 2, CAST(0x00009DA90139678A AS DateTime), N'Sample.exe', 0.9, N'Incorrect
Incorrect
Incorrect
Incorrect
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (149, 7, 35, 9, 1, CAST(0x00009DA9013A1C3B AS DateTime), N'Sample.exe', 0.1, N'Incorrect
Correct
Incorrect
Correct
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (150, 2, 39, 10, 1, CAST(0x00009DC0010996BE AS DateTime), N'Sample.exe', 0.2, N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16
', N'Solution/2/39/150/Sample.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (151, 3, 39, 10, 1, CAST(0x00009DC0010A9880 AS DateTime), N'ProblemA.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (152, 3, 39, 10, 1, CAST(0x00009DC0010C31D9 AS DateTime), N'ProblemA.exe', 0.7, N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (153, 3, 39, 10, 1, CAST(0x00009DC0010D0C4C AS DateTime), N'ProblemA.exe', 0.9, N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (154, 2, 42, 10, 2, CAST(0x00009DC0010F877B AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (155, 3, 39, 10, 1, CAST(0x00009DC001116ACB AS DateTime), N'ProblemA.exe', 0.7, N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (156, 3, 39, 10, 1, CAST(0x00009DC001119378 AS DateTime), N'ProblemA.exe', 0.7, N'4
3
4
16
18
19
16
16
17
15
15
18
17
17
16
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (157, 3, 42, 10, 2, CAST(0x00009DC00111BF7F AS DateTime), N'ProblemD.exe', 4.3, N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (158, 7, 39, 10, 2, CAST(0x00009DC00112D55C AS DateTime), N'Sample.exe', 2.6, N'4
4
4
16
18
19
19
19
19
19
19
19
19
19
19
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (159, 2, 41, 10, 1, CAST(0x00009DC00115380F AS DateTime), N'Sample.exe', 0.1, NULL, N'Solution/2/41/159/Sample.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (160, 7, 39, 10, 2, CAST(0x00009DC00116D9B7 AS DateTime), N'Sample.exe', 1.4, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (161, 4, 42, 10, 2, CAST(0x00009DC0011725C8 AS DateTime), N'Sample.exe', 4.9, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (162, 2, 42, 10, 2, CAST(0x00009DC001190BFE AS DateTime), N'Sample.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (163, 4, 42, 10, 2, CAST(0x00009DC001191152 AS DateTime), N'Sample.exe', 5.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (164, 2, 42, 10, 1, CAST(0x00009DC0011AD91B AS DateTime), N'Sample.exe', 0.1, N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
25000000
25000000
417
7911512
5176022
7281612
6452112
3523599
', N'Solution/2/42/164/Sample.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (165, 4, 42, 10, 1, CAST(0x00009DC0011B127B AS DateTime), N'Sample.exe', 0.3, N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
25000000
25000000
417
7911512
5176022
7281612
6452112
3523599
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (166, 5, 41, 10, 7, CAST(0x00009DC0011CF438 AS DateTime), N'Sample.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (167, 5, 41, 10, 7, CAST(0x00009DC0011E9DB5 AS DateTime), N'Sample.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (168, 3, 41, 10, 1, CAST(0x00009DC0011EB9A7 AS DateTime), N'ProblemC.exe', 0.7, N'2
1
1
1
1
1
2
2
1
1
3
2
1
50
1
1
2
1
1
1
5
19
1
4
14
1
17
27
1
14
5
4
18
1
11
6
35
22
26
15
5
13
1
22
6
1
1
9
1
33
1
12
28
2
4
1
6
1
3
1
1
1
36
2
4
5
6
10
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (169, 3, 42, 10, 2, CAST(0x00009DC0011FE383 AS DateTime), N'ProblemD.exe', 6.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (170, 3, 42, 10, 2, CAST(0x00009DC001202D82 AS DateTime), N'ProblemD.exe', 6.4, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (171, 4, 39, 10, 1, CAST(0x00009DC00120B182 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (172, 4, 39, 10, 1, CAST(0x00009DC00120B6DD AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (173, 5, 41, 10, 2, CAST(0x00009DC0012170D2 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (174, 3, 42, 10, 2, CAST(0x00009DC00121A369 AS DateTime), N'ProblemD.exe', 7.8, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (175, 3, 41, 10, 1, CAST(0x00009DC00122E7C3 AS DateTime), N'ProblemC.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (176, 3, 42, 10, 2, CAST(0x00009DC001234483 AS DateTime), N'ProblemD.exe', 0.2, N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
25000000
25000000
377
7911512
5176022
7281612
6452112
3523599
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (177, 7, 39, 10, 1, CAST(0x00009DC0012407A0 AS DateTime), N'Sample.exe', 1.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (178, 5, 42, 10, 2, CAST(0x00009DC001241EB1 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (179, 5, 42, 10, 1, CAST(0x00009DC001246418 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (180, 3, 42, 10, 1, CAST(0x00009DC00124D8FB AS DateTime), N'ProblemD.exe', 0.3, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (181, 5, 39, 10, 7, CAST(0x00009DC001251151 AS DateTime), N'Sample.exe', 0, N'', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (182, 5, 39, 10, 2, CAST(0x00009DC00125EE26 AS DateTime), N'Sample.exe', 0.2, N'5
4
5
17
19
20
17
17
18
16
16
19
18
18
17
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (183, 5, 39, 10, 1, CAST(0x00009DC001265260 AS DateTime), N'Sample.exe', 0.2, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (184, 7, 42, 10, 1, CAST(0x00009DC0012B7B35 AS DateTime), N'Sample.exe', 0.3, N'27
6
-1
1
2
4183022
2239547
6446049
3723603
7818754
8097821
7621446
25000000
25000000
417
7911512
5176022
7281612
6452112
3523599
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (185, 4, 41, 10, 2, CAST(0x00009DC0012DE319 AS DateTime), N'Sample.exe', 0.1, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (186, 7, 41, 10, 2, CAST(0x00009DC0012E8AD3 AS DateTime), N'Sample.exe', 0, NULL, NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (187, 4, 41, 10, 2, CAST(0x00009DC0012ED2CE AS DateTime), N'Sample.exe', 0.1, N'2
1
1
1
1
1
2
2
1
1
3
2
1
50
1
2
2
3
17
17
9
31
1
16
26
4
27
28
7
25
14
24
20
1
14
7
36
22
26
19
23
21
5
33
22
14
9
15
3
38
3
12
28
2
4
1
6
1
3
2
1
1
36
3
5
5
6
20
', NULL)
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (188, 2, 40, 10, 1, CAST(0x00009DC0012F6C8F AS DateTime), N'Sample.exe', 0.1, N'9.5
6
1.89393939393939E-06
115.2
123.333333333333
1991.93935606061
1000000000
1893.93939393939
20.9394260216402
326.920280612245
673.940883247564
1688.47694484593
877.386077005369
2275.5355633133
166666666.666667
6
1000000000
1000000000
9.88888888888889
1460.90092119967
', N'Solution/2/40/188/Sample.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (189, 2, 3, 6, 2, CAST(0x00009DC20114B70F AS DateTime), N'Below Average.exe', 0, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
', N'Solution/2/3/189/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (190, 2, 3, 6, 1, CAST(0x00009DC201159CBB AS DateTime), N'Below Average.exe', 0.7, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/2/3/190/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (191, 2, 3, 6, 1, CAST(0x00009DC2011E75EB AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/2/3/191/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (192, 4, 3, 6, 1, CAST(0x00009DC2011E8576 AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/4/3/192/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (193, 7, 3, 6, 1, CAST(0x00009DC2011E8CDC AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/7/3/193/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (194, 4, 23, 6, 7, CAST(0x00009DC2011EA176 AS DateTime), N'Below Average.exe', 5.5, NULL, N'Solution/4/23/194/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (195, 2, 3, 6, 1, CAST(0x00009DC2011EAD0A AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/2/3/195/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (196, 7, 3, 6, 1, CAST(0x00009DC2011EC914 AS DateTime), N'Below Average.exe', 0.8, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/7/3/196/Below Average.rar')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (197, 2, 3, 6, 7, CAST(0x00009DC6013465D7 AS DateTime), N'Below Average.exe', 0, N'', N'Solution/2/3/197/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (198, 2, 3, 6, 1, CAST(0x00009DC60134BAC3 AS DateTime), N'Below Average.exe', 1.5, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/2/3/198/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (199, 2, 3, 6, 7, CAST(0x00009DC601353660 AS DateTime), N'Below Average.exe', 0, N'', N'Solution/2/3/199/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (200, 2, 3, 6, 1, CAST(0x00009DE800E909BC AS DateTime), N'Below Average.exe', 0.1, N'40%
42.8571428571429%
33.3333333333333%
33.3333333333333%
44.4444444444444%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
0%
0%
0%
0%
0%
60%
60%
60%
60%
60%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
50%
', N'Solution/2/3/200/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (201, 2, 44, 11, 7, CAST(0x00009DE8010C7961 AS DateTime), N'Sample.exe', 5.4, NULL, N'Solution/2/44/201/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (202, 2, 44, 11, 7, CAST(0x00009DE8010D37A1 AS DateTime), N'Sample.exe', 4.8, NULL, N'Solution/2/44/202/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (203, 3, 46, 11, 2, CAST(0x00009DE8010DF7AA AS DateTime), N'ProblemC.exe', 4.5, N'1400
1500
4640
-50
40
20734
0
', N'Solution/3/46/203/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (204, 3, 46, 11, 1, CAST(0x00009DE801122F04 AS DateTime), N'ProblemC.exe', 4.9, N'1400
1600
4640
-100
0
20734
0
', N'Solution/3/46/204/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (205, 2, 46, 11, 2, CAST(0x00009DE80112CAEA AS DateTime), N'Sample.exe', 0.1, N'1400
1400
4640
-100
-4
20734
0
', N'Solution/2/46/205/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (206, 2, 46, 11, 2, CAST(0x00009DE8011331D6 AS DateTime), N'Sample.exe', 0.2, N'1400
1400
4640
-100
-4
20734
0
', N'Solution/2/46/206/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (207, 5, 46, 11, 2, CAST(0x00009DE801140EE5 AS DateTime), N'Sample.exe', 0.1, N'1400
1400
4640
-100
-19
20734
0
', N'Solution/5/46/207/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (208, 2, 46, 11, 1, CAST(0x00009DE80114C15E AS DateTime), N'Sample.exe', 0.3, N'1400
1600
4640
-100
0
20734
0
', N'Solution/2/46/208/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (209, 4, 46, 11, 2, CAST(0x00009DE80116D625 AS DateTime), N'Sample.exe', 0.2, N'1400
1400
4640
-100
-4
20734
0
', N'Solution/4/46/209/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (210, 5, 46, 11, 2, CAST(0x00009DE80119BA1D AS DateTime), N'Sample.exe', 0.1, N'1400
1400
4640
-100
-19
20734
0
', N'Solution/5/46/210/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (211, 4, 46, 11, 1, CAST(0x00009DE8011A0F62 AS DateTime), N'Sample.exe', 0.1, N'1400
1600
4640
-100
0
20734
0
', N'Solution/4/46/211/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (212, 2, 44, 11, 2, CAST(0x00009DE8011D323C AS DateTime), N'Sample.exe', 5.1, N'80
4
4
160
', N'Solution/2/44/212/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (213, 5, 46, 11, 2, CAST(0x00009DE8011D7A6F AS DateTime), N'Sample.exe', 0.1, N'1200
1600
4640
-100
0
-22221
0
', N'Solution/5/46/213/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (214, 2, 44, 11, 2, CAST(0x00009DE8011FFA11 AS DateTime), N'Sample.exe', 0.1, N'158
4
4
160
59
', N'Solution/2/44/214/Program.cs')
GO
print 'Processed 200 total records'
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (215, 5, 46, 11, 2, CAST(0x00009DE801203780 AS DateTime), N'Sample.exe', 0.1, N'1200
1600
4640
-100
0
20734
0
', N'Solution/5/46/215/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (216, 2, 44, 11, 1, CAST(0x00009DE801203A95 AS DateTime), N'Sample.exe', 0.1, N'158
4
4
160
39
', N'Solution/2/44/216/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (217, 3, 51, 12, 2, CAST(0x00009DFD010D19F2 AS DateTime), N'ProblemC.exe', 0.1, N'c.user.?i?e.programs
a
c.user.?i?e.programs
?q?zs
r??pw?e?bm?
?wa?k?apfz?fce
', N'Solution/3/51/217/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (218, 3, 51, 12, 2, CAST(0x00009DFD010E1A54 AS DateTime), N'ProblemC.exe', 0.1, N'c.user.?i?e.programs
a
c.user.?i?e.programs
?q?zs
r??pw?e?bm?
?wa?k?apfz?fce
', N'Solution/3/51/218/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (219, 2, 52, 12, 2, CAST(0x00009DFD01105EA1 AS DateTime), N'Sample.exe', 0.1, N'2
6120
1
5344
11
0
0
', N'Solution/2/52/219/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (220, 4, 49, 12, 2, CAST(0x00009DFD0110A440 AS DateTime), N'Sample.exe', 0.2, N'1999962
90
282
714
954
1602
3018
3954
', N'Solution/4/49/220/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (221, 4, 49, 12, 2, CAST(0x00009DFD01118B6D AS DateTime), N'Sample.exe', 0.1, N'1999962
90
282
714
954
1602
3018
3954
', N'Solution/4/49/221/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (222, 3, 51, 12, 1, CAST(0x00009DFD01131FF8 AS DateTime), N'ProblemC.exe', 0.1, N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
', N'Solution/3/51/222/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (223, 2, 51, 12, 2, CAST(0x00009DFD0114A6A9 AS DateTime), N'Sample.exe', 0.2, N'c.user.?i?e.programs
a
c.user.?i?e.programs
?q?zs
r??pw?e?bm?
?wa?k?apfz?fce
', N'Solution/2/51/223/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (224, 2, 51, 12, 1, CAST(0x00009DFD0114EECE AS DateTime), N'Sample.exe', 0.1, N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
', N'Solution/2/51/224/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (225, 5, 52, 12, 2, CAST(0x00009DFD0115F178 AS DateTime), N'Sample.exe', 0.3, N'100
105
312
12839
12345
12345
11111
22222
47203
47230
99842
99842
512
512
', N'Solution/5/52/225/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (226, 5, 52, 12, 2, CAST(0x00009DFD0116DDFE AS DateTime), N'Sample.exe', 0.2, N'100
105
312
12839
12345
12345
11111
22222
47203
47230
99842
99842
512
512
', N'Solution/5/52/226/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (227, 2, 52, 12, 1, CAST(0x00009DFD011763B0 AS DateTime), N'Sample.exe', 0.3, N'2
7987
1
7045
18
1
0
', N'Solution/2/52/227/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (228, 3, 52, 12, 1, CAST(0x00009DFD011831D6 AS DateTime), N'ProblemD.exe', 1.6, N'2
7987
1
7045
18
1
0
', N'Solution/3/52/228/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (229, 5, 52, 12, 1, CAST(0x00009DFD01183234 AS DateTime), N'Sample.exe', 5, N'2
7987
1
7045
18
1
0
', N'Solution/5/52/229/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (230, 4, 51, 12, 1, CAST(0x00009DFD01189D18 AS DateTime), N'Sample.exe', 0.3, N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
', N'Solution/4/51/230/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (231, 6, 51, 12, 1, CAST(0x00009DFD011E671E AS DateTime), N'Sample.exe', 0.4, N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
', N'Solution/6/51/231/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (232, 2, 50, 12, 1, CAST(0x00009DFD011FA264 AS DateTime), N'Sample.exe', 0.3, N'200
37.3636363636364
991.09900990099
133233.649188532
86641.9171368693
56294.4601569225
', N'Solution/2/50/232/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (233, 5, 51, 12, 1, CAST(0x00009DFD01216459 AS DateTime), N'Sample.exe', 0.3, N'"c.user.?i?e.programs"
"a"
"c.user.?i?e.programs"
"?q?zs"
"r??pw?e?bm?"
"?wa?k?apfz?fce"
', N'Solution/5/51/233/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (234, 4, 52, 12, 1, CAST(0x00009DFD0121AA7F AS DateTime), N'Sample.exe', 0.5, N'2
7987
1
7045
18
1
0
', N'Solution/4/52/234/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (235, 3, 53, 12, 2, CAST(0x00009DFD0125F6FD AS DateTime), N'ProblemE.exe', 0.1, N'1
2499
1
', N'Solution/3/53/235/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (236, 6, 52, 12, 1, CAST(0x00009DFD01273332 AS DateTime), N'Sample.exe', 5, N'2
7987
1
7045
18
1
0
', N'Solution/6/52/236/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (237, 3, 53, 12, 2, CAST(0x00009DFD0127554A AS DateTime), N'ProblemE.exe', 0.1, N'1
19
2499
81
1
2294
', N'Solution/3/53/237/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (238, 3, 53, 12, 2, CAST(0x00009DFD0127F7B7 AS DateTime), N'ProblemE.exe', 0.1, N'1
19
2499
81
1
2294
', N'Solution/3/53/238/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (239, 5, 55, 13, 4, CAST(0x00009E3C010414EA AS DateTime), N'Sample.exe', 0, NULL, N'Solution/5/55/239/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (240, 5, 55, 13, 1, CAST(0x00009E3C0104F95C AS DateTime), N'Sample.exe', 0.1, N'a"
0aab
a2ad
0!ab
a013
1adbca
da!"
', N'Solution/5/55/240/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (241, 2, 54, 13, 1, CAST(0x00009E3C0108AB35 AS DateTime), N'Sample.exe', 0.2, N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
', N'Solution/2/54/241/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (242, 4, 54, 13, 7, CAST(0x00009E3C0109D381 AS DateTime), N'Sample.exe', 0.1, NULL, N'Solution/4/54/242/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (243, 3, 54, 13, 1, CAST(0x00009E3C010A06CF AS DateTime), N'ProblemA.exe', 0.1, N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
', N'Solution/3/54/243/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (244, 4, 54, 13, 7, CAST(0x00009E3C010C20E4 AS DateTime), N'Sample.exe', 0.1, NULL, N'Solution/4/54/244/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (245, 4, 54, 13, 1, CAST(0x00009E3C010CC005 AS DateTime), N'P1.exe', 0.1, N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
', N'Solution/4/54/245/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (246, 2, 58, 13, 1, CAST(0x00009E3C010D02A5 AS DateTime), N'Sample.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/2/58/246/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (247, 6, 54, 13, 1, CAST(0x00009E3C010DECCD AS DateTime), N'Sample.exe', 0.1, N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
', N'Solution/6/54/247/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (248, 7, 54, 13, 2, CAST(0x00009E3C010E02DB AS DateTime), N'Sample.exe', 0.1, N'RKNZCYR BAR
RKNZCYR BARRAVINE
RKNZCYR BARRAVINEANMZHY ONFURE EBAL
RKNZCYR BARRAVINEANMZHY ONFURE EBALZL GRFG JVYY TB NAQ TB BAR
RKNZCYR BARRAVINEANMZHY ONFURE EBALZL GRFG JVYY TB NAQ TB BARBX TBBQ
RKNZCYR BARRAVINEANMZHY ONFURE EBALZL GRFG JVYY TB NAQ TB BARBX TBBQJRYY
RKNZCYR BARRAVINEANMZHY ONFURE EBALZL GRFG JVYY TB NAQ TB BARBX TBBQJRYYZNAL GUNAXF
RKNZCYR BARRAVINEANMZHY ONFURE EBALZL GRFG JVYY TB NAQ TB BARBX TBBQJRYYZNAL GUNAXFSVAR
', N'Solution/7/54/248/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (249, 7, 54, 13, 1, CAST(0x00009E3C010E8675 AS DateTime), N'Sample.exe', 0.2, N'RKNZCYR BAR
RAVINE
ANMZHY ONFURE EBAL
ZL GRFG JVYY TB NAQ TB BAR
BX TBBQ
JRYY
ZNAL GUNAXF
SVAR
', N'Solution/7/54/249/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (250, 4, 55, 13, 2, CAST(0x00009E3C010FAD7D AS DateTime), N'P1.exe', 0.1, N'a"
0aab
a2ad
0!ab
a013
dbca
da!"
', N'Solution/4/55/250/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (251, 4, 55, 13, 2, CAST(0x00009E3C01104B73 AS DateTime), N'P1.exe', 0.1, N'a"
0aab
a2ad
0!ab
a013
dbca
da!"
', N'Solution/4/55/251/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (252, 3, 58, 13, 2, CAST(0x00009E3C0110A010 AS DateTime), N'ProblemE.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4       is correct.
  0-06-017758-6 is correct.
    This_is_Test is incorrect.
1-56884-030-6 is correct.
    0-8230-2571-3 is correct.
    0-345-31386-0 is correct.
    0-671-88858-7 is correct.
    0-8104-5687-7 is correct.
    0-671-74119-5 is correct.
    0-812-52030-0 is correct.
    0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
    0-13-139072-4 is correct.
    0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/3/58/252/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (253, 3, 58, 13, 2, CAST(0x00009E3C0110F3B1 AS DateTime), N'ProblemE.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
    This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
    0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/3/58/253/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (254, 3, 58, 13, 1, CAST(0x00009E3C0111E8CB AS DateTime), N'ProblemE.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/3/58/254/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (255, 4, 58, 13, 1, CAST(0x00009E3C0117B8DC AS DateTime), N'P1.exe', 0.2, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/4/58/255/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (256, 4, 55, 13, 2, CAST(0x00009E3C01197EBF AS DateTime), N'P1.exe', 0.1, N'a"
0aab
a2ad
0!ab
a013
dbca
da!"
', N'Solution/4/55/256/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (257, 2, 56, 13, 2, CAST(0x00009E3C0119B680 AS DateTime), N'Sample.exe', 0.1, N'0
13
-2
2963
0
5
2018
109
9
9
', N'Solution/2/56/257/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (258, 2, 56, 13, 1, CAST(0x00009E3C011B806F AS DateTime), N'Sample.exe', 0.1, N'0
13
-2
2963
0
5
82738
109
-11
9
', N'Solution/2/56/258/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (259, 7, 58, 13, 2, CAST(0x00009E3C011C0D5E AS DateTime), N'Sample.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4       is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/7/58/259/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (260, 7, 58, 13, 2, CAST(0x00009E3C011C619A AS DateTime), N'Sample.exe', 0.2, N'0-89237-010-6 is correct.
0-8306-3637-4       is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/7/58/260/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (261, 4, 55, 13, 1, CAST(0x00009E3C011CC8D0 AS DateTime), N'P1.exe', 0.1, N'a"
0aab
a2ad
0!ab
a013
1adbca
da!"
', N'Solution/4/55/261/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (262, 7, 58, 13, 2, CAST(0x00009E3C011CD3AF AS DateTime), N'Sample.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4       is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/7/58/262/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (263, 7, 58, 13, 1, CAST(0x00009E3C011D916B AS DateTime), N'Sample.exe', 0.1, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/7/58/263/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (264, 6, 58, 13, 1, CAST(0x00009E3C011D9AF4 AS DateTime), N'Sample.exe', 0.2, N'0-89237-010-6 is correct.
0-8306-3637-4 is correct.
0-06-017758-6 is correct.
This_is_Test is incorrect.
1-56884-030-6 is correct.
0-8230-2571-3 is correct.
0-345-31386-0 is correct.
0-671-88858-7 is correct.
0-8104-5687-7 is correct.
0-671-74119-5 is correct.
0-812-52030-0 is correct.
0-345-24865-1-150 is incorrect.
0-452-26740-4 is correct.
0-13-139072-4 is correct.
0-1315-2447-X is correct.
0-T52-26740-4 is incorrect.
', N'Solution/6/58/264/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (265, 3, 56, 13, 6, CAST(0x00009E3C011DBA79 AS DateTime), N'ProblemC.exe', 5.1, N'', N'Solution/3/56/265/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (266, 3, 56, 13, 6, CAST(0x00009E3C011E5227 AS DateTime), N'ProblemC.exe', 5.1, N'', N'Solution/3/56/266/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (267, 2, 55, 13, 1, CAST(0x00009E3C011F6CA6 AS DateTime), N'Sample.exe', 0.2, N'a"
0aab
a2ad
0!ab
a013
1adbca
da!"
', N'Solution/2/55/267/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (268, 3, 56, 13, 6, CAST(0x00009E3C011F8D44 AS DateTime), N'ProblemC.exe', 5.1, NULL, N'Solution/3/56/268/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (269, 3, 56, 13, 1, CAST(0x00009E3C0122B4BD AS DateTime), N'ProblemC.exe', 0.1, N'0
13
-2
2963
0
5
82738
109
-11
9
', N'Solution/3/56/269/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (270, 2, 57, 13, 1, CAST(0x00009E3C01242AD2 AS DateTime), N'Sample.exe', 0.3, N'13
147
1263
81236
83491
83491
913425
8124956
2316
2316
4682519
794253
7926
1263
51
', N'Solution/2/57/270/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (271, 3, 55, 13, 1, CAST(0x00009E3C01296803 AS DateTime), N'ProblemB.exe', 0.2, N'a"
0aab
a2ad
0!ab
a013
1adbca
da!"
', N'Solution/3/55/271/Program.cs')
INSERT [dbo].[Solution] ([ID], [UserId], [ProblemId], [ContestId], [ResultId], [time], [FileName], [RequireTime], [Output], [SolutionFileName]) VALUES (272, 4, 56, 13, 1, CAST(0x00009E3C012AE543 AS DateTime), N'P1.exe', 0.1, N'0
13
-2
2963
0
5
82738
109
-11
9
', N'Solution/4/56/272/Program.cs')
SET IDENTITY_INSERT [dbo].[Solution] OFF
/****** Object:  ForeignKey [FK_ContestPermission_ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission]  WITH CHECK ADD  CONSTRAINT [FK_ContestPermission_ContestSetting] FOREIGN KEY([ContestId])
REFERENCES [dbo].[ContestSetting] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission] CHECK CONSTRAINT [FK_ContestPermission_ContestSetting]
GO
/****** Object:  ForeignKey [FK_ContestPermission_Users]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission]  WITH CHECK ADD  CONSTRAINT [FK_ContestPermission_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ContestPermission_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[ContestPermission]'))
ALTER TABLE [dbo].[ContestPermission] CHECK CONSTRAINT [FK_ContestPermission_Users]
GO
/****** Object:  ForeignKey [FK_Problems_ContestSetting]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Problems_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[Problems]'))
ALTER TABLE [dbo].[Problems]  WITH CHECK ADD  CONSTRAINT [FK_Problems_ContestSetting] FOREIGN KEY([ContestID])
REFERENCES [dbo].[ContestSetting] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Problems_ContestSetting]') AND parent_object_id = OBJECT_ID(N'[dbo].[Problems]'))
ALTER TABLE [dbo].[Problems] CHECK CONSTRAINT [FK_Problems_ContestSetting]
GO
/****** Object:  ForeignKey [FK_Solution_Problems]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Problems]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Problems] FOREIGN KEY([ProblemId])
REFERENCES [dbo].[Problems] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Problems]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Problems]
GO
/****** Object:  ForeignKey [FK_Solution_Result]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Result]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Result] FOREIGN KEY([ResultId])
REFERENCES [dbo].[Result] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Result]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Result]
GO
/****** Object:  ForeignKey [FK_Solution_Users]    Script Date: 05/04/2012 09:28:02 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution]  WITH CHECK ADD  CONSTRAINT [FK_Solution_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Solution_Users]') AND parent_object_id = OBJECT_ID(N'[dbo].[Solution]'))
ALTER TABLE [dbo].[Solution] CHECK CONSTRAINT [FK_Solution_Users]
GO
