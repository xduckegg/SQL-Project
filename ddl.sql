
DROP DATABASE IF EXISTS csun104;

CREATE DATABASE csun104;

USE csun104;


DROP TABLE IF EXISTS "users";

CREATE TABLE "users" (
  "userID" int NOT NULL,
  "username" varchar(45) DEFAULT NULL,
  "password" varchar(45) DEFAULT NULL,
  "firstName" varchar(45) DEFAULT NULL,
  "lastName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "updated" datetime DEFAULT CURRENT_TIMESTAMP,
  "updateBy" int DEFAULT NULL,
  PRIMARY KEY ("userID"),
  CONSTRAINT "fk_users_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_users_2" FOREIGN KEY ("updateBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

--


DROP TABLE IF EXISTS "featureTypes";

CREATE TABLE "featureTypes" (
  "featureTypeID" int NOT NULL,
  "featureTypeName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "updated" datetime DEFAULT CURRENT_TIMESTAMP,
  "updatedBy" int DEFAULT NULL,
  PRIMARY KEY ("featureTypeID"),
  CONSTRAINT "fk_featureTypes_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_featureTypes_2" FOREIGN KEY ("updatedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);


DROP TABLE IF EXISTS "features";

CREATE TABLE "features" (
  "featureID" int NOT NULL,
  "featureName" varchar(45) DEFAULT NULL,
  "featureDescription" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT NULL,
  "modified" datetime DEFAULT NULL,
  "createdBy" int DEFAULT NULL,
  "modifiedBy" int DEFAULT NULL,
  "featureType" int DEFAULT NULL,
  PRIMARY KEY ("featureID"),
  CONSTRAINT "fk_features_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_features_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_features_3" FOREIGN KEY ("featureType") REFERENCES "featureTypes" ("featureTypeID") ON DELETE NO ACTION ON UPDATE NO ACTION
);


DROP TABLE IF EXISTS "product";

CREATE TABLE "product" (
  "productID" int NOT NULL,
  "productName" varchar(45) DEFAULT NULL,
  "productDescription" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("productID"),
  CONSTRAINT "fk_product_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_product_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);


DROP TABLE IF EXISTS "teams";

CREATE TABLE "teams" (
  "teamID" int NOT NULL,
  "teamName" varchar(45) DEFAULT NULL,
  "teamDescription" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("teamID"),
  CONSTRAINT "fk_teams_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_teams_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);


DROP TABLE IF EXISTS "productTeams";

CREATE TABLE "productTeams" (
  "productID" int DEFAULT NULL,
  "teamID" int DEFAULT NULL,
  CONSTRAINT "fk_productTeams_1" FOREIGN KEY ("productID") REFERENCES "product" ("productID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_productTeams_2" FOREIGN KEY ("teamID") REFERENCES "teams" ("teamID") ON DELETE NO ACTION ON UPDATE NO ACTION
);




DROP TABLE IF EXISTS "releaseTypes";

CREATE TABLE "releaseTypes" (
  "releaseTypeID" int NOT NULL,
  "releaseTypeName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("releaseTypeID"),
  CONSTRAINT "fk_releaseTypes_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releaseTypes_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "releases";

CREATE TABLE "releases" (
  "releaseID" int NOT NULL,
  "releaseName" varchar(45) DEFAULT NULL,
  "releaseDescription" varchar(45) DEFAULT NULL,
  "releaseDate" datetime DEFAULT NULL,
  "deprecationDate" datetime DEFAULT NULL,
  "tag" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modifiedBy" int DEFAULT NULL,
  "productID" int DEFAULT NULL,
  "releaseType" int DEFAULT NULL,
  PRIMARY KEY ("releaseID"),
  CONSTRAINT "fk_releases_1" FOREIGN KEY ("productID") REFERENCES "product" ("productID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releases_2" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releases_3" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releases_4" FOREIGN KEY ("releaseType") REFERENCES "releaseTypes" ("releaseTypeID") ON DELETE NO ACTION ON UPDATE NO ACTION
);

DROP TABLE IF EXISTS "releaseFeatures";

CREATE TABLE "releaseFeatures" (
  "releaseFeatureID" int NOT NULL,
  "releaseID" int DEFAULT NULL,
  "featureID" int DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("releaseFeatureID"),
  CONSTRAINT "fk_releaseFeatures_1" FOREIGN KEY ("releaseID") REFERENCES "releases" ("releaseID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releaseFeatures_2" FOREIGN KEY ("featureID") REFERENCES "features" ("featureID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releaseFeatures_3" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_releaseFeatures_4" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "roles";


CREATE TABLE "roles" (
  "roleID" int NOT NULL,
  "roleName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("roleID"),
  CONSTRAINT "fk_roles_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_roles_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "teamMembers";


CREATE TABLE "teamMembers" (
  "teamMemberID" int NOT NULL,
  "teamID" int DEFAULT NULL,
  "userID" int DEFAULT NULL,
  "role" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("teamMemberID"),
  CONSTRAINT "fk_teamMembers_1" FOREIGN KEY ("teamID") REFERENCES "teams" ("teamID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_teamMembers_2" FOREIGN KEY ("userID") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_teamMembers_3" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_teamMembers_4" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "ticketPriorities";

CREATE TABLE "ticketPriorities" (
  "ticketPriorityID" int NOT NULL,
  "ticketPriorityName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("ticketPriorityID"),
  CONSTRAINT "fk_ticketPriorities_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticketPriorities_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "ticketStatus";


CREATE TABLE "ticketStatus" (
  "ticketStatusID" int NOT NULL,
  "ticketStatusName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("ticketStatusID"),
  CONSTRAINT "fk_ticketStatus_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticketStatus_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "ticketTypes";


CREATE TABLE "ticketTypes" (
  "ticketTypeID" int NOT NULL,
  "ticketTypeName" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("ticketTypeID"),
  CONSTRAINT "fk_ticketTypes_1" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_ticketTypes_2" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION
);




DROP TABLE IF EXISTS "tickets";

CREATE TABLE "tickets" (
  "ticketID" int NOT NULL,
  "ticketName" varchar(45) DEFAULT NULL,
  "ticketDescription" varchar(45) DEFAULT NULL,
  "ticketType" int DEFAULT NULL,
  "createdBy" int DEFAULT NULL,
  "modifiedBy" int DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "assigneTo" int DEFAULT NULL,
  "assignedDate" datetime NOT NULL,
  "assignedBy" int DEFAULT NULL,
  "ticketPriorityID" int DEFAULT NULL,
  "ticketStatusID" int DEFAULT NULL,
  PRIMARY KEY ("ticketID"),
  CONSTRAINT "fk_tickets_1" FOREIGN KEY ("ticketStatusID") REFERENCES "ticketStatus" ("ticketStatusID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_2" FOREIGN KEY ("ticketPriorityID") REFERENCES "ticketPriorities" ("ticketPriorityID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_3" FOREIGN KEY ("assigneTo") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_4" FOREIGN KEY ("assignedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_5" FOREIGN KEY ("createdBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_6" FOREIGN KEY ("modifiedBy") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_tickets_7" FOREIGN KEY ("ticketType") REFERENCES "ticketTypes" ("ticketTypeID") ON DELETE NO ACTION ON UPDATE NO ACTION
);



DROP TABLE IF EXISTS "userRoles";


CREATE TABLE "userRoles" (
  "userID" int NOT NULL,
  "roleID" int NOT NULL,
  CONSTRAINT "fk_userRoles_1" FOREIGN KEY ("userID") REFERENCES "users" ("userID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_userRoles_2" FOREIGN KEY ("roleID") REFERENCES "roles" ("roleID") ON DELETE NO ACTION ON UPDATE NO ACTION
);




DROP TABLE IF EXISTS "versions";


CREATE TABLE "versions" (
  "versionID" int NOT NULL,
  "versionNumber" varchar(45) DEFAULT NULL,
  "versionName" varchar(45) DEFAULT NULL,
  "versionTag" varchar(45) DEFAULT NULL,
  "created" datetime DEFAULT CURRENT_TIMESTAMP,
  "createdBy" int DEFAULT NULL,
  "modified" datetime DEFAULT CURRENT_TIMESTAMP,
  "modifiedBy" int DEFAULT NULL,
  PRIMARY KEY ("versionID")
);



DROP TABLE IF EXISTS "productVersions";


CREATE TABLE "productVersions" (
  "productID" int DEFAULT NULL,
  "versionID" int DEFAULT NULL,
  CONSTRAINT "fk_productVersions_1" FOREIGN KEY ("productID") REFERENCES "product" ("productID") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "fk_productVersions_2" FOREIGN KEY ("versionID") REFERENCES "versions" ("versionID") ON DELETE NO ACTION ON UPDATE NO ACTION
);
