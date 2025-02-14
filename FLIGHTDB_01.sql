USE [FLIGHTDB_01]
GO
/****** Object:  User [praveen]    Script Date: 22/07/2019 2:08:26 PM ******/
CREATE USER [praveen] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[praveen]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Booking]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PassengerId] [int] NULL,
	[FlightId] [int] NULL,
	[BookingDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_tbl_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Flight]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Flight](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FlightNo] [varchar](100) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[FlightCapacity] [int] NULL,
	[DepartureCity] [int] NULL,
	[ArrivalCity] [int] NULL,
 CONSTRAINT [PK_tbl_Flight] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_Passenger]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Passenger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [int] NULL,
	[FirstName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[DateofBirth] [datetime] NULL,
	[FlightId] [int] NULL,
 CONSTRAINT [PK_tbl_Passenger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tlkp_City]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkp_City](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
	[State_Id] [int] NULL,
	[Country_Id] [int] NULL,
 CONSTRAINT [PK_tlkp_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tlkp_Country]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkp_Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_tlkp_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tlkp_State]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkp_State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_tlkp_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tlkp_Title]    Script Date: 22/07/2019 2:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tlkp_Title](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_tlkp_Title] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tbl_Flight] ON 

INSERT [dbo].[tbl_Flight] ([Id], [FlightNo], [StartTime], [EndTime], [FlightCapacity], [DepartureCity], [ArrivalCity]) VALUES (1, N'M1172', CAST(N'2019-06-25T05:30:00.000' AS DateTime), CAST(N'2019-06-25T07:00:00.000' AS DateTime), 60, 1, 2)
INSERT [dbo].[tbl_Flight] ([Id], [FlightNo], [StartTime], [EndTime], [FlightCapacity], [DepartureCity], [ArrivalCity]) VALUES (2, N'V1516', CAST(N'2019-06-25T06:00:00.000' AS DateTime), CAST(N'2019-06-25T09:00:00.000' AS DateTime), 55, 1, 4)
INSERT [dbo].[tbl_Flight] ([Id], [FlightNo], [StartTime], [EndTime], [FlightCapacity], [DepartureCity], [ArrivalCity]) VALUES (3, N'Q1314', CAST(N'2019-06-25T06:30:00.000' AS DateTime), CAST(N'2019-06-25T08:00:00.000' AS DateTime), 50, 1, 3)
SET IDENTITY_INSERT [dbo].[tbl_Flight] OFF
SET IDENTITY_INSERT [dbo].[tlkp_City] ON 

INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (1, N'Melbourne', 1, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (2, N'Sydney', 2, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (3, N'Adelaide', 5, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (4, N'Brisbane', 4, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (5, N'Hobart', 6, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (6, N'Perth', 3, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (7, N'Canberra', 7, 1)
INSERT [dbo].[tlkp_City] ([Id], [Description], [State_Id], [Country_Id]) VALUES (8, N'Darwin', 8, 1)
SET IDENTITY_INSERT [dbo].[tlkp_City] OFF
SET IDENTITY_INSERT [dbo].[tlkp_Country] ON 

INSERT [dbo].[tlkp_Country] ([Id], [Description]) VALUES (1, N'Australia')
SET IDENTITY_INSERT [dbo].[tlkp_Country] OFF
SET IDENTITY_INSERT [dbo].[tlkp_State] ON 

INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (1, N'Victoria')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (2, N'New South Wales')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (3, N'Western Australia')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (4, N'Queensland')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (5, N'South Australia')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (6, N'Tasmania')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (7, N'Australian Capital Territory')
INSERT [dbo].[tlkp_State] ([Id], [Description]) VALUES (8, N'Northern Territory')
SET IDENTITY_INSERT [dbo].[tlkp_State] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Booking_tbl_Flight_Id] FOREIGN KEY([FlightId])
REFERENCES [dbo].[tbl_Flight] ([Id])
GO
ALTER TABLE [dbo].[tbl_Booking] CHECK CONSTRAINT [FK_tbl_Booking_tbl_Flight_Id]
GO
ALTER TABLE [dbo].[tbl_Booking]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Booking_tbl_Passenger_Id] FOREIGN KEY([PassengerId])
REFERENCES [dbo].[tbl_Passenger] ([Id])
GO
ALTER TABLE [dbo].[tbl_Booking] CHECK CONSTRAINT [FK_tbl_Booking_tbl_Passenger_Id]
GO
ALTER TABLE [dbo].[tbl_Flight]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Flight_tlkp_City_ArrivalCity_Id] FOREIGN KEY([ArrivalCity])
REFERENCES [dbo].[tlkp_City] ([Id])
GO
ALTER TABLE [dbo].[tbl_Flight] CHECK CONSTRAINT [FK_tbl_Flight_tlkp_City_ArrivalCity_Id]
GO
ALTER TABLE [dbo].[tbl_Flight]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Flight_tlkp_City_DepartureCity_Id] FOREIGN KEY([DepartureCity])
REFERENCES [dbo].[tlkp_City] ([Id])
GO
ALTER TABLE [dbo].[tbl_Flight] CHECK CONSTRAINT [FK_tbl_Flight_tlkp_City_DepartureCity_Id]
GO
ALTER TABLE [dbo].[tbl_Passenger]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Passenger_tbl_Flight_Id] FOREIGN KEY([FlightId])
REFERENCES [dbo].[tbl_Flight] ([Id])
GO
ALTER TABLE [dbo].[tbl_Passenger] CHECK CONSTRAINT [FK_tbl_Passenger_tbl_Flight_Id]
GO
ALTER TABLE [dbo].[tbl_Passenger]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Passenger_tlkp_Title] FOREIGN KEY([Title])
REFERENCES [dbo].[tlkp_Title] ([Id])
GO
ALTER TABLE [dbo].[tbl_Passenger] CHECK CONSTRAINT [FK_tbl_Passenger_tlkp_Title]
GO
ALTER TABLE [dbo].[tlkp_City]  WITH CHECK ADD  CONSTRAINT [FK_tlkp_City_tlkp_Country_Country_Id] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[tlkp_Country] ([Id])
GO
ALTER TABLE [dbo].[tlkp_City] CHECK CONSTRAINT [FK_tlkp_City_tlkp_Country_Country_Id]
GO
ALTER TABLE [dbo].[tlkp_City]  WITH CHECK ADD  CONSTRAINT [FK_tlkp_City_tlkp_State_State_Id] FOREIGN KEY([State_Id])
REFERENCES [dbo].[tlkp_State] ([Id])
GO
ALTER TABLE [dbo].[tlkp_City] CHECK CONSTRAINT [FK_tlkp_City_tlkp_State_State_Id]
GO
