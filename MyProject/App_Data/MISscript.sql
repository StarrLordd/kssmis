USE [KSSMIS]
GO
/****** Object:  Table [dbo].[Tbl_TraineeRegis]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_TraineeRegis](
	[RegNo] [varchar](20) NULL,
	[Srno] [int] NULL,
	[Name] [varchar](100) NULL,
	[Fname] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[ColllegeId] [int] NULL,
	[cource] [varchar](50) NULL,
	[Cyear] [varchar](50) NULL,
	[EmailId] [varchar](200) NULL,
	[MobNo] [varchar](15) NULL,
	[trainingId] [int] NULL,
	[RegFees] [float] NULL,
	[TotalFees] [float] NULL,
	[RegDt] [varchar](20) NULL,
	[Promo] [varchar](50) NULL,
	[Remark] [varchar](200) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/AP-1900', NULL, N'Amit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'null', N'3rd Year', N'Amit@gmail.com', N'9559740092', 1, 18000, 2000, N'2019-08-17', N'KSSHOLI', N'it it dfewfj r fner')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/AP-1900', NULL, N'Amit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'null', N'3rd Year', N'amit@gmail.com', N'9559740092', 1, 18000, 2000, N'2019-08-29', N'KSSHOLI', N'It us dfbb eds awlc  djfbzbvvr db d j  j ')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/ST-1900', NULL, N'Sumit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'null', N'2nd Year', N'Sumit@gmail.com', N'8887975604', 2, 6000, 1000, N'2019-08-29', N'KSSDIWALI', N'It us dfbb eds awlc  djfbzbvvr db d j  j ')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/ST-1900', NULL, N'Sumit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'null', N'1st Year', N'Sumit@gmail.com', N'8887975604', 3, 6000, 1000, N'2019-08-29', N'KSSDIWALI', N'It us dfbb eds awlc  djfbzbvvr db d j  j ')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/AP-1900', NULL, N'Sumit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'null', N'1st Year', N'Sumit@gmail.com', N'8887975604', 1, 6000, 1000, N'2019-08-29', N'KSSDIWALI', N'It us dfbb eds awlc  djfbzbvvr db d j  j ')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/AP-1900', NULL, N'Sumit Kumar Tripathi', N'Pramod Kumar Tripathi', N'Male', 1000, N'Deplooma', N'1st Year', N'Sumit@gmail.com', N'8887975604', 1, 6000, 1000, N'2019-08-29', N'KSSDIWALI', N'It us dfbb eds awlc  djfbzbvvr db d j  j ')
INSERT [dbo].[Tbl_TraineeRegis] ([RegNo], [Srno], [Name], [Fname], [Gender], [ColllegeId], [cource], [Cyear], [EmailId], [MobNo], [trainingId], [RegFees], [TotalFees], [RegDt], [Promo], [Remark]) VALUES (N'KSS/ST-1901', 1, N'Amit', N'fghj', N'Male', 1000, N'Deplooma', N'1st Year', N'ami@gmail.com', N'9648073994', 3, 2000, 2000, N'2019-12-31', N'KSSS', N'srtyuji')
/****** Object:  Table [dbo].[Tbl_Rev]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Rev](
	[RevId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Subject] [varchar](500) NULL,
	[Msg] [varchar](100) NULL,
	[MobNo] [varchar](50) NOT NULL,
	[Rating] [int] NULL,
	[SubmittedOn] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Rev] PRIMARY KEY CLUSTERED 
(
	[RevId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Rev] ON
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (1, N'hrt', N'frg', N'dgvr', N'12', 4, N'8/6/2019 1:31:59 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (2, N'hrt', N'frg', N'dgvr', N'12', 4, N'8/6/2019 9:45:00 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (3, N'hrt', N'frg', N'dgvr', N'12', 4, N'8/6/2019 9:45:15 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (4, N'Amit', N'Hello', N'dfgbhj', N'6789', 3, N'07-08-2019 02:19:36')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (5, N'Amit', N'Hello', N'dfgbhj', N'6789', 3, N'07-08-2019 02:19:42')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (6, N'Amit', N'Hello', N'dfgbhj', N'6789', 5, N'07-08-2019 02:19:56')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (7, N'Glory Shukla', N'fgt', N'fgg', N'9648073994', 3, N'07-08-2019 14:42:55')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (8, N'Glory Shukla', N'fgt', N'fgg', N'9559740092', 3, N'07-08-2019 14:43:23')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (9, N'Nikhil Tiwari', N'fgt', N'fgg', N'6394540066', 3, N'07-08-2019 14:46:04')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (10, N'Amit', N'dfgfrn', N'fr', N'9559740092', 3, N'8/8/2019 4:00:44 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (11, N'Amit', N'dfgfrn', N'fr', N'9559740092', 3, N'8/8/2019 4:00:52 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (12, N'Jyoti', N'dcfvb', N'sdfgh', N'1234567', 1, N'8/8/2019 7:29:34 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (13, N'Amit Tripathi', N'Registration', N'Helloo', N'67567', 4, N'8/10/2019 6:02:42 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (14, N'Amit Tripathi', N'Registration', N'Helloo', N'67567', 4, N'8/10/2019 6:02:55 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (15, N'Amit Tripathi', N'Registration', N'Helloo', N'67567', 4, N'8/10/2019 6:03:08 PM')
INSERT [dbo].[Tbl_Rev] ([RevId], [Name], [Subject], [Msg], [MobNo], [Rating], [SubmittedOn]) VALUES (16, N'Amit Tripathi', N'Registration', N'Helloo', N'9895737674', 4, N'8/10/2019 6:03:30 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Rev] OFF
/****** Object:  Table [dbo].[Tbl_Petty]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Petty](
	[PettyId] [int] IDENTITY(1,1) NOT NULL,
	[Purpose] [varchar](50) NULL,
	[Amt] [real] NULL,
	[Remark] [varchar](200) NULL,
	[ExDt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Petty] PRIMARY KEY CLUSTERED 
(
	[PettyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Notification]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Notification](
	[NotiId] [int] IDENTITY(1,1) NOT NULL,
	[NotiMsg] [varchar](max) NULL,
	[NotiDt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Notification_1] PRIMARY KEY CLUSTERED 
(
	[NotiId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Notification] ON
INSERT [dbo].[Tbl_Notification] ([NotiId], [NotiMsg], [NotiDt]) VALUES (2, N'First IT Companey of Bundelkhand', N'20/12/2019')
INSERT [dbo].[Tbl_Notification] ([NotiId], [NotiMsg], [NotiDt]) VALUES (3, N'KSS, Gateway Of Career', N'8/10/2019 5:00:12 PM')
INSERT [dbo].[Tbl_Notification] ([NotiId], [NotiMsg], [NotiDt]) VALUES (4, N'KSS- A Company Founded By Technocrat From MNC', N'8/10/2019 5:19:57 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Notification] OFF
/****** Object:  Table [dbo].[Tbl_Login]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Login](
	[UserId] [varchar](100) NOT NULL,
	[pass] [varchar](50) NULL,
	[Utype] [varchar](20) NULL,
 CONSTRAINT [PK_Tbl_Login] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'12345KSS', N'QWE', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'20002KSS', N'8765', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'3333KSS', N'8765', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'4005KSS', N'8765', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'4444KSS', N'8765', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'50001KSS', N'8765QWEzh', N'User')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'50002KSS', N'8765QWEzh', N'User')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'5345435KSS', N'8765', N'MANAGER')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'ADMINKSS', N'876', N'ADMIN')
INSERT [dbo].[Tbl_Login] ([UserId], [pass], [Utype]) VALUES (N'KSSMAnager123', N'8765', N'MANAGER')
/****** Object:  Table [dbo].[Tbl_Income]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Income](
	[InId] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](200) NULL,
	[Cname] [varchar](100) NULL,
	[Stype] [varchar](50) NULL,
	[TotalCost] [real] NULL,
	[RecAmt] [real] NULL,
	[Remmark] [varchar](500) NULL,
	[Addon] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Income] PRIMARY KEY CLUSTERED 
(
	[InId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Fees]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Fees](
	[feeId] [int] IDENTITY(1,1) NOT NULL,
	[EnrollNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[CllgId] [int] NULL,
	[Course] [int] NULL,
	[pamt] [float] NULL,
	[Damt] [float] NULL,
	[Remark] [varchar](100) NULL,
	[feeDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Fees] PRIMARY KEY CLUSTERED 
(
	[feeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Expence]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Expence](
	[ExId] [int] IDENTITY(1,1) NOT NULL,
	[Sname] [varchar](100) NULL,
	[purpose] [varchar](50) NULL,
	[Amt] [real] NULL,
	[Remark] [varchar](200) NULL,
	[ExDt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Expence] PRIMARY KEY CLUSTERED 
(
	[ExId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Enquiry]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Enquiry](
	[EnqId] [int] IDENTITY(1,1) NOT NULL,
	[EnqName] [varchar](100) NULL,
	[EnqNumber] [varchar](100) NULL,
	[EnqMail] [varchar](50) NULL,
	[EnqMsg] [varchar](max) NULL,
	[EnqDt] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Enquiry] PRIMARY KEY CLUSTERED 
(
	[EnqId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] ON
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (1, N'Amit', N'343', N'a@a', N'jffd', N'07-08-2019 02:46:46')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (2, N'Priyanka ', N'9648073994', N'bjbfiw@fgrg', N'rgrtrggrtgr', N'07-08-2019 14:22:05')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (3, N'Priyanka ', N'9648073994', N'bjbfiw@fgrg', N'rgrtrggrtgr', N'07-08-2019 14:22:35')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (4, N'Glory Shukla', N'9648073994', N'sdsf@sde', N'rgtgr', N'07-08-2019 14:24:02')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (5, N'Glory Shukla', N'9648073994', N'sdsf@sde', N'rgtgr', N'07-08-2019 14:24:31')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (6, N'Gloey Shiulka', N'9559740092', N'a@a', N'`fggf', N'07-08-2019 14:40:09')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (7, N'Gloey Shiulka', N'9559740092', N'a@a', N'`fggf', N'07-08-2019 14:40:31')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (8, N'df', N'9559740092', N'a@as', N'fgfggf', N'07-08-2019 14:40:51')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (9, N'df', N'9559740092', N'a@as', N'fgfggf', N'07-08-2019 14:41:07')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (10, N'sfef', N'9559740092', N'dffgrh@fv', N'dgd', N'07-08-2019 14:42:00')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (11, N'ghjk', N'9559740092', N'a@a', N'fvjf', N'8/8/2019 4:00:24 PM')
INSERT [dbo].[Tbl_Enquiry] ([EnqId], [EnqName], [EnqNumber], [EnqMail], [EnqMsg], [EnqDt]) VALUES (12, N'Amit Tripathi', N'Amit@gmIl.com', N'9559', N'How can i register for Aprentice 2020', N'8/10/2019 6:01:08 PM')
SET IDENTITY_INSERT [dbo].[Tbl_Enquiry] OFF
/****** Object:  Table [dbo].[Tbl_Cirtificate]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Cirtificate](
	[CirtiId] [int] IDENTITY(1,1) NOT NULL,
	[EnrollMo] [varchar](20) NULL,
	[TrngId] [int] NULL,
	[CollegeId] [int] NULL,
	[FromDT] [varchar](30) NULL,
	[ToDT] [varchar](30) NULL,
	[Duration] [varchar](15) NULL,
	[Grade] [varchar](5) NULL,
	[Remark] [varchar](100) NULL,
	[IssueDT] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_Cirtificate] PRIMARY KEY CLUSTERED 
(
	[CirtiId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_AddTraining]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_AddTraining](
	[TrngId] [int] IDENTITY(1,1) NOT NULL,
	[TrngName] [varchar](100) NULL,
	[year] [int] NULL,
	[tfees] [float] NULL,
	[rfees] [float] NULL,
	[dt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_AddTraining] PRIMARY KEY CLUSTERED 
(
	[TrngId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_AddTraining] ON
INSERT [dbo].[Tbl_AddTraining] ([TrngId], [TrngName], [year], [tfees], [rfees], [dt]) VALUES (1, N'ApprenticeShip Super-100', 2019, 18000, 2000, N'8/8/2019 9:33:34 PM')
INSERT [dbo].[Tbl_AddTraining] ([TrngId], [TrngName], [year], [tfees], [rfees], [dt]) VALUES (2, N'Summer Training', 2019, 6000, 1000, N'8/8/2019 9:39:39 PM')
INSERT [dbo].[Tbl_AddTraining] ([TrngId], [TrngName], [year], [tfees], [rfees], [dt]) VALUES (3, N'Vocational Training', 2019, 6500, 1000, N'8/8/2019 9:40:08 PM')
SET IDENTITY_INSERT [dbo].[Tbl_AddTraining] OFF
/****** Object:  Table [dbo].[Tbl_AddManager]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_AddManager](
	[EmpId] [varchar](50) NOT NULL,
	[EmpName] [varchar](50) NULL,
	[EmpGen] [varchar](10) NULL,
	[EmpEmail] [varchar](100) NULL,
	[EmpMob] [varchar](15) NULL,
	[EmpAddr] [varchar](max) NULL,
	[EmpPic] [varchar](200) NULL,
	[RegDt] [varchar](30) NULL,
 CONSTRAINT [PK_Tbl_AddManager] PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tbl_AddManager] ([EmpId], [EmpName], [EmpGen], [EmpEmail], [EmpMob], [EmpAddr], [EmpPic], [RegDt]) VALUES (N'3333KSS', N'Amit', N'Male', N'aaa@a', N'9559740092', N'fhg', N'3ytqq0tp.hjyIMG_20180619_144106.jpg', N'8/5/2019 6:40:11 PM')
INSERT [dbo].[Tbl_AddManager] ([EmpId], [EmpName], [EmpGen], [EmpEmail], [EmpMob], [EmpAddr], [EmpPic], [RegDt]) VALUES (N'50001KSS', N'Satyam Mishra', N'Male', N'hr@gmail.com', N'8127908027', N'Sita Pur Chitrakoot', N'ide4nqna.n1gIMG-20190610-WA0002.jpg', N'8/4/2019 4:01:29 PM')
INSERT [dbo].[Tbl_AddManager] ([EmpId], [EmpName], [EmpGen], [EmpEmail], [EmpMob], [EmpAddr], [EmpPic], [RegDt]) VALUES (N'5000KSS', N'Satyam Mishra', N'Male', N'hr@gmail.com', N'8127908027', N'Sita Pur Chitrakoot', N'bukdtomi.pfzIMG-20190610-WA0025.jpg', N'8/4/2019 3:57:12 PM')
INSERT [dbo].[Tbl_AddManager] ([EmpId], [EmpName], [EmpGen], [EmpEmail], [EmpMob], [EmpAddr], [EmpPic], [RegDt]) VALUES (N'KSSMAnager123', N'Amit Tripathi', N'Male', N'Amit@gmail.com', N'8887975604', N'Kaushambi ', N'l34sxecc.pzybackg.jpg', N'8/10/2019 6:07:16 PM')
/****** Object:  Table [dbo].[Tbl_AddCllg]    Script Date: 08/10/2019 19:09:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_AddCllg](
	[ClgId] [int] IDENTITY(1000,1) NOT NULL,
	[ClgName] [varchar](200) NULL,
	[city] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_AddCllg] PRIMARY KEY CLUSTERED 
(
	[ClgId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_AddCllg] ON
INSERT [dbo].[Tbl_AddCllg] ([ClgId], [ClgName], [city]) VALUES (1000, N'Mahatma Jyotiba Phule Govt. Poly. Kaushambi', N'Kaushambi')
SET IDENTITY_INSERT [dbo].[Tbl_AddCllg] OFF
