USE csun104

/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" VALUES (1,'admin','admin','Super','Admin','2019-04-27 14:42:28',1,'2019-04-27 14:42:28',1);
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

/*!40000 ALTER TABLE "releaseTypes" DISABLE KEYS */;
INSERT INTO "releaseTypes" VALUES (1,'Current','2019-04-26 21:51:09',NULL,'2019-04-26 21:51:09',NULL);
INSERT INTO "releaseTypes" VALUES (2,'Upcoming','2019-04-26 21:51:09',NULL,'2019-04-26 21:51:09',NULL);
INSERT INTO "releaseTypes" VALUES (3,'Alpha','2019-04-26 21:51:09',NULL,'2019-04-26 21:51:09',NULL);
INSERT INTO "releaseTypes" VALUES (4,'Beta','2019-04-26 21:51:09',NULL,'2019-04-26 21:51:09',NULL);
/*!40000 ALTER TABLE "releaseTypes" ENABLE KEYS */;

/*!40000 ALTER TABLE "roles" DISABLE KEYS */;
INSERT INTO "roles" VALUES (1,'SU','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
INSERT INTO "roles" VALUES (2,'Owner','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
INSERT INTO "roles" VALUES (3,'Manager','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
INSERT INTO "roles" VALUES (4,'Developer','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
INSERT INTO "roles" VALUES (5,'Normal','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
INSERT INTO "roles" VALUES (6,'Guest','2019-04-26 21:50:06',NULL,'2019-04-26 21:50:06',NULL);
/*!40000 ALTER TABLE "roles" ENABLE KEYS */;

/*!40000 ALTER TABLE "ticketPriorities" DISABLE KEYS */;
INSERT INTO "ticketPriorities" VALUES (1,'LOW','2019-04-26 21:46:21',NULL,'2019-04-26 21:46:21',NULL);
INSERT INTO "ticketPriorities" VALUES (2,'MEDIUM','2019-04-26 21:46:21',NULL,'2019-04-26 21:46:21',NULL);
INSERT INTO "ticketPriorities" VALUES (3,'HIGH','2019-04-26 21:46:21',NULL,'2019-04-26 21:46:21',NULL);
INSERT INTO "ticketPriorities" VALUES (4,'VERY HIGH','2019-04-26 21:46:21',NULL,'2019-04-26 21:46:21',NULL);
/*!40000 ALTER TABLE "ticketPriorities" ENABLE KEYS */;

/*!40000 ALTER TABLE "ticketStatus" DISABLE KEYS */;
INSERT INTO "ticketStatus" VALUES (1,'Pending','2019-04-26 21:41:39',1,'2019-04-26 21:41:39',1);
INSERT INTO "ticketStatus" VALUES (2,'In Progress','2019-04-26 21:41:39',1,'2019-04-26 21:41:39',1);
INSERT INTO "ticketStatus" VALUES (3,'Complete','2019-04-26 21:41:39',1,'2019-04-26 21:41:39',1);
INSERT INTO "ticketStatus" VALUES (4,'Approved','2019-04-26 21:41:39',1,'2019-04-26 21:41:39',1);
INSERT INTO "ticketStatus" VALUES (5,'Cancelled','2019-04-26 21:41:39',1,'2019-04-26 21:41:39',1);
/*!40000 ALTER TABLE "ticketStatus" ENABLE KEYS */;

/*!40000 ALTER TABLE "ticketTypes" DISABLE KEYS */;
INSERT INTO "ticketTypes" VALUES (1,'Feature','2019-04-26 21:48:03',NULL,'2019-04-26 21:48:03',NULL);
INSERT INTO "ticketTypes" VALUES (2,'Bug','2019-04-26 21:48:03',NULL,'2019-04-26 21:48:03',NULL);
INSERT INTO "ticketTypes" VALUES (3,'Enhancement','2019-04-26 21:48:03',NULL,'2019-04-26 21:48:03',NULL);
/*!40000 ALTER TABLE "ticketTypes" ENABLE KEYS */;




INSERT INTO dbo.tickets (ticketID, ticketName, ticketDescription, ticketType, createdBy, modifiedBy, ticketPriorityID, ticketStatusID, assignedDate)
select DISTINCT 
   [ID],
   LEFT([Title], 45),
   LEFT([Description], 45),
	2,
	1, 
	1,
	1,
       	2,
   getdate()
from  csun104.dbo.['CSUN File for Load$']



INSERT INTO csun104.dbo.featureTypes
(featureTypeID, featureTypeName, created, createdBy, updated, updatedBy)
VALUES(1, 'Modification', getdate(), NULL, getdate(), NULL);

INSERT INTO csun104.dbo.features(featureID, featureName, featureDescription, created, modified, createdBy, modifiedBy, featureType) VALUES 
(1, 'Button', 'Add a button to download', getdate(), getdate(), 1, 1, 1),
(2, 'Canvas', 'Add a canvas to the front page', getdate(), getdate(), 1, 1, 1),
(3, 'Sidebar', 'Add a sidebar to the landing page', getdate(), getdate(), 1, 1, 1),
(4, 'Table', 'Add a table to share timelines', getdate(), getdate(), 1, 1, 1),
(5, 'Table', 'Add a table to share working hours', getdate(), getdate(), 1, 1, 1),
(6, 'Carousel', 'Add a carousel to the landing page', getdate(), getdate(), 1, 1, 1),
(7, 'Chat', 'Add a chat application for users', getdate(), getdate(), 1, 1, 1),
(8, 'Chatroom', 'Implement a chatroom', getdate(), getdate(), 1, 1, 1),
(9, 'Bot', 'Add a bot to the chat', getdate(), getdate(), 1, 1, 1),
(10, 'Report', 'Add a report for admin', getdate(), getdate(), 1, 1, 1),
(11, 'Login', 'Add login functionality for all users', getdate(), getdate(), 1, 1, 1),
(12, 'Logout', 'Add a logout functionality for everyone', getdate(), getdate(), 1, 1, 1),
(13, 'Payment', 'Add a paypal payment option', getdate(), getdate(), 1, 1, 1);





INSERT INTO csun104.dbo.releases
(releaseID, releaseName, releaseDescription, releaseDate, deprecationDate, tag, created, modified, createdBy, modifiedBy, productID, releaseType)
VALUES(1, 'PreAlpha', 'Pre Alpha Release', getdate(), NULL, 'preAlpha', getdate(), getdate(), 1, 1, NULL, 3),
(2, 'Alpha', 'Alpha Release Release', getdate(), NULL, 'Alpha', getdate(), getdate(), 1, 1, NULL, 3),
(3, 'PreBeta', 'Pre Beta Release', getdate(), NULL, 'preBeta', getdate(), getdate(), 1, 1, NULL, 4),
(4, 'Beta', 'Beta Release', getdate(), NULL, 'Beta', getdate(), getdate(), 1, 1, NULL, 4),
(5, 'Upcoming', 'Upcoming Release', getdate(), NULL, 'upcoming', getdate(), getdate(), 1, 1, NULL, 2),
(6, 'Final', 'Current Release', getdate(), NULL, 'current', getdate(), getdate(), 1, 1, NULL, 1);



INSERT INTO csun104.dbo.releaseFeatures
(releaseFeatureID, releaseID, featureID, created, createdBy, modified, modifiedBy)
VALUES(1, 1, 1, getdate(), 1, getdate(), 1),
(2, 1, 2, getdate(), 1, getdate(), 1),
(3, 2, 3, getdate(), 1, getdate(), 1),
(4, 1, 3, getdate(), 1, getdate(), 1),
(5, 1, 4, getdate(), 1, getdate(), 1),
(6, 4, 1, getdate(), 1, getdate(), 1);



--# Procedure 1

SELECT * FROM csun104.dbo.releases 
left join csun104.dbo.releaseFeatures on releases.releaseID = releaseFeatures.releaseID
left join csun104.dbo.features on releaseFeatures.featureID = features.featureID
where releases.releaseDate>='2019-05-14' and features.featureName like '%Button%';


--# Procedure 2


SELECT releases.releaseID as Release_Num, releases.releaseName as Release_Name, releases.releaseDate as Release_Date, features.featureName as Feature_Title FROM csun104.dbo.releases 
left join csun104.dbo.releaseFeatures on releases.releaseID = releaseFeatures.releaseID
left join csun104.dbo.features on releaseFeatures.featureID = features.featureID
where releases.releaseDate>='2019-05-14' and features.featureName like '%Button%';




INSERT INTO csun104.dbo.tickets
(ticketID, ticketName, ticketDescription, ticketType, createdBy, modifiedBy, created, modified, assigneTo, assignedDate, assignedBy, ticketPriorityID, ticketStatusID)
VALUES(1, 'Wrong Buttong Action', 'Button opens new page instead of popup', 2, 1, 1, getdate(), getdate(), NULL, getdate(), 1, 1, 2);


--# Procedure 3
UPDATE csun104.dbo.tickets SET ticketStatusID = 3 where ticketID=1;


