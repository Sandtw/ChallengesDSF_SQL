CREATE DATABASE [HR]
GO
USE [HR]
GO
/****** Object:  Table [dbo].[countries]    Script Date: 30/07/2020 17:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [char](2) NOT NULL,
	[country_name] [varchar](40) NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_countries] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[department_id] [int] NOT NULL,
	[department_name] [varchar](30) NOT NULL,
	[manager_id] [int] NULL,
	[location_id] [int] NOT NULL,
 CONSTRAINT [PK_departments] PRIMARY KEY CLUSTERED 
(
	[department_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[employee_id] [int] NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](25) NOT NULL,
	[email] [varchar](25) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
	[hire_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[salary] [money] NOT NULL,
	[commission_pct] [money] NULL,
	[manager_id] [int] NULL,
	[department_id] [int] NULL,
 CONSTRAINT [PK_employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_history]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_history](
	[employee_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[job_id] [varchar](10) NOT NULL,
	[department_id] [int] NOT NULL,
 CONSTRAINT [PK_job_history] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC,
	[start_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[job_id] [varchar](10) NOT NULL,
	[job_title] [varchar](35) NOT NULL,
	[min_salary] [money] NOT NULL,
	[max_salary] [money] NOT NULL,
 CONSTRAINT [PK_jobs] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[location_id] [int] NOT NULL,
	[street_address] [varchar](40) NOT NULL,
	[postal_code] [varchar](12) NULL,
	[city] [varchar](30) NOT NULL,
	[state_province] [varchar](25) NULL,
	[country_id] [char](2) NOT NULL,
 CONSTRAINT [PK_locations] PRIMARY KEY CLUSTERED 
(
	[location_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[regions]    Script Date: 30/07/2020 17:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[regions](
	[region_id] [int] NOT NULL,
	[region_name] [varchar](25) NOT NULL,
 CONSTRAINT [PK_regions] PRIMARY KEY CLUSTERED 
(
	[region_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'AR', N'Argentina', 2)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'AU', N'Australia', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'BE', N'Belgium', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'BR', N'Brazil', 2)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'CA', N'Canada', 2)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'CH', N'Switzerland', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'CN', N'China', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'DE', N'Germany', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'DK', N'Denmark', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'EG', N'Egypt', 4)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'FR', N'France', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'IL', N'Israel', 4)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'IN', N'India', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'IT', N'Italy', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'JP', N'Japan', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'KW', N'Kuwait', 4)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'ML', N'Malaysia', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'MX', N'Mexico', 2)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'NG', N'Nigeria', 4)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'NL', N'Netherlands', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'SG', N'Singapore', 3)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'UK', N'United Kingdom', 1)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'US', N'United States of America', 2)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'ZM', N'Zambia', 4)
INSERT [dbo].[countries] ([country_id], [country_name], [region_id]) VALUES (N'ZW', N'Zimbabwe', 4)
GO
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (10, N'Administration', 200, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (20, N'Marketing', 201, 1800)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (30, N'Purchasing', 114, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (40, N'Human Resources', 203, 2400)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (50, N'Shipping', 121, 1500)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (60, N'IT', 103, 1400)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (70, N'Public Relations', 204, 2700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (80, N'Sales', 145, 2500)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (90, N'Executive', 100, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (100, N'Finance', 108, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (110, N'Accounting', 205, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (120, N'Treasury', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (130, N'Corporate Tax', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (140, N'Control And Credit', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (150, N'Shareholder Services', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (160, N'Benefits', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (170, N'Manufacturing', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (180, N'Construction', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (190, N'Contracting', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (200, N'Operations', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (210, N'IT Support', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (220, N'NOC', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (230, N'IT Helpdesk', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (240, N'Government Sales', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (250, N'Retail Sales', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (260, N'Recruiting', NULL, 1700)
INSERT [dbo].[departments] ([department_id], [department_name], [manager_id], [location_id]) VALUES (270, N'Payroll', NULL, 1700)
GO
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (100, N'Steven', N'King', N'SKING', N'515.123.4567', CAST(N'2003-06-17' AS Date), N'AD_PRES', 24000.0000, NULL, NULL, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (101, N'Neena', N'Kochhar', N'NKOCHHAR', N'515.123.4568', CAST(N'2005-09-21' AS Date), N'AD_VP', 17000.0000, NULL, 100, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (102, N'Lex', N'De Haan', N'LDEHAAN', N'515.123.4569', CAST(N'2001-01-13' AS Date), N'AD_VP', 17000.0000, NULL, 100, 90)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (103, N'Alexander', N'Hunold', N'AHUNOLD', N'590.423.4567', CAST(N'2006-01-03' AS Date), N'IT_PROG', 9000.0000, NULL, 102, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (104, N'Bruce', N'Ernst', N'BERNST', N'590.423.4568', CAST(N'2007-05-21' AS Date), N'IT_PROG', 6000.0000, NULL, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (105, N'David', N'Austin', N'DAUSTIN', N'590.423.4569', CAST(N'2005-06-25' AS Date), N'IT_PROG', 4800.0000, NULL, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (106, N'Valli', N'Pataballa', N'VPATABAL', N'590.423.4560', CAST(N'2006-02-05' AS Date), N'IT_PROG', 4800.0000, NULL, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (107, N'Diana', N'Lorentz', N'DLORENTZ', N'590.423.5567', CAST(N'2007-02-07' AS Date), N'IT_PROG', 4200.0000, NULL, 103, 60)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (108, N'Nancy', N'Greenberg', N'NGREENBE', N'515.124.4569', CAST(N'2002-08-17' AS Date), N'FI_MGR', 12008.0000, NULL, 101, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (109, N'Daniel', N'Faviet', N'DFAVIET', N'515.124.4169', CAST(N'2002-08-16' AS Date), N'FI_ACCOUNT', 9000.0000, NULL, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (110, N'John', N'Chen', N'JCHEN', N'515.124.4269', CAST(N'2005-09-28' AS Date), N'FI_ACCOUNT', 8200.0000, NULL, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (111, N'Ismael', N'Sciarra', N'ISCIARRA', N'515.124.4369', CAST(N'2005-09-30' AS Date), N'FI_ACCOUNT', 7700.0000, NULL, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (112, N'Jose Manuel', N'Urman', N'JMURMAN', N'515.124.4469', CAST(N'2006-03-07' AS Date), N'FI_ACCOUNT', 7800.0000, NULL, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (113, N'Luis', N'Popp', N'LPOPP', N'515.124.4567', CAST(N'2007-12-07' AS Date), N'FI_ACCOUNT', 6900.0000, NULL, 108, 100)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (114, N'Den', N'Raphaely', N'DRAPHEAL', N'515.127.4561', CAST(N'2002-12-07' AS Date), N'PU_MAN', 11000.0000, NULL, 100, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (115, N'Alexander', N'Khoo', N'AKHOO', N'515.127.4562', CAST(N'2003-05-18' AS Date), N'PU_CLERK', 3100.0000, NULL, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (116, N'Shelli', N'Baida', N'SBAIDA', N'515.127.4563', CAST(N'2005-12-24' AS Date), N'PU_CLERK', 2900.0000, NULL, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (117, N'Sigal', N'Tobias', N'STOBIAS', N'515.127.4564', CAST(N'2005-07-24' AS Date), N'PU_CLERK', 2800.0000, NULL, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (118, N'Guy', N'Himuro', N'GHIMURO', N'515.127.4565', CAST(N'2006-11-15' AS Date), N'PU_CLERK', 2600.0000, NULL, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (119, N'Karen', N'Colmenares', N'KCOLMENA', N'515.127.4566', CAST(N'2007-08-10' AS Date), N'PU_CLERK', 2500.0000, NULL, 114, 30)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (120, N'Matthew', N'Weiss', N'MWEISS', N'650.123.1234', CAST(N'2004-07-18' AS Date), N'ST_MAN', 8000.0000, NULL, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (121, N'Adam', N'Fripp', N'AFRIPP', N'650.123.2234', CAST(N'2005-04-10' AS Date), N'ST_MAN', 8200.0000, NULL, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (122, N'Payam', N'Kaufling', N'PKAUFLIN', N'650.123.3234', CAST(N'2003-05-01' AS Date), N'ST_MAN', 7900.0000, NULL, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (123, N'Shanta', N'Vollman', N'SVOLLMAN', N'650.123.4234', CAST(N'2005-10-10' AS Date), N'ST_MAN', 6500.0000, NULL, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (124, N'Kevin', N'Mourgos', N'KMOURGOS', N'650.123.5234', CAST(N'2007-11-16' AS Date), N'ST_MAN', 5800.0000, NULL, 100, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (125, N'Julia', N'Nayer', N'JNAYER', N'650.124.1214', CAST(N'2005-07-16' AS Date), N'ST_CLERK', 3200.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (126, N'Irene', N'Mikkilineni', N'IMIKKILI', N'650.124.1224', CAST(N'2006-09-28' AS Date), N'ST_CLERK', 2700.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (127, N'James', N'Landry', N'JLANDRY', N'650.124.1334', CAST(N'2007-01-14' AS Date), N'ST_CLERK', 2400.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (128, N'Steven', N'Markle', N'SMARKLE', N'650.124.1434', CAST(N'2008-03-08' AS Date), N'ST_CLERK', 2200.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (129, N'Laura', N'Bissot', N'LBISSOT', N'650.124.5234', CAST(N'2005-08-20' AS Date), N'ST_CLERK', 3300.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (130, N'Mozhe', N'Atkinson', N'MATKINSO', N'650.124.6234', CAST(N'2005-10-30' AS Date), N'ST_CLERK', 2800.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (131, N'James', N'Marlow', N'JAMRLOW', N'650.124.7234', CAST(N'2005-02-16' AS Date), N'ST_CLERK', 2500.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (132, N'TJ', N'Olson', N'TJOLSON', N'650.124.8234', CAST(N'2007-04-10' AS Date), N'ST_CLERK', 2100.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (133, N'Jason', N'Mallin', N'JMALLIN', N'650.127.1934', CAST(N'2004-06-14' AS Date), N'ST_CLERK', 3300.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (134, N'Michael', N'Rogers', N'MROGERS', N'650.127.1834', CAST(N'2006-08-26' AS Date), N'ST_CLERK', 2900.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (135, N'Ki', N'Gee', N'KGEE', N'650.127.1734', CAST(N'2007-12-12' AS Date), N'ST_CLERK', 2400.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (136, N'Hazel', N'Philtanker', N'HPHILTAN', N'650.127.1634', CAST(N'2008-02-06' AS Date), N'ST_CLERK', 2200.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (137, N'Renske', N'Ladwig', N'RLADWIG', N'650.121.1234', CAST(N'2003-07-14' AS Date), N'ST_CLERK', 3600.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (138, N'Stephen', N'Stiles', N'SSTILES', N'650.121.2034', CAST(N'2005-10-26' AS Date), N'ST_CLERK', 3200.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (139, N'John', N'Seo', N'JSEO', N'650.121.2019', CAST(N'2006-02-12' AS Date), N'ST_CLERK', 2700.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (140, N'Joshua', N'Patel', N'JPATEL', N'650.121.1834', CAST(N'2006-04-06' AS Date), N'ST_CLERK', 2500.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (141, N'Trenna', N'Rajs', N'TRAJS', N'650.121.8009', CAST(N'2003-10-17' AS Date), N'ST_CLERK', 3500.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (142, N'Curtis', N'Davies', N'CDAVIES', N'650.121.2994', CAST(N'2005-01-29' AS Date), N'ST_CLERK', 3100.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (143, N'Randall', N'Matos', N'RMATOS', N'650.121.2874', CAST(N'2006-03-15' AS Date), N'ST_CLERK', 2600.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (144, N'Peter', N'Vargas', N'PVARGAS', N'650.121.2004', CAST(N'2006-07-09' AS Date), N'ST_CLERK', 2500.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (145, N'John', N'Russell', N'JRUSSEL', N'011.44.1344.429268', CAST(N'2004-10-01' AS Date), N'SA_MAN', 14000.0000, 40.0000, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (146, N'Karen', N'Partners', N'KPARTNER', N'011.44.1344.467268', CAST(N'2005-01-05' AS Date), N'SA_MAN', 13500.0000, 30.0000, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (147, N'Alberto', N'Errazuriz', N'AERRAZUR', N'011.44.1344.429278', CAST(N'2005-03-10' AS Date), N'SA_MAN', 12000.0000, 30.0000, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (148, N'Gerald', N'Cambrault', N'GCAMBRAU', N'011.44.1344.619268', CAST(N'2007-10-15' AS Date), N'SA_MAN', 11000.0000, 30.0000, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (149, N'Eleni', N'Zlotkey', N'EZLOTKEY', N'011.44.1344.429018', CAST(N'2008-01-29' AS Date), N'SA_MAN', 10500.0000, 20.0000, 100, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (150, N'Peter', N'Tucker', N'PTUCKER', N'011.44.1344.129268', CAST(N'2005-01-30' AS Date), N'SA_REP', 10000.0000, 30.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (151, N'David', N'Bernstein', N'DBERNSTE', N'011.44.1344.345268', CAST(N'2005-03-24' AS Date), N'SA_REP', 9500.0000, 25.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (152, N'Peter', N'Hall', N'PHALL', N'011.44.1344.478968', CAST(N'2005-08-20' AS Date), N'SA_REP', 9000.0000, 25.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (153, N'Christopher', N'Olsen', N'COLSEN', N'011.44.1344.498718', CAST(N'2006-03-30' AS Date), N'SA_REP', 8000.0000, 20.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (154, N'Nanette', N'Cambrault', N'NCAMBRAU', N'011.44.1344.987668', CAST(N'2006-12-09' AS Date), N'SA_REP', 7500.0000, 20.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (155, N'Oliver', N'Tuvault', N'OTUVAULT', N'011.44.1344.486508', CAST(N'2007-11-23' AS Date), N'SA_REP', 7000.0000, 15.0000, 145, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (156, N'Janette', N'King', N'JKING', N'011.44.1345.429268', CAST(N'2004-01-30' AS Date), N'SA_REP', 10000.0000, 35.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (157, N'Patrick', N'Sully', N'PSULLY', N'011.44.1345.929268', CAST(N'2004-03-04' AS Date), N'SA_REP', 9500.0000, 35.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (158, N'Allan', N'McEwen', N'AMCEWEN', N'011.44.1345.829268', CAST(N'2004-08-01' AS Date), N'SA_REP', 9000.0000, 35.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (159, N'Lindsey', N'Smith', N'LSMITH', N'011.44.1345.729268', CAST(N'2005-03-10' AS Date), N'SA_REP', 8000.0000, 30.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (160, N'Louise', N'Doran', N'LDORAN', N'011.44.1345.629268', CAST(N'2005-12-15' AS Date), N'SA_REP', 7500.0000, 30.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (161, N'Sarath', N'Sewall', N'SSEWALL', N'011.44.1345.529268', CAST(N'2006-11-03' AS Date), N'SA_REP', 7000.0000, 25.0000, 146, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (162, N'Clara', N'Vishney', N'CVISHNEY', N'011.44.1346.129268', CAST(N'2005-11-11' AS Date), N'SA_REP', 10500.0000, 25.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (163, N'Danielle', N'Greene', N'DGREENE', N'011.44.1346.229268', CAST(N'2007-03-19' AS Date), N'SA_REP', 9500.0000, 15.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (164, N'Mattea', N'Marvins', N'MMARVINS', N'011.44.1346.329268', CAST(N'2008-01-24' AS Date), N'SA_REP', 7200.0000, 10.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (165, N'David', N'Lee', N'DLEE', N'011.44.1346.529268', CAST(N'2008-02-23' AS Date), N'SA_REP', 6800.0000, 10.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (166, N'Sundar', N'Ande', N'SANDE', N'011.44.1346.629268', CAST(N'2008-03-24' AS Date), N'SA_REP', 6400.0000, 10.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (167, N'Amit', N'Banda', N'ABANDA', N'011.44.1346.729268', CAST(N'2008-04-21' AS Date), N'SA_REP', 6200.0000, 10.0000, 147, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (168, N'Lisa', N'Ozer', N'LOZER', N'011.44.1343.929268', CAST(N'2005-03-11' AS Date), N'SA_REP', 11500.0000, 25.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (169, N'Harrison', N'Bloom', N'HBLOOM', N'011.44.1343.829268', CAST(N'2006-03-23' AS Date), N'SA_REP', 10000.0000, 20.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (170, N'Tayler', N'Fox', N'TFOX', N'011.44.1343.729268', CAST(N'2006-01-24' AS Date), N'SA_REP', 9600.0000, 20.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (171, N'William', N'Smith', N'WSMITH', N'011.44.1343.629268', CAST(N'2007-02-23' AS Date), N'SA_REP', 7400.0000, 15.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (172, N'Elizabeth', N'Bates', N'EBATES', N'011.44.1343.529268', CAST(N'2007-03-24' AS Date), N'SA_REP', 7300.0000, 15.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (173, N'Sundita', N'Kumar', N'SKUMAR', N'011.44.1343.329268', CAST(N'2008-04-21' AS Date), N'SA_REP', 6100.0000, 10.0000, 148, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (174, N'Ellen', N'Abel', N'EABEL', N'011.44.1644.429267', CAST(N'2004-05-11' AS Date), N'SA_REP', 11000.0000, 30.0000, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (175, N'Alyssa', N'Hutton', N'AHUTTON', N'011.44.1644.429266', CAST(N'2005-03-19' AS Date), N'SA_REP', 8800.0000, 25.0000, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (176, N'Jonathon', N'Taylor', N'JTAYLOR', N'011.44.1644.429265', CAST(N'2006-03-24' AS Date), N'SA_REP', 8600.0000, 20.0000, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (177, N'Jack', N'Livingston', N'JLIVINGS', N'011.44.1644.429264', CAST(N'2006-04-23' AS Date), N'SA_REP', 8400.0000, 20.0000, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (178, N'Kimberely', N'Grant', N'KGRANT', N'011.44.1644.429263', CAST(N'2007-05-24' AS Date), N'SA_REP', 7000.0000, 15.0000, 149, NULL)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (179, N'Charles', N'Johnson', N'CJOHNSON', N'011.44.1644.429262', CAST(N'2008-01-04' AS Date), N'SA_REP', 6200.0000, 10.0000, 149, 80)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (180, N'Winston', N'Taylor', N'WTAYLOR', N'650.507.9876', CAST(N'2006-01-24' AS Date), N'SH_CLERK', 3200.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (181, N'Jean', N'Fleaur', N'JFLEAUR', N'650.507.9877', CAST(N'2006-02-23' AS Date), N'SH_CLERK', 3100.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (182, N'Martha', N'Sullivan', N'MSULLIVA', N'650.507.9878', CAST(N'2007-06-21' AS Date), N'SH_CLERK', 2500.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (183, N'Girard', N'Geoni', N'GGEONI', N'650.507.9879', CAST(N'2008-02-03' AS Date), N'SH_CLERK', 2800.0000, NULL, 120, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (184, N'Nandita', N'Sarchand', N'NSARCHAN', N'650.509.1876', CAST(N'2004-01-27' AS Date), N'SH_CLERK', 4200.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (185, N'Alexis', N'Bull', N'ABULL', N'650.509.2876', CAST(N'2005-02-20' AS Date), N'SH_CLERK', 4100.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (186, N'Julia', N'Dellinger', N'JDELLING', N'650.509.3876', CAST(N'2006-06-24' AS Date), N'SH_CLERK', 3400.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (187, N'Anthony', N'Cabrio', N'ACABRIO', N'650.509.4876', CAST(N'2007-02-07' AS Date), N'SH_CLERK', 3000.0000, NULL, 121, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (188, N'Kelly', N'Chung', N'KCHUNG', N'650.505.1876', CAST(N'2005-06-14' AS Date), N'SH_CLERK', 3800.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (189, N'Jennifer', N'Dilly', N'JDILLY', N'650.505.2876', CAST(N'2005-08-13' AS Date), N'SH_CLERK', 3600.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (190, N'Timothy', N'Gates', N'TGATES', N'650.505.3876', CAST(N'2006-07-11' AS Date), N'SH_CLERK', 2900.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (191, N'Randall', N'Perkins', N'RPERKINS', N'650.505.4876', CAST(N'2007-12-19' AS Date), N'SH_CLERK', 2500.0000, NULL, 122, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (192, N'Sarah', N'Bell', N'SBELL', N'650.501.1876', CAST(N'2004-02-04' AS Date), N'SH_CLERK', 4000.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (193, N'Britney', N'Everett', N'BEVERETT', N'650.501.2876', CAST(N'2005-03-03' AS Date), N'SH_CLERK', 3900.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (194, N'Samuel', N'McCain', N'SMCCAIN', N'650.501.3876', CAST(N'2006-07-01' AS Date), N'SH_CLERK', 3200.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (195, N'Vance', N'Jones', N'VJONES', N'650.501.4876', CAST(N'2007-03-17' AS Date), N'SH_CLERK', 2800.0000, NULL, 123, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (196, N'Alana', N'Walsh', N'AWALSH', N'650.507.9811', CAST(N'2006-04-24' AS Date), N'SH_CLERK', 3100.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (197, N'Kevin', N'Feeney', N'KFEENEY', N'650.507.9822', CAST(N'2006-05-23' AS Date), N'SH_CLERK', 3000.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (198, N'Donald', N'OConnell', N'DOCONNEL', N'650.507.9833', CAST(N'2007-06-21' AS Date), N'SH_CLERK', 2600.0000, NULL, 124, 50)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (199, N'Douglas', N'Grant', N'DGRANT', N'650.507.9844', CAST(N'2008-01-13' AS Date), N'SH_CLERK', 2600.0000, NULL, 124, 50)
GO
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (200, N'Jennifer', N'Whalen', N'JWHALEN', N'515.123.4444', CAST(N'2003-09-17' AS Date), N'AD_ASST', 4400.0000, NULL, 101, 10)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (201, N'Michael', N'Hartstein', N'MHARTSTE', N'515.123.5555', CAST(N'2004-02-17' AS Date), N'MK_MAN', 13000.0000, NULL, 100, 20)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (202, N'Pat', N'Fay', N'PFAY', N'603.123.6666', CAST(N'2005-08-17' AS Date), N'MK_REP', 6000.0000, NULL, 201, 20)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (203, N'Susan', N'Mavris', N'SMAVRIS', N'515.123.7777', CAST(N'2002-06-07' AS Date), N'HR_REP', 6500.0000, NULL, 101, 40)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (204, N'Hermann', N'Baer', N'HBAER', N'515.123.8888', CAST(N'2002-06-07' AS Date), N'PR_REP', 10000.0000, NULL, 101, 70)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (205, N'Shelley', N'Higgins', N'SHIGGINS', N'515.123.8080', CAST(N'2002-06-07' AS Date), N'AC_MGR', 12008.0000, NULL, 101, 110)
INSERT [dbo].[employees] ([employee_id], [first_name], [last_name], [email], [phone_number], [hire_date], [job_id], [salary], [commission_pct], [manager_id], [department_id]) VALUES (206, N'William', N'Gietz', N'WGIETZ', N'515.123.8181', CAST(N'2002-06-07' AS Date), N'AC_ACCOUNT', 8300.0000, NULL, 205, 110)
GO
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (101, CAST(N'1997-09-21' AS Date), CAST(N'2001-10-27' AS Date), N'AC_ACCOUNT', 110)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (101, CAST(N'2001-10-28' AS Date), CAST(N'2005-03-15' AS Date), N'AC_MGR', 110)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (102, CAST(N'2001-01-13' AS Date), CAST(N'2006-07-24' AS Date), N'IT_PROG', 60)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (114, CAST(N'2006-03-24' AS Date), CAST(N'2007-12-31' AS Date), N'ST_CLERK', 50)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (122, CAST(N'2007-01-01' AS Date), CAST(N'2007-12-31' AS Date), N'ST_CLERK', 50)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (176, CAST(N'2006-03-24' AS Date), CAST(N'2006-12-31' AS Date), N'SA_REP', 80)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (176, CAST(N'2007-01-01' AS Date), CAST(N'2007-12-31' AS Date), N'SA_MAN', 80)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (200, CAST(N'1995-09-17' AS Date), CAST(N'2001-06-17' AS Date), N'AD_ASST', 90)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (200, CAST(N'2002-07-01' AS Date), CAST(N'2006-12-31' AS Date), N'AC_ACCOUNT', 90)
INSERT [dbo].[job_history] ([employee_id], [start_date], [end_date], [job_id], [department_id]) VALUES (201, CAST(N'2004-02-17' AS Date), CAST(N'2007-12-19' AS Date), N'MK_REP', 20)
GO
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AC_ACCOUNT', N'Public Accountant', 4200.0000, 9000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AC_MGR', N'Accounting Manager', 8200.0000, 16000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AD_ASST', N'Administration Assistant', 3000.0000, 6000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AD_PRES', N'President', 20080.0000, 40000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'AD_VP', N'Administration Vice President', 15000.0000, 30000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'FI_ACCOUNT', N'Accountant', 4200.0000, 9000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'FI_MGR', N'Finance Manager', 8200.0000, 16000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'HR_REP', N'Human Resources Representative', 4000.0000, 9000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'IT_PROG', N'Programmer', 4000.0000, 10000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'MK_MAN', N'Marketing Manager', 9000.0000, 15000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'MK_REP', N'Marketing Representative', 4000.0000, 9000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'PR_REP', N'Public Relations Representative', 4500.0000, 10500.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'PU_CLERK', N'Purchasing Clerk', 2500.0000, 5500.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'PU_MAN', N'Purchasing Manager', 8000.0000, 15000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SA_MAN', N'Sales Manager', 10000.0000, 20080.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SA_REP', N'Sales Representative', 6000.0000, 12008.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'SH_CLERK', N'Shipping Clerk', 2500.0000, 5500.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'ST_CLERK', N'Stock Clerk', 2008.0000, 5000.0000)
INSERT [dbo].[jobs] ([job_id], [job_title], [min_salary], [max_salary]) VALUES (N'ST_MAN', N'Stock Manager', 5500.0000, 8500.0000)
GO
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1000, N'1297 Via Cola di Rie', N'00989', N'Roma', NULL, N'IT')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1100, N'93091 Calle della Testa', N'10934', N'Venice', NULL, N'IT')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1200, N'2017 Shinjuku-ku', N'1689', N'Tokyo', N'Tokyo Prefecture', N'JP')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1300, N'9450 Kamiya-cho', N'6823', N'Hiroshima', NULL, N'JP')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1400, N'2014 Jabberwocky Rd', N'26192', N'Southlake', N'Texas', N'US')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1500, N'2011 Interiors Blvd', N'99236', N'South San Francisco', N'California', N'US')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1600, N'2007 Zagora St', N'50090', N'South Brunswick', N'New Jersey', N'US')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1700, N'2004 Charade Rd', N'98199', N'Seattle', N'Washington', N'US')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1800, N'147 Spadina Ave', N'M5V 2L7', N'Toronto', N'Ontario', N'CA')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (1900, N'6092 Boxwood St', N'YSW 9T2', N'Whitehorse', N'Yukon', N'CA')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2000, N'40-5-12 Laogianggen', N'190518', N'Beijing', NULL, N'CN')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2100, N'1298 Vileparle (E)', N'490231', N'Bombay', N'Maharashtra', N'IN')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2200, N'12-98 Victoria Street', N'2901', N'Sydney', N'New South Wales', N'AU')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2300, N'198 Clementi North', N'540198', N'Singapore', NULL, N'SG')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2400, N'8204 Arthur St', NULL, N'London', NULL, N'UK')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2500, N'Magdalen Centre, The Oxford Science Park', N'OX9 9ZB', N'Oxford', N'Oxford', N'UK')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2600, N'9702 Chester Road', N'09629850293', N'Stretford', N'Manchester', N'UK')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2700, N'Schwanthalerstr. 7031', N'80925', N'Munich', N'Bavaria', N'DE')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2800, N'Rua Frei Caneca 1360 ', N'01307-002', N'Sao Paulo', N'Sao Paulo', N'BR')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (2900, N'20 Rue des Corps-Saints', N'1730', N'Geneva', N'Geneve', N'CH')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (3000, N'Murtenstrasse 921', N'3095', N'Bern', N'BE', N'CH')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (3100, N'Pieter Breughelstraat 837', N'3029SK', N'Utrecht', N'Utrecht', N'NL')
INSERT [dbo].[locations] ([location_id], [street_address], [postal_code], [city], [state_province], [country_id]) VALUES (3200, N'Mariano Escobedo 9991', N'11932', N'Mexico City', N'Distrito Federal,', N'MX')
GO
INSERT [dbo].[regions] ([region_id], [region_name]) VALUES (1, N'Europe')
INSERT [dbo].[regions] ([region_id], [region_name]) VALUES (2, N'Americas')
INSERT [dbo].[regions] ([region_id], [region_name]) VALUES (3, N'Asia')
INSERT [dbo].[regions] ([region_id], [region_name]) VALUES (4, N'Middle East and Africa')
GO
ALTER TABLE [dbo].[countries]  WITH CHECK ADD  CONSTRAINT [COUNTR_REG_FK] FOREIGN KEY([region_id])
REFERENCES [dbo].[regions] ([region_id])
GO
ALTER TABLE [dbo].[countries] CHECK CONSTRAINT [COUNTR_REG_FK]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [DEPT_LOC_FK] FOREIGN KEY([location_id])
REFERENCES [dbo].[locations] ([location_id])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [DEPT_LOC_FK]
GO
ALTER TABLE [dbo].[departments]  WITH CHECK ADD  CONSTRAINT [DEPT_MGR_FK] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[departments] CHECK CONSTRAINT [DEPT_MGR_FK]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [EMP_DEPT_FK] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([department_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [EMP_DEPT_FK]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [EMP_JOB_FK] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [EMP_JOB_FK]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [EMP_MANAGER_FK] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [EMP_MANAGER_FK]
GO
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [JHIST_DEPT_FK] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([department_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [JHIST_DEPT_FK]
GO
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [JHIST_EMP_FK] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employees] ([employee_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [JHIST_EMP_FK]
GO
ALTER TABLE [dbo].[job_history]  WITH CHECK ADD  CONSTRAINT [JHIST_JOB_FK] FOREIGN KEY([job_id])
REFERENCES [dbo].[jobs] ([job_id])
GO
ALTER TABLE [dbo].[job_history] CHECK CONSTRAINT [JHIST_JOB_FK]
GO
ALTER TABLE [dbo].[locations]  WITH CHECK ADD  CONSTRAINT [LOC_C_ID_FK] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[locations] CHECK CONSTRAINT [LOC_C_ID_FK]
GO
