USE [csun104]
GO
/****** Object:  Table [dbo].[features]    Script Date: 5/14/2019 9:05:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[features](
	[featureID] [int] NOT NULL,
	[featureName] [varchar](45) NULL,
	[featureDescription] [varchar](45) NULL,
	[created] [datetime] NULL,
	[modified] [datetime] NULL,
	[createdBy] [int] NULL,
	[modifiedBy] [int] NULL,
	[featureType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[featureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[featureTypes]    Script Date: 5/14/2019 9:05:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[featureTypes](
	[featureTypeID] [int] NOT NULL,
	[featureTypeName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[updated] [datetime] NULL,
	[updatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[featureTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/14/2019 9:05:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productID] [int] NOT NULL,
	[productName] [varchar](45) NULL,
	[productDescription] [varchar](45) NULL,
	[created] [datetime] NULL,
	[modified] [datetime] NULL,
	[createdBy] [int] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productTeams]    Script Date: 5/14/2019 9:05:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productTeams](
	[productID] [int] NULL,
	[teamID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productVersions]    Script Date: 5/14/2019 9:05:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productVersions](
	[productID] [int] NULL,
	[versionID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[releaseFeatures]    Script Date: 5/14/2019 9:05:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[releaseFeatures](
	[releaseFeatureID] [int] NOT NULL,
	[releaseID] [int] NULL,
	[featureID] [int] NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[releaseFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[releases]    Script Date: 5/14/2019 9:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[releases](
	[releaseID] [int] NOT NULL,
	[releaseName] [varchar](45) NULL,
	[releaseDescription] [varchar](45) NULL,
	[releaseDate] [datetime] NULL,
	[deprecationDate] [datetime] NULL,
	[tag] [varchar](45) NULL,
	[created] [datetime] NULL,
	[modified] [datetime] NULL,
	[createdBy] [int] NULL,
	[modifiedBy] [int] NULL,
	[productID] [int] NULL,
	[releaseType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[releaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[releaseTypes]    Script Date: 5/14/2019 9:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[releaseTypes](
	[releaseTypeID] [int] NOT NULL,
	[releaseTypeName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[releaseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 5/14/2019 9:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[roleID] [int] NOT NULL,
	[roleName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teamMembers]    Script Date: 5/14/2019 9:05:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teamMembers](
	[teamMemberID] [int] NOT NULL,
	[teamID] [int] NULL,
	[userID] [int] NULL,
	[role] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[teamMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teams]    Script Date: 5/14/2019 9:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teams](
	[teamID] [int] NOT NULL,
	[teamName] [varchar](45) NULL,
	[teamDescription] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[teamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketPriorities]    Script Date: 5/14/2019 9:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketPriorities](
	[ticketPriorityID] [int] NOT NULL,
	[ticketPriorityName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketPriorityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tickets]    Script Date: 5/14/2019 9:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets](
	[ticketID] [int] NOT NULL,
	[ticketName] [varchar](45) NULL,
	[ticketDescription] [varchar](45) NULL,
	[ticketType] [int] NULL,
	[createdBy] [int] NULL,
	[modifiedBy] [int] NULL,
	[created] [datetime] NULL,
	[modified] [datetime] NULL,
	[assigneTo] [int] NULL,
	[assignedDate] [datetime] NOT NULL,
	[assignedBy] [int] NULL,
	[ticketPriorityID] [int] NULL,
	[ticketStatusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketStatus]    Script Date: 5/14/2019 9:05:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketStatus](
	[ticketStatusID] [int] NOT NULL,
	[ticketStatusName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticketTypes]    Script Date: 5/14/2019 9:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticketTypes](
	[ticketTypeID] [int] NOT NULL,
	[ticketTypeName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userRoles]    Script Date: 5/14/2019 9:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userRoles](
	[userID] [int] NOT NULL,
	[roleID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 5/14/2019 9:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[userID] [int] NOT NULL,
	[username] [varchar](45) NULL,
	[password] [varchar](45) NULL,
	[firstName] [varchar](45) NULL,
	[lastName] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[updated] [datetime] NULL,
	[updateBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 5/14/2019 9:05:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versions](
	[versionID] [int] NOT NULL,
	[versionNumber] [varchar](45) NULL,
	[versionName] [varchar](45) NULL,
	[versionTag] [varchar](45) NULL,
	[created] [datetime] NULL,
	[createdBy] [int] NULL,
	[modified] [datetime] NULL,
	[modifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[versionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [featureName]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [featureDescription]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [created]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [modified]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[features] ADD  DEFAULT (NULL) FOR [featureType]
GO
ALTER TABLE [dbo].[featureTypes] ADD  DEFAULT (NULL) FOR [featureTypeName]
GO
ALTER TABLE [dbo].[featureTypes] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[featureTypes] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[featureTypes] ADD  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[featureTypes] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [productName]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [productDescription]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[productTeams] ADD  DEFAULT (NULL) FOR [productID]
GO
ALTER TABLE [dbo].[productTeams] ADD  DEFAULT (NULL) FOR [teamID]
GO
ALTER TABLE [dbo].[productVersions] ADD  DEFAULT (NULL) FOR [productID]
GO
ALTER TABLE [dbo].[productVersions] ADD  DEFAULT (NULL) FOR [versionID]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (NULL) FOR [releaseID]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (NULL) FOR [featureID]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[releaseFeatures] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [releaseName]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [releaseDescription]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [releaseDate]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [deprecationDate]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [tag]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [productID]
GO
ALTER TABLE [dbo].[releases] ADD  DEFAULT (NULL) FOR [releaseType]
GO
ALTER TABLE [dbo].[releaseTypes] ADD  DEFAULT (NULL) FOR [releaseTypeName]
GO
ALTER TABLE [dbo].[releaseTypes] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[releaseTypes] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[releaseTypes] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[releaseTypes] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [roleName]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (NULL) FOR [teamID]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (NULL) FOR [userID]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (NULL) FOR [role]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[teamMembers] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (NULL) FOR [teamName]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (NULL) FOR [teamDescription]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[teams] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[ticketPriorities] ADD  DEFAULT (NULL) FOR [ticketPriorityName]
GO
ALTER TABLE [dbo].[ticketPriorities] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[ticketPriorities] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[ticketPriorities] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[ticketPriorities] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [ticketName]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [ticketDescription]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [ticketType]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [assigneTo]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [assignedBy]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [ticketPriorityID]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [ticketStatusID]
GO
ALTER TABLE [dbo].[ticketStatus] ADD  DEFAULT (NULL) FOR [ticketStatusName]
GO
ALTER TABLE [dbo].[ticketStatus] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[ticketStatus] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[ticketStatus] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[ticketStatus] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[ticketTypes] ADD  DEFAULT (NULL) FOR [ticketTypeName]
GO
ALTER TABLE [dbo].[ticketTypes] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[ticketTypes] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[ticketTypes] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[ticketTypes] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [firstName]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [lastName]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [updated]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [updateBy]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [versionNumber]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [versionName]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [versionTag]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (getdate()) FOR [created]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [createdBy]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (getdate()) FOR [modified]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [modifiedBy]
GO
ALTER TABLE [dbo].[features]  WITH CHECK ADD  CONSTRAINT [fk_features_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[features] CHECK CONSTRAINT [fk_features_1]
GO
ALTER TABLE [dbo].[features]  WITH CHECK ADD  CONSTRAINT [fk_features_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[features] CHECK CONSTRAINT [fk_features_2]
GO
ALTER TABLE [dbo].[features]  WITH CHECK ADD  CONSTRAINT [fk_features_3] FOREIGN KEY([featureType])
REFERENCES [dbo].[featureTypes] ([featureTypeID])
GO
ALTER TABLE [dbo].[features] CHECK CONSTRAINT [fk_features_3]
GO
ALTER TABLE [dbo].[featureTypes]  WITH CHECK ADD  CONSTRAINT [fk_featureTypes_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[featureTypes] CHECK CONSTRAINT [fk_featureTypes_1]
GO
ALTER TABLE [dbo].[featureTypes]  WITH CHECK ADD  CONSTRAINT [fk_featureTypes_2] FOREIGN KEY([updatedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[featureTypes] CHECK CONSTRAINT [fk_featureTypes_2]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_1]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_product_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_product_2]
GO
ALTER TABLE [dbo].[productTeams]  WITH CHECK ADD  CONSTRAINT [fk_productTeams_1] FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([productID])
GO
ALTER TABLE [dbo].[productTeams] CHECK CONSTRAINT [fk_productTeams_1]
GO
ALTER TABLE [dbo].[productTeams]  WITH CHECK ADD  CONSTRAINT [fk_productTeams_2] FOREIGN KEY([teamID])
REFERENCES [dbo].[teams] ([teamID])
GO
ALTER TABLE [dbo].[productTeams] CHECK CONSTRAINT [fk_productTeams_2]
GO
ALTER TABLE [dbo].[productVersions]  WITH CHECK ADD  CONSTRAINT [fk_productVersions_1] FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([productID])
GO
ALTER TABLE [dbo].[productVersions] CHECK CONSTRAINT [fk_productVersions_1]
GO
ALTER TABLE [dbo].[productVersions]  WITH CHECK ADD  CONSTRAINT [fk_productVersions_2] FOREIGN KEY([versionID])
REFERENCES [dbo].[versions] ([versionID])
GO
ALTER TABLE [dbo].[productVersions] CHECK CONSTRAINT [fk_productVersions_2]
GO
ALTER TABLE [dbo].[releaseFeatures]  WITH CHECK ADD  CONSTRAINT [fk_releaseFeatures_1] FOREIGN KEY([releaseID])
REFERENCES [dbo].[releases] ([releaseID])
GO
ALTER TABLE [dbo].[releaseFeatures] CHECK CONSTRAINT [fk_releaseFeatures_1]
GO
ALTER TABLE [dbo].[releaseFeatures]  WITH CHECK ADD  CONSTRAINT [fk_releaseFeatures_2] FOREIGN KEY([featureID])
REFERENCES [dbo].[features] ([featureID])
GO
ALTER TABLE [dbo].[releaseFeatures] CHECK CONSTRAINT [fk_releaseFeatures_2]
GO
ALTER TABLE [dbo].[releaseFeatures]  WITH CHECK ADD  CONSTRAINT [fk_releaseFeatures_3] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releaseFeatures] CHECK CONSTRAINT [fk_releaseFeatures_3]
GO
ALTER TABLE [dbo].[releaseFeatures]  WITH CHECK ADD  CONSTRAINT [fk_releaseFeatures_4] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releaseFeatures] CHECK CONSTRAINT [fk_releaseFeatures_4]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_releases_1] FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([productID])
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_releases_1]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_releases_2] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_releases_2]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_releases_3] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_releases_3]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_releases_4] FOREIGN KEY([releaseType])
REFERENCES [dbo].[releaseTypes] ([releaseTypeID])
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_releases_4]
GO
ALTER TABLE [dbo].[releaseTypes]  WITH CHECK ADD  CONSTRAINT [fk_releaseTypes_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releaseTypes] CHECK CONSTRAINT [fk_releaseTypes_1]
GO
ALTER TABLE [dbo].[releaseTypes]  WITH CHECK ADD  CONSTRAINT [fk_releaseTypes_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[releaseTypes] CHECK CONSTRAINT [fk_releaseTypes_2]
GO
ALTER TABLE [dbo].[roles]  WITH CHECK ADD  CONSTRAINT [fk_roles_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[roles] CHECK CONSTRAINT [fk_roles_1]
GO
ALTER TABLE [dbo].[roles]  WITH CHECK ADD  CONSTRAINT [fk_roles_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[roles] CHECK CONSTRAINT [fk_roles_2]
GO
ALTER TABLE [dbo].[teamMembers]  WITH CHECK ADD  CONSTRAINT [fk_teamMembers_1] FOREIGN KEY([teamID])
REFERENCES [dbo].[teams] ([teamID])
GO
ALTER TABLE [dbo].[teamMembers] CHECK CONSTRAINT [fk_teamMembers_1]
GO
ALTER TABLE [dbo].[teamMembers]  WITH CHECK ADD  CONSTRAINT [fk_teamMembers_2] FOREIGN KEY([userID])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[teamMembers] CHECK CONSTRAINT [fk_teamMembers_2]
GO
ALTER TABLE [dbo].[teamMembers]  WITH CHECK ADD  CONSTRAINT [fk_teamMembers_3] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[teamMembers] CHECK CONSTRAINT [fk_teamMembers_3]
GO
ALTER TABLE [dbo].[teamMembers]  WITH CHECK ADD  CONSTRAINT [fk_teamMembers_4] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[teamMembers] CHECK CONSTRAINT [fk_teamMembers_4]
GO
ALTER TABLE [dbo].[teams]  WITH CHECK ADD  CONSTRAINT [fk_teams_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[teams] CHECK CONSTRAINT [fk_teams_1]
GO
ALTER TABLE [dbo].[teams]  WITH CHECK ADD  CONSTRAINT [fk_teams_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[teams] CHECK CONSTRAINT [fk_teams_2]
GO
ALTER TABLE [dbo].[ticketPriorities]  WITH CHECK ADD  CONSTRAINT [fk_ticketPriorities_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketPriorities] CHECK CONSTRAINT [fk_ticketPriorities_1]
GO
ALTER TABLE [dbo].[ticketPriorities]  WITH CHECK ADD  CONSTRAINT [fk_ticketPriorities_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketPriorities] CHECK CONSTRAINT [fk_ticketPriorities_2]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_1] FOREIGN KEY([ticketStatusID])
REFERENCES [dbo].[ticketStatus] ([ticketStatusID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_1]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_2] FOREIGN KEY([ticketPriorityID])
REFERENCES [dbo].[ticketPriorities] ([ticketPriorityID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_2]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_3] FOREIGN KEY([assigneTo])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_3]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_4] FOREIGN KEY([assignedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_4]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_5] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_5]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_6] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_6]
GO
ALTER TABLE [dbo].[tickets]  WITH CHECK ADD  CONSTRAINT [fk_tickets_7] FOREIGN KEY([ticketType])
REFERENCES [dbo].[ticketTypes] ([ticketTypeID])
GO
ALTER TABLE [dbo].[tickets] CHECK CONSTRAINT [fk_tickets_7]
GO
ALTER TABLE [dbo].[ticketStatus]  WITH CHECK ADD  CONSTRAINT [fk_ticketStatus_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketStatus] CHECK CONSTRAINT [fk_ticketStatus_1]
GO
ALTER TABLE [dbo].[ticketStatus]  WITH CHECK ADD  CONSTRAINT [fk_ticketStatus_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketStatus] CHECK CONSTRAINT [fk_ticketStatus_2]
GO
ALTER TABLE [dbo].[ticketTypes]  WITH CHECK ADD  CONSTRAINT [fk_ticketTypes_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketTypes] CHECK CONSTRAINT [fk_ticketTypes_1]
GO
ALTER TABLE [dbo].[ticketTypes]  WITH CHECK ADD  CONSTRAINT [fk_ticketTypes_2] FOREIGN KEY([modifiedBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[ticketTypes] CHECK CONSTRAINT [fk_ticketTypes_2]
GO
ALTER TABLE [dbo].[userRoles]  WITH CHECK ADD  CONSTRAINT [fk_userRoles_1] FOREIGN KEY([userID])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[userRoles] CHECK CONSTRAINT [fk_userRoles_1]
GO
ALTER TABLE [dbo].[userRoles]  WITH CHECK ADD  CONSTRAINT [fk_userRoles_2] FOREIGN KEY([roleID])
REFERENCES [dbo].[roles] ([roleID])
GO
ALTER TABLE [dbo].[userRoles] CHECK CONSTRAINT [fk_userRoles_2]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_users_1] FOREIGN KEY([createdBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_users_1]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_users_2] FOREIGN KEY([updateBy])
REFERENCES [dbo].[users] ([userID])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_users_2]
GO
