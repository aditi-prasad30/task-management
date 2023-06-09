USE [master]
GO
/****** Object:  Database [Task_Assignment]    Script Date: 29-08-2022 12:21:13 ******/
CREATE DATABASE [Task_Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Task_Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task_Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Task_Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Task_Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Task_Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Task_Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Task_Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Task_Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Task_Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Task_Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Task_Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Task_Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Task_Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Task_Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Task_Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Task_Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Task_Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Task_Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Task_Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Task_Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Task_Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Task_Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Task_Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Task_Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Task_Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Task_Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Task_Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Task_Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Task_Assignment] SET RECOVERY FULL 
GO
ALTER DATABASE [Task_Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Task_Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Task_Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Task_Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Task_Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Task_Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Task_Assignment', N'ON'
GO
ALTER DATABASE [Task_Assignment] SET QUERY_STORE = OFF
GO
USE [Task_Assignment]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 29-08-2022 12:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[DesgnID] [int] IDENTITY(1,1) NOT NULL,
	[DesgnName] [varchar](30) NULL,
	[Desgn_Status] [bit] NULL,
	[EntryBy] [int] NULL,
	[EntryDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesgnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Master]    Script Date: 29-08-2022 12:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Master](
	[Emp_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emp_code] [varchar](20) NULL,
	[Emp_name] [varchar](20) NULL,
	[Designation] [varchar](15) NULL,
	[DOJ] [datetime] NULL,
	[Department] [varchar](20) NULL,
	[Project] [varchar](20) NULL,
	[PI_ID] [int] NULL,
	[RoleID] [int] NULL,
	[Emp_status] [bit] NULL,
	[Entry_By] [int] NULL,
	[Entry_date] [datetime] NULL,
	[Pswd] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Master]    Script Date: 29-08-2022 12:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Master](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task_Master]    Script Date: 29-08-2022 12:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Master](
	[Task_Id] [int] IDENTITY(1,1) NOT NULL,
	[Task_Desc] [varchar](100) NULL,
	[Assigned_By] [int] NULL,
	[Assigned_To] [int] NULL,
	[Assigning_date] [datetime] NULL,
	[Expected_completetion] [datetime] NULL,
	[EntryBy] [int] NULL,
	[T_Entry_Date] [datetime] NULL,
	[T_Status] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Task_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task_Master_Details]    Script Date: 29-08-2022 12:21:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task_Master_Details](
	[Task_D_ID] [int] IDENTITY(1,1) NOT NULL,
	[Task_Id] [int] NULL,
	[Current_Remarks] [varchar](40) NULL,
	[Remarks_Added_By] [int] NULL,
	[Current_status] [varchar](15) NULL,
	[TD_Entry_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Task_D_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Designation] ON 

INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (1, N'Programmer', 1, 1, CAST(N'2022-08-08T13:45:25.680' AS DateTime))
INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (2, N'Manager', 1, 1, CAST(N'2022-08-08T14:19:15.497' AS DateTime))
INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (3, N'SDE', 1, 1, CAST(N'2022-08-08T14:19:32.990' AS DateTime))
INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (4, N'SM Manager', 1, 1, CAST(N'2022-08-08T14:19:52.760' AS DateTime))
INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (5, N'Co Ordinator', 1, 1, CAST(N'2022-08-08T14:20:10.877' AS DateTime))
INSERT [dbo].[Designation] ([DesgnID], [DesgnName], [Desgn_Status], [EntryBy], [EntryDate]) VALUES (6, N'Developer', 0, 1, CAST(N'2022-08-17T12:20:08.720' AS DateTime))
SET IDENTITY_INSERT [dbo].[Designation] OFF
SET IDENTITY_INSERT [dbo].[Employee_Master] ON 

INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (1, N'A01', N'Admin', N'Administrator', CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'IT', N'To-Do', NULL, 3, 1, NULL, CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'A01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (3, N'B01', N'Aditi', N'Programmer', CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'IT', N'To-Do', 1, 1, 1, 1, CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'B01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (4, N'B02', N'Akshat', N'SM Manager', CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'Marketing', N'To-Do', 1, 1, 1, 1, CAST(N'2022-07-26T00:00:00.000' AS DateTime), N'B02')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (5, N'C01', N'Kritika', N'SDE', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'IT', N'To-Do', 3, 2, 1, 1, CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'C01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (6, N'C02', N'Anant', N'SM Manager', CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'Marketing', N'To-Do', 4, 2, 1, 1, CAST(N'2022-07-28T00:00:00.000' AS DateTime), N'C02')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (7, N'E05', N'Ram', N'Programmer', CAST(N'2022-08-02T00:00:00.000' AS DateTime), N'Labor Dept', N'CLMS', 3, 2, 1, 1, CAST(N'2022-08-02T13:26:36.300' AS DateTime), N'E05')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (8, N'S01', N'Sita', N'Programmer', CAST(N'1990-11-21T00:00:00.000' AS DateTime), N'IT', N'E-Jhar Energy', 3, 2, 1, 1, CAST(N'2022-08-03T13:34:15.130' AS DateTime), N'S01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (9, N'P01', N'Sudhanshu', N'Programmer', CAST(N'1990-12-21T00:00:00.000' AS DateTime), N'Energy Dept', N'E-Jhar Energy', 1, 2, 1, 1, CAST(N'2022-08-03T13:36:04.730' AS DateTime), N'P01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (10, N'F01', N'Fani Sir', N'Co Ordinator', CAST(N'1985-02-03T00:00:00.000' AS DateTime), N'IT', N'CSC', 3, 2, 1, 1, CAST(N'2022-08-03T13:37:49.670' AS DateTime), N'F01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (11, N'C04', N'Akansha', N'Programmer', CAST(N'2022-08-01T00:00:00.000' AS DateTime), N'IT', N'To-Do', 3, 2, 1, 1, CAST(N'2022-08-04T13:31:18.500' AS DateTime), N'C04')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (12, N'H01', N'Harsh', N'Co Ordinator', CAST(N'2022-08-08T00:00:00.000' AS DateTime), N'Energy Dept', N'To-do', 1, 1, 1, 1, CAST(N'2022-08-08T12:33:11.813' AS DateTime), N'H01')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (13, N'C09', N'Ayush', N'SDE', CAST(N'2022-08-08T00:00:00.000' AS DateTime), N'IT', N'To-Do', 3, 2, 1, 1, CAST(N'2022-08-15T18:54:40.857' AS DateTime), N'C09')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (14, N'E07', N'Test New', N'Programmer', CAST(N'2022-08-16T00:00:00.000' AS DateTime), N'IT', N'To-Do', 1, 1, 1, 1, CAST(N'2022-08-16T12:31:11.333' AS DateTime), N'E07')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (15, N'B08', N'Ayush', N'SDE', CAST(N'2022-08-08T00:00:00.000' AS DateTime), N'IT', N'To-Do', 3, 2, 1, 1, CAST(N'2022-08-16T12:56:26.560' AS DateTime), N'B08')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (17, N'E09', N'Ayushi', N'Manager', CAST(N'2022-08-08T00:00:00.000' AS DateTime), N'Labor Dept', N'CLMS', 1, 1, 1, 1, CAST(N'2022-08-17T12:14:40.050' AS DateTime), N'E09')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (18, N'xxxxx', N'Sapana', N'Programmer', CAST(N'2022-08-10T00:00:00.000' AS DateTime), N'IT', N'xxxxxx', 1, 1, 1, 1, CAST(N'2022-08-25T12:20:03.830' AS DateTime), N'xxxxx')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (22, N'C08', N'Harshit', N'Programmer', CAST(N'2022-08-08T00:00:00.000' AS DateTime), N'Energy Dept', N'E-Jhar Energy', 3, 2, 1, 1, CAST(N'2022-08-26T00:21:50.507' AS DateTime), N'C08')
INSERT [dbo].[Employee_Master] ([Emp_ID], [Emp_code], [Emp_name], [Designation], [DOJ], [Department], [Project], [PI_ID], [RoleID], [Emp_status], [Entry_By], [Entry_date], [Pswd]) VALUES (23, N'E03', N'Anshu', N'Co Ordinator', CAST(N'2022-08-16T00:00:00.000' AS DateTime), N'IT', N'To-Do', 3, 2, 1, 1, CAST(N'2022-08-26T18:00:42.573' AS DateTime), N'E03')
SET IDENTITY_INSERT [dbo].[Employee_Master] OFF
SET IDENTITY_INSERT [dbo].[Role_Master] ON 

INSERT [dbo].[Role_Master] ([RoleID], [Role_Name]) VALUES (1, N'Project Incharge')
INSERT [dbo].[Role_Master] ([RoleID], [Role_Name]) VALUES (2, N'Employee')
INSERT [dbo].[Role_Master] ([RoleID], [Role_Name]) VALUES (3, N'Admin')
SET IDENTITY_INSERT [dbo].[Role_Master] OFF
SET IDENTITY_INSERT [dbo].[Task_Master] ON 

INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (1, N'Page Design and Development To-Do List', 3, 5, CAST(N'2022-08-04T00:00:00.000' AS DateTime), CAST(N'2022-08-10T00:00:00.000' AS DateTime), 3, CAST(N'2022-08-04T20:01:40.337' AS DateTime), N'Completed')
INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (2, N'Conduct Webinar To promote To-Do list', 4, 6, CAST(N'2022-08-07T00:00:00.000' AS DateTime), CAST(N'2022-08-15T00:00:00.000' AS DateTime), 4, CAST(N'2022-08-07T21:10:52.937' AS DateTime), N'In-Progress')
INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (3, N'Develop a Web UPI', 3, 5, CAST(N'2022-08-08T00:00:00.000' AS DateTime), CAST(N'2022-08-31T00:00:00.000' AS DateTime), 3, CAST(N'2022-08-08T11:58:39.503' AS DateTime), N'In-Progress')
INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (4, N'Develop a Web UPI', 3, 5, CAST(N'2022-08-17T00:00:00.000' AS DateTime), CAST(N'2022-08-24T00:00:00.000' AS DateTime), 3, CAST(N'2022-08-17T12:23:30.207' AS DateTime), N'Assigned')
INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (5, N'Page Design and Development To-Do List', 3, 11, CAST(N'2022-08-25T00:00:00.000' AS DateTime), CAST(N'2022-09-30T00:00:00.000' AS DateTime), 3, CAST(N'2022-08-25T12:30:01.030' AS DateTime), N'Assigned')
INSERT [dbo].[Task_Master] ([Task_Id], [Task_Desc], [Assigned_By], [Assigned_To], [Assigning_date], [Expected_completetion], [EntryBy], [T_Entry_Date], [T_Status]) VALUES (6, N'Testing of To-Do List', 3, 11, CAST(N'2022-08-26T00:00:00.000' AS DateTime), CAST(N'2022-08-31T00:00:00.000' AS DateTime), 3, CAST(N'2022-08-26T18:02:39.193' AS DateTime), N'Assigned')
SET IDENTITY_INSERT [dbo].[Task_Master] OFF
SET IDENTITY_INSERT [dbo].[Task_Master_Details] ON 

INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (1, 1, N'Page-Design Started', 5, N'In-Progress', CAST(N'2022-08-05T00:31:46.997' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (2, 1, N'Page-Design Completed and Coding Started', 5, N'In-Progress', CAST(N'2022-08-05T14:13:13.223' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (3, 1, N'Coding Completed and Testing Started', 5, N'In-Progress', CAST(N'2022-08-05T14:15:33.493' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (4, 1, N'Testing Completed and Deployment Started', 5, N'In-Progress', CAST(N'2022-08-05T14:16:59.993' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (5, 1, N'Deployment Completed and Wait for UAT', 5, N'In-Progress', CAST(N'2022-08-05T14:18:29.600' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (6, 1, N'UAT Completed', 5, N'Completed', CAST(N'2022-08-05T14:18:52.600' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (7, 1, N'Final Completed', 5, N'Completed', CAST(N'2022-08-05T14:23:41.750' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (8, 1, N'Final Completed', 5, N'Completed', CAST(N'2022-08-05T14:24:10.397' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (9, 1, N'Final Completed', 5, N'Completed', CAST(N'2022-08-05T14:26:16.700' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (11, 2, N'Preparing ad for webinar', 6, N'In-Progress', CAST(N'2022-08-07T22:24:57.543' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (12, 3, N'Started Development', 5, N'In-Progress', CAST(N'2022-08-17T12:26:35.900' AS DateTime))
INSERT [dbo].[Task_Master_Details] ([Task_D_ID], [Task_Id], [Current_Remarks], [Remarks_Added_By], [Current_status], [TD_Entry_date]) VALUES (13, 3, N'Page-Design Started', 5, N'In-Progress', CAST(N'2022-08-25T12:31:49.360' AS DateTime))
SET IDENTITY_INSERT [dbo].[Task_Master_Details] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Employee__CA80075A76C04B5D]    Script Date: 29-08-2022 12:21:14 ******/
ALTER TABLE [dbo].[Employee_Master] ADD UNIQUE NONCLUSTERED 
(
	[Emp_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Designation] ADD  DEFAULT ((1)) FOR [Desgn_Status]
GO
ALTER TABLE [dbo].[Employee_Master] ADD  DEFAULT ((1)) FOR [Emp_status]
GO
ALTER TABLE [dbo].[Task_Master] ADD  DEFAULT ('Assigned') FOR [T_Status]
GO
ALTER TABLE [dbo].[Designation]  WITH CHECK ADD FOREIGN KEY([EntryBy])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Employee_Master]  WITH CHECK ADD FOREIGN KEY([PI_ID])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Employee_Master]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role_Master] ([RoleID])
GO
ALTER TABLE [dbo].[Task_Master]  WITH CHECK ADD FOREIGN KEY([Assigned_By])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Task_Master]  WITH CHECK ADD FOREIGN KEY([Assigned_To])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Task_Master]  WITH CHECK ADD FOREIGN KEY([EntryBy])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Task_Master_Details]  WITH CHECK ADD FOREIGN KEY([Remarks_Added_By])
REFERENCES [dbo].[Employee_Master] ([Emp_ID])
GO
ALTER TABLE [dbo].[Task_Master_Details]  WITH CHECK ADD FOREIGN KEY([Task_Id])
REFERENCES [dbo].[Task_Master] ([Task_Id])
GO
USE [master]
GO
ALTER DATABASE [Task_Assignment] SET  READ_WRITE 
GO
