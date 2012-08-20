-- MySQL dump 10.13  Distrib 5.5.25a, for Linux (i686)
--
-- Host: localhost    Database: lportal
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (10154,10152,0,'','2012-08-20 16:25:38','2012-08-20 16:25:38',0,'Design Collective','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsEntry`
--

LOCK TABLES `AnnouncementsEntry` WRITE;
/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsFlag`
--

LOCK TABLES `AnnouncementsFlag` WRITE;
/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_510B46AC` (`groupId`,`parentCategoryId`,`name`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategory`
--

LOCK TABLES `AssetCategory` WRITE;
/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategoryProperty`
--

LOCK TABLES `AssetCategoryProperty` WRITE;
/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetCategories` (
  `entryId` bigint(20) NOT NULL,
  `categoryId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`categoryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

LOCK TABLES `AssetEntries_AssetCategories` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

LOCK TABLES `AssetEntries_AssetTags` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntry`
--

LOCK TABLES `AssetEntry` WRITE;
/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` VALUES (10176,10170,10152,10156,'','2012-08-20 16:25:38','2012-08-20 16:25:38',10115,10174,'d44c253c-b71f-4789-aaee-b9a7e89f5c19',0,0,NULL,NULL,NULL,NULL,'text/html','10173','','','','',0,0,0,0),(10184,10178,10152,10156,'','2012-08-20 16:25:38','2012-08-20 16:25:38',10115,10182,'a0230bdb-9d44-4c67-bb7e-2abd654bfcac',0,0,NULL,NULL,NULL,NULL,'text/html','10181','','','','',0,0,0,0),(10199,10190,10152,10194,'Test Test','2012-08-20 16:25:39','2012-08-20 16:25:39',10006,10194,'b69565a5-b98b-4611-ac82-66e34a5ea1fc',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10317,10310,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10115,10314,'fbd48e8f-ab9a-44e1-aa62-fc6fb526ee03',0,0,NULL,NULL,NULL,NULL,'text/html','10313','','','','',0,0,0,0),(10326,10320,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10115,10324,'5a915c61-463b-4225-9157-a49577d05754',0,0,NULL,NULL,NULL,NULL,'text/html','10323','','','','',0,0,0,0),(10335,10329,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10115,10333,'b0e06247-fa9c-4f30-bad1-34c9998cad3b',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),(10349,10338,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10115,10347,'d8fa9a82-59d0-4ab9-977a-9b156f40bdcd',0,0,NULL,NULL,NULL,NULL,'text/html','10346','','','','',0,0,0,0),(10355,10338,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10353,'366c2bcb-71f7-4491-b307-cf47457bfcf3',0,0,NULL,NULL,NULL,NULL,'text/html','10352','','','','',0,0,0,0),(10361,10338,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10359,'b5705faf-1fd7-48fc-ac91-cf156a9cb4b4',0,0,NULL,NULL,NULL,NULL,'text/html','10358','','','','',0,0,0,0),(10375,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10373,'90a31fb9-6bf2-4f13-b91a-3c0c9a16a18d',0,0,NULL,NULL,NULL,NULL,'text/html','10372','','','','',0,0,0,0),(10383,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10381,'d9f87a4d-534e-46d1-a53d-bdfbe3f303cd',0,0,NULL,NULL,NULL,NULL,'text/html','10380','','','','',0,0,0,0),(10389,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10387,'003e472f-e280-4b55-993c-e54ad8ba871b',0,0,NULL,NULL,NULL,NULL,'text/html','10386','','','','',0,0,0,0),(10395,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10115,10393,'f90458d6-141e-4d32-85ae-a2ac8dbe3e9e',0,0,NULL,NULL,NULL,NULL,'text/html','10392','','','','',0,0,0,0),(10412,10190,10152,10407,'Diego Pino','2012-08-20 16:25:43','2012-08-20 16:25:43',10006,10407,'9ac32f60-8848-4a65-ad7a-cd5974113351',0,0,NULL,NULL,NULL,NULL,'','Diego Pino','','','','',0,0,0,0),(10464,10451,10152,10156,'','2012-08-20 16:25:53','2012-08-20 16:25:53',10115,10462,'41ca2ccc-46fd-4f3b-a033-0f807344f32c',0,0,NULL,NULL,NULL,NULL,'text/html','10461','','','','',0,0,0,0),(10472,10451,10152,10156,'','2012-08-20 16:25:54','2012-08-20 16:25:54',10115,10470,'f340b5e7-895b-4989-8c20-76733ea89989',0,0,NULL,NULL,NULL,NULL,'text/html','10469','','','','',0,0,0,0),(10478,10451,10152,10156,'','2012-08-20 16:25:54','2012-08-20 16:25:54',10115,10476,'8eb2c187-554b-40ae-b15d-eacc9eb704be',0,0,NULL,NULL,NULL,NULL,'text/html','10475','','','','',0,0,0,0),(10485,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10483,'9a0a95b6-6b92-415f-9ae9-3f5c6b89c300',0,0,NULL,NULL,NULL,NULL,'text/html','10482','','','','',0,0,0,0),(10493,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10491,'b1eab437-3b36-47df-ad93-bce934396d62',0,0,NULL,NULL,NULL,NULL,'text/html','10490','','','','',0,0,0,0),(10501,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10499,'8cddd0f4-5548-43ad-875b-fa3ac58ff6cc',0,0,NULL,NULL,NULL,NULL,'text/html','10498','','','','',0,0,0,0),(10508,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10506,'1aca746d-8699-4388-b1cf-55a85560dc04',0,0,NULL,NULL,NULL,NULL,'text/html','10505','','','','',0,0,0,0),(10526,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10524,'3d5b0692-7ea3-40ec-916c-6d7506154606',0,0,NULL,NULL,NULL,NULL,'text/html','10523','','','','',0,0,0,0),(10533,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10531,'141575ff-58a9-4d27-844f-5f80a0c87048',0,0,NULL,NULL,NULL,NULL,'text/html','10530','','','','',0,0,0,0),(10539,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10537,'63da04bd-2590-44b5-ae3e-ce9302407d3f',0,0,NULL,NULL,NULL,NULL,'text/html','10536','','','','',0,0,0,0),(10545,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10543,'1adfa2f5-6e36-4b42-8f96-7318bd29e5a1',0,0,NULL,NULL,NULL,NULL,'text/html','10542','','','','',0,0,0,0),(10551,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10115,10549,'24233854-160e-4368-acb4-68829ae77f8b',0,0,NULL,NULL,NULL,NULL,'text/html','10548','','','','',0,0,0,0),(10557,10513,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10555,'31b5fd63-6803-41d6-88bd-8ac61aa12852',0,0,NULL,NULL,NULL,NULL,'text/html','10554','','','','',0,0,0,0),(10574,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10572,'1c19dc26-5715-4e1e-9f8d-f69825e2383a',0,0,NULL,NULL,NULL,NULL,'text/html','10571','','','','',0,0,0,0),(10583,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10581,'4db6e755-7bf2-4214-95f0-8896b27ab41c',0,0,NULL,NULL,NULL,NULL,'text/html','10580','','','','',0,0,0,0),(10590,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10588,'1b2ffb34-17af-4675-a281-b9325f5c609b',0,0,NULL,NULL,NULL,NULL,'text/html','10587','','','','',0,0,0,0),(10597,10409,10152,10407,'Diego Pino','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10595,'402c6f6e-acd8-4288-963d-ad4da093f3df',0,0,NULL,NULL,NULL,NULL,'text/html','10594','','','','',0,0,0,0),(10602,10409,10152,10407,'Diego Pino','2012-08-20 16:25:56','2012-08-20 16:25:56',10115,10600,'b633cd1e-aca0-446e-9783-65786cf9afdc',0,0,NULL,NULL,NULL,NULL,'text/html','10599','','','','',0,0,0,0),(10615,10190,10152,10407,'Diego Pino','2012-08-20 16:27:06','2012-08-20 16:27:06',10002,10612,'',0,0,NULL,NULL,NULL,NULL,'','Design Collective SO','Design Collective Social Office','','','',0,0,0,0),(10680,10612,10152,10407,'Diego Pino','2012-08-20 16:28:30','2012-08-20 16:28:30',10115,10678,'4391205d-042e-4c2c-8370-5fdbc54ec4b4',0,0,NULL,NULL,NULL,NULL,'text/html','10677','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetLink`
--

LOCK TABLES `AssetLink` WRITE;
/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTag`
--

LOCK TABLES `AssetTag` WRITE;
/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagProperty`
--

LOCK TABLES `AssetTagProperty` WRITE;
/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagStats`
--

LOCK TABLES `AssetTagStats` WRITE;
/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_C0AAD74D` (`groupId`,`name`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetVocabulary`
--

LOCK TABLES `AssetVocabulary` WRITE;
/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` VALUES ('80055890-dd86-432e-ac69-b8b0ac33a9aa',10316,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('96db3ef0-884b-4107-9aea-2acbc2b27481',10638,10451,10152,10156,'','2012-08-20 16:27:07','2012-08-20 16:27:07','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('96db3ef0-884b-4107-9aea-2acbc2b27481',10639,10612,10152,10156,'','2012-08-20 16:27:07','2012-08-20 16:27:08','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsEntry`
--

LOCK TABLES `BlogsEntry` WRITE;
/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsStatsUser`
--

LOCK TABLES `BlogsStatsUser` WRITE;
/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_E52FF7EF` (`groupId`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_E2E9F129` (`groupId`,`userId`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksEntry`
--

LOCK TABLES `BookmarksEntry` WRITE;
/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksFolder`
--

LOCK TABLES `BookmarksFolder` WRITE;
/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrowserTracker`
--

LOCK TABLES `BrowserTracker` WRITE;
/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalEvent`
--

LOCK TABLES `CalEvent` WRITE;
/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES ('66c4d6e4-ee96-4d43-be82-278342d5d698',10687,10190,10152,10407,'Diego Pino','2012-08-20 16:29:01','2012-08-20 16:29:01',3,10686,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Design Collective SO</Name></root>','',14247526,1),('c376a1ec-a652-4322-acf1-73b1d00b37c8',10701,10190,10152,10407,'Diego Pino','2012-08-20 16:29:02','2012-08-20 16:29:02',3,10700,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Diego Pino</Name></root>','',14247526,1),('ff08b0dc-1159-4c76-8a96-45c3b24795c8',10710,10612,10152,10407,'Diego Pino','2012-08-20 16:31:16','2012-08-20 16:31:16',13,10709,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Location - vacation</Name></root>','',14247526,1),('d34acbc4-6bda-4854-845b-260ead0b0f35',10724,10612,10152,10407,'Diego Pino','2012-08-20 16:31:42','2012-08-20 16:31:42',13,10723,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Location - off-site</Name></root>','',14247526,1),('d8c8b4e1-fe2a-432b-a148-0a6960705673',10732,10612,10152,10407,'Diego Pino','2012-08-20 16:31:55','2012-08-20 16:31:55',13,10731,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Equipment - laptop</Name></root>','',14247526,1),('448be862-89c6-4306-a4d3-b89adf84b51d',10740,10612,10152,10407,'Diego Pino','2012-08-20 16:32:10','2012-08-20 16:32:10',13,10739,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Equipment - mobile hotspot</Name></root>','',14247526,1);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarBooking`
--

DROP TABLE IF EXISTS `CalendarBooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarBooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` varchar(75) DEFAULT NULL,
  `startDate` bigint(20) DEFAULT NULL,
  `endDate` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` varchar(75) DEFAULT NULL,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_C4D67607` (`calendarId`,`startDate`,`endDate`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_97B612E2` (`calendarResourceId`,`status`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarBooking`
--

LOCK TABLES `CalendarBooking` WRITE;
/*!40000 ALTER TABLE `CalendarBooking` DISABLE KEYS */;
INSERT INTO `CalendarBooking` VALUES ('5b973b89-239c-4376-90c5-ff873b42cb66',10708,10190,10152,10407,'Diego Pino','2012-08-20 16:29:18','2012-08-20 16:54:47',10701,10700,10708,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Appointment 1</Title></root>','','',1345420800000,1345507199999,1,'',3600000,'email',0,'',0,10407,'Diego Pino','2012-08-20 16:54:47'),('0ea2e973-d6df-448a-8adb-b78cbbc17130',11002,10190,10152,10407,'Diego Pino','2012-08-20 16:55:09','2012-08-20 16:55:09',10701,10700,11002,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Appointment 1</Title></root>','','',1345424400000,1345428000000,0,'',0,'',0,'',0,10407,'Diego Pino','2012-08-20 16:55:09');
/*!40000 ALTER TABLE `CalendarBooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarResource`
--

DROP TABLE IF EXISTS `CalendarResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `defaultCalendarId` bigint(20) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarResource`
--

LOCK TABLES `CalendarResource` WRITE;
/*!40000 ALTER TABLE `CalendarResource` DISABLE KEYS */;
INSERT INTO `CalendarResource` VALUES ('2eb057cb-134a-4266-8c5f-b63c525f1939',10686,10190,10152,10407,'Diego Pino','2012-08-20 16:29:01','2012-08-20 16:29:01',6,10002,10612,'',10687,'10686','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Design Collective SO</Name></root>','','',1),('33d8f943-a540-4042-980c-c5c45942ce71',10700,10190,10152,10407,'Diego Pino','2012-08-20 16:29:02','2012-08-20 16:29:02',6,10006,10407,'',10701,'10700','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Diego Pino</Name></root>','','',1),('80f89aa6-401d-4551-9081-a5726eacbd60',10709,10612,10152,10407,'Diego Pino','2012-08-20 16:31:16','2012-08-20 16:31:16',16,10422,10709,'d4cecd52-15ea-4436-9edb-7c0587a969ca',10710,'10709','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Location - vacation</Name></root>','','',1),('77afabfb-5c8b-43c1-9047-1b2d1efdd6dd',10723,10612,10152,10407,'Diego Pino','2012-08-20 16:31:42','2012-08-20 16:31:42',16,10422,10723,'df744223-a034-48dc-b5a6-1a93610a62a8',10724,'10723','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Location - off-site</Name></root>','','',1),('990f63b6-690d-41c2-ac82-038567a186b2',10731,10612,10152,10407,'Diego Pino','2012-08-20 16:31:55','2012-08-20 16:31:55',16,10422,10731,'52013ae9-0d70-4ef0-8a01-d03471b1b5f2',10732,'10731','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Equipment - laptop</Name></root>','','',1),('a38c00c5-37aa-43e7-ae51-6b755350664f',10739,10612,10152,10407,'Diego Pino','2012-08-20 16:32:10','2012-08-20 16:32:10',16,10422,10739,'a2a13601-9750-45a4-8c54-faed833e803d',10740,'10739','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Equipment - mobile hotspot</Name></root>','','',1);
/*!40000 ALTER TABLE `CalendarResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassName_`
--

LOCK TABLES `ClassName_` WRITE;
/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` VALUES (10420,'com.liferay.calendar.model.Calendar'),(10421,'com.liferay.calendar.model.CalendarBooking'),(10422,'com.liferay.calendar.model.CalendarResource'),(10413,'com.liferay.contacts.model.Entry'),(10015,'com.liferay.counter.model.Counter'),(10425,'com.liferay.microblogs.model.MicroblogsEntry'),(10016,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10017,'com.liferay.portal.model.Account'),(10018,'com.liferay.portal.model.Address'),(10019,'com.liferay.portal.model.BrowserTracker'),(10020,'com.liferay.portal.model.ClassName'),(10021,'com.liferay.portal.model.ClusterGroup'),(10022,'com.liferay.portal.model.Company'),(10023,'com.liferay.portal.model.Contact'),(10024,'com.liferay.portal.model.Country'),(10025,'com.liferay.portal.model.EmailAddress'),(10002,'com.liferay.portal.model.Group'),(10026,'com.liferay.portal.model.Image'),(10003,'com.liferay.portal.model.Layout'),(10027,'com.liferay.portal.model.LayoutBranch'),(10028,'com.liferay.portal.model.LayoutPrototype'),(10029,'com.liferay.portal.model.LayoutRevision'),(10030,'com.liferay.portal.model.LayoutSet'),(10031,'com.liferay.portal.model.LayoutSetBranch'),(10032,'com.liferay.portal.model.LayoutSetPrototype'),(10033,'com.liferay.portal.model.ListType'),(10034,'com.liferay.portal.model.Lock'),(10035,'com.liferay.portal.model.MembershipRequest'),(10004,'com.liferay.portal.model.Organization'),(10036,'com.liferay.portal.model.OrgGroupRole'),(10037,'com.liferay.portal.model.OrgLabor'),(10038,'com.liferay.portal.model.PasswordPolicy'),(10039,'com.liferay.portal.model.PasswordPolicyRel'),(10040,'com.liferay.portal.model.PasswordTracker'),(10041,'com.liferay.portal.model.Phone'),(10042,'com.liferay.portal.model.PluginSetting'),(10043,'com.liferay.portal.model.PortalPreferences'),(10044,'com.liferay.portal.model.Portlet'),(10045,'com.liferay.portal.model.PortletItem'),(10046,'com.liferay.portal.model.PortletPreferences'),(10047,'com.liferay.portal.model.Region'),(10048,'com.liferay.portal.model.Release'),(10049,'com.liferay.portal.model.Repository'),(10050,'com.liferay.portal.model.RepositoryEntry'),(10051,'com.liferay.portal.model.ResourceAction'),(10052,'com.liferay.portal.model.ResourceBlock'),(10053,'com.liferay.portal.model.ResourceBlockPermission'),(10054,'com.liferay.portal.model.ResourcePermission'),(10055,'com.liferay.portal.model.ResourceTypePermission'),(10005,'com.liferay.portal.model.Role'),(10056,'com.liferay.portal.model.ServiceComponent'),(10057,'com.liferay.portal.model.Shard'),(10058,'com.liferay.portal.model.Subscription'),(10059,'com.liferay.portal.model.Team'),(10060,'com.liferay.portal.model.Ticket'),(10006,'com.liferay.portal.model.User'),(10007,'com.liferay.portal.model.UserGroup'),(10061,'com.liferay.portal.model.UserGroupGroupRole'),(10062,'com.liferay.portal.model.UserGroupRole'),(10063,'com.liferay.portal.model.UserIdMapper'),(10064,'com.liferay.portal.model.UserNotificationEvent'),(10186,'com.liferay.portal.model.UserPersonalSite'),(10065,'com.liferay.portal.model.UserTracker'),(10066,'com.liferay.portal.model.UserTrackerPath'),(10067,'com.liferay.portal.model.VirtualHost'),(10068,'com.liferay.portal.model.WebDAVProps'),(10069,'com.liferay.portal.model.Website'),(10070,'com.liferay.portal.model.WorkflowDefinitionLink'),(10071,'com.liferay.portal.model.WorkflowInstanceLink'),(10072,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10073,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10074,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10075,'com.liferay.portlet.asset.model.AssetCategory'),(10076,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10077,'com.liferay.portlet.asset.model.AssetEntry'),(10078,'com.liferay.portlet.asset.model.AssetLink'),(10079,'com.liferay.portlet.asset.model.AssetTag'),(10080,'com.liferay.portlet.asset.model.AssetTagProperty'),(10081,'com.liferay.portlet.asset.model.AssetTagStats'),(10082,'com.liferay.portlet.asset.model.AssetVocabulary'),(10008,'com.liferay.portlet.blogs.model.BlogsEntry'),(10083,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10009,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10084,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10010,'com.liferay.portlet.calendar.model.CalEvent'),(10085,'com.liferay.portlet.documentlibrary.model.DLContent'),(10011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10086,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10087,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10088,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10089,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10090,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10091,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10092,'com.liferay.portlet.documentlibrary.model.DLSync'),(10093,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10094,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10095,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10096,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10097,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10098,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10099,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10100,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10101,'com.liferay.portlet.expando.model.ExpandoColumn'),(10102,'com.liferay.portlet.expando.model.ExpandoRow'),(10103,'com.liferay.portlet.expando.model.ExpandoTable'),(10104,'com.liferay.portlet.expando.model.ExpandoValue'),(10105,'com.liferay.portlet.journal.model.JournalArticle'),(10106,'com.liferay.portlet.journal.model.JournalArticleImage'),(10107,'com.liferay.portlet.journal.model.JournalArticleResource'),(10108,'com.liferay.portlet.journal.model.JournalContentSearch'),(10109,'com.liferay.portlet.journal.model.JournalFeed'),(10110,'com.liferay.portlet.journal.model.JournalFolder'),(10111,'com.liferay.portlet.journal.model.JournalStructure'),(10112,'com.liferay.portlet.journal.model.JournalTemplate'),(10113,'com.liferay.portlet.messageboards.model.MBBan'),(10114,'com.liferay.portlet.messageboards.model.MBCategory'),(10115,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10116,'com.liferay.portlet.messageboards.model.MBMailingList'),(10012,'com.liferay.portlet.messageboards.model.MBMessage'),(10117,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10013,'com.liferay.portlet.messageboards.model.MBThread'),(10118,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10119,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10120,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10121,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10123,'com.liferay.portlet.polls.model.PollsChoice'),(10124,'com.liferay.portlet.polls.model.PollsQuestion'),(10125,'com.liferay.portlet.polls.model.PollsVote'),(10126,'com.liferay.portlet.ratings.model.RatingsEntry'),(10127,'com.liferay.portlet.ratings.model.RatingsStats'),(10128,'com.liferay.portlet.shopping.model.ShoppingCart'),(10129,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10130,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10131,'com.liferay.portlet.shopping.model.ShoppingItem'),(10132,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10133,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10134,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10135,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10136,'com.liferay.portlet.social.model.SocialActivity'),(10137,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10138,'com.liferay.portlet.social.model.SocialActivityCounter'),(10139,'com.liferay.portlet.social.model.SocialActivityLimit'),(10140,'com.liferay.portlet.social.model.SocialActivitySetting'),(10141,'com.liferay.portlet.social.model.SocialRelation'),(10142,'com.liferay.portlet.social.model.SocialRequest'),(10143,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10144,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10145,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10146,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10147,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10148,'com.liferay.portlet.trash.model.TrashEntry'),(10149,'com.liferay.portlet.trash.model.TrashVersion'),(10150,'com.liferay.portlet.wiki.model.WikiNode'),(10014,'com.liferay.portlet.wiki.model.WikiPage'),(10151,'com.liferay.portlet.wiki.model.WikiPageResource'),(10429,'com.liferay.privatemessaging.model.UserThread'),(10433,'com.liferay.so.model.FavoriteSite'),(10434,'com.liferay.so.model.MemberRequest'),(10435,'com.liferay.so.model.ProjectsEntry'),(10439,'com.liferay.tasks.model.TasksEntry');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (10152,10154,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACNa1RjEfhWurdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (10157,10152,10156,'','2012-08-20 16:25:38','2012-08-20 16:25:38',10006,10156,10154,0,'default@liferay.com','','','',0,0,1,'2012-08-20 16:25:38','','','','','','','','','','','','','','',''),(10195,10152,10194,'','2012-08-20 16:25:39','2012-08-20 16:25:39',10006,10194,10154,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10408,10152,10407,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10006,10407,10154,0,'dpino@igalia.com','Diego','','Pino',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contacts_Entry`
--

DROP TABLE IF EXISTS `Contacts_Entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contacts_Entry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fullName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`entryId`),
  KEY `IX_BD6B6406` (`userId`),
  KEY `IX_C257DE32` (`userId`,`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacts_Entry`
--

LOCK TABLES `Contacts_Entry` WRITE;
/*!40000 ALTER TABLE `Contacts_Entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contacts_Entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',11100),('com.liferay.portal.model.Layout#10170#true',1),('com.liferay.portal.model.Layout#10178#false',1),('com.liferay.portal.model.Layout#10310#true',1),('com.liferay.portal.model.Layout#10320#true',1),('com.liferay.portal.model.Layout#10329#true',1),('com.liferay.portal.model.Layout#10338#true',3),('com.liferay.portal.model.Layout#10364#true',4),('com.liferay.portal.model.Layout#10409#false',1),('com.liferay.portal.model.Layout#10409#true',1),('com.liferay.portal.model.Layout#10451#true',7),('com.liferay.portal.model.Layout#10513#true',6),('com.liferay.portal.model.Layout#10561#true',3),('com.liferay.portal.model.Layout#10612#false',8),('com.liferay.portal.model.ResourceAction',1100),('com.liferay.portal.model.ResourceBlock',100),('com.liferay.portal.model.ResourcePermission',800);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',1,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','EH','ESH','732','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecord`
--

LOCK TABLES `DDLRecord` WRITE;
/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordSet`
--

LOCK TABLES `DDLRecordSet` WRITE;
/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordVersion`
--

LOCK TABLES `DDLRecordVersion` WRITE;
/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStorageLink`
--

LOCK TABLES `DDMStorageLink` WRITE;
/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_490E7A1E` (`groupId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructure`
--

LOCK TABLES `DDMStructure` WRITE;
/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` VALUES ('24c02f99-588e-4414-9021-1b2b2c3f110e',10297,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('381fc259-f1d4-4893-9439-2a92f8423aa4',10298,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('4be3999a-3403-4791-9929-12bdad2f7b19',10299,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('58826b1f-3965-4527-9448-c9f3811cabd3',10301,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'auto_872905a8-3150-4441-b4f5-14cff92f6ac6','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Legal Contracts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('3dae537f-5984-4c1f-a216-94734f42afaa',10303,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'auto_85d4355b-6dd3-462e-a4bd-f3c69ce81dfe','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('0d773610-ae8b-469e-af62-43ca9ac3343f',10305,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'auto_5e19bd02-fcbc-44c4-9bc0-220f539f44ee','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('29a5f460-54aa-44e5-ad23-f5ea0d4e4608',10307,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10086,'auto_9bf82ca9-27b2-4f47-a752-f77a9641a517','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('7d6292b1-1afa-40ca-bbda-3baa9f154156',10308,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10011,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),('c6dfc06b-b9fa-47b9-b56e-68f6b240109c',10399,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('09432aaf-dd89-469c-b9e0-90ce403c5981',10400,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('faf05fcf-c42e-4471-a4fa-7ff5db6757c0',10401,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('5aea8733-c2e5-4591-800a-b882a2574ad6',10402,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('362c6230-806b-423e-be4b-1612109f2181',10403,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('3b1665b2-5fb3-4b57-a774-a8c2124adf06',10404,10178,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10094,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructureLink`
--

LOCK TABLES `DDMStructureLink` WRITE;
/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_233D3B8` (`groupId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_2E1BAFD9` (`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMTemplate`
--

LOCK TABLES `DDMTemplate` WRITE;
/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
INSERT INTO `DDMTemplate` VALUES ('b341ff3c-f87c-49d3-aba5-03fdf228bc9e',10405,10190,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10077,0,'custom_abstracts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Asset Publisher Custom Abstracts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is a custom template that renders the abstract view of the assets that appear in the Asset Publisher.</Description></root>','list','','vm','#set ($preferences = $renderRequest.getPreferences())\n\n#set ($assetLinkBehaviour = $preferences.getValue(\"assetLinkBehavior\", \'\'))\n\n#foreach ($entry in $entries)\n	#set ($assetRenderer = $entry.getAssetRenderer())\n\n	#set ($viewURL = $assetPublisherHelper.getAssetViewURL($renderRequest, $renderResponse, $entry))\n\n	#if ($assetLinkBehaviour != \'showFullContent\')\n		#set ($viewURL = $assetRenderer.getURLViewInContext($renderRequest, $renderResponse, $viewURL))\n	#end\n\n	<div class=\"asset-abstract\">\n		<div class=\"asset-actions lfr-meta-actions\">\n			<span>\n				<a class=\"taglib-icon\" href=\"$assetRenderer.getURLEdit($renderRequest, $renderResponse)\">\n					<img alt=\"#language(\"edit\")\" class=\"icon\" src=\"$themeDisplay.getPathThemeImages()/common/edit.png\" />\n\n					<span class=\"taglib-text\">#language(\"edit\") <span class=\"aui-helper-hidden-accessible\">$entry.getTitle($locale)</span></span>\n				</a>\n			</span>\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"$viewURL\"><img alt=\"\" src=\"$assetRenderer.getIconPath($renderRequest)\" /> $entry.getTitle($locale)</a>\n		</h3>\n\n		<div class=\"asset-content\">\n			<div class=\"asset-summary\">\n				$assetRenderer.getSummary($locale)\n			</div>\n\n			<div class=\"asset-more\">\n				<a href=\"$viewURL\">#language(\"read-more\") <span class=\"aui-helper-hidden-accessible\">#language(\"about\") $entry.getTitle($locale)</span> &raquo; </a>\n			</div>\n		</div>\n	</div>\n#end'),('d6af95f8-10a3-483d-a70b-eb5e7e6b21dc',10406,10190,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10077,0,'custom_title_list','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Asset Publisher Custom Title List</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is a custom template that renders the title of the assets that appear in the Asset Publisher.</Description></root>','list','','vm','#set ($preferences = $renderRequest.getPreferences())\n\n#set ($assetLinkBehaviour = $preferences.getValue(\"assetLinkBehavior\", \'\'))\n\n<ul class=\"title-list\">\n	#foreach ($entry in $entries)\n		#set ($assetRenderer = $entry.getAssetRenderer())\n\n		#set ($viewURL = $assetPublisherHelper.getAssetViewURL($renderRequest, $renderResponse, $entry))\n\n		#if ($assetLinkBehaviour != \'showFullContent\')\n			#set ($viewURL = $assetRenderer.getURLViewInContext($renderRequest, $renderResponse, $viewURL))\n		#end\n\n		<li class=\"document title-list\">\n			<a class=\"taglib-icon\" href=\"$viewURL\">\n				<img alt=\"$entry.getTitle($locale)\" class=\"icon\" src=\"$assetRenderer.getIconPath($renderRequest)\" />\n\n				<span class=\"taglib-text\">$entry.getTitle($locale)</span>\n			</a>\n\n			<div class=\"asset-actions lfr-meta-actions\">\n				<a class=\"taglib-icon\" href=\"$assetRenderer.getURLEdit($renderRequest, $renderResponse)\">\n					<img alt=\"#language(\"edit\") $entry.getTitle($locale)\" class=\"icon\" src=\"$themeDisplay.getPathThemeImages()/common/edit.png\" title=\"#language(\"edit\") $entry.getTitle($locale)\" />\n				</a>\n			</div>\n		</li>\n	#end\n</ul>');
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLContent`
--

LOCK TABLES `DLContent` WRITE;
/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryMetadata`
--

LOCK TABLES `DLFileEntryMetadata` WRITE;
/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_E9B6A85B` (`groupId`,`name`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryType`
--

LOCK TABLES `DLFileEntryType` WRITE;
/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` VALUES ('d05133f2-0821-4432-8db0-f916f63b0fce',0,0,0,0,'','2012-08-20 16:25:38','2012-08-20 16:25:38','Basic Document',''),('872905a8-3150-4441-b4f5-14cff92f6ac6',10300,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41','Contract','Legal Contracts'),('85d4355b-6dd3-462e-a4bd-f3c69ce81dfe',10302,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41','Marketing Banner','Marketing Banner'),('5e19bd02-fcbc-44c4-9bc0-220f539f44ee',10304,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41','Online Training','Online Training'),('9bf82ca9-27b2-4f47-a752-f77a9641a517',10306,10190,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41','Sales Presentation','Sales Presentation');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `structureId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`structureId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

LOCK TABLES `DLFileEntryTypes_DDMStructures` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` VALUES (10300,10301),(10302,10298),(10302,10303),(10304,10297),(10304,10305),(10306,10299),(10306,10307);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

LOCK TABLES `DLFileEntryTypes_DLFolders` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileRank`
--

LOCK TABLES `DLFileRank` WRITE;
/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileShortcut`
--

LOCK TABLES `DLFileShortcut` WRITE;
/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_C6081B20` (`groupId`,`mountPoint`,`parentFolderId`),
  KEY `IX_86893A06` (`groupId`,`mountPoint`,`parentFolderId`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_24946E5B` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLSync`
--

DROP TABLE IF EXISTS `DLSync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`),
  UNIQUE KEY `IX_F9821AB4` (`fileId`),
  KEY `IX_B53EC783` (`companyId`,`modifiedDate`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSync`
--

LOCK TABLES `DLSync` WRITE;
/*!40000 ALTER TABLE `DLSync` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLSync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddress` (
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddress`
--

LOCK TABLES `EmailAddress` WRITE;
/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoColumn`
--

LOCK TABLES `ExpandoColumn` WRITE;
/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` VALUES (10447,10152,10446,'socialOfficeEnabled',1,'',''),(10449,10152,10448,'layoutSetPrototypeKey',15,'','');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoRow`
--

LOCK TABLES `ExpandoRow` WRITE;
/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
INSERT INTO `ExpandoRow` VALUES (10459,10152,10448,10450),(10521,10152,10448,10512),(10569,10152,10448,10560),(10616,10152,10446,10612);
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoTable`
--

LOCK TABLES `ExpandoTable` WRITE;
/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` VALUES (10446,10152,10002,'CUSTOM_FIELDS'),(10640,10152,10003,'CUSTOM_FIELDS'),(10448,10152,10032,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoValue`
--

LOCK TABLES `ExpandoValue` WRITE;
/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
INSERT INTO `ExpandoValue` VALUES (10460,10152,10448,10449,10459,10032,10450,'layoutSetPrototypeKey_Site'),(10522,10152,10448,10449,10521,10032,10512,'layoutSetPrototypeKey_UserPrivate'),(10570,10152,10448,10449,10569,10032,10560,'layoutSetPrototypeKey_UserPublic'),(10617,10152,10446,10447,10616,10002,10612,'false');
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_`
--

LOCK TABLES `Group_` WRITE;
/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` VALUES (10170,10152,10156,10002,10170,0,0,'Control Panel','',3,'','/control_panel',1,1),(10178,10152,10156,10002,10178,0,0,'Guest','',1,'','/guest',1,1),(10187,10152,10156,10186,10156,0,0,'User Personal Site','',3,'','/personal_site',0,1),(10190,10152,10156,10022,10152,0,0,'10152','',0,'social-office-initialized=true\n','/null',0,1),(10196,10152,10194,10006,10194,0,0,'10194','',0,'','/test',0,1),(10310,10152,10156,10028,10309,0,0,'10309','',0,'','/template-10309',0,1),(10320,10152,10156,10028,10319,0,0,'10319','',0,'','/template-10319',0,1),(10329,10152,10156,10028,10328,0,0,'10328','',0,'','/template-10328',0,1),(10338,10152,10156,10032,10337,0,0,'10337','',0,'','/template-10337',0,1),(10364,10152,10156,10032,10363,0,0,'10363','',0,'','/template-10363',0,1),(10409,10152,10407,10006,10407,0,0,'10407','',0,'','/dpino',0,1),(10451,10152,10156,10032,10450,0,0,'10450','',0,'customJspServletContextName=so-hook\n','/template-10450',0,1),(10513,10152,10156,10032,10512,0,0,'10512','',0,'customJspServletContextName=so-hook\n','/template-10512',0,1),(10561,10152,10156,10032,10560,0,0,'10560','',0,'customJspServletContextName=so-hook\n','/template-10560',0,1),(10612,10152,10407,10002,10612,0,0,'Design Collective SO','Design Collective Social Office',1,'mergeGuestPublicPages=false\ntrashEnabled=0\n','/design-collective-so',1,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Orgs`
--

LOCK TABLES `Groups_Orgs` WRITE;
/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Roles`
--

LOCK TABLES `Groups_Roles` WRITE;
/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_UserGroups`
--

LOCK TABLES `Groups_UserGroups` WRITE;
/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `text_` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticle`
--

LOCK TABLES `JournalArticle` WRITE;
/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleImage`
--

LOCK TABLES `JournalArticleImage` WRITE;
/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleResource`
--

LOCK TABLES `JournalArticleResource` WRITE;
/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalContentSearch`
--

LOCK TABLES `JournalContentSearch` WRITE;
/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedType` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFeed`
--

LOCK TABLES `JournalFeed` WRITE;
/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFolder`
--

DROP TABLE IF EXISTS `JournalFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFolder`
--

LOCK TABLES `JournalFolder` WRITE;
/*!40000 ALTER TABLE `JournalFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalStructure`
--

DROP TABLE IF EXISTS `JournalStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `parentStructureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_AB6E9996` (`groupId`,`structureId`),
  UNIQUE KEY `IX_42E86E58` (`uuid_`,`groupId`),
  KEY `IX_B97F5608` (`groupId`),
  KEY `IX_CA0BD48C` (`groupId`,`parentStructureId`),
  KEY `IX_4FA67B72` (`parentStructureId`),
  KEY `IX_8831E4FC` (`structureId`),
  KEY `IX_6702CA92` (`uuid_`),
  KEY `IX_F1054A56` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalStructure`
--

LOCK TABLES `JournalStructure` WRITE;
/*!40000 ALTER TABLE `JournalStructure` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalTemplate`
--

DROP TABLE IF EXISTS `JournalTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) DEFAULT NULL,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_E802AA3C` (`groupId`,`templateId`),
  UNIQUE KEY `IX_62D1B3AD` (`uuid_`,`groupId`),
  KEY `IX_77923653` (`groupId`),
  KEY `IX_1701CB2B` (`groupId`,`structureId`),
  KEY `IX_25FFB6FA` (`smallImageId`),
  KEY `IX_45F5A7C7` (`structureId`),
  KEY `IX_1B12CA20` (`templateId`),
  KEY `IX_2857419D` (`uuid_`),
  KEY `IX_BBB28E6B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalTemplate`
--

LOCK TABLES `JournalTemplate` WRITE;
/*!40000 ALTER TABLE `JournalTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_CED31606` (`uuid_`,`groupId`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layout`
--

LOCK TABLES `Layout` WRITE;
/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` VALUES ('072493de-7f43-465c-906c-ebce82a05dd6',10173,10170,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),('84b86aa5-1009-4f04-b6c0-e2b7217ddc25',10181,10178,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=47,\ncolumn-1=58,\n',0,'/home',0,0,'','','','','',0,'',0,''),('6540c0cb-ea51-4ec9-aa75-55b0171a3630',10313,10310,10152,'2012-08-20 16:25:41','2012-08-20 16:25:42',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_QUny7WWN03wJ,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('e6af3354-6eb4-4b29-8748-f6cd26b9a009',10323,10320,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_eJx5alsU9jKx\nlayout-template-id=2_columns_ii\ncolumn-2=3,101_INSTANCE_eJx5alsU9jKx,\ncolumn-1=141_INSTANCE_qM1nJkjlOEuX,122_INSTANCE_OKnU9Q9ATI3E,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('53736bee-5e0d-42da-ad3b-34a132a8800e',10332,10329,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_uooVbRGNC3cW,141_INSTANCE_t74moQzmiCqp,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('1d893f82-f41d-49b3-bb19-790b98f89c10',10346,10338,10152,'2012-08-20 16:25:42','2012-08-20 16:25:43',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_QV7DXAvcK18p,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),('7b40d00f-712c-4347-beaa-9e370db83f30',10352,10338,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_Taiev33Gt3WI,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),('14dbfae2-e551-4e82-91f2-c9b74c72c54e',10358,10338,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_mEhzJEFDP4m1,148_INSTANCE_h9hwg50LOjJf,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),('e01c6169-1c71-4b00-86fa-0d88c6626f52',10372,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_IM6F69To7awL,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),('46418135-054a-4145-89a8-52af2357ee03',10380,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),('5fc6ffa5-bad7-4d5a-a245-d2a390a1e61d',10386,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_tXM7u29rtzQ5,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),('84cf9c9f-f138-46df-9dd7-a98d15f6cc5f',10392,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_w7fBVH9A9INC,\ncolumn-1=39_INSTANCE_ys9bJ2vCoW0m,\n',0,'/news',0,0,'','','','','',3,'',0,''),('3d06afab-11f6-40f8-a9d4-42bd9545f619',10461,10451,10152,'2012-08-20 16:25:53','2012-08-20 16:25:54',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">主页</Name><Name language-id=\"en_US\">Home</Name><Name language-id=\"fr_CA\">Accueil</Name><Name language-id=\"hu_HU\">Nyitólap</Name><Name language-id=\"pt_BR\">Início</Name><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=1_WAR_wysiwygportlet_INSTANCE_abcd,28,39_INSTANCE_abcd,64,1_WAR_eventsdisplayportlet,\ncolumn-1=84,1_WAR_soportlet,\n',0,'/home',0,0,'','','','','',0,'',0,''),('d095de53-302b-440d-b552-98d937b53f76',10469,10451,10152,'2012-08-20 16:25:54','2012-08-20 16:25:54',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">日程管理</Name><Name language-id=\"en_US\">Calendar</Name><Name language-id=\"fr_CA\">Calendrier</Name><Name language-id=\"de_DE\">Kalender</Name><Name language-id=\"hu_HU\">Naptár</Name><Name language-id=\"pt_BR\">Calendário</Name><Name language-id=\"es_ES\">Calendario</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),('125f1030-4c78-41aa-9a3a-8aede31526f8',10475,10451,10152,'2012-08-20 16:25:54','2012-08-20 16:25:54',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">文件</Name><Name language-id=\"en_US\">Documents</Name><Name language-id=\"fr_CA\">Mes Documents</Name><Name language-id=\"de_DE\">Dokumente</Name><Name language-id=\"hu_HU\">Dokumentumok</Name><Name language-id=\"pt_BR\">Documentos</Name><Name language-id=\"es_ES\">Documentos</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',2,'',0,''),('904c7a84-f52d-4609-83a5-625accc4cfc6',10482,10451,10152,'2012-08-20 16:25:54','2012-08-20 16:25:55',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">论坛</Name><Name language-id=\"en_US\">Forums</Name><Name language-id=\"fr_CA\">Forum</Name><Name language-id=\"de_DE\">Foren</Name><Name language-id=\"hu_HU\">Fórumok</Name><Name language-id=\"pt_BR\">Fóruns</Name><Name language-id=\"es_ES\">Foros</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=73,19,\n',0,'/forums',0,0,'','','','','',3,'',0,''),('a6cde24d-abde-42cf-ba22-0ce38991b954',10490,10451,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,5,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,hu_HU,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">博客</Name><Name language-id=\"en_US\">Blogs</Name><Name language-id=\"fr_CA\">Blogues</Name><Name language-id=\"hu_HU\">Blogok</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=115,\ncolumn-1=33,\n',0,'/blogs',0,0,'','','','','',4,'',0,''),('85201c8f-5970-4dde-a323-8d0ad48adfc8',10498,10451,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,6,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,hu_HU,\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name><Name language-id=\"hu_HU\">Wikik</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',5,'',0,''),('b9401fe1-5ee5-44fb-bbe6-ddedb60f5bb6',10505,10451,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,7,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">成员</Name><Name language-id=\"en_US\">Members</Name><Name language-id=\"fr_CA\">Membres</Name><Name language-id=\"de_DE\">Mitglieder</Name><Name language-id=\"hu_HU\">Tagok</Name><Name language-id=\"pt_BR\">Membros</Name><Name language-id=\"es_ES\">Miembros</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=2_WAR_soportlet,4_WAR_contactsportlet,\n',0,'/members',0,0,'','','','','',6,'',0,''),('090af3e0-efe0-42fe-9604-fe5f1b0bbb52',10523,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">仪表板</Name><Name language-id=\"en_US\">Dashboard</Name><Name language-id=\"fr_CA\">Tableau de bord</Name><Name language-id=\"de_DE\">Armaturenbrett</Name><Name language-id=\"pt_BR\">Painel</Name><Name language-id=\"es_ES\">Escritorio</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=2_WAR_tasksportlet,1_WAR_eventsdisplayportlet,\ncolumn-1=2_WAR_microblogsportlet,1_WAR_soportlet,\n',0,'/so/dashboard',0,0,'','','','','',0,'',0,''),('ae8f6715-0915-4171-9736-64791cb02022',10530,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">联系中心</Name><Name language-id=\"en_US\">Contacts Center</Name><Name language-id=\"fr_CA\">Centre de contacts</Name><Name language-id=\"pt_BR\">Central de contatos</Name><Name language-id=\"es_ES\">Centro de contactos</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=1_WAR_contactsportlet,\n',0,'/so/contacts-center',0,0,'','','','','',1,'',0,''),('e0fdafda-8582-407e-b8c8-a8e73ab9269d',10536,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">微博</Name><Name language-id=\"en_US\">Microblogs</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=1_WAR_microblogsportlet,\n',0,'/so/microblogs',0,0,'','','','','',2,'',0,''),('c351d9ec-7ee5-4814-b117-8e9a144d5492',10542,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">消息</Name><Name language-id=\"en_US\">Messages</Name><Name language-id=\"de_DE\">Nachrichten</Name><Name language-id=\"hu_HU\">Üzenetek</Name><Name language-id=\"pt_BR\">Mensagens</Name><Name language-id=\"es_ES\">Mensajes</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=1_WAR_privatemessagingportlet,\n',0,'/so/messages',0,0,'','','','','',3,'',0,''),('9185da9d-60a4-4e69-a9c2-85a5ceb3c8d9',10548,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:56',1,5,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">我的文档</Name><Name language-id=\"en_US\">My Documents</Name><Name language-id=\"fr_CA\">Mes Documents</Name><Name language-id=\"pt_BR\">Meus documentos</Name><Name language-id=\"es_ES\">Mis documentos</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/so/my-documents',0,0,'','','','','',4,'',0,''),('f959a184-f588-481d-a978-d9ab75b40188',10554,10513,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,6,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">任务</Name><Name language-id=\"en_US\">Tasks</Name><Name language-id=\"fr_CA\">Tâches</Name><Name language-id=\"de_DE\">Aufgaben</Name><Name language-id=\"hu_HU\">Feladatok</Name><Name language-id=\"pt_BR\">Tarefas</Name><Name language-id=\"es_ES\">Tareas</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=1_WAR_tasksportlet,\n',0,'/so/tasks',0,0,'','','','','',5,'',0,''),('22e5ef5d-31de-40bb-8ae9-7cd7e0feafb0',10571,10561,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">概况</Name><Name language-id=\"en_US\">Profile</Name><Name language-id=\"fr_CA\">Profil</Name><Name language-id=\"de_DE\">Profil</Name><Name language-id=\"hu_HU\">Profil</Name><Name language-id=\"pt_BR\">Perfil</Name><Name language-id=\"es_ES\">Perfil</Name></root>','','','','','portlet','layout-template-id=1_2_columns_ii\ncolumn-3=2_WAR_contactsportlet_INSTANCE_ijkl,\ncolumn-2=2_WAR_microblogsportlet,2_WAR_contactsportlet_INSTANCE_efgh,1_WAR_soportlet,\ncolumn-1=2_WAR_contactsportlet_INSTANCE_abcd,\n',0,'/so/profile',0,0,'','','','','',0,'',0,''),('666c5fc7-e81f-423b-8d3e-9767771777cb',10580,10561,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">联络信息</Name><Name language-id=\"en_US\">Contacts</Name><Name language-id=\"fr_CA\">Contient</Name><Name language-id=\"de_DE\">Kontakte</Name><Name language-id=\"hu_HU\">Kapcsolatok</Name><Name language-id=\"pt_BR\">Contatos</Name><Name language-id=\"es_ES\">Contactos</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=2_WAR_contactsportlet_INSTANCE_abcd,1_WAR_contactsportlet,\n',0,'/so/contacts',0,0,'','','','','',1,'',0,''),('a6b6589f-775b-4cf8-b0bf-02e1f4bc9e91',10587,10561,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">微博</Name><Name language-id=\"en_US\">Microblogs</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=2_WAR_contactsportlet_INSTANCE_abcd,1_WAR_microblogsportlet,\n',0,'/so/microblogs',0,0,'','','','','',2,'',0,''),('ac881674-6558-4bcc-94eb-011065570231',10594,10409,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('2491de9d-be82-464c-9d0e-28d71813123d',10599,10409,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,''),('522bc017-7951-40f3-83df-05d90dd91dbc',10641,10612,10152,NULL,'2012-08-20 16:27:08',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">主页</Name><Name language-id=\"en_US\">Home</Name><Name language-id=\"fr_CA\">Accueil</Name><Name language-id=\"hu_HU\">Nyitólap</Name><Name language-id=\"pt_BR\">Início</Name><Name language-id=\"es_ES\">Inicio</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=1_WAR_wysiwygportlet_INSTANCE_abcd,28,39_INSTANCE_abcd,64,1_WAR_eventsdisplayportlet,\ncolumn-1=84,1_WAR_soportlet,\n',0,'/home',0,0,'','','','','',0,'',0,'3d06afab-11f6-40f8-a9d4-42bd9545f619'),('20a52682-b775-415b-876e-fcdda92ddc16',10642,10612,10152,NULL,'2012-08-20 16:27:08',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">日程管理</Name><Name language-id=\"en_US\">Calendar</Name><Name language-id=\"fr_CA\">Calendrier</Name><Name language-id=\"de_DE\">Kalender</Name><Name language-id=\"hu_HU\">Naptár</Name><Name language-id=\"pt_BR\">Calendário</Name><Name language-id=\"es_ES\">Calendario</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,'d095de53-302b-440d-b552-98d937b53f76'),('f5d20d9c-0d13-4d11-b2fc-f2ceab4e36af',10643,10612,10152,NULL,'2012-08-20 16:27:08',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">文件</Name><Name language-id=\"en_US\">Documents</Name><Name language-id=\"fr_CA\">Mes Documents</Name><Name language-id=\"de_DE\">Dokumente</Name><Name language-id=\"hu_HU\">Dokumentumok</Name><Name language-id=\"pt_BR\">Documentos</Name><Name language-id=\"es_ES\">Documentos</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',2,'',0,'125f1030-4c78-41aa-9a3a-8aede31526f8'),('218e8c02-9b50-49eb-8c4b-4ad247e84bc7',10644,10612,10152,NULL,'2012-08-20 16:27:08',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">论坛</Name><Name language-id=\"en_US\">Forums</Name><Name language-id=\"fr_CA\">Forum</Name><Name language-id=\"de_DE\">Foren</Name><Name language-id=\"hu_HU\">Fórumok</Name><Name language-id=\"pt_BR\">Fóruns</Name><Name language-id=\"es_ES\">Foros</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=73,19,\n',0,'/forums',0,0,'','','','','',3,'',0,'904c7a84-f52d-4609-83a5-625accc4cfc6'),('6c495f8c-cd97-4fca-a261-e0f05927b7ba',10645,10612,10152,NULL,'2012-08-20 16:27:08',0,5,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,hu_HU,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">博客</Name><Name language-id=\"en_US\">Blogs</Name><Name language-id=\"fr_CA\">Blogues</Name><Name language-id=\"hu_HU\">Blogok</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=115,\ncolumn-1=33,\n',0,'/blogs',0,0,'','','','','',4,'',0,'a6cde24d-abde-42cf-ba22-0ce38991b954'),('425631aa-5f21-4a92-bca5-ad72436bd6fe',10646,10612,10152,NULL,'2012-08-20 16:27:08',0,6,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,hu_HU,\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name><Name language-id=\"hu_HU\">Wikik</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',5,'',0,'85201c8f-5970-4dde-a323-8d0ad48adfc8'),('64aa1f38-7527-4e34-adfa-54de219fafee',10647,10612,10152,NULL,'2012-08-20 16:27:08',0,7,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US,zh_CN,fr_CA,de_DE,hu_HU,pt_BR,es_ES,\" default-locale=\"en_US\"><Name language-id=\"zh_CN\">成员</Name><Name language-id=\"en_US\">Members</Name><Name language-id=\"fr_CA\">Membres</Name><Name language-id=\"de_DE\">Mitglieder</Name><Name language-id=\"hu_HU\">Tagok</Name><Name language-id=\"pt_BR\">Membros</Name><Name language-id=\"es_ES\">Miembros</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=2_WAR_soportlet,4_WAR_contactsportlet,\n',0,'/members',0,0,'','','','','',6,'',0,'b9401fe1-5ee5-44fb-bbe6-ddedb60f5bb6'),('58413228-9b2c-4d80-8d6f-f4380bcd25ea',10677,10612,10152,'2012-08-20 16:28:30','2012-08-20 16:29:01',0,8,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">New Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-1=1_WAR_calendarportlet\n',0,'/new-calendar',0,0,'','','','','',1000007,'',0,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutBranch`
--

LOCK TABLES `LayoutBranch` WRITE;
/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('64d31357-d6c0-422f-a2c2-c2796da21944',10309,10152,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('df9e8424-3f63-4394-9970-354632c6b7a3',10319,10152,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('2247ced3-e31a-4d06-b49c-b492ac4d7bdb',10328,10152,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutRevision`
--

LOCK TABLES `LayoutRevision` WRITE;
/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSet`
--

LOCK TABLES `LayoutSet` WRITE;
/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` VALUES (10171,10170,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',1,0,0,'classic','01','mobile','01','',1,'','',0),(10172,10170,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',0,0,0,'classic','01','mobile','01','',0,'','',0),(10179,10178,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',1,0,0,'classic','01','mobile','01','',0,'','',0),(10180,10178,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',0,0,0,'classic','01','mobile','01','',1,'','',0),(10188,10187,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',1,0,0,'classic','01','mobile','01','',0,'','',0),(10189,10187,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',0,0,0,'classic','01','mobile','01','',0,'','',0),(10191,10190,10152,'2012-08-20 16:25:39','2012-08-20 16:25:39',1,0,0,'classic','01','mobile','01','',0,'','',0),(10192,10190,10152,'2012-08-20 16:25:39','2012-08-20 16:25:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(10197,10196,10152,'2012-08-20 16:25:39','2012-08-20 16:25:39',1,0,0,'classic','01','mobile','01','',0,'','',0),(10198,10196,10152,'2012-08-20 16:25:39','2012-08-20 16:25:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(10311,10310,10152,'2012-08-20 16:25:41','2012-08-20 16:25:41',1,0,0,'classic','01','mobile','01','',1,'','',0),(10312,10310,10152,'2012-08-20 16:25:41','2012-08-20 16:25:41',0,0,0,'classic','01','mobile','01','',0,'','',0),(10321,10320,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',1,0,0,'classic','01','mobile','01','',1,'','',0),(10322,10320,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',0,0,0,'classic','01','mobile','01','',0,'','',0),(10330,10329,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',1,0,0,'classic','01','mobile','01','',1,'','',0),(10331,10329,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',0,0,0,'classic','01','mobile','01','',0,'','',0),(10339,10338,10152,'2012-08-20 16:25:42','2012-08-20 16:25:43',1,0,0,'classic','01','mobile','01','',3,'','',0),(10340,10338,10152,'2012-08-20 16:25:42','2012-08-20 16:25:42',0,0,0,'classic','01','mobile','01','',0,'','',0),(10365,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',1,0,0,'classic','01','mobile','01','',4,'','',0),(10366,10364,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',0,0,0,'classic','01','mobile','01','',0,'','',0),(10410,10409,10152,'2012-08-20 16:25:43','2012-08-20 16:25:56',1,0,0,'classic','01','mobile','01','',1,'','',0),(10411,10409,10152,'2012-08-20 16:25:43','2012-08-20 16:25:56',0,0,0,'classic','01','mobile','01','',1,'','',0),(10452,10451,10152,'2012-08-20 16:25:53','2012-08-20 16:25:55',1,0,0,'so_WAR_sotheme','01','mobile','01','',7,'','',0),(10453,10451,10152,'2012-08-20 16:25:53','2012-08-20 16:25:53',0,0,0,'so_WAR_sotheme','01','mobile','01','',0,'','',0),(10514,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:56',1,0,0,'so_WAR_sotheme','01','mobile','01','',6,'','',0),(10515,10513,10152,'2012-08-20 16:25:55','2012-08-20 16:25:55',0,0,0,'so_WAR_sotheme','01','mobile','01','',0,'','',0),(10562,10561,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',1,0,0,'so_WAR_sotheme','01','mobile','01','',3,'','',0),(10563,10561,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56',0,0,0,'so_WAR_sotheme','01','mobile','01','',0,'','',0),(10613,10612,10152,'2012-08-20 16:27:06','2012-08-20 16:27:06',1,0,0,'classic','01','mobile','01','',0,'','',0),(10614,10612,10152,'2012-08-20 16:27:06','2012-08-20 16:28:38',0,0,0,'so_WAR_sotheme','normal','mobile','01','',8,'showSiteName=true\nlast-merge-time=1345480028909\n','63f668f7-24bc-40e3-be09-d1abc47b58cc',1);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetBranch`
--

LOCK TABLES `LayoutSetBranch` WRITE;
/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('6fe459b2-a402-4d48-a0dd-9f424c0c2fb7',10337,10152,'2012-08-20 16:25:42','2012-08-20 16:25:43','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),('e2b7dd1f-8da9-40c9-82e9-457ab27a41de',10363,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1),('63f668f7-24bc-40e3-be09-d1abc47b58cc',10450,10152,'2012-08-20 16:25:53','2012-08-20 16:25:55','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Default Social Office Site</Name></root>','Default Social Office Site','layoutsUpdateable=true\ncustomJspServletContextName=so-hook\n',1),('3ec7352c-15b4-4b9f-a516-5809f936eaba',10512,10152,'2012-08-20 16:25:55','2012-08-20 16:25:56','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social Office User Home</Name></root>','Social Office User Home','layoutsUpdateable=true\ncustomJspServletContextName=so-hook\n',1),('747f0330-661b-4506-9f3c-864e442d8908',10560,10152,'2012-08-20 16:25:56','2012-08-20 16:25:56','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social Office User Profile</Name></root>','Social Office User Profile','layoutsUpdateable=true\ncustomJspServletContextName=so-hook\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListType`
--

LOCK TABLES `ListType` WRITE;
/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_DD635956` (`className`,`key_`,`owner`),
  KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lock_`
--

LOCK TABLES `Lock_` WRITE;
/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBBan` (
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBBan`
--

LOCK TABLES `MBBan` WRITE;
/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBCategory`
--

LOCK TABLES `MBCategory` WRITE;
/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBDiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  KEY `IX_79D0120B` (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBDiscussion`
--

LOCK TABLES `MBDiscussion` WRITE;
/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` VALUES (10177,10003,10173,10175),(10185,10003,10181,10183),(10318,10003,10313,10315),(10327,10003,10323,10325),(10336,10003,10332,10334),(10350,10003,10346,10348),(10356,10003,10352,10354),(10362,10003,10358,10360),(10376,10003,10372,10374),(10384,10003,10380,10382),(10390,10003,10386,10388),(10396,10003,10392,10394),(10465,10003,10461,10463),(10473,10003,10469,10471),(10479,10003,10475,10477),(10486,10003,10482,10484),(10494,10003,10490,10492),(10502,10003,10498,10500),(10509,10003,10505,10507),(10527,10003,10523,10525),(10534,10003,10530,10532),(10540,10003,10536,10538),(10546,10003,10542,10544),(10552,10003,10548,10550),(10558,10003,10554,10556),(10575,10003,10571,10573),(10584,10003,10580,10582),(10591,10003,10587,10589),(10598,10003,10594,10596),(10603,10003,10599,10601),(10681,10003,10677,10679);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMailingList`
--

LOCK TABLES `MBMailingList` WRITE;
/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `attachments` tinyint(4) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMessage`
--

LOCK TABLES `MBMessage` WRITE;
/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` VALUES ('d44c253c-b71f-4789-aaee-b9a7e89f5c19',10174,10170,10152,10156,'','2012-08-20 16:25:38','2012-08-20 16:25:38',10003,10173,-1,10175,10174,0,'10173','10173','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:38'),('a0230bdb-9d44-4c67-bb7e-2abd654bfcac',10182,10178,10152,10156,'','2012-08-20 16:25:38','2012-08-20 16:25:38',10003,10181,-1,10183,10182,0,'10181','10181','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:38'),('fbd48e8f-ab9a-44e1-aa62-fc6fb526ee03',10314,10310,10152,10156,'','2012-08-20 16:25:41','2012-08-20 16:25:41',10003,10313,-1,10315,10314,0,'10313','10313','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:42'),('5a915c61-463b-4225-9157-a49577d05754',10324,10320,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10003,10323,-1,10325,10324,0,'10323','10323','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:42'),('b0e06247-fa9c-4f30-bad1-34c9998cad3b',10333,10329,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10003,10332,-1,10334,10333,0,'10332','10332','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:42'),('d8fa9a82-59d0-4ab9-977a-9b156f40bdcd',10347,10338,10152,10156,'','2012-08-20 16:25:42','2012-08-20 16:25:42',10003,10346,-1,10348,10347,0,'10346','10346','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:42'),('366c2bcb-71f7-4491-b307-cf47457bfcf3',10353,10338,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10352,-1,10354,10353,0,'10352','10352','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('b5705faf-1fd7-48fc-ac91-cf156a9cb4b4',10359,10338,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10358,-1,10360,10359,0,'10358','10358','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('90a31fb9-6bf2-4f13-b91a-3c0c9a16a18d',10373,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10372,-1,10374,10373,0,'10372','10372','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('d9f87a4d-534e-46d1-a53d-bdfbe3f303cd',10381,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10380,-1,10382,10381,0,'10380','10380','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('003e472f-e280-4b55-993c-e54ad8ba871b',10387,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10386,-1,10388,10387,0,'10386','10386','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('f90458d6-141e-4d32-85ae-a2ac8dbe3e9e',10393,10364,10152,10156,'','2012-08-20 16:25:43','2012-08-20 16:25:43',10003,10392,-1,10394,10393,0,'10392','10392','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:43'),('41ca2ccc-46fd-4f3b-a033-0f807344f32c',10462,10451,10152,10156,'','2012-08-20 16:25:53','2012-08-20 16:25:53',10003,10461,-1,10463,10462,0,'10461','10461','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:53'),('f340b5e7-895b-4989-8c20-76733ea89989',10470,10451,10152,10156,'','2012-08-20 16:25:54','2012-08-20 16:25:54',10003,10469,-1,10471,10470,0,'10469','10469','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:54'),('8eb2c187-554b-40ae-b15d-eacc9eb704be',10476,10451,10152,10156,'','2012-08-20 16:25:54','2012-08-20 16:25:54',10003,10475,-1,10477,10476,0,'10475','10475','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:54'),('9a0a95b6-6b92-415f-9ae9-3f5c6b89c300',10483,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10482,-1,10484,10483,0,'10482','10482','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('b1eab437-3b36-47df-ad93-bce934396d62',10491,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10490,-1,10492,10491,0,'10490','10490','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('8cddd0f4-5548-43ad-875b-fa3ac58ff6cc',10499,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10498,-1,10500,10499,0,'10498','10498','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('1aca746d-8699-4388-b1cf-55a85560dc04',10506,10451,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10505,-1,10507,10506,0,'10505','10505','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('3d5b0692-7ea3-40ec-916c-6d7506154606',10524,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10523,-1,10525,10524,0,'10523','10523','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('141575ff-58a9-4d27-844f-5f80a0c87048',10531,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10530,-1,10532,10531,0,'10530','10530','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('63da04bd-2590-44b5-ae3e-ce9302407d3f',10537,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10536,-1,10538,10537,0,'10536','10536','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('1adfa2f5-6e36-4b42-8f96-7318bd29e5a1',10543,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10542,-1,10544,10543,0,'10542','10542','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('24233854-160e-4368-acb4-68829ae77f8b',10549,10513,10152,10156,'','2012-08-20 16:25:55','2012-08-20 16:25:55',10003,10548,-1,10550,10549,0,'10548','10548','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:55'),('31b5fd63-6803-41d6-88bd-8ac61aa12852',10555,10513,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10554,-1,10556,10555,0,'10554','10554','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:56'),('1c19dc26-5715-4e1e-9f8d-f69825e2383a',10572,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10571,-1,10573,10572,0,'10571','10571','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:56'),('4db6e755-7bf2-4214-95f0-8896b27ab41c',10581,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10580,-1,10582,10581,0,'10580','10580','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:56'),('1b2ffb34-17af-4675-a281-b9325f5c609b',10588,10561,10152,10156,'','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10587,-1,10589,10588,0,'10587','10587','bbcode',0,1,0,0,0,0,10156,'','2012-08-20 16:25:56'),('402c6f6e-acd8-4288-963d-ad4da093f3df',10595,10409,10152,10407,'Diego Pino','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10594,-1,10596,10595,0,'10594','10594','bbcode',0,0,0,0,0,0,10407,'Diego Pino','2012-08-20 16:25:56'),('b633cd1e-aca0-446e-9783-65786cf9afdc',10600,10409,10152,10407,'Diego Pino','2012-08-20 16:25:56','2012-08-20 16:25:56',10003,10599,-1,10601,10600,0,'10599','10599','bbcode',0,0,0,0,0,0,10407,'Diego Pino','2012-08-20 16:25:56'),('4391205d-042e-4c2c-8370-5fdbc54ec4b4',10678,10612,10152,10407,'Diego Pino','2012-08-20 16:28:30','2012-08-20 16:28:30',10003,10677,-1,10679,10678,0,'10677','10677','bbcode',0,0,0,0,0,0,10407,'Diego Pino','2012-08-20 16:28:30');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBStatsUser`
--

LOCK TABLES `MBStatsUser` WRITE;
/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThread` (
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThread`
--

LOCK TABLES `MBThread` WRITE;
/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` VALUES (10175,10170,10152,-1,10174,10156,1,0,0,'2012-08-20 16:25:38',0,0,0,10156,'','2012-08-20 16:25:38'),(10183,10178,10152,-1,10182,10156,1,0,0,'2012-08-20 16:25:38',0,0,0,10156,'','2012-08-20 16:25:38'),(10315,10310,10152,-1,10314,10156,1,0,0,'2012-08-20 16:25:42',0,0,0,10156,'','2012-08-20 16:25:42'),(10325,10320,10152,-1,10324,10156,1,0,0,'2012-08-20 16:25:42',0,0,0,10156,'','2012-08-20 16:25:42'),(10334,10329,10152,-1,10333,10156,1,0,0,'2012-08-20 16:25:42',0,0,0,10156,'','2012-08-20 16:25:42'),(10348,10338,10152,-1,10347,10156,1,0,0,'2012-08-20 16:25:42',0,0,0,10156,'','2012-08-20 16:25:42'),(10354,10338,10152,-1,10353,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10360,10338,10152,-1,10359,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10374,10364,10152,-1,10373,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10382,10364,10152,-1,10381,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10388,10364,10152,-1,10387,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10394,10364,10152,-1,10393,10156,1,0,0,'2012-08-20 16:25:43',0,0,0,10156,'','2012-08-20 16:25:43'),(10463,10451,10152,-1,10462,10156,1,0,0,'2012-08-20 16:25:53',0,0,0,10156,'','2012-08-20 16:25:53'),(10471,10451,10152,-1,10470,10156,1,0,0,'2012-08-20 16:25:54',0,0,0,10156,'','2012-08-20 16:25:54'),(10477,10451,10152,-1,10476,10156,1,0,0,'2012-08-20 16:25:54',0,0,0,10156,'','2012-08-20 16:25:54'),(10484,10451,10152,-1,10483,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10492,10451,10152,-1,10491,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10500,10451,10152,-1,10499,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10507,10451,10152,-1,10506,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10525,10513,10152,-1,10524,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10532,10513,10152,-1,10531,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10538,10513,10152,-1,10537,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10544,10513,10152,-1,10543,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10550,10513,10152,-1,10549,10156,1,0,0,'2012-08-20 16:25:55',0,0,0,10156,'','2012-08-20 16:25:55'),(10556,10513,10152,-1,10555,10156,1,0,0,'2012-08-20 16:25:56',0,0,0,10156,'','2012-08-20 16:25:56'),(10573,10561,10152,-1,10572,10156,1,0,0,'2012-08-20 16:25:56',0,0,0,10156,'','2012-08-20 16:25:56'),(10582,10561,10152,-1,10581,10156,1,0,0,'2012-08-20 16:25:56',0,0,0,10156,'','2012-08-20 16:25:56'),(10589,10561,10152,-1,10588,10156,1,0,0,'2012-08-20 16:25:56',0,0,0,10156,'','2012-08-20 16:25:56'),(10596,10409,10152,-1,10595,10407,1,0,10407,'2012-08-20 16:25:56',0,0,0,10407,'Diego Pino','2012-08-20 16:25:56'),(10601,10409,10152,-1,10600,10407,1,0,10407,'2012-08-20 16:25:56',0,0,0,10407,'Diego Pino','2012-08-20 16:25:56'),(10679,10612,10152,-1,10678,10407,1,0,10407,'2012-08-20 16:28:30',0,0,0,10407,'Diego Pino','2012-08-20 16:28:30');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThreadFlag` (
  `threadFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_33781904` (`userId`,`threadId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThreadFlag`
--

LOCK TABLES `MBThreadFlag` WRITE;
/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRAction`
--

LOCK TABLES `MDRAction` WRITE;
/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRule`
--

LOCK TABLES `MDRRule` WRITE;
/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroup`
--

LOCK TABLES `MDRRuleGroup` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

LOCK TABLES `MDRRuleGroupInstance` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipRequest`
--

LOCK TABLES `MembershipRequest` WRITE;
/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MicroblogsEntry`
--

DROP TABLE IF EXISTS `MicroblogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MicroblogsEntry` (
  `microblogsEntryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `content` longtext,
  `type_` int(11) DEFAULT NULL,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `receiverMicroblogsEntryId` bigint(20) DEFAULT NULL,
  `socialRelationType` int(11) DEFAULT NULL,
  PRIMARY KEY (`microblogsEntryId`),
  KEY `IX_837C013D` (`companyId`),
  KEY `IX_36CA3D37` (`type_`,`receiverMicroblogsEntryId`),
  KEY `IX_7ABB0AB3` (`type_`,`receiverUserId`),
  KEY `IX_6C297B45` (`userId`),
  KEY `IX_92BA6F0` (`userId`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MicroblogsEntry`
--

LOCK TABLES `MicroblogsEntry` WRITE;
/*!40000 ALTER TABLE `MicroblogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `MicroblogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupRole`
--

LOCK TABLES `OrgGroupRole` WRITE;
/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgLabor`
--

LOCK TABLES `OrgLabor` WRITE;
/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PM_UserThread`
--

DROP TABLE IF EXISTS `PM_UserThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PM_UserThread` (
  `userThreadId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `mbThreadId` bigint(20) DEFAULT NULL,
  `topMBMessageId` bigint(20) DEFAULT NULL,
  `read_` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userThreadId`),
  KEY `IX_A821854B` (`mbThreadId`),
  KEY `IX_3084E97` (`userId`),
  KEY `IX_434EE852` (`userId`,`deleted`),
  KEY `IX_466F2985` (`userId`,`mbThreadId`),
  KEY `IX_A16EF3C7` (`userId`,`read_`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PM_UserThread`
--

LOCK TABLES `PM_UserThread` WRITE;
/*!40000 ALTER TABLE `PM_UserThread` DISABLE KEYS */;
/*!40000 ALTER TABLE `PM_UserThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicy` (
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicy`
--

LOCK TABLES `PasswordPolicy` WRITE;
/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` VALUES (10193,10152,10156,'','2012-08-20 16:25:39','2012-08-20 16:25:39',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`),
  KEY `IX_ED7CF243` (`passwordPolicyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicyRel`
--

LOCK TABLES `PasswordPolicyRel` WRITE;
/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordTracker`
--

LOCK TABLES `PasswordTracker` WRITE;
/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone` (
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginSetting`
--

LOCK TABLES `PluginSetting` WRITE;
/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsChoice`
--

LOCK TABLES `PollsChoice` WRITE;
/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsQuestion`
--

LOCK TABLES `PollsQuestion` WRITE;
/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsVote` (
  `voteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsVote`
--

LOCK TABLES `PollsVote` WRITE;
/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortalPreferences`
--

LOCK TABLES `PortalPreferences` WRITE;
/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` VALUES (10001,0,1,'<portlet-preferences />'),(10158,10152,1,'<portlet-preferences />'),(10604,10407,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>hidden</value></preference></portlet-preferences>'),(10901,10156,4,'<portlet-preferences />'),(10902,10156,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10200,10152,'98','',1),(10201,10152,'66','',1),(10202,10152,'180','',1),(10203,10152,'27','',1),(10204,10152,'152','',1),(10205,10152,'183','',1),(10206,10152,'134','',1),(10207,10152,'130','',1),(10208,10152,'122','',1),(10209,10152,'36','',1),(10210,10152,'26','',1),(10211,10152,'104','',1),(10212,10152,'175','',1),(10213,10152,'153','',1),(10214,10152,'64','',1),(10215,10152,'129','',1),(10216,10152,'182','',1),(10217,10152,'179','',1),(10218,10152,'173','',1),(10219,10152,'100','',1),(10220,10152,'19','',1),(10221,10152,'157','',1),(10222,10152,'128','',1),(10223,10152,'181','',1),(10224,10152,'154','',1),(10225,10152,'148','',1),(10226,10152,'11','',1),(10227,10152,'29','',1),(10228,10152,'158','',1),(10229,10152,'178','',1),(10230,10152,'8','',1),(10231,10152,'58','',1),(10232,10152,'71','',1),(10233,10152,'97','',1),(10234,10152,'39','',1),(10235,10152,'177','',1),(10236,10152,'85','',1),(10237,10152,'118','',1),(10238,10152,'107','',1),(10239,10152,'30','',1),(10240,10152,'147','',1),(10241,10152,'48','',1),(10242,10152,'125','',1),(10243,10152,'161','',1),(10244,10152,'146','',1),(10245,10152,'62','',1),(10246,10152,'162','',1),(10247,10152,'176','',1),(10248,10152,'108','',1),(10249,10152,'84','',1),(10250,10152,'101','',1),(10251,10152,'121','',1),(10252,10152,'143','',1),(10253,10152,'77','',1),(10254,10152,'167','',1),(10255,10152,'115','',1),(10256,10152,'56','',1),(10257,10152,'16','',1),(10258,10152,'111','',1),(10259,10152,'3','',1),(10260,10152,'23','',1),(10261,10152,'20','',1),(10262,10152,'83','',1),(10263,10152,'164','',1),(10264,10152,'99','',1),(10265,10152,'70','',1),(10266,10152,'141','',1),(10267,10152,'9','',1),(10268,10152,'28','',1),(10269,10152,'137','',1),(10270,10152,'47','',1),(10271,10152,'15','',1),(10272,10152,'116','',1),(10273,10152,'82','',1),(10274,10152,'151','',1),(10275,10152,'54','',1),(10276,10152,'34','',1),(10277,10152,'169','',1),(10278,10152,'132','',1),(10279,10152,'61','',1),(10280,10152,'73','',1),(10281,10152,'31','',1),(10282,10152,'136','',1),(10283,10152,'50','',1),(10284,10152,'127','',1),(10285,10152,'25','',1),(10286,10152,'166','',1),(10287,10152,'33','',1),(10288,10152,'150','',1),(10289,10152,'114','',1),(10290,10152,'149','',1),(10291,10152,'67','',1),(10292,10152,'110','',1),(10293,10152,'59','',1),(10294,10152,'135','',1),(10295,10152,'131','',1),(10296,10152,'102','',1),(10416,10152,'4_WAR_contactsportlet','',1),(10417,10152,'3_WAR_contactsportlet','',1),(10418,10152,'2_WAR_contactsportlet','',1),(10419,10152,'1_WAR_contactsportlet','',1),(10424,10152,'1_WAR_eventsdisplayportlet','',1),(10427,10152,'2_WAR_microblogsportlet','',1),(10428,10152,'1_WAR_microblogsportlet','',1),(10432,10152,'1_WAR_privatemessagingportlet','',1),(10437,10152,'5_WAR_soportlet','',1),(10438,10152,'1_WAR_soportlet','',1),(10441,10152,'1_WAR_tasksportlet','',1),(10442,10152,'2_WAR_tasksportlet','',1),(10443,10152,'1_WAR_wysiwygportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(75) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletItem`
--

LOCK TABLES `PortletItem` WRITE;
/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (10351,0,3,10346,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10357,0,3,10352,'101_INSTANCE_Taiev33Gt3WI','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10010</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10377,0,3,10372,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10378,0,3,10372,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10379,0,3,10372,'101_INSTANCE_IM6F69To7awL','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10385,0,3,10380,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10391,0,3,10386,'101_INSTANCE_tXM7u29rtzQ5','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10010</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10397,0,3,10392,'39_INSTANCE_ys9bJ2vCoW0m','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10398,0,3,10392,'39_INSTANCE_w7fBVH9A9INC','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(10466,0,3,10461,'1_WAR_wysiwygportlet_INSTANCE_abcd','<portlet-preferences><preference><name>portletSetupTitle_fi_FI</name><value>Welcome</value></preference><preference><name>portletSetupTitle_it_IT</name><value>Welcome</value></preference><preference><name>portletSetupTitle_zh_TW</name><value>Welcome</value></preference><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_pl_PL</name><value>Welcome</value></preference><preference><name>portletSetupTitle_iw_IL</name><value>Welcome</value></preference><preference><name>portletSetupTitle_eu_ES</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ca_ES</name><value>Welcome</value></preference><preference><name>portletSetupTitle_de_DE</name><value>Welcome</value></preference><preference><name>portletSetupTitle_hr_HR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_en_GB</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ko_KR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_tr_TR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ro_RO</name><value>Welcome</value></preference><preference><name>portletSetupTitle_nl_BE</name><value>Welcome</value></preference><preference><name>portletSetupTitle_in_ID</name><value>Welcome</value></preference><preference><name>portletSetupTitle_vi_VN</name><value>Welcome</value></preference><preference><name>portletSetupTitle_sr_RS</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ar_SA</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ca_AD</name><value>Welcome</value></preference><preference><name>portletSetupTitle_uk_UA</name><value>Welcome</value></preference><preference><name>portletSetupTitle_es_ES</name><value>Welcome</value></preference><preference><name>portletSetupTitle_el_GR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_bg_BG</name><value>Welcome</value></preference><preference><name>portletSetupTitle_hi_IN</name><value>Welcome</value></preference><preference><name>portletSetupTitle_hu_HU</name><value>Welcome</value></preference><preference><name>portletSetupTitle_gl_ES</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ru_RU</name><value>Welcome</value></preference><preference><name>portletSetupTitle_et_EE</name><value>Welcome</value></preference><preference><name>portletSetupTitle_fa_IR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_sv_SE</name><value>Welcome</value></preference><preference><name>portletSetupTitle_da_DK</name><value>Welcome</value></preference><preference><name>portletSetupTitle_cs_CZ</name><value>Welcome</value></preference><preference><name>portletSetupTitle_zh_CN</name><value>Welcome</value></preference><preference><name>portletSetupTitle_ja_JP</name><value>Welcome</value></preference><preference><name>portletSetupTitle_nl_NL</name><value>Welcome</value></preference><preference><name>portletSetupTitle_fr_CA</name><value>Welcome</value></preference><preference><name>portletSetupTitle_sl_SI</name><value>Welcome</value></preference><preference><name>portletSetupTitle_sr_RS_latin</name><value>Welcome</value></preference><preference><name>portletSetupTitle_pt_PT</name><value>Welcome</value></preference><preference><name>portletSetupTitle_fr_FR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_pt_BR</name><value>Welcome</value></preference><preference><name>portletSetupTitle_en_AU</name><value>Welcome</value></preference><preference><name>portletSetupTitle_nb_NO</name><value>Welcome</value></preference><preference><name>portletSetupTitle_lo_LA</name><value>Welcome</value></preference><preference><name>portletSetupTitle_en_US</name><value>Welcome</value></preference><preference><name>portletSetupTitle_sk_SK</name><value>Welcome</value></preference></portlet-preferences>'),(10467,0,3,10461,'1_WAR_eventsdisplayportlet','<portlet-preferences><preference><name>portletSetupTitle_fi_FI</name><value>Events</value></preference><preference><name>portletSetupTitle_it_IT</name><value>Events</value></preference><preference><name>portletSetupTitle_zh_TW</name><value>Events</value></preference><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_pl_PL</name><value>Events</value></preference><preference><name>portletSetupTitle_iw_IL</name><value>Events</value></preference><preference><name>portletSetupTitle_eu_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_ca_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_de_DE</name><value>Events</value></preference><preference><name>portletSetupTitle_hr_HR</name><value>Events</value></preference><preference><name>portletSetupTitle_en_GB</name><value>Events</value></preference><preference><name>portletSetupTitle_ko_KR</name><value>Events</value></preference><preference><name>portletSetupTitle_tr_TR</name><value>Events</value></preference><preference><name>portletSetupTitle_ro_RO</name><value>Events</value></preference><preference><name>portletSetupTitle_nl_BE</name><value>Events</value></preference><preference><name>portletSetupTitle_in_ID</name><value>Events</value></preference><preference><name>portletSetupTitle_vi_VN</name><value>Events</value></preference><preference><name>portletSetupTitle_sr_RS</name><value>Events</value></preference><preference><name>portletSetupTitle_ar_SA</name><value>Events</value></preference><preference><name>portletSetupTitle_ca_AD</name><value>Events</value></preference><preference><name>portletSetupTitle_uk_UA</name><value>Events</value></preference><preference><name>portletSetupTitle_es_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_el_GR</name><value>Events</value></preference><preference><name>portletSetupTitle_bg_BG</name><value>Events</value></preference><preference><name>portletSetupTitle_hi_IN</name><value>Events</value></preference><preference><name>portletSetupTitle_hu_HU</name><value>Events</value></preference><preference><name>portletSetupTitle_gl_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_ru_RU</name><value>Events</value></preference><preference><name>portletSetupTitle_et_EE</name><value>Events</value></preference><preference><name>portletSetupTitle_fa_IR</name><value>Events</value></preference><preference><name>portletSetupTitle_sv_SE</name><value>Events</value></preference><preference><name>portletSetupTitle_da_DK</name><value>Events</value></preference><preference><name>portletSetupTitle_cs_CZ</name><value>Events</value></preference><preference><name>portletSetupTitle_zh_CN</name><value>Events</value></preference><preference><name>portletSetupTitle_ja_JP</name><value>Events</value></preference><preference><name>portletSetupTitle_nl_NL</name><value>Events</value></preference><preference><name>portletSetupTitle_fr_CA</name><value>Events</value></preference><preference><name>portletSetupTitle_sl_SI</name><value>Events</value></preference><preference><name>portletSetupTitle_sr_RS_latin</name><value>Events</value></preference><preference><name>portletSetupTitle_pt_PT</name><value>Events</value></preference><preference><name>portletSetupTitle_fr_FR</name><value>Events</value></preference><preference><name>portletSetupTitle_pt_BR</name><value>Events</value></preference><preference><name>portletSetupTitle_en_AU</name><value>Events</value></preference><preference><name>portletSetupTitle_nb_NO</name><value>Events</value></preference><preference><name>portletSetupTitle_lo_LA</name><value>Events</value></preference><preference><name>portletSetupTitle_en_US</name><value>Events</value></preference><preference><name>portletSetupTitle_sk_SK</name><value>Events</value></preference></portlet-preferences>'),(10468,0,3,10461,'39_INSTANCE_abcd','<portlet-preferences><preference><name>showFeedTitle</name><value>false</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>showFeedPublishedDate</name><value>false</value></preference><preference><name>showFeedDescription</name><value>false</value></preference><preference><name>showFeedImage</name><value>false</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>showFeedItemAuthor</name><value>false</value></preference><preference><name>entriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(10474,0,3,10469,'8','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10480,0,3,10475,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10481,0,3,10475,'101_INSTANCE_abcd','<portlet-preferences><preference><name>assetLinkBehaviour</name><value>viewInPortlet</value></preference><preference><name>displayStyle</name><value>title-list</value></preference></portlet-preferences>'),(10487,0,3,10482,'19','<portlet-preferences><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value><value>Sticky,/message_boards/priority_sticky.png,2.0</value><value>Announcement,/message_boards/priority_announcement.png,1.0</value></preference><preference><name>ranks</name><value>Bronze=0</value><value>Silver=25</value><value>Gold=100</value><value>Platinum=250</value><value>Moderator=organization:Message Boards Administrator</value><value>Moderator=organization-role:Message Boards Administrator</value><value>Moderator=regular-role:Message Boards Administrator</value><value>Moderator=site-role:Message Boards Administrator</value><value>Moderator=user-group:Message Boards Administrator</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10488,0,3,10482,'73','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10489,0,3,10482,'101_INSTANCE_abcd','<portlet-preferences><preference><name>assetLinkBehaviour</name><value>viewInPortlet</value></preference><preference><name>displayStyle</name><value>title-list</value></preference></portlet-preferences>'),(10495,0,3,10490,'33','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10496,0,3,10490,'115','<portlet-preferences><preference><name>portletSetupTitle_fi_FI</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_it_IT</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_zh_TW</name><value>Recent Blogs</value></preference><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_pl_PL</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_iw_IL</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_eu_ES</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ca_ES</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_de_DE</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_hr_HR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_en_GB</name><value>Recent Blogs</value></preference><preference><name>enableRssSubscription</name><value>false</value></preference><preference><name>portletSetupTitle_ko_KR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_tr_TR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ro_RO</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_nl_BE</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_in_ID</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_vi_VN</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_sr_RS</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ar_SA</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ca_AD</name><value>Recent Blogs</value></preference><preference><name>selectionMethod</name><value>scope</value></preference><preference><name>portletSetupTitle_uk_UA</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_es_ES</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_el_GR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_bg_BG</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_hi_IN</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_hu_HU</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_gl_ES</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ru_RU</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_et_EE</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_fa_IR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_sv_SE</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_da_DK</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_cs_CZ</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_zh_CN</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_ja_JP</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_nl_NL</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_fr_CA</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_sl_SI</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_sr_RS_latin</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_pt_PT</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_fr_FR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_pt_BR</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_en_AU</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_nb_NO</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_lo_LA</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Blogs</value></preference><preference><name>portletSetupTitle_sk_SK</name><value>Recent Blogs</value></preference></portlet-preferences>'),(10497,0,3,10490,'101_INSTANCE_abcd','<portlet-preferences><preference><name>assetLinkBehaviour</name><value>viewInPortlet</value></preference><preference><name>displayStyle</name><value>title-list</value></preference></portlet-preferences>'),(10503,0,3,10498,'36','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10504,0,3,10498,'101_INSTANCE_abcd','<portlet-preferences><preference><name>assetLinkBehaviour</name><value>viewInPortlet</value></preference><preference><name>displayStyle</name><value>title-list</value></preference></portlet-preferences>'),(10510,0,3,10505,'4_WAR_contactsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10511,0,3,10505,'2_WAR_soportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10528,0,3,10523,'2_WAR_microblogsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10529,0,3,10523,'1_WAR_eventsdisplayportlet','<portlet-preferences><preference><name>portletSetupTitle_fi_FI</name><value>Events</value></preference><preference><name>portletSetupTitle_it_IT</name><value>Events</value></preference><preference><name>portletSetupTitle_zh_TW</name><value>Events</value></preference><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_pl_PL</name><value>Events</value></preference><preference><name>portletSetupTitle_iw_IL</name><value>Events</value></preference><preference><name>portletSetupTitle_eu_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_ca_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_de_DE</name><value>Events</value></preference><preference><name>portletSetupTitle_hr_HR</name><value>Events</value></preference><preference><name>portletSetupTitle_en_GB</name><value>Events</value></preference><preference><name>portletSetupTitle_ko_KR</name><value>Events</value></preference><preference><name>portletSetupTitle_tr_TR</name><value>Events</value></preference><preference><name>portletSetupTitle_ro_RO</name><value>Events</value></preference><preference><name>portletSetupTitle_nl_BE</name><value>Events</value></preference><preference><name>portletSetupTitle_in_ID</name><value>Events</value></preference><preference><name>portletSetupTitle_vi_VN</name><value>Events</value></preference><preference><name>portletSetupTitle_sr_RS</name><value>Events</value></preference><preference><name>portletSetupTitle_ar_SA</name><value>Events</value></preference><preference><name>portletSetupTitle_ca_AD</name><value>Events</value></preference><preference><name>portletSetupTitle_uk_UA</name><value>Events</value></preference><preference><name>portletSetupTitle_es_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_el_GR</name><value>Events</value></preference><preference><name>portletSetupTitle_bg_BG</name><value>Events</value></preference><preference><name>portletSetupTitle_hi_IN</name><value>Events</value></preference><preference><name>portletSetupTitle_hu_HU</name><value>Events</value></preference><preference><name>portletSetupTitle_gl_ES</name><value>Events</value></preference><preference><name>portletSetupTitle_ru_RU</name><value>Events</value></preference><preference><name>portletSetupTitle_et_EE</name><value>Events</value></preference><preference><name>portletSetupTitle_fa_IR</name><value>Events</value></preference><preference><name>portletSetupTitle_sv_SE</name><value>Events</value></preference><preference><name>portletSetupTitle_da_DK</name><value>Events</value></preference><preference><name>portletSetupTitle_cs_CZ</name><value>Events</value></preference><preference><name>portletSetupTitle_zh_CN</name><value>Events</value></preference><preference><name>portletSetupTitle_ja_JP</name><value>Events</value></preference><preference><name>portletSetupTitle_nl_NL</name><value>Events</value></preference><preference><name>portletSetupTitle_fr_CA</name><value>Events</value></preference><preference><name>portletSetupTitle_sl_SI</name><value>Events</value></preference><preference><name>portletSetupTitle_sr_RS_latin</name><value>Events</value></preference><preference><name>portletSetupTitle_pt_PT</name><value>Events</value></preference><preference><name>portletSetupTitle_fr_FR</name><value>Events</value></preference><preference><name>portletSetupTitle_pt_BR</name><value>Events</value></preference><preference><name>portletSetupTitle_en_AU</name><value>Events</value></preference><preference><name>portletSetupTitle_nb_NO</name><value>Events</value></preference><preference><name>portletSetupTitle_lo_LA</name><value>Events</value></preference><preference><name>portletSetupTitle_en_US</name><value>Events</value></preference><preference><name>portletSetupTitle_sk_SK</name><value>Events</value></preference></portlet-preferences>'),(10535,0,3,10530,'1_WAR_contactsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10541,0,3,10536,'1_WAR_microblogsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10547,0,3,10542,'1_WAR_privatemessagingportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10553,0,3,10548,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10559,0,3,10554,'1_WAR_tasksportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10576,0,3,10571,'2_WAR_contactsportlet_INSTANCE_abcd','<portlet-preferences><preference><name>showIcon</name><value>false</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>displayStyle</name><value>1</value></preference></portlet-preferences>'),(10577,0,3,10571,'2_WAR_microblogsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10578,0,3,10571,'2_WAR_contactsportlet_INSTANCE_efgh','<portlet-preferences><preference><name>showRecentActivity</name><value>false</value></preference><preference><name>showSites</name><value>false</value></preference><preference><name>showCompleteYourProfile</name><value>true</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>displayStyle</name><value>2</value></preference></portlet-preferences>'),(10579,0,3,10571,'2_WAR_contactsportlet_INSTANCE_ijkl','<portlet-preferences><preference><name>showSites</name><value>true</value></preference><preference><name>showRecentActivity</name><value>false</value></preference><preference><name>showUsersInformation</name><value>false</value></preference><preference><name>showTags</name><value>true</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>displayStyle</name><value>2</value></preference></portlet-preferences>'),(10585,0,3,10580,'2_WAR_contactsportlet_INSTANCE_abcd','<portlet-preferences><preference><name>showIcon</name><value>false</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>displayStyle</name><value>1</value></preference></portlet-preferences>'),(10586,0,3,10580,'1_WAR_contactsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10592,0,3,10587,'2_WAR_contactsportlet_INSTANCE_abcd','<portlet-preferences><preference><name>showIcon</name><value>false</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference><preference><name>displayStyle</name><value>1</value></preference></portlet-preferences>'),(10593,0,3,10587,'1_WAR_microblogsportlet','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10605,0,3,10181,'145','<portlet-preferences />'),(10606,0,3,10181,'47','<portlet-preferences />'),(10607,0,3,10181,'58','<portlet-preferences />'),(10608,0,3,10173,'160','<portlet-preferences />'),(10609,0,3,10173,'145','<portlet-preferences />'),(10610,0,3,10173,'165','<portlet-preferences />'),(10611,0,3,10173,'134','<portlet-preferences />'),(10619,0,3,10461,'84','<portlet-preferences />'),(10620,0,3,10461,'1_WAR_soportlet','<portlet-preferences />'),(10621,0,3,10461,'28','<portlet-preferences />'),(10622,0,3,10461,'64','<portlet-preferences />'),(10623,0,3,10461,'183','<portlet-preferences />'),(10624,10451,2,0,'19','<portlet-preferences xmlns=\"http://java.sun.com/xml/ns/portlet/portlet-app_2_0.xsd\">\n			<preference>\n				<name>priorities</name>\n				<value>Urgent,/message_boards/priority_urgent.png,3.0</value>\n				<value>Sticky,/message_boards/priority_sticky.png,2.0</value>\n				<value>Announcement,/message_boards/priority_announcement.png,1.0</value>\n			</preference>\n			<preference>\n				<name>ranks</name>\n				<value>Youngling=0</value>\n				<value>Padawan=25</value>\n				<value>Jedi Knight=100</value>\n				<value>Jedi Master=250</value>\n				<value>Jedi Council Member=500</value>\n				<value>Yoda=1000</value>\n				<value>Moderator=organization:Message Boards Administrator</value>\n				<value>Moderator=organization-role:Message Boards Administrator</value>\n				<value>Moderator=regular-role:Message Boards Administrator</value>\n				<value>Moderator=site-role:Message Boards Administrator</value>\n				<value>Moderator=user-group:Message Boards Administrator</value>\n			</preference>\n		</portlet-preferences>'),(10625,0,3,10461,'178','<portlet-preferences />'),(10626,10451,2,0,'8','<portlet-preferences />'),(10627,0,3,10461,'161','<portlet-preferences />'),(10628,0,3,10461,'162','<portlet-preferences />'),(10629,0,3,10461,'167','<portlet-preferences />'),(10630,0,3,10461,'56','<portlet-preferences />'),(10631,0,3,10461,'20','<portlet-preferences />'),(10632,10451,2,0,'15','<portlet-preferences />'),(10633,0,3,10461,'169','<portlet-preferences />'),(10634,10451,2,0,'25','<portlet-preferences />'),(10635,0,3,10461,'166','<portlet-preferences />'),(10636,10451,2,0,'33','<portlet-preferences />'),(10637,10152,1,0,'84','<portlet-preferences />'),(10648,0,3,10641,'167',''),(10649,0,3,10641,'20',''),(10650,0,3,10641,'28','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"28\"/>'),(10651,0,3,10641,'15',''),(10652,0,3,10641,'166',''),(10653,0,3,10641,'84','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"84\"/>'),(10654,0,3,10641,'1_WAR_soportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"1_WAR_soportlet\"/>'),(10655,0,3,10641,'1_WAR_wysiwygportlet_INSTANCE_abcd','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"1_WAR_wysiwygportlet_INSTANCE_abcd\">\n	<preference>\n		<name>portletSetupTitle_fi_FI</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_it_IT</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_TW</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupUseCustomTitle</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pl_PL</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_iw_IL</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_eu_ES</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_ES</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_de_DE</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hr_HR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_GB</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ko_KR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_tr_TR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ro_RO</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_BE</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_in_ID</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_vi_VN</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ar_SA</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_AD</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_uk_UA</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_es_ES</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_el_GR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_bg_BG</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hi_IN</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hu_HU</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_gl_ES</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ru_RU</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_et_EE</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fa_IR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sv_SE</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_da_DK</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_cs_CZ</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_CN</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ja_JP</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_NL</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_CA</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sl_SI</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS_latin</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_PT</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_FR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_BR</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_AU</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nb_NO</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_lo_LA</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_US</name>\n		<value>Welcome</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sk_SK</name>\n		<value>Welcome</value>\n	</preference>\n</portlet-preferences>'),(10656,0,3,10641,'39_INSTANCE_abcd','<portlet-preferences><preference><name>showFeedTitle</name><value>false</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>showFeedPublishedDate</name><value>false</value></preference><preference><name>showFeedDescription</name><value>false</value></preference><preference><name>showFeedImage</name><value>false</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>showFeedItemAuthor</name><value>false</value></preference><preference><name>entriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(10657,0,3,10641,'64','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"64\"/>'),(10658,0,3,10641,'1_WAR_eventsdisplayportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10461\" portlet-id=\"1_WAR_eventsdisplayportlet\">\n	<preference>\n		<name>portletSetupTitle_fi_FI</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_it_IT</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_TW</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupUseCustomTitle</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pl_PL</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_iw_IL</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_eu_ES</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_ES</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_de_DE</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hr_HR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_GB</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ko_KR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_tr_TR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ro_RO</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_BE</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_in_ID</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_vi_VN</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ar_SA</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_AD</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_uk_UA</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_es_ES</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_el_GR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_bg_BG</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hi_IN</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hu_HU</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_gl_ES</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ru_RU</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_et_EE</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fa_IR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sv_SE</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_da_DK</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_cs_CZ</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_CN</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ja_JP</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_NL</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_CA</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sl_SI</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS_latin</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_PT</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_FR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_BR</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_AU</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nb_NO</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_lo_LA</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_US</name>\n		<value>Events</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sk_SK</name>\n		<value>Events</value>\n	</preference>\n</portlet-preferences>'),(10659,0,3,10642,'8','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10660,10612,2,0,'8','<portlet-preferences />'),(10661,0,3,10643,'20','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10475\" portlet-id=\"20\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),(10662,0,3,10644,'73','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10482\" portlet-id=\"73\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),(10663,0,3,10644,'19','<portlet-preferences><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value></preference><preference><name>ranks</name><value>Bronze=0</value></preference><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10664,10612,2,0,'19','<portlet-preferences><preference><name>priorities</name><value>Urgent,/message_boards/priority_urgent.png,3.0</value></preference><preference><name>ranks</name><value>Youngling=0</value></preference></portlet-preferences>'),(10665,0,3,10645,'33','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10666,10612,2,0,'33','<portlet-preferences />'),(10667,0,3,10645,'115','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10490\" portlet-id=\"115\">\n	<preference>\n		<name>portletSetupTitle_fi_FI</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_it_IT</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_TW</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupUseCustomTitle</name>\n		<value>true</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pl_PL</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_iw_IL</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_eu_ES</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_ES</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_de_DE</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hr_HR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_GB</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>enableRssSubscription</name>\n		<value>false</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ko_KR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_tr_TR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ro_RO</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_BE</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_in_ID</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_vi_VN</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ar_SA</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ca_AD</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>selectionMethod</name>\n		<value>scope</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_uk_UA</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_es_ES</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_el_GR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_bg_BG</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hi_IN</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_hu_HU</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_gl_ES</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ru_RU</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_et_EE</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fa_IR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sv_SE</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_da_DK</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_cs_CZ</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_zh_CN</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_ja_JP</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nl_NL</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_CA</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sl_SI</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sr_RS_latin</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_PT</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_fr_FR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_pt_BR</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_AU</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_nb_NO</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_lo_LA</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_en_US</name>\n		<value>Recent Blogs</value>\n	</preference>\n	<preference>\n		<name>portletSetupTitle_sk_SK</name>\n		<value>Recent Blogs</value>\n	</preference>\n</portlet-preferences>'),(10668,0,3,10646,'36','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10498\" portlet-id=\"36\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),(10669,0,3,10647,'2_WAR_soportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10505\" portlet-id=\"2_WAR_soportlet\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),(10670,0,3,10647,'4_WAR_contactsportlet','<?xml version=\"1.0\"?>\n\n<portlet-preferences owner-id=\"0\" owner-type=\"3\" default-user=\"false\" plid=\"10505\" portlet-id=\"4_WAR_contactsportlet\">\n	<preference>\n		<name>portletSetupShowBorders</name>\n		<value>false</value>\n	</preference>\n</portlet-preferences>'),(10672,0,3,10173,'128','<portlet-preferences />'),(10673,0,3,10173,'156','<portlet-preferences />'),(10674,0,3,10173,'49','<portlet-preferences />'),(10675,0,3,10641,'145','<portlet-preferences />'),(10676,0,3,10641,'49','<portlet-preferences />'),(10682,0,3,10181,'49','<portlet-preferences />'),(10683,0,3,10677,'145','<portlet-preferences />'),(10684,0,3,10677,'87','<portlet-preferences />'),(10685,10612,2,0,'1_WAR_calendarportlet','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

LOCK TABLES `QUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

LOCK TABLES `QUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsEntry`
--

LOCK TABLES `RatingsEntry` WRITE;
/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsStats`
--

LOCK TABLES `RatingsStats` WRITE;
/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BR','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MZ','Monza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Release_`
--

LOCK TABLES `Release_` WRITE;
/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` VALUES (1,'2012-08-20 18:25:06','2012-08-20 16:48:46','portal',6200,'2012-06-01 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(10415,'2012-08-20 16:25:44','2012-08-20 16:49:09','contacts-portlet',200,NULL,1,0,''),(10431,'2012-08-20 16:25:49','2012-08-20 16:49:05','private-messaging-portlet',100,NULL,1,0,''),(10444,'2012-08-20 16:25:53','2012-08-20 16:49:10','so-hook',202,NULL,1,0,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repository`
--

LOCK TABLES `Repository` WRITE;
/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepositoryEntry`
--

LOCK TABLES `RepositoryEntry` WRITE;
/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceAction`
--

LOCK TABLES `ResourceAction` WRITE;
/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` VALUES (1,'4_WAR_contactsportlet','VIEW',1),(2,'4_WAR_contactsportlet','ADD_TO_PAGE',2),(3,'4_WAR_contactsportlet','CONFIGURATION',4),(4,'4_WAR_contactsportlet','PERMISSIONS',8),(5,'3_WAR_contactsportlet','VIEW',1),(6,'3_WAR_contactsportlet','ADD_TO_PAGE',2),(7,'3_WAR_contactsportlet','CONFIGURATION',4),(8,'3_WAR_contactsportlet','PERMISSIONS',8),(9,'2_WAR_contactsportlet','VIEW',1),(10,'2_WAR_contactsportlet','ADD_TO_PAGE',2),(11,'2_WAR_contactsportlet','CONFIGURATION',4),(12,'2_WAR_contactsportlet','PERMISSIONS',8),(13,'1_WAR_contactsportlet','ACCESS_IN_CONTROL_PANEL',2),(14,'1_WAR_contactsportlet','ADD_TO_PAGE',4),(15,'1_WAR_contactsportlet','CONFIGURATION',8),(16,'1_WAR_contactsportlet','VIEW',1),(17,'1_WAR_contactsportlet','PERMISSIONS',16),(18,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(19,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(20,'1_WAR_calendarportlet','CONFIGURATION',8),(21,'1_WAR_calendarportlet','VIEW',1),(22,'1_WAR_calendarportlet','PERMISSIONS',16),(23,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(24,'com.liferay.calendar.model.CalendarResource','DELETE',4),(25,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(26,'com.liferay.calendar.model.CalendarResource','VIEW',1),(27,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(28,'com.liferay.calendar.model.Calendar','DELETE',2),(29,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(30,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(31,'com.liferay.calendar.model.Calendar','UPDATE',16),(32,'com.liferay.calendar.model.Calendar','VIEW',1),(33,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(34,'com.liferay.calendar','ADD_RESOURCE',2),(35,'com.liferay.calendar','PERMISSIONS',4),(36,'1_WAR_eventsdisplayportlet','VIEW',1),(37,'1_WAR_eventsdisplayportlet','ADD_TO_PAGE',2),(38,'1_WAR_eventsdisplayportlet','CONFIGURATION',4),(39,'1_WAR_eventsdisplayportlet','PERMISSIONS',8),(40,'2_WAR_microblogsportlet','VIEW',1),(41,'2_WAR_microblogsportlet','ADD_TO_PAGE',2),(42,'2_WAR_microblogsportlet','CONFIGURATION',4),(43,'2_WAR_microblogsportlet','PERMISSIONS',8),(44,'com.liferay.microblogs.model.MicroblogsEntry','DELETE',2),(45,'com.liferay.microblogs.model.MicroblogsEntry','PERMISSIONS',4),(46,'com.liferay.microblogs.model.MicroblogsEntry','UPDATE',8),(47,'com.liferay.microblogs.model.MicroblogsEntry','VIEW',1),(48,'com.liferay.microblogs','ADD_ENTRY',2),(49,'com.liferay.microblogs','PERMISSIONS',4),(50,'1_WAR_microblogsportlet','VIEW',1),(51,'1_WAR_microblogsportlet','ADD_TO_PAGE',2),(52,'1_WAR_microblogsportlet','CONFIGURATION',4),(53,'1_WAR_microblogsportlet','PERMISSIONS',8),(54,'1_WAR_privatemessagingportlet','VIEW',1),(55,'1_WAR_privatemessagingportlet','ADD_TO_PAGE',2),(56,'1_WAR_privatemessagingportlet','CONFIGURATION',4),(57,'1_WAR_privatemessagingportlet','PERMISSIONS',8),(58,'2_WAR_soportlet','VIEW',1),(59,'2_WAR_soportlet','ADD_TO_PAGE',2),(60,'2_WAR_soportlet','CONFIGURATION',4),(61,'2_WAR_soportlet','PERMISSIONS',8),(62,'7_WAR_soportlet','VIEW',1),(63,'7_WAR_soportlet','ADD_TO_PAGE',2),(64,'7_WAR_soportlet','CONFIGURATION',4),(65,'7_WAR_soportlet','PERMISSIONS',8),(66,'4_WAR_soportlet','VIEW',1),(67,'4_WAR_soportlet','ADD_TO_PAGE',2),(68,'4_WAR_soportlet','CONFIGURATION',4),(69,'4_WAR_soportlet','PERMISSIONS',8),(70,'5_WAR_soportlet','VIEW',1),(71,'5_WAR_soportlet','ADD_TO_PAGE',2),(72,'5_WAR_soportlet','CONFIGURATION',4),(73,'5_WAR_soportlet','PERMISSIONS',8),(74,'1_WAR_soportlet','VIEW',1),(75,'1_WAR_soportlet','ADD_TO_PAGE',2),(76,'1_WAR_soportlet','CONFIGURATION',4),(77,'1_WAR_soportlet','PERMISSIONS',8),(78,'6_WAR_soportlet','VIEW',1),(79,'6_WAR_soportlet','ADD_TO_PAGE',2),(80,'6_WAR_soportlet','CONFIGURATION',4),(81,'6_WAR_soportlet','PERMISSIONS',8),(82,'1_WAR_tasksportlet','VIEW',1),(83,'1_WAR_tasksportlet','ADD_TO_PAGE',2),(84,'1_WAR_tasksportlet','CONFIGURATION',4),(85,'1_WAR_tasksportlet','PERMISSIONS',8),(86,'com.liferay.tasks','ADD_ENTRY',2),(87,'com.liferay.tasks','PERMISSIONS',4),(88,'com.liferay.tasks.model.TasksEntry','ADD_DISCUSSION',2),(89,'com.liferay.tasks.model.TasksEntry','DELETE_DISCUSSION',4),(90,'com.liferay.tasks.model.TasksEntry','UPDATE',8),(91,'com.liferay.tasks.model.TasksEntry','UPDATE_DISCUSSION',16),(92,'com.liferay.tasks.model.TasksEntry','VIEW',1),(93,'com.liferay.tasks.model.TasksEntry','PERMISSIONS',32),(94,'2_WAR_tasksportlet','VIEW',1),(95,'2_WAR_tasksportlet','ADD_TO_PAGE',2),(96,'2_WAR_tasksportlet','CONFIGURATION',4),(97,'2_WAR_tasksportlet','PERMISSIONS',8),(98,'1_WAR_wysiwygportlet','VIEW',1),(99,'1_WAR_wysiwygportlet','ADD_TO_PAGE',2),(100,'1_WAR_wysiwygportlet','CONFIGURATION',4),(101,'1_WAR_wysiwygportlet','PERMISSIONS',8),(201,'98','ACCESS_IN_CONTROL_PANEL',2),(202,'98','ADD_TO_PAGE',4),(203,'98','CONFIGURATION',8),(204,'98','VIEW',1),(205,'98','PERMISSIONS',16),(206,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(207,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(208,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(209,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(210,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(211,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(212,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(213,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(214,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(215,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(216,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(217,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(218,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(219,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(220,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(221,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(222,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(223,'66','VIEW',1),(224,'66','ADD_TO_PAGE',2),(225,'66','CONFIGURATION',4),(226,'66','PERMISSIONS',8),(227,'156','VIEW',1),(228,'156','ADD_TO_PAGE',2),(229,'156','ACCESS_IN_CONTROL_PANEL',4),(230,'156','CONFIGURATION',8),(231,'156','PERMISSIONS',16),(232,'180','VIEW',1),(233,'180','ADD_TO_PAGE',2),(234,'180','CONFIGURATION',4),(235,'180','PERMISSIONS',8),(236,'183','VIEW',1),(237,'183','ADD_TO_PAGE',2),(238,'183','ACCESS_IN_CONTROL_PANEL',4),(239,'183','CONFIGURATION',8),(240,'183','PERMISSIONS',16),(241,'152','ACCESS_IN_CONTROL_PANEL',2),(242,'152','CONFIGURATION',4),(243,'152','VIEW',1),(244,'152','PERMISSIONS',8),(245,'27','VIEW',1),(246,'27','ADD_TO_PAGE',2),(247,'27','CONFIGURATION',4),(248,'27','PERMISSIONS',8),(249,'88','VIEW',1),(250,'88','ADD_TO_PAGE',2),(251,'88','CONFIGURATION',4),(252,'88','PERMISSIONS',8),(253,'87','VIEW',1),(254,'87','ADD_TO_PAGE',2),(255,'87','CONFIGURATION',4),(256,'87','PERMISSIONS',8),(257,'134','ACCESS_IN_CONTROL_PANEL',2),(258,'134','CONFIGURATION',4),(259,'134','VIEW',1),(260,'134','PERMISSIONS',8),(261,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(262,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(263,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(264,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(265,'com.liferay.portal.model.Layout','DELETE',32),(266,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(267,'com.liferay.portal.model.Layout','PERMISSIONS',128),(268,'com.liferay.portal.model.Layout','UPDATE',256),(269,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(270,'com.liferay.portal.model.Layout','VIEW',1),(271,'com.liferay.portal.model.LayoutBranch','DELETE',2),(272,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(273,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(274,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(275,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(276,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(277,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(278,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(279,'com.liferay.portal.model.Team','DELETE',4),(280,'com.liferay.portal.model.Team','PERMISSIONS',8),(281,'com.liferay.portal.model.Team','UPDATE',16),(282,'com.liferay.portal.model.Team','VIEW',1),(283,'com.liferay.portal.model.Group','ADD_LAYOUT',2),(284,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',4),(285,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',8),(286,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',16),(287,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',32),(288,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',64),(289,'com.liferay.portal.model.Group','DELETE',128),(290,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',256),(291,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',512),(292,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',1024),(293,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',2048),(294,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',4096),(295,'com.liferay.portal.model.Group','MANAGE_STAGING',8192),(296,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',16384),(297,'com.liferay.portal.model.Group','MANAGE_TEAMS',32768),(298,'com.liferay.portal.model.Group','PERMISSIONS',65536),(299,'com.liferay.portal.model.Group','PUBLISH_STAGING',131072),(300,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',262144),(301,'com.liferay.portal.model.Group','UPDATE',524288),(302,'com.liferay.portal.model.Group','VIEW',1),(303,'com.liferay.portal.model.Group','VIEW_MEMBERS',1048576),(304,'com.liferay.portal.model.Group','VIEW_STAGING',2097152),(305,'130','ACCESS_IN_CONTROL_PANEL',2),(306,'130','CONFIGURATION',4),(307,'130','VIEW',1),(308,'130','PERMISSIONS',8),(309,'122','VIEW',1),(310,'122','ADD_TO_PAGE',2),(311,'122','CONFIGURATION',4),(312,'122','PERMISSIONS',8),(313,'com.liferay.portlet.assetcategoriesnavigation','ADD_PORTLET_DISPLAY_TEMPLATE',2),(314,'com.liferay.portlet.assetcategoriesnavigation','PERMISSIONS',4),(315,'36','ADD_TO_PAGE',2),(316,'36','CONFIGURATION',4),(317,'36','VIEW',1),(318,'36','PERMISSIONS',8),(319,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(320,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(321,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(322,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(323,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(324,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(325,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(326,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(327,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(328,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(329,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(330,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(331,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(332,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(333,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(334,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(335,'com.liferay.portlet.wiki','ADD_NODE',2),(336,'com.liferay.portlet.wiki','ADD_PORTLET_DISPLAY_TEMPLATE',4),(337,'com.liferay.portlet.wiki','PERMISSIONS',8),(338,'26','VIEW',1),(339,'26','ADD_TO_PAGE',2),(340,'26','CONFIGURATION',4),(341,'26','PERMISSIONS',8),(342,'104','VIEW',1),(343,'104','ADD_TO_PAGE',2),(344,'104','ACCESS_IN_CONTROL_PANEL',4),(345,'104','CONFIGURATION',8),(346,'104','PERMISSIONS',16),(347,'175','VIEW',1),(348,'175','ADD_TO_PAGE',2),(349,'175','CONFIGURATION',4),(350,'175','PERMISSIONS',8),(351,'64','VIEW',1),(352,'64','ADD_TO_PAGE',2),(353,'64','CONFIGURATION',4),(354,'64','PERMISSIONS',8),(355,'153','ACCESS_IN_CONTROL_PANEL',2),(356,'153','ADD_TO_PAGE',4),(357,'153','CONFIGURATION',8),(358,'153','VIEW',1),(359,'153','PERMISSIONS',16),(360,'182','VIEW',1),(361,'182','ADD_TO_PAGE',2),(362,'182','ACCESS_IN_CONTROL_PANEL',4),(363,'182','CONFIGURATION',8),(364,'182','PERMISSIONS',16),(365,'129','ACCESS_IN_CONTROL_PANEL',2),(366,'129','CONFIGURATION',4),(367,'129','VIEW',1),(368,'129','PERMISSIONS',8),(369,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(370,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(371,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(372,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(373,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(374,'179','VIEW',1),(375,'179','ADD_TO_PAGE',2),(376,'179','ACCESS_IN_CONTROL_PANEL',4),(377,'179','CONFIGURATION',8),(378,'179','PERMISSIONS',16),(379,'173','VIEW',1),(380,'173','ADD_TO_PAGE',2),(381,'173','ACCESS_IN_CONTROL_PANEL',4),(382,'173','CONFIGURATION',8),(383,'173','PERMISSIONS',16),(384,'100','VIEW',1),(385,'100','ADD_TO_PAGE',2),(386,'100','CONFIGURATION',4),(387,'100','PERMISSIONS',8),(388,'157','ACCESS_IN_CONTROL_PANEL',2),(389,'157','CONFIGURATION',4),(390,'157','VIEW',1),(391,'157','PERMISSIONS',8),(392,'19','ADD_TO_PAGE',2),(393,'19','CONFIGURATION',4),(394,'19','VIEW',1),(395,'19','PERMISSIONS',8),(396,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(397,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(398,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(399,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(400,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(401,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(402,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(403,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(404,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(405,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(406,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(407,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(408,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(409,'com.liferay.portlet.messageboards','ADD_FILE',4),(410,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(411,'com.liferay.portlet.messageboards','BAN_USER',16),(412,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(413,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(414,'com.liferay.portlet.messageboards','PERMISSIONS',128),(415,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(416,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(417,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(418,'com.liferay.portlet.messageboards','VIEW',1),(419,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(420,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(421,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(422,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(423,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(424,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(425,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(426,'160','VIEW',1),(427,'160','ADD_TO_PAGE',2),(428,'160','CONFIGURATION',4),(429,'160','PERMISSIONS',8),(430,'128','ACCESS_IN_CONTROL_PANEL',2),(431,'128','CONFIGURATION',4),(432,'128','VIEW',1),(433,'128','PERMISSIONS',8),(434,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(435,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(436,'com.liferay.portal.model.Role','DELETE',8),(437,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(438,'com.liferay.portal.model.Role','PERMISSIONS',32),(439,'com.liferay.portal.model.Role','UPDATE',64),(440,'com.liferay.portal.model.Role','VIEW',1),(441,'181','VIEW',1),(442,'181','ADD_TO_PAGE',2),(443,'181','CONFIGURATION',4),(444,'181','PERMISSIONS',8),(445,'86','VIEW',1),(446,'86','ADD_TO_PAGE',2),(447,'86','CONFIGURATION',4),(448,'86','PERMISSIONS',8),(449,'154','ACCESS_IN_CONTROL_PANEL',2),(450,'154','CONFIGURATION',4),(451,'154','VIEW',1),(452,'154','PERMISSIONS',8),(453,'148','VIEW',1),(454,'148','ADD_TO_PAGE',2),(455,'148','CONFIGURATION',4),(456,'148','PERMISSIONS',8),(457,'11','ADD_TO_PAGE',2),(458,'11','CONFIGURATION',4),(459,'11','VIEW',1),(460,'11','PERMISSIONS',8),(461,'29','ADD_TO_PAGE',2),(462,'29','CONFIGURATION',4),(463,'29','VIEW',1),(464,'29','PERMISSIONS',8),(465,'174','VIEW',1),(466,'174','ADD_TO_PAGE',2),(467,'174','ACCESS_IN_CONTROL_PANEL',4),(468,'174','CONFIGURATION',8),(469,'174','PERMISSIONS',16),(470,'158','ACCESS_IN_CONTROL_PANEL',2),(471,'158','ADD_TO_PAGE',4),(472,'158','CONFIGURATION',8),(473,'158','VIEW',1),(474,'158','PERMISSIONS',16),(475,'178','VIEW',1),(476,'178','ADD_TO_PAGE',2),(477,'178','ACCESS_IN_CONTROL_PANEL',4),(478,'178','CONFIGURATION',8),(479,'178','PERMISSIONS',16),(480,'124','VIEW',1),(481,'124','ADD_TO_PAGE',2),(482,'124','CONFIGURATION',4),(483,'124','PERMISSIONS',8),(484,'8','ACCESS_IN_CONTROL_PANEL',2),(485,'8','ADD_TO_PAGE',4),(486,'8','CONFIGURATION',8),(487,'8','VIEW',1),(488,'8','PERMISSIONS',16),(489,'com.liferay.portlet.calendar','ADD_EVENT',2),(490,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(491,'com.liferay.portlet.calendar','PERMISSIONS',8),(492,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(493,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(494,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(495,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(496,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(497,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(498,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(499,'58','ADD_TO_PAGE',2),(500,'58','CONFIGURATION',4),(501,'58','VIEW',1),(502,'58','PERMISSIONS',8),(503,'97','VIEW',1),(504,'97','ADD_TO_PAGE',2),(505,'97','CONFIGURATION',4),(506,'97','PERMISSIONS',8),(507,'71','ADD_TO_PAGE',2),(508,'71','CONFIGURATION',4),(509,'71','VIEW',1),(510,'71','PERMISSIONS',8),(511,'39','VIEW',1),(512,'39','ADD_TO_PAGE',2),(513,'39','CONFIGURATION',4),(514,'39','PERMISSIONS',8),(515,'177','CONFIGURATION',2),(516,'177','VIEW',1),(517,'177','ADD_TO_PAGE',4),(518,'177','PERMISSIONS',8),(519,'177','ACCESS_IN_CONTROL_PANEL',16),(520,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(521,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(522,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(523,'com.liferay.portlet.mobiledevicerules','VIEW',1),(524,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(525,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(526,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(527,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(528,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(529,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(530,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(531,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(532,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(533,'170','VIEW',1),(534,'170','ADD_TO_PAGE',2),(535,'170','CONFIGURATION',4),(536,'170','PERMISSIONS',8),(537,'85','ADD_TO_PAGE',2),(538,'85','CONFIGURATION',4),(539,'85','VIEW',1),(540,'85','PERMISSIONS',8),(541,'com.liferay.portlet.sitemap','ADD_PORTLET_DISPLAY_TEMPLATE',2),(542,'com.liferay.portlet.sitemap','PERMISSIONS',4),(543,'118','VIEW',1),(544,'118','ADD_TO_PAGE',2),(545,'118','CONFIGURATION',4),(546,'118','PERMISSIONS',8),(547,'107','VIEW',1),(548,'107','ADD_TO_PAGE',2),(549,'107','CONFIGURATION',4),(550,'107','PERMISSIONS',8),(551,'30','VIEW',1),(552,'30','ADD_TO_PAGE',2),(553,'30','CONFIGURATION',4),(554,'30','PERMISSIONS',8),(555,'147','ACCESS_IN_CONTROL_PANEL',2),(556,'147','CONFIGURATION',4),(557,'147','VIEW',1),(558,'147','PERMISSIONS',8),(559,'com.liferay.portlet.asset','ADD_TAG',2),(560,'com.liferay.portlet.asset','PERMISSIONS',4),(561,'com.liferay.portlet.asset','ADD_CATEGORY',8),(562,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(563,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(564,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(565,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(566,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(567,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(568,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(569,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(570,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(571,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(572,'48','VIEW',1),(573,'48','ADD_TO_PAGE',2),(574,'48','CONFIGURATION',4),(575,'48','PERMISSIONS',8),(576,'125','ACCESS_IN_CONTROL_PANEL',2),(577,'125','CONFIGURATION',4),(578,'125','EXPORT_USER',8),(579,'125','VIEW',1),(580,'125','PERMISSIONS',16),(581,'com.liferay.portal.model.User','DELETE',2),(582,'com.liferay.portal.model.User','IMPERSONATE',4),(583,'com.liferay.portal.model.User','PERMISSIONS',8),(584,'com.liferay.portal.model.User','UPDATE',16),(585,'com.liferay.portal.model.User','VIEW',1),(586,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(587,'com.liferay.portal.model.UserGroup','DELETE',4),(588,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(589,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(590,'com.liferay.portal.model.UserGroup','UPDATE',32),(591,'com.liferay.portal.model.UserGroup','VIEW',1),(592,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',2),(593,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',4),(594,'com.liferay.portal.model.Organization','DELETE',8),(595,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',16),(596,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',32),(597,'com.liferay.portal.model.Organization','MANAGE_USERS',64),(598,'com.liferay.portal.model.Organization','PERMISSIONS',128),(599,'com.liferay.portal.model.Organization','UPDATE',256),(600,'com.liferay.portal.model.Organization','VIEW',1),(601,'161','ACCESS_IN_CONTROL_PANEL',2),(602,'161','CONFIGURATION',4),(603,'161','VIEW',1),(604,'161','PERMISSIONS',8),(605,'144','VIEW',1),(606,'144','ADD_TO_PAGE',2),(607,'144','CONFIGURATION',4),(608,'144','PERMISSIONS',8),(609,'146','ACCESS_IN_CONTROL_PANEL',2),(610,'146','CONFIGURATION',4),(611,'146','VIEW',1),(612,'146','PERMISSIONS',8),(613,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(614,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(615,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(616,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(617,'62','VIEW',1),(618,'62','ADD_TO_PAGE',2),(619,'62','CONFIGURATION',4),(620,'62','PERMISSIONS',8),(621,'162','ACCESS_IN_CONTROL_PANEL',2),(622,'162','CONFIGURATION',4),(623,'162','VIEW',1),(624,'162','PERMISSIONS',8),(625,'176','VIEW',1),(626,'176','ADD_TO_PAGE',2),(627,'176','ACCESS_IN_CONTROL_PANEL',4),(628,'176','CONFIGURATION',8),(629,'176','PERMISSIONS',16),(630,'172','VIEW',1),(631,'172','ADD_TO_PAGE',2),(632,'172','CONFIGURATION',4),(633,'172','PERMISSIONS',8),(634,'108','VIEW',1),(635,'108','ADD_TO_PAGE',2),(636,'108','CONFIGURATION',4),(637,'108','PERMISSIONS',8),(638,'139','ACCESS_IN_CONTROL_PANEL',2),(639,'139','ADD_EXPANDO',4),(640,'139','CONFIGURATION',8),(641,'139','VIEW',1),(642,'139','PERMISSIONS',16),(643,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(644,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(645,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(646,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(647,'84','ADD_ENTRY',2),(648,'84','ADD_TO_PAGE',4),(649,'84','CONFIGURATION',8),(650,'84','VIEW',1),(651,'84','PERMISSIONS',16),(652,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(653,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(654,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(655,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(656,'101','VIEW',1),(657,'101','ADD_TO_PAGE',2),(658,'101','CONFIGURATION',4),(659,'101','PERMISSIONS',8),(660,'com.liferay.portlet.assetpublisher','ADD_PORTLET_DISPLAY_TEMPLATE',2),(661,'com.liferay.portlet.assetpublisher','PERMISSIONS',4),(662,'121','VIEW',1),(663,'121','ADD_TO_PAGE',2),(664,'121','CONFIGURATION',4),(665,'121','PERMISSIONS',8),(666,'49','VIEW',1),(667,'49','ADD_TO_PAGE',2),(668,'49','CONFIGURATION',4),(669,'49','PERMISSIONS',8),(670,'143','VIEW',1),(671,'143','ADD_TO_PAGE',2),(672,'143','CONFIGURATION',4),(673,'143','PERMISSIONS',8),(674,'167','ACCESS_IN_CONTROL_PANEL',2),(675,'167','ADD_TO_PAGE',4),(676,'167','CONFIGURATION',8),(677,'167','VIEW',1),(678,'167','PERMISSIONS',16),(679,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(680,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(681,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(682,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(683,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(684,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(685,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(686,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(687,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(688,'77','VIEW',1),(689,'77','ADD_TO_PAGE',2),(690,'77','CONFIGURATION',4),(691,'77','PERMISSIONS',8),(692,'115','VIEW',1),(693,'115','ADD_TO_PAGE',2),(694,'115','CONFIGURATION',4),(695,'115','PERMISSIONS',8),(696,'56','ADD_TO_PAGE',2),(697,'56','CONFIGURATION',4),(698,'56','VIEW',1),(699,'56','PERMISSIONS',8),(700,'142','VIEW',1),(701,'142','ADD_TO_PAGE',2),(702,'142','CONFIGURATION',4),(703,'142','PERMISSIONS',8),(704,'111','VIEW',1),(705,'111','ADD_TO_PAGE',2),(706,'111','CONFIGURATION',4),(707,'111','PERMISSIONS',8),(708,'16','PREFERENCES',2),(709,'16','GUEST_PREFERENCES',4),(710,'16','VIEW',1),(711,'16','ADD_TO_PAGE',8),(712,'16','CONFIGURATION',16),(713,'16','PERMISSIONS',32),(714,'3','VIEW',1),(715,'3','ADD_TO_PAGE',2),(716,'3','CONFIGURATION',4),(717,'3','PERMISSIONS',8),(718,'20','ACCESS_IN_CONTROL_PANEL',2),(719,'20','ADD_TO_PAGE',4),(720,'20','CONFIGURATION',8),(721,'20','VIEW',1),(722,'20','PERMISSIONS',16),(723,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(724,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(725,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(726,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(727,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(728,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(729,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(730,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(731,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(732,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(733,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(734,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(735,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(736,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(737,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(738,'com.liferay.portlet.documentlibrary','UPDATE',256),(739,'com.liferay.portlet.documentlibrary','VIEW',1),(740,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(741,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(742,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(743,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',16),(744,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',32),(745,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',64),(746,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(747,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','ADD_DISCUSSION',2),(748,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',4),(749,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE_DISCUSSION',8),(750,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',16),(751,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',32),(752,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE_DISCUSSION',64),(753,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(754,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(755,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(756,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(757,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(758,'23','VIEW',1),(759,'23','ADD_TO_PAGE',2),(760,'23','CONFIGURATION',4),(761,'23','PERMISSIONS',8),(762,'145','VIEW',1),(763,'145','ADD_TO_PAGE',2),(764,'145','CONFIGURATION',4),(765,'145','PERMISSIONS',8),(766,'83','ADD_ENTRY',2),(767,'83','ADD_TO_PAGE',4),(768,'83','CONFIGURATION',8),(769,'83','VIEW',1),(770,'83','PERMISSIONS',16),(771,'99','ACCESS_IN_CONTROL_PANEL',2),(772,'99','CONFIGURATION',4),(773,'99','VIEW',1),(774,'99','PERMISSIONS',8),(775,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(776,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(777,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(778,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(779,'70','VIEW',1),(780,'70','ADD_TO_PAGE',2),(781,'70','CONFIGURATION',4),(782,'70','PERMISSIONS',8),(783,'164','VIEW',1),(784,'164','ADD_TO_PAGE',2),(785,'164','CONFIGURATION',4),(786,'164','PERMISSIONS',8),(787,'141','VIEW',1),(788,'141','ADD_TO_PAGE',2),(789,'141','CONFIGURATION',4),(790,'141','PERMISSIONS',8),(791,'com.liferay.portlet.assettagsnavigation','ADD_PORTLET_DISPLAY_TEMPLATE',2),(792,'com.liferay.portlet.assettagsnavigation','PERMISSIONS',4),(793,'9','VIEW',1),(794,'9','ADD_TO_PAGE',2),(795,'9','CONFIGURATION',4),(796,'9','PERMISSIONS',8),(797,'137','ACCESS_IN_CONTROL_PANEL',2),(798,'137','CONFIGURATION',4),(799,'137','VIEW',1),(800,'137','PERMISSIONS',8),(801,'28','ACCESS_IN_CONTROL_PANEL',2),(802,'28','ADD_TO_PAGE',4),(803,'28','CONFIGURATION',8),(804,'28','VIEW',1),(805,'28','PERMISSIONS',16),(806,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(807,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(808,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(809,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(810,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(811,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',64),(812,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(813,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(814,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(815,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(816,'com.liferay.portlet.bookmarks','VIEW',1),(817,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(818,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(819,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',8),(820,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(821,'133','VIEW',1),(822,'133','ADD_TO_PAGE',2),(823,'133','CONFIGURATION',4),(824,'133','PERMISSIONS',8),(825,'116','VIEW',1),(826,'116','ADD_TO_PAGE',2),(827,'116','CONFIGURATION',4),(828,'116','PERMISSIONS',8),(829,'15','ACCESS_IN_CONTROL_PANEL',2),(830,'15','ADD_TO_PAGE',4),(831,'15','CONFIGURATION',8),(832,'15','VIEW',1),(833,'15','PERMISSIONS',16),(834,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(835,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(836,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(837,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(838,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(839,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(840,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(841,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(842,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(843,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(844,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(845,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(846,'com.liferay.portlet.journal','ADD_ARTICLE',2),(847,'com.liferay.portlet.journal','ADD_FEED',4),(848,'com.liferay.portlet.journal','ADD_FOLDER',8),(849,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(850,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(851,'com.liferay.portlet.journal','SUBSCRIBE',64),(852,'com.liferay.portlet.journal','VIEW',1),(853,'com.liferay.portlet.journal','PERMISSIONS',128),(854,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(855,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(856,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(857,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(858,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(859,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(860,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(861,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(862,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(863,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(864,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(865,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(866,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(867,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(868,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(869,'47','VIEW',1),(870,'47','ADD_TO_PAGE',2),(871,'47','CONFIGURATION',4),(872,'47','PERMISSIONS',8),(873,'82','VIEW',1),(874,'82','ADD_TO_PAGE',2),(875,'82','CONFIGURATION',4),(876,'82','PERMISSIONS',8),(877,'103','VIEW',1),(878,'103','ADD_TO_PAGE',2),(879,'103','CONFIGURATION',4),(880,'103','PERMISSIONS',8),(881,'151','ACCESS_IN_CONTROL_PANEL',2),(882,'151','CONFIGURATION',4),(883,'151','VIEW',1),(884,'151','PERMISSIONS',8),(885,'140','ACCESS_IN_CONTROL_PANEL',2),(886,'140','CONFIGURATION',4),(887,'140','VIEW',1),(888,'140','PERMISSIONS',8),(889,'54','VIEW',1),(890,'54','ADD_TO_PAGE',2),(891,'54','CONFIGURATION',4),(892,'54','PERMISSIONS',8),(893,'169','VIEW',1),(894,'169','ADD_TO_PAGE',2),(895,'169','CONFIGURATION',4),(896,'169','PERMISSIONS',8),(897,'132','ACCESS_IN_CONTROL_PANEL',2),(898,'132','CONFIGURATION',4),(899,'132','VIEW',1),(900,'132','PERMISSIONS',8),(901,'34','ADD_TO_PAGE',2),(902,'34','CONFIGURATION',4),(903,'34','VIEW',1),(904,'34','PERMISSIONS',8),(905,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(906,'com.liferay.portlet.shopping','ADD_ITEM',4),(907,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(908,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(909,'com.liferay.portlet.shopping','PERMISSIONS',32),(910,'com.liferay.portlet.shopping','VIEW',1),(911,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(912,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(913,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(914,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(915,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(916,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(917,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(918,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(919,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(920,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(921,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(922,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(923,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(924,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(925,'61','VIEW',1),(926,'61','ADD_TO_PAGE',2),(927,'61','CONFIGURATION',4),(928,'61','PERMISSIONS',8),(929,'73','ADD_TO_PAGE',2),(930,'73','CONFIGURATION',4),(931,'73','VIEW',1),(932,'73','PERMISSIONS',8),(933,'31','VIEW',1),(934,'31','ADD_TO_PAGE',2),(935,'31','CONFIGURATION',4),(936,'31','PERMISSIONS',8),(937,'165','VIEW',1),(938,'165','ADD_TO_PAGE',2),(939,'165','ACCESS_IN_CONTROL_PANEL',4),(940,'165','CONFIGURATION',8),(941,'165','PERMISSIONS',16),(942,'136','ACCESS_IN_CONTROL_PANEL',2),(943,'136','CONFIGURATION',4),(944,'136','VIEW',1),(945,'136','PERMISSIONS',8),(946,'127','VIEW',1),(947,'127','ADD_TO_PAGE',2),(948,'127','ACCESS_IN_CONTROL_PANEL',4),(949,'127','CONFIGURATION',8),(950,'127','PERMISSIONS',16),(951,'50','VIEW',1),(952,'50','ADD_TO_PAGE',2),(953,'50','CONFIGURATION',4),(954,'50','PERMISSIONS',8),(955,'25','ACCESS_IN_CONTROL_PANEL',2),(956,'25','CONFIGURATION',4),(957,'25','VIEW',1),(958,'25','PERMISSIONS',8),(959,'com.liferay.portlet.polls','ADD_QUESTION',2),(960,'com.liferay.portlet.polls','PERMISSIONS',4),(961,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(962,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(963,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(964,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(965,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(966,'166','ACCESS_IN_CONTROL_PANEL',2),(967,'166','ADD_TO_PAGE',4),(968,'166','CONFIGURATION',8),(969,'166','VIEW',1),(970,'166','PERMISSIONS',16),(971,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(972,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(973,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(974,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(975,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(976,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(977,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(978,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(979,'90','ADD_COMMUNITY',2),(980,'90','ADD_LAYOUT_PROTOTYPE',4),(981,'90','ADD_LAYOUT_SET_PROTOTYPE',8),(982,'90','ADD_LICENSE',16),(983,'90','ADD_ORGANIZATION',32),(984,'90','ADD_PASSWORD_POLICY',64),(985,'90','ADD_ROLE',128),(986,'90','ADD_USER',256),(987,'90','ADD_USER_GROUP',512),(988,'90','CONFIGURATION',1024),(989,'90','EXPORT_USER',2048),(990,'90','IMPERSONATE',4096),(991,'90','UNLINK_LAYOUT_SET_PROTOTYPE',8192),(992,'90','VIEW_CONTROL_PANEL',16384),(993,'90','ADD_TO_PAGE',32768),(994,'90','PERMISSIONS',65536),(995,'90','VIEW',1),(996,'150','ACCESS_IN_CONTROL_PANEL',2),(997,'150','CONFIGURATION',4),(998,'150','VIEW',1),(999,'150','PERMISSIONS',8),(1000,'113','VIEW',1),(1001,'113','ADD_TO_PAGE',2),(1002,'113','CONFIGURATION',4),(1003,'113','PERMISSIONS',8),(1004,'33','ADD_TO_PAGE',2),(1005,'33','CONFIGURATION',4),(1006,'33','VIEW',1),(1007,'33','PERMISSIONS',8),(1008,'com.liferay.portlet.blogs','ADD_ENTRY',2),(1009,'com.liferay.portlet.blogs','ADD_PORTLET_DISPLAY_TEMPLATE',4),(1010,'com.liferay.portlet.blogs','PERMISSIONS',8),(1011,'com.liferay.portlet.blogs','SUBSCRIBE',16),(1012,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(1013,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(1014,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(1015,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(1016,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(1017,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(1018,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(1019,'2','ACCESS_IN_CONTROL_PANEL',2),(1020,'2','CONFIGURATION',4),(1021,'2','VIEW',1),(1022,'2','PERMISSIONS',8),(1023,'119','VIEW',1),(1024,'119','ADD_TO_PAGE',2),(1025,'119','CONFIGURATION',4),(1026,'119','PERMISSIONS',8),(1027,'114','VIEW',1),(1028,'114','ADD_TO_PAGE',2),(1029,'114','CONFIGURATION',4),(1030,'114','PERMISSIONS',8),(1031,'149','ACCESS_IN_CONTROL_PANEL',2),(1032,'149','CONFIGURATION',4),(1033,'149','VIEW',1),(1034,'149','PERMISSIONS',8),(1035,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(1036,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(1037,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(1038,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(1039,'67','VIEW',1),(1040,'67','ADD_TO_PAGE',2),(1041,'67','CONFIGURATION',4),(1042,'67','PERMISSIONS',8),(1043,'110','VIEW',1),(1044,'110','ADD_TO_PAGE',2),(1045,'110','CONFIGURATION',4),(1046,'110','PERMISSIONS',8),(1047,'135','ACCESS_IN_CONTROL_PANEL',2),(1048,'135','CONFIGURATION',4),(1049,'135','VIEW',1),(1050,'135','PERMISSIONS',8),(1051,'59','VIEW',1),(1052,'59','ADD_TO_PAGE',2),(1053,'59','CONFIGURATION',4),(1054,'59','PERMISSIONS',8),(1055,'131','ACCESS_IN_CONTROL_PANEL',2),(1056,'131','CONFIGURATION',4),(1057,'131','VIEW',1),(1058,'131','PERMISSIONS',8),(1059,'102','VIEW',1),(1060,'102','ADD_TO_PAGE',2),(1061,'102','CONFIGURATION',4),(1062,'102','PERMISSIONS',8);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
INSERT INTO `ResourceBlock` VALUES (3,10152,10190,'com.liferay.calendar.model.Calendar','c0cf6ff4e37e167a4173d58cd29d94527f813093',2),(6,10152,10190,'com.liferay.calendar.model.CalendarResource','e5bfd9e2375c63480aebf8491d645fdd953100a4',2),(13,10152,10612,'com.liferay.calendar.model.Calendar','0ba0de1ccdfedfd725342cc30d6877637736cf4d',4),(16,10152,10612,'com.liferay.calendar.model.CalendarResource','02dac573194a0cf40a2fcfb726f103d7cff3fdf4',4);
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlockPermission`
--

LOCK TABLES `ResourceBlockPermission` WRITE;
/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
INSERT INTO `ResourceBlockPermission` VALUES (10688,1,10161,63),(10689,2,10161,63),(10690,2,10163,1),(10691,3,10160,1),(10692,3,10161,63),(10693,3,10163,1),(10694,4,10161,31),(10695,5,10161,31),(10696,5,10163,9),(10697,6,10160,1),(10698,6,10161,31),(10699,6,10163,9),(10702,7,10161,63),(10703,8,10161,63),(10704,8,10163,1),(10705,9,10161,31),(10706,10,10161,31),(10707,10,10163,9),(10711,11,10161,63),(10712,12,10161,63),(10713,12,10168,1),(10714,13,10160,1),(10715,13,10161,63),(10716,13,10168,1),(10717,14,10161,31),(10718,15,10161,31),(10719,15,10168,9),(10720,16,10160,1),(10721,16,10161,31),(10722,16,10168,9),(10725,17,10161,63),(10726,18,10161,63),(10727,18,10168,1),(10728,19,10161,31),(10729,20,10161,31),(10730,20,10168,9),(10733,21,10161,63),(10734,22,10161,63),(10735,22,10168,1),(10736,23,10161,31),(10737,24,10161,31),(10738,24,10168,9),(10741,25,10161,63),(10742,26,10161,63),(10743,26,10168,1),(10744,27,10161,31),(10745,28,10161,31),(10746,28,10168,9);
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  KEY `IX_88705859` (`companyId`,`name`,`primKey`,`ownerId`),
  KEY `IX_C94C7708` (`companyId`,`name`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_D2E2B644` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_4A1F4402` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourcePermission`
--

LOCK TABLES `ResourcePermission` WRITE;
/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` VALUES (171,10152,'100',1,'10152',10162,0,2),(172,10152,'100',1,'10152',10163,0,2),(31,10152,'100',2,'10187',10163,0,1),(221,10152,'101',1,'10152',10160,0,2),(222,10152,'101',1,'10152',10162,0,2),(223,10152,'101',1,'10152',10163,0,2),(62,10152,'101',2,'10187',10163,0,1),(353,10152,'101',4,'10323_LAYOUT_101_INSTANCE_eJx5alsU9jKx',10160,0,1),(351,10152,'101',4,'10323_LAYOUT_101_INSTANCE_eJx5alsU9jKx',10161,0,15),(352,10152,'101',4,'10323_LAYOUT_101_INSTANCE_eJx5alsU9jKx',10168,0,1),(308,10152,'102',1,'10152',10160,0,2),(309,10152,'102',1,'10152',10162,0,2),(310,10152,'102',1,'10152',10163,0,2),(108,10152,'102',2,'10187',10163,0,1),(157,10152,'104',1,'10152',10159,0,2),(23,10152,'104',2,'10187',10163,0,1),(208,10152,'107',1,'10152',10162,0,2),(209,10152,'107',1,'10152',10163,0,2),(50,10152,'107',2,'10187',10163,0,1),(217,10152,'108',1,'10152',10162,0,2),(218,10152,'108',1,'10152',10163,0,2),(60,10152,'108',2,'10187',10163,0,1),(181,10152,'11',1,'10152',10162,0,2),(182,10152,'11',1,'10152',10163,0,2),(38,10152,'11',2,'10187',10163,0,1),(304,10152,'110',1,'10152',10162,0,2),(305,10152,'110',1,'10152',10163,0,2),(104,10152,'110',2,'10187',10163,0,1),(243,10152,'111',1,'10152',10159,0,2),(70,10152,'111',2,'10187',10163,0,1),(299,10152,'114',1,'10152',10160,0,2),(300,10152,'114',1,'10152',10162,0,2),(301,10152,'114',1,'10152',10163,0,2),(101,10152,'114',2,'10187',10163,0,1),(336,10152,'114',4,'10313_LAYOUT_114',10160,0,1),(334,10152,'114',4,'10313_LAYOUT_114',10161,0,15),(335,10152,'114',4,'10313_LAYOUT_114',10168,0,1),(235,10152,'115',1,'10152',10160,0,2),(236,10152,'115',1,'10152',10162,0,2),(237,10152,'115',1,'10152',10163,0,2),(67,10152,'115',2,'10187',10163,0,1),(529,10152,'115',4,'10490_LAYOUT_115',10160,0,1),(527,10152,'115',4,'10490_LAYOUT_115',10161,0,15),(528,10152,'115',4,'10490_LAYOUT_115',10168,0,1),(739,10152,'115',4,'10645_LAYOUT_115',10160,0,1),(740,10152,'115',4,'10645_LAYOUT_115',10161,0,15),(741,10152,'115',4,'10645_LAYOUT_115',10168,0,1),(270,10152,'116',1,'10152',10160,0,2),(271,10152,'116',1,'10152',10162,0,2),(272,10152,'116',1,'10152',10163,0,2),(84,10152,'116',2,'10187',10163,0,1),(205,10152,'118',1,'10152',10160,0,2),(206,10152,'118',1,'10152',10162,0,2),(207,10152,'118',1,'10152',10163,0,2),(49,10152,'118',2,'10187',10163,0,1),(224,10152,'121',1,'10152',10160,0,2),(225,10152,'121',1,'10152',10162,0,2),(226,10152,'121',1,'10152',10163,0,2),(63,10152,'121',2,'10187',10163,0,1),(150,10152,'122',1,'10152',10160,0,2),(151,10152,'122',1,'10152',10162,0,2),(152,10152,'122',1,'10152',10163,0,2),(20,10152,'122',2,'10187',10163,0,1),(346,10152,'122',4,'10323_LAYOUT_122_INSTANCE_OKnU9Q9ATI3E',10160,0,1),(344,10152,'122',4,'10323_LAYOUT_122_INSTANCE_OKnU9Q9ATI3E',10161,0,15),(345,10152,'122',4,'10323_LAYOUT_122_INSTANCE_OKnU9Q9ATI3E',10168,0,1),(364,10152,'122',4,'10332_LAYOUT_122_INSTANCE_uooVbRGNC3cW',10160,0,1),(362,10152,'122',4,'10332_LAYOUT_122_INSTANCE_uooVbRGNC3cW',10161,0,15),(363,10152,'122',4,'10332_LAYOUT_122_INSTANCE_uooVbRGNC3cW',10168,0,1),(54,10152,'125',2,'10187',10163,0,1),(293,10152,'127',1,'10152',10159,0,2),(96,10152,'127',2,'10187',10163,0,1),(34,10152,'128',2,'10187',10163,0,1),(753,10152,'128',4,'10173_LAYOUT_128',10160,0,1),(751,10152,'128',4,'10173_LAYOUT_128',10161,0,15),(752,10152,'128',4,'10173_LAYOUT_128',10168,0,1),(27,10152,'129',2,'10187',10163,0,1),(19,10152,'130',2,'10187',10163,0,1),(107,10152,'131',2,'10187',10163,0,1),(90,10152,'132',2,'10187',10163,0,1),(18,10152,'134',2,'10187',10163,0,1),(669,10152,'134',4,'10173_LAYOUT_134',10160,0,1),(667,10152,'134',4,'10173_LAYOUT_134',10161,0,15),(668,10152,'134',4,'10173_LAYOUT_134',10168,0,1),(106,10152,'135',2,'10187',10163,0,1),(94,10152,'136',2,'10187',10163,0,1),(81,10152,'137',2,'10187',10163,0,1),(2,10152,'140',1,'10152',10163,0,2),(259,10152,'141',1,'10152',10160,0,2),(260,10152,'141',1,'10152',10162,0,2),(261,10152,'141',1,'10152',10163,0,2),(78,10152,'141',2,'10187',10163,0,1),(342,10152,'141',4,'10323_LAYOUT_141_INSTANCE_qM1nJkjlOEuX',10160,0,1),(340,10152,'141',4,'10323_LAYOUT_141_INSTANCE_qM1nJkjlOEuX',10161,0,15),(341,10152,'141',4,'10323_LAYOUT_141_INSTANCE_qM1nJkjlOEuX',10168,0,1),(368,10152,'141',4,'10332_LAYOUT_141_INSTANCE_t74moQzmiCqp',10160,0,1),(366,10152,'141',4,'10332_LAYOUT_141_INSTANCE_t74moQzmiCqp',10161,0,15),(367,10152,'141',4,'10332_LAYOUT_141_INSTANCE_t74moQzmiCqp',10168,0,1),(227,10152,'143',1,'10152',10160,0,2),(228,10152,'143',1,'10152',10162,0,2),(229,10152,'143',1,'10152',10163,0,2),(64,10152,'143',2,'10187',10163,0,1),(663,10152,'145',4,'10173_LAYOUT_145',10160,0,1),(661,10152,'145',4,'10173_LAYOUT_145',10161,0,15),(662,10152,'145',4,'10173_LAYOUT_145',10168,0,1),(651,10152,'145',4,'10181_LAYOUT_145',10160,0,1),(649,10152,'145',4,'10181_LAYOUT_145',10161,0,15),(650,10152,'145',4,'10181_LAYOUT_145',10168,0,1),(767,10152,'145',4,'10641_LAYOUT_145',10160,0,1),(765,10152,'145',4,'10641_LAYOUT_145',10161,0,15),(766,10152,'145',4,'10641_LAYOUT_145',10168,0,1),(779,10152,'145',4,'10677_LAYOUT_145',10160,0,1),(777,10152,'145',4,'10677_LAYOUT_145',10161,0,15),(778,10152,'145',4,'10677_LAYOUT_145',10168,0,1),(56,10152,'146',2,'10187',10163,0,1),(121,10152,'147',2,'10187',10162,0,2),(52,10152,'147',2,'10187',10163,0,1),(178,10152,'148',1,'10152',10160,0,2),(179,10152,'148',1,'10152',10162,0,2),(180,10152,'148',1,'10152',10163,0,2),(37,10152,'148',2,'10187',10163,0,1),(333,10152,'148',4,'10313_LAYOUT_148_INSTANCE_QUny7WWN03wJ',10160,0,1),(331,10152,'148',4,'10313_LAYOUT_148_INSTANCE_QUny7WWN03wJ',10161,0,15),(332,10152,'148',4,'10313_LAYOUT_148_INSTANCE_QUny7WWN03wJ',10168,0,1),(102,10152,'149',2,'10187',10163,0,1),(268,10152,'15',1,'10152',10162,0,4),(269,10152,'15',1,'10152',10163,0,4),(128,10152,'15',2,'10187',10162,0,2),(83,10152,'15',2,'10187',10163,0,1),(100,10152,'150',2,'10187',10163,0,1),(86,10152,'151',2,'10187',10163,0,1),(113,10152,'152',2,'10187',10162,0,2),(16,10152,'152',2,'10187',10163,0,1),(161,10152,'153',1,'10152',10162,0,4),(4,10152,'153',1,'10152',10163,0,2),(25,10152,'153',2,'10187',10163,0,1),(118,10152,'154',2,'10187',10162,0,2),(36,10152,'154',2,'10187',10163,0,1),(758,10152,'156',4,'10173_LAYOUT_156',10160,0,1),(756,10152,'156',4,'10173_LAYOUT_156',10161,0,31),(757,10152,'156',4,'10173_LAYOUT_156',10168,0,1),(33,10152,'157',2,'10187',10163,0,1),(185,10152,'158',1,'10152',10162,0,4),(3,10152,'158',1,'10152',10163,0,2),(40,10152,'158',2,'10187',10163,0,1),(241,10152,'16',1,'10152',10162,0,8),(242,10152,'16',1,'10152',10163,0,8),(69,10152,'16',2,'10187',10163,0,1),(660,10152,'160',4,'10173_LAYOUT_160',10160,0,1),(658,10152,'160',4,'10173_LAYOUT_160',10161,0,15),(659,10152,'160',4,'10173_LAYOUT_160',10168,0,1),(122,10152,'161',2,'10187',10162,0,2),(55,10152,'161',2,'10187',10163,0,1),(123,10152,'162',2,'10187',10162,0,2),(58,10152,'162',2,'10187',10163,0,1),(254,10152,'164',1,'10152',10160,0,2),(255,10152,'164',1,'10152',10162,0,2),(256,10152,'164',1,'10152',10163,0,2),(75,10152,'164',2,'10187',10163,0,1),(666,10152,'165',4,'10173_LAYOUT_165',10160,0,1),(664,10152,'165',4,'10173_LAYOUT_165',10161,0,31),(665,10152,'165',4,'10173_LAYOUT_165',10168,0,1),(294,10152,'166',1,'10152',10162,0,4),(295,10152,'166',1,'10152',10163,0,4),(98,10152,'166',2,'10187',10163,0,1),(233,10152,'167',1,'10152',10162,0,4),(234,10152,'167',1,'10152',10163,0,4),(124,10152,'167',2,'10187',10162,0,2),(66,10152,'167',2,'10187',10163,0,1),(280,10152,'169',1,'10152',10162,0,2),(281,10152,'169',1,'10152',10163,0,2),(89,10152,'169',2,'10187',10163,0,1),(168,10152,'173',1,'10152',10160,0,2),(169,10152,'173',1,'10152',10162,0,2),(170,10152,'173',1,'10152',10163,0,2),(117,10152,'173',2,'10187',10162,0,4),(30,10152,'173',2,'10187',10163,0,1),(158,10152,'175',1,'10152',10160,0,2),(159,10152,'175',1,'10152',10162,0,2),(160,10152,'175',1,'10152',10163,0,2),(24,10152,'175',2,'10187',10163,0,1),(216,10152,'176',1,'10152',10159,0,2),(59,10152,'176',2,'10187',10163,0,1),(200,10152,'177',1,'10152',10162,0,4),(201,10152,'177',1,'10152',10163,0,4),(47,10152,'177',2,'10187',10163,0,1),(186,10152,'178',1,'10152',10162,0,2),(187,10152,'178',1,'10152',10163,0,2),(119,10152,'178',2,'10187',10162,0,4),(41,10152,'178',2,'10187',10163,0,1),(167,10152,'179',1,'10152',10159,0,2),(116,10152,'179',2,'10187',10162,0,4),(29,10152,'179',2,'10187',10163,0,1),(144,10152,'180',1,'10152',10160,0,2),(145,10152,'180',1,'10152',10162,0,2),(146,10152,'180',1,'10152',10163,0,2),(14,10152,'180',2,'10187',10163,0,1),(175,10152,'181',1,'10152',10160,0,2),(176,10152,'181',1,'10152',10162,0,2),(177,10152,'181',1,'10152',10163,0,2),(35,10152,'181',2,'10187',10163,0,1),(165,10152,'182',1,'10152',10162,0,2),(166,10152,'182',1,'10152',10163,0,2),(115,10152,'182',2,'10187',10162,0,4),(28,10152,'182',2,'10187',10163,0,1),(149,10152,'183',1,'10152',10159,0,2),(114,10152,'183',2,'10187',10162,0,4),(17,10152,'183',2,'10187',10163,0,1),(173,10152,'19',1,'10152',10162,0,2),(174,10152,'19',1,'10152',10163,0,2),(32,10152,'19',2,'10187',10163,0,1),(519,10152,'19',4,'10482_LAYOUT_19',10160,0,1),(517,10152,'19',4,'10482_LAYOUT_19',10161,0,15),(518,10152,'19',4,'10482_LAYOUT_19',10168,0,1),(733,10152,'19',4,'10644_LAYOUT_19',10160,0,1),(734,10152,'19',4,'10644_LAYOUT_19',10161,0,15),(735,10152,'19',4,'10644_LAYOUT_19',10168,0,1),(785,10152,'1_WAR_calendarportlet',4,'10677_LAYOUT_1_WAR_calendarportlet',10160,0,1),(783,10152,'1_WAR_calendarportlet',4,'10677_LAYOUT_1_WAR_calendarportlet',10161,0,31),(784,10152,'1_WAR_calendarportlet',4,'10677_LAYOUT_1_WAR_calendarportlet',10168,0,1),(420,10152,'1_WAR_contactsportlet',1,'10152',10159,0,4),(421,10152,'1_WAR_contactsportlet',1,'10152',10160,0,4),(422,10152,'1_WAR_contactsportlet',1,'10152',10162,0,4),(423,10152,'1_WAR_contactsportlet',1,'10152',10163,0,4),(572,10152,'1_WAR_contactsportlet',4,'10530_LAYOUT_1_WAR_contactsportlet',10160,0,1),(570,10152,'1_WAR_contactsportlet',4,'10530_LAYOUT_1_WAR_contactsportlet',10161,0,31),(571,10152,'1_WAR_contactsportlet',4,'10530_LAYOUT_1_WAR_contactsportlet',10168,0,1),(633,10152,'1_WAR_contactsportlet',4,'10580_LAYOUT_1_WAR_contactsportlet',10160,0,1),(631,10152,'1_WAR_contactsportlet',4,'10580_LAYOUT_1_WAR_contactsportlet',10161,0,31),(632,10152,'1_WAR_contactsportlet',4,'10580_LAYOUT_1_WAR_contactsportlet',10168,0,1),(424,10152,'1_WAR_eventsdisplayportlet',1,'10152',10159,0,2),(425,10152,'1_WAR_eventsdisplayportlet',1,'10152',10160,0,2),(426,10152,'1_WAR_eventsdisplayportlet',1,'10152',10162,0,2),(427,10152,'1_WAR_eventsdisplayportlet',1,'10152',10163,0,2),(495,10152,'1_WAR_eventsdisplayportlet',4,'10461_LAYOUT_1_WAR_eventsdisplayportlet',10160,0,1),(493,10152,'1_WAR_eventsdisplayportlet',4,'10461_LAYOUT_1_WAR_eventsdisplayportlet',10161,0,15),(494,10152,'1_WAR_eventsdisplayportlet',4,'10461_LAYOUT_1_WAR_eventsdisplayportlet',10168,0,1),(566,10152,'1_WAR_eventsdisplayportlet',4,'10523_LAYOUT_1_WAR_eventsdisplayportlet',10160,0,1),(564,10152,'1_WAR_eventsdisplayportlet',4,'10523_LAYOUT_1_WAR_eventsdisplayportlet',10161,0,15),(565,10152,'1_WAR_eventsdisplayportlet',4,'10523_LAYOUT_1_WAR_eventsdisplayportlet',10168,0,1),(721,10152,'1_WAR_eventsdisplayportlet',4,'10641_LAYOUT_1_WAR_eventsdisplayportlet',10160,0,1),(722,10152,'1_WAR_eventsdisplayportlet',4,'10641_LAYOUT_1_WAR_eventsdisplayportlet',10161,0,15),(723,10152,'1_WAR_eventsdisplayportlet',4,'10641_LAYOUT_1_WAR_eventsdisplayportlet',10168,0,1),(432,10152,'1_WAR_microblogsportlet',1,'10152',10159,0,2),(433,10152,'1_WAR_microblogsportlet',1,'10152',10160,0,2),(434,10152,'1_WAR_microblogsportlet',1,'10152',10162,0,2),(435,10152,'1_WAR_microblogsportlet',1,'10152',10163,0,2),(579,10152,'1_WAR_microblogsportlet',4,'10536_LAYOUT_1_WAR_microblogsportlet',10160,0,1),(577,10152,'1_WAR_microblogsportlet',4,'10536_LAYOUT_1_WAR_microblogsportlet',10161,0,15),(578,10152,'1_WAR_microblogsportlet',4,'10536_LAYOUT_1_WAR_microblogsportlet',10168,0,1),(643,10152,'1_WAR_microblogsportlet',4,'10587_LAYOUT_1_WAR_microblogsportlet',10160,0,1),(641,10152,'1_WAR_microblogsportlet',4,'10587_LAYOUT_1_WAR_microblogsportlet',10161,0,15),(642,10152,'1_WAR_microblogsportlet',4,'10587_LAYOUT_1_WAR_microblogsportlet',10168,0,1),(436,10152,'1_WAR_privatemessagingportlet',1,'10152',10159,0,2),(437,10152,'1_WAR_privatemessagingportlet',1,'10152',10160,0,2),(438,10152,'1_WAR_privatemessagingportlet',1,'10152',10162,0,2),(439,10152,'1_WAR_privatemessagingportlet',1,'10152',10163,0,2),(586,10152,'1_WAR_privatemessagingportlet',4,'10542_LAYOUT_1_WAR_privatemessagingportlet',10160,0,1),(584,10152,'1_WAR_privatemessagingportlet',4,'10542_LAYOUT_1_WAR_privatemessagingportlet',10161,0,15),(585,10152,'1_WAR_privatemessagingportlet',4,'10542_LAYOUT_1_WAR_privatemessagingportlet',10168,0,1),(444,10152,'1_WAR_soportlet',1,'10152',10159,0,2),(445,10152,'1_WAR_soportlet',1,'10152',10160,0,2),(446,10152,'1_WAR_soportlet',1,'10152',10162,0,2),(447,10152,'1_WAR_soportlet',1,'10152',10163,0,2),(480,10152,'1_WAR_soportlet',4,'10461_LAYOUT_1_WAR_soportlet',10160,0,1),(478,10152,'1_WAR_soportlet',4,'10461_LAYOUT_1_WAR_soportlet',10161,0,15),(479,10152,'1_WAR_soportlet',4,'10461_LAYOUT_1_WAR_soportlet',10168,0,1),(560,10152,'1_WAR_soportlet',4,'10523_LAYOUT_1_WAR_soportlet',10160,0,1),(558,10152,'1_WAR_soportlet',4,'10523_LAYOUT_1_WAR_soportlet',10161,0,15),(559,10152,'1_WAR_soportlet',4,'10523_LAYOUT_1_WAR_soportlet',10168,0,1),(620,10152,'1_WAR_soportlet',4,'10571_LAYOUT_1_WAR_soportlet',10160,0,1),(618,10152,'1_WAR_soportlet',4,'10571_LAYOUT_1_WAR_soportlet',10161,0,15),(619,10152,'1_WAR_soportlet',4,'10571_LAYOUT_1_WAR_soportlet',10168,0,1),(709,10152,'1_WAR_soportlet',4,'10641_LAYOUT_1_WAR_soportlet',10160,0,1),(710,10152,'1_WAR_soportlet',4,'10641_LAYOUT_1_WAR_soportlet',10161,0,15),(711,10152,'1_WAR_soportlet',4,'10641_LAYOUT_1_WAR_soportlet',10168,0,1),(448,10152,'1_WAR_tasksportlet',1,'10152',10159,0,2),(449,10152,'1_WAR_tasksportlet',1,'10152',10160,0,2),(450,10152,'1_WAR_tasksportlet',1,'10152',10162,0,2),(451,10152,'1_WAR_tasksportlet',1,'10152',10163,0,2),(600,10152,'1_WAR_tasksportlet',4,'10554_LAYOUT_1_WAR_tasksportlet',10160,0,1),(598,10152,'1_WAR_tasksportlet',4,'10554_LAYOUT_1_WAR_tasksportlet',10161,0,15),(599,10152,'1_WAR_tasksportlet',4,'10554_LAYOUT_1_WAR_tasksportlet',10168,0,1),(456,10152,'1_WAR_wysiwygportlet',1,'10152',10159,0,2),(457,10152,'1_WAR_wysiwygportlet',1,'10152',10160,0,2),(458,10152,'1_WAR_wysiwygportlet',1,'10152',10162,0,2),(459,10152,'1_WAR_wysiwygportlet',1,'10152',10163,0,2),(483,10152,'1_WAR_wysiwygportlet',4,'10461_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10160,0,1),(481,10152,'1_WAR_wysiwygportlet',4,'10461_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10161,0,15),(482,10152,'1_WAR_wysiwygportlet',4,'10461_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10168,0,1),(712,10152,'1_WAR_wysiwygportlet',4,'10641_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10160,0,1),(713,10152,'1_WAR_wysiwygportlet',4,'10641_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10161,0,15),(714,10152,'1_WAR_wysiwygportlet',4,'10641_LAYOUT_1_WAR_wysiwygportlet_INSTANCE_abcd',10168,0,1),(1,10152,'2',1,'10152',10163,0,2),(249,10152,'20',1,'10152',10160,0,4),(250,10152,'20',1,'10152',10162,0,4),(251,10152,'20',1,'10152',10163,0,4),(125,10152,'20',2,'10187',10162,0,2),(73,10152,'20',2,'10187',10163,0,1),(509,10152,'20',4,'10475_LAYOUT_20',10160,0,1),(507,10152,'20',4,'10475_LAYOUT_20',10161,0,31),(508,10152,'20',4,'10475_LAYOUT_20',10168,0,1),(593,10152,'20',4,'10548_LAYOUT_20',10160,0,1),(591,10152,'20',4,'10548_LAYOUT_20',10161,0,31),(592,10152,'20',4,'10548_LAYOUT_20',10168,0,1),(727,10152,'20',4,'10643_LAYOUT_20',10160,0,1),(728,10152,'20',4,'10643_LAYOUT_20',10161,0,31),(729,10152,'20',4,'10643_LAYOUT_20',10168,0,1),(247,10152,'23',1,'10152',10162,0,2),(248,10152,'23',1,'10152',10163,0,2),(72,10152,'23',2,'10187',10163,0,1),(129,10152,'25',2,'10187',10162,0,2),(97,10152,'25',2,'10187',10163,0,1),(155,10152,'26',1,'10152',10162,0,2),(156,10152,'26',1,'10152',10163,0,2),(22,10152,'26',2,'10187',10163,0,1),(147,10152,'27',1,'10152',10162,0,2),(148,10152,'27',1,'10152',10163,0,2),(15,10152,'27',2,'10187',10163,0,1),(263,10152,'28',1,'10152',10162,0,4),(264,10152,'28',1,'10152',10163,0,4),(127,10152,'28',2,'10187',10162,0,2),(80,10152,'28',2,'10187',10163,0,1),(486,10152,'28',4,'10461_LAYOUT_28',10160,0,1),(484,10152,'28',4,'10461_LAYOUT_28',10161,0,31),(485,10152,'28',4,'10461_LAYOUT_28',10168,0,1),(703,10152,'28',4,'10641_LAYOUT_28',10160,0,1),(704,10152,'28',4,'10641_LAYOUT_28',10161,0,31),(705,10152,'28',4,'10641_LAYOUT_28',10168,0,1),(183,10152,'29',1,'10152',10162,0,2),(184,10152,'29',1,'10152',10163,0,2),(39,10152,'29',2,'10187',10163,0,1),(416,10152,'2_WAR_contactsportlet',1,'10152',10159,0,2),(417,10152,'2_WAR_contactsportlet',1,'10152',10160,0,2),(418,10152,'2_WAR_contactsportlet',1,'10152',10162,0,2),(419,10152,'2_WAR_contactsportlet',1,'10152',10163,0,2),(611,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10160,0,1),(609,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10161,0,15),(610,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10168,0,1),(617,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_efgh',10160,0,1),(615,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_efgh',10161,0,15),(616,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_efgh',10168,0,1),(623,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_ijkl',10160,0,1),(621,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_ijkl',10161,0,15),(622,10152,'2_WAR_contactsportlet',4,'10571_LAYOUT_2_WAR_contactsportlet_INSTANCE_ijkl',10168,0,1),(630,10152,'2_WAR_contactsportlet',4,'10580_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10160,0,1),(628,10152,'2_WAR_contactsportlet',4,'10580_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10161,0,15),(629,10152,'2_WAR_contactsportlet',4,'10580_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10168,0,1),(640,10152,'2_WAR_contactsportlet',4,'10587_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10160,0,1),(638,10152,'2_WAR_contactsportlet',4,'10587_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10161,0,15),(639,10152,'2_WAR_contactsportlet',4,'10587_LAYOUT_2_WAR_contactsportlet_INSTANCE_abcd',10168,0,1),(428,10152,'2_WAR_microblogsportlet',1,'10152',10159,0,2),(429,10152,'2_WAR_microblogsportlet',1,'10152',10160,0,2),(430,10152,'2_WAR_microblogsportlet',1,'10152',10162,0,2),(431,10152,'2_WAR_microblogsportlet',1,'10152',10163,0,2),(557,10152,'2_WAR_microblogsportlet',4,'10523_LAYOUT_2_WAR_microblogsportlet',10160,0,1),(555,10152,'2_WAR_microblogsportlet',4,'10523_LAYOUT_2_WAR_microblogsportlet',10161,0,15),(556,10152,'2_WAR_microblogsportlet',4,'10523_LAYOUT_2_WAR_microblogsportlet',10168,0,1),(614,10152,'2_WAR_microblogsportlet',4,'10571_LAYOUT_2_WAR_microblogsportlet',10160,0,1),(612,10152,'2_WAR_microblogsportlet',4,'10571_LAYOUT_2_WAR_microblogsportlet',10161,0,15),(613,10152,'2_WAR_microblogsportlet',4,'10571_LAYOUT_2_WAR_microblogsportlet',10168,0,1),(543,10152,'2_WAR_soportlet',4,'10505_LAYOUT_2_WAR_soportlet',10160,0,1),(541,10152,'2_WAR_soportlet',4,'10505_LAYOUT_2_WAR_soportlet',10161,0,15),(542,10152,'2_WAR_soportlet',4,'10505_LAYOUT_2_WAR_soportlet',10168,0,1),(745,10152,'2_WAR_soportlet',4,'10647_LAYOUT_2_WAR_soportlet',10160,0,1),(746,10152,'2_WAR_soportlet',4,'10647_LAYOUT_2_WAR_soportlet',10161,0,15),(747,10152,'2_WAR_soportlet',4,'10647_LAYOUT_2_WAR_soportlet',10168,0,1),(452,10152,'2_WAR_tasksportlet',1,'10152',10159,0,2),(453,10152,'2_WAR_tasksportlet',1,'10152',10160,0,2),(454,10152,'2_WAR_tasksportlet',1,'10152',10162,0,2),(455,10152,'2_WAR_tasksportlet',1,'10152',10163,0,2),(563,10152,'2_WAR_tasksportlet',4,'10523_LAYOUT_2_WAR_tasksportlet',10160,0,1),(561,10152,'2_WAR_tasksportlet',4,'10523_LAYOUT_2_WAR_tasksportlet',10161,0,15),(562,10152,'2_WAR_tasksportlet',4,'10523_LAYOUT_2_WAR_tasksportlet',10168,0,1),(244,10152,'3',1,'10152',10160,0,2),(245,10152,'3',1,'10152',10162,0,2),(246,10152,'3',1,'10152',10163,0,2),(71,10152,'3',2,'10187',10163,0,1),(350,10152,'3',4,'10323_LAYOUT_3',10160,0,1),(348,10152,'3',4,'10323_LAYOUT_3',10161,0,15),(349,10152,'3',4,'10323_LAYOUT_3',10168,0,1),(210,10152,'30',1,'10152',10162,0,2),(211,10152,'30',1,'10152',10163,0,2),(51,10152,'30',2,'10187',10163,0,1),(287,10152,'31',1,'10152',10160,0,2),(288,10152,'31',1,'10152',10162,0,2),(289,10152,'31',1,'10152',10163,0,2),(93,10152,'31',2,'10187',10163,0,1),(296,10152,'33',1,'10152',10160,0,2),(297,10152,'33',1,'10152',10162,0,2),(298,10152,'33',1,'10152',10163,0,2),(99,10152,'33',2,'10187',10163,0,1),(329,10152,'33',4,'10313_LAYOUT_33',10160,0,1),(327,10152,'33',4,'10313_LAYOUT_33',10161,0,15),(328,10152,'33',4,'10313_LAYOUT_33',10168,0,1),(526,10152,'33',4,'10490_LAYOUT_33',10160,0,1),(524,10152,'33',4,'10490_LAYOUT_33',10161,0,15),(525,10152,'33',4,'10490_LAYOUT_33',10168,0,1),(736,10152,'33',4,'10645_LAYOUT_33',10160,0,1),(737,10152,'33',4,'10645_LAYOUT_33',10161,0,15),(738,10152,'33',4,'10645_LAYOUT_33',10168,0,1),(278,10152,'34',1,'10152',10162,0,2),(279,10152,'34',1,'10152',10163,0,2),(88,10152,'34',2,'10187',10163,0,1),(153,10152,'36',1,'10152',10162,0,2),(154,10152,'36',1,'10152',10163,0,2),(21,10152,'36',2,'10187',10163,0,1),(360,10152,'36',4,'10332_LAYOUT_36',10160,0,1),(358,10152,'36',4,'10332_LAYOUT_36',10161,0,15),(359,10152,'36',4,'10332_LAYOUT_36',10168,0,1),(536,10152,'36',4,'10498_LAYOUT_36',10160,0,1),(534,10152,'36',4,'10498_LAYOUT_36',10161,0,15),(535,10152,'36',4,'10498_LAYOUT_36',10168,0,1),(742,10152,'36',4,'10646_LAYOUT_36',10160,0,1),(743,10152,'36',4,'10646_LAYOUT_36',10161,0,15),(744,10152,'36',4,'10646_LAYOUT_36',10168,0,1),(198,10152,'39',1,'10152',10162,0,2),(199,10152,'39',1,'10152',10163,0,2),(46,10152,'39',2,'10187',10163,0,1),(489,10152,'39',4,'10461_LAYOUT_39_INSTANCE_abcd',10160,0,1),(487,10152,'39',4,'10461_LAYOUT_39_INSTANCE_abcd',10161,0,15),(488,10152,'39',4,'10461_LAYOUT_39_INSTANCE_abcd',10168,0,1),(715,10152,'39',4,'10641_LAYOUT_39_INSTANCE_abcd',10160,0,1),(716,10152,'39',4,'10641_LAYOUT_39_INSTANCE_abcd',10161,0,15),(717,10152,'39',4,'10641_LAYOUT_39_INSTANCE_abcd',10168,0,1),(412,10152,'3_WAR_contactsportlet',1,'10152',10159,0,2),(413,10152,'3_WAR_contactsportlet',1,'10152',10160,0,2),(414,10152,'3_WAR_contactsportlet',1,'10152',10162,0,2),(415,10152,'3_WAR_contactsportlet',1,'10152',10163,0,2),(265,10152,'47',1,'10152',10160,0,2),(266,10152,'47',1,'10152',10162,0,2),(267,10152,'47',1,'10152',10163,0,2),(82,10152,'47',2,'10187',10163,0,1),(656,10152,'47',4,'10181_LAYOUT_47',10160,0,1),(653,10152,'47',4,'10181_LAYOUT_47',10161,0,15),(655,10152,'47',4,'10181_LAYOUT_47',10168,0,1),(212,10152,'48',1,'10152',10162,0,2),(213,10152,'48',1,'10152',10163,0,2),(53,10152,'48',2,'10187',10163,0,1),(761,10152,'49',4,'10173_LAYOUT_49',10160,0,1),(759,10152,'49',4,'10173_LAYOUT_49',10161,0,15),(760,10152,'49',4,'10173_LAYOUT_49',10168,0,1),(776,10152,'49',4,'10181_LAYOUT_49',10160,0,1),(774,10152,'49',4,'10181_LAYOUT_49',10161,0,15),(775,10152,'49',4,'10181_LAYOUT_49',10168,0,1),(770,10152,'49',4,'10641_LAYOUT_49',10160,0,1),(768,10152,'49',4,'10641_LAYOUT_49',10161,0,15),(769,10152,'49',4,'10641_LAYOUT_49',10168,0,1),(408,10152,'4_WAR_contactsportlet',1,'10152',10159,0,2),(409,10152,'4_WAR_contactsportlet',1,'10152',10160,0,2),(410,10152,'4_WAR_contactsportlet',1,'10152',10162,0,2),(411,10152,'4_WAR_contactsportlet',1,'10152',10163,0,2),(546,10152,'4_WAR_contactsportlet',4,'10505_LAYOUT_4_WAR_contactsportlet',10160,0,1),(544,10152,'4_WAR_contactsportlet',4,'10505_LAYOUT_4_WAR_contactsportlet',10161,0,15),(545,10152,'4_WAR_contactsportlet',4,'10505_LAYOUT_4_WAR_contactsportlet',10168,0,1),(748,10152,'4_WAR_contactsportlet',4,'10647_LAYOUT_4_WAR_contactsportlet',10160,0,1),(749,10152,'4_WAR_contactsportlet',4,'10647_LAYOUT_4_WAR_contactsportlet',10161,0,15),(750,10152,'4_WAR_contactsportlet',4,'10647_LAYOUT_4_WAR_contactsportlet',10168,0,1),(290,10152,'50',1,'10152',10160,0,2),(291,10152,'50',1,'10152',10162,0,2),(292,10152,'50',1,'10152',10163,0,2),(95,10152,'50',2,'10187',10163,0,1),(276,10152,'54',1,'10152',10162,0,2),(277,10152,'54',1,'10152',10163,0,2),(87,10152,'54',2,'10187',10163,0,1),(238,10152,'56',1,'10152',10160,0,2),(239,10152,'56',1,'10152',10162,0,2),(240,10152,'56',1,'10152',10163,0,2),(68,10152,'56',2,'10187',10163,0,1),(190,10152,'58',1,'10152',10160,0,2),(191,10152,'58',1,'10152',10162,0,2),(192,10152,'58',1,'10152',10163,0,2),(43,10152,'58',2,'10187',10163,0,1),(657,10152,'58',4,'10181_LAYOUT_58',10160,0,1),(652,10152,'58',4,'10181_LAYOUT_58',10161,0,15),(654,10152,'58',4,'10181_LAYOUT_58',10168,0,1),(306,10152,'59',1,'10152',10162,0,2),(307,10152,'59',1,'10152',10163,0,2),(105,10152,'59',2,'10187',10163,0,1),(440,10152,'5_WAR_soportlet',1,'10152',10159,0,2),(441,10152,'5_WAR_soportlet',1,'10152',10160,0,2),(442,10152,'5_WAR_soportlet',1,'10152',10162,0,2),(443,10152,'5_WAR_soportlet',1,'10152',10163,0,2),(282,10152,'61',1,'10152',10162,0,2),(283,10152,'61',1,'10152',10163,0,2),(91,10152,'61',2,'10187',10163,0,1),(214,10152,'62',1,'10152',10162,0,2),(215,10152,'62',1,'10152',10163,0,2),(57,10152,'62',2,'10187',10163,0,1),(162,10152,'64',1,'10152',10160,0,2),(163,10152,'64',1,'10152',10162,0,2),(164,10152,'64',1,'10152',10163,0,2),(26,10152,'64',2,'10187',10163,0,1),(492,10152,'64',4,'10461_LAYOUT_64',10160,0,1),(490,10152,'64',4,'10461_LAYOUT_64',10161,0,15),(491,10152,'64',4,'10461_LAYOUT_64',10168,0,1),(718,10152,'64',4,'10641_LAYOUT_64',10160,0,1),(719,10152,'64',4,'10641_LAYOUT_64',10161,0,15),(720,10152,'64',4,'10641_LAYOUT_64',10168,0,1),(142,10152,'66',1,'10152',10162,0,2),(143,10152,'66',1,'10152',10163,0,2),(13,10152,'66',2,'10187',10163,0,1),(302,10152,'67',1,'10152',10162,0,2),(303,10152,'67',1,'10152',10163,0,2),(103,10152,'67',2,'10187',10163,0,1),(257,10152,'70',1,'10152',10162,0,2),(258,10152,'70',1,'10152',10163,0,2),(77,10152,'70',2,'10187',10163,0,1),(193,10152,'71',1,'10152',10160,0,2),(194,10152,'71',1,'10152',10162,0,2),(195,10152,'71',1,'10152',10163,0,2),(44,10152,'71',2,'10187',10163,0,1),(284,10152,'73',1,'10152',10160,0,2),(285,10152,'73',1,'10152',10162,0,2),(286,10152,'73',1,'10152',10163,0,2),(92,10152,'73',2,'10187',10163,0,1),(516,10152,'73',4,'10482_LAYOUT_73',10160,0,1),(514,10152,'73',4,'10482_LAYOUT_73',10161,0,15),(515,10152,'73',4,'10482_LAYOUT_73',10168,0,1),(730,10152,'73',4,'10644_LAYOUT_73',10160,0,1),(731,10152,'73',4,'10644_LAYOUT_73',10161,0,15),(732,10152,'73',4,'10644_LAYOUT_73',10168,0,1),(230,10152,'77',1,'10152',10160,0,2),(231,10152,'77',1,'10152',10162,0,2),(232,10152,'77',1,'10152',10163,0,2),(65,10152,'77',2,'10187',10163,0,1),(188,10152,'8',1,'10152',10162,0,4),(189,10152,'8',1,'10152',10163,0,4),(120,10152,'8',2,'10187',10162,0,2),(42,10152,'8',2,'10187',10163,0,1),(502,10152,'8',4,'10469_LAYOUT_8',10160,0,1),(500,10152,'8',4,'10469_LAYOUT_8',10161,0,31),(501,10152,'8',4,'10469_LAYOUT_8',10168,0,1),(724,10152,'8',4,'10642_LAYOUT_8',10160,0,1),(725,10152,'8',4,'10642_LAYOUT_8',10161,0,31),(726,10152,'8',4,'10642_LAYOUT_8',10168,0,1),(273,10152,'82',1,'10152',10160,0,2),(274,10152,'82',1,'10152',10162,0,2),(275,10152,'82',1,'10152',10163,0,2),(85,10152,'82',2,'10187',10163,0,1),(252,10152,'83',1,'10152',10162,0,4),(253,10152,'83',1,'10152',10163,0,4),(74,10152,'83',2,'10187',10163,0,1),(219,10152,'84',1,'10152',10162,0,4),(220,10152,'84',1,'10152',10163,0,4),(61,10152,'84',2,'10187',10163,0,1),(477,10152,'84',4,'10461_LAYOUT_84',10160,0,1),(475,10152,'84',4,'10461_LAYOUT_84',10161,0,31),(476,10152,'84',4,'10461_LAYOUT_84',10168,0,1),(706,10152,'84',4,'10641_LAYOUT_84',10160,0,1),(707,10152,'84',4,'10641_LAYOUT_84',10161,0,31),(708,10152,'84',4,'10641_LAYOUT_84',10168,0,1),(202,10152,'85',1,'10152',10160,0,2),(203,10152,'85',1,'10152',10162,0,2),(204,10152,'85',1,'10152',10163,0,2),(48,10152,'85',2,'10187',10163,0,1),(782,10152,'87',4,'10677_LAYOUT_87',10160,0,1),(780,10152,'87',4,'10677_LAYOUT_87',10161,0,15),(781,10152,'87',4,'10677_LAYOUT_87',10168,0,1),(262,10152,'9',1,'10152',10159,0,2),(79,10152,'9',2,'10187',10163,0,1),(11,10152,'90',1,'10152',10163,0,16384),(461,10152,'90',1,'10152',10445,0,2),(196,10152,'97',1,'10152',10162,0,2),(197,10152,'97',1,'10152',10163,0,2),(45,10152,'97',2,'10187',10163,0,1),(140,10152,'98',1,'10152',10162,0,4),(141,10152,'98',1,'10152',10163,0,4),(112,10152,'98',2,'10187',10162,0,2),(12,10152,'98',2,'10187',10163,0,1),(126,10152,'99',2,'10187',10162,0,2),(76,10152,'99',2,'10187',10163,0,1),(786,10152,'com.liferay.calendar',4,'10612',10161,0,6),(787,10152,'com.liferay.calendar',4,'10612',10168,0,2),(130,10152,'com.liferay.portal.model.Group',2,'10187',10162,0,4096),(670,10152,'com.liferay.portal.model.Group',4,'10612',10161,0,4194303),(109,10152,'com.liferay.portal.model.Layout',2,'10187',10163,0,1),(7,10152,'com.liferay.portal.model.Layout',4,'10173',10160,0,1),(5,10152,'com.liferay.portal.model.Layout',4,'10173',10161,10156,1023),(6,10152,'com.liferay.portal.model.Layout',4,'10173',10168,0,19),(10,10152,'com.liferay.portal.model.Layout',4,'10181',10160,0,1),(8,10152,'com.liferay.portal.model.Layout',4,'10181',10161,10156,1023),(9,10152,'com.liferay.portal.model.Layout',4,'10181',10168,0,19),(324,10152,'com.liferay.portal.model.Layout',4,'10313',10161,10156,1023),(325,10152,'com.liferay.portal.model.Layout',4,'10313',10168,0,19),(338,10152,'com.liferay.portal.model.Layout',4,'10323',10161,10156,1023),(339,10152,'com.liferay.portal.model.Layout',4,'10323',10168,0,19),(356,10152,'com.liferay.portal.model.Layout',4,'10332',10161,10156,1023),(357,10152,'com.liferay.portal.model.Layout',4,'10332',10168,0,19),(376,10152,'com.liferay.portal.model.Layout',4,'10346',10160,0,1),(374,10152,'com.liferay.portal.model.Layout',4,'10346',10161,10156,1023),(375,10152,'com.liferay.portal.model.Layout',4,'10346',10168,0,19),(379,10152,'com.liferay.portal.model.Layout',4,'10352',10160,0,1),(377,10152,'com.liferay.portal.model.Layout',4,'10352',10161,10156,1023),(378,10152,'com.liferay.portal.model.Layout',4,'10352',10168,0,19),(382,10152,'com.liferay.portal.model.Layout',4,'10358',10160,0,1),(380,10152,'com.liferay.portal.model.Layout',4,'10358',10161,10156,1023),(381,10152,'com.liferay.portal.model.Layout',4,'10358',10168,0,19),(389,10152,'com.liferay.portal.model.Layout',4,'10372',10160,0,1),(387,10152,'com.liferay.portal.model.Layout',4,'10372',10161,10156,1023),(388,10152,'com.liferay.portal.model.Layout',4,'10372',10168,0,19),(392,10152,'com.liferay.portal.model.Layout',4,'10380',10160,0,1),(390,10152,'com.liferay.portal.model.Layout',4,'10380',10161,10156,1023),(391,10152,'com.liferay.portal.model.Layout',4,'10380',10168,0,19),(395,10152,'com.liferay.portal.model.Layout',4,'10386',10160,0,1),(393,10152,'com.liferay.portal.model.Layout',4,'10386',10161,10156,1023),(394,10152,'com.liferay.portal.model.Layout',4,'10386',10168,0,19),(398,10152,'com.liferay.portal.model.Layout',4,'10392',10160,0,1),(396,10152,'com.liferay.portal.model.Layout',4,'10392',10161,10156,1023),(397,10152,'com.liferay.portal.model.Layout',4,'10392',10168,0,19),(474,10152,'com.liferay.portal.model.Layout',4,'10461',10160,0,0),(472,10152,'com.liferay.portal.model.Layout',4,'10461',10161,10156,1023),(496,10152,'com.liferay.portal.model.Layout',4,'10461',10163,0,1),(473,10152,'com.liferay.portal.model.Layout',4,'10461',10168,0,19),(499,10152,'com.liferay.portal.model.Layout',4,'10469',10160,0,0),(497,10152,'com.liferay.portal.model.Layout',4,'10469',10161,10156,1023),(503,10152,'com.liferay.portal.model.Layout',4,'10469',10163,0,1),(498,10152,'com.liferay.portal.model.Layout',4,'10469',10168,0,19),(506,10152,'com.liferay.portal.model.Layout',4,'10475',10160,0,0),(504,10152,'com.liferay.portal.model.Layout',4,'10475',10161,10156,1023),(510,10152,'com.liferay.portal.model.Layout',4,'10475',10163,0,1),(505,10152,'com.liferay.portal.model.Layout',4,'10475',10168,0,19),(513,10152,'com.liferay.portal.model.Layout',4,'10482',10160,0,0),(511,10152,'com.liferay.portal.model.Layout',4,'10482',10161,10156,1023),(520,10152,'com.liferay.portal.model.Layout',4,'10482',10163,0,1),(512,10152,'com.liferay.portal.model.Layout',4,'10482',10168,0,19),(523,10152,'com.liferay.portal.model.Layout',4,'10490',10160,0,0),(521,10152,'com.liferay.portal.model.Layout',4,'10490',10161,10156,1023),(530,10152,'com.liferay.portal.model.Layout',4,'10490',10163,0,1),(522,10152,'com.liferay.portal.model.Layout',4,'10490',10168,0,19),(533,10152,'com.liferay.portal.model.Layout',4,'10498',10160,0,0),(531,10152,'com.liferay.portal.model.Layout',4,'10498',10161,10156,1023),(537,10152,'com.liferay.portal.model.Layout',4,'10498',10163,0,1),(532,10152,'com.liferay.portal.model.Layout',4,'10498',10168,0,19),(540,10152,'com.liferay.portal.model.Layout',4,'10505',10160,0,0),(538,10152,'com.liferay.portal.model.Layout',4,'10505',10161,10156,1023),(547,10152,'com.liferay.portal.model.Layout',4,'10505',10163,0,1),(539,10152,'com.liferay.portal.model.Layout',4,'10505',10168,0,19),(554,10152,'com.liferay.portal.model.Layout',4,'10523',10160,0,0),(552,10152,'com.liferay.portal.model.Layout',4,'10523',10161,10156,1023),(553,10152,'com.liferay.portal.model.Layout',4,'10523',10168,0,19),(569,10152,'com.liferay.portal.model.Layout',4,'10530',10160,0,0),(567,10152,'com.liferay.portal.model.Layout',4,'10530',10161,10156,1023),(573,10152,'com.liferay.portal.model.Layout',4,'10530',10163,0,1),(568,10152,'com.liferay.portal.model.Layout',4,'10530',10168,0,19),(576,10152,'com.liferay.portal.model.Layout',4,'10536',10160,0,0),(574,10152,'com.liferay.portal.model.Layout',4,'10536',10161,10156,1023),(580,10152,'com.liferay.portal.model.Layout',4,'10536',10163,0,1),(575,10152,'com.liferay.portal.model.Layout',4,'10536',10168,0,19),(583,10152,'com.liferay.portal.model.Layout',4,'10542',10160,0,0),(581,10152,'com.liferay.portal.model.Layout',4,'10542',10161,10156,1023),(587,10152,'com.liferay.portal.model.Layout',4,'10542',10163,0,1),(582,10152,'com.liferay.portal.model.Layout',4,'10542',10168,0,19),(590,10152,'com.liferay.portal.model.Layout',4,'10548',10160,0,0),(588,10152,'com.liferay.portal.model.Layout',4,'10548',10161,10156,1023),(594,10152,'com.liferay.portal.model.Layout',4,'10548',10163,0,1),(589,10152,'com.liferay.portal.model.Layout',4,'10548',10168,0,19),(597,10152,'com.liferay.portal.model.Layout',4,'10554',10160,0,0),(595,10152,'com.liferay.portal.model.Layout',4,'10554',10161,10156,1023),(601,10152,'com.liferay.portal.model.Layout',4,'10554',10163,0,1),(596,10152,'com.liferay.portal.model.Layout',4,'10554',10168,0,19),(608,10152,'com.liferay.portal.model.Layout',4,'10571',10160,0,0),(606,10152,'com.liferay.portal.model.Layout',4,'10571',10161,10156,1023),(624,10152,'com.liferay.portal.model.Layout',4,'10571',10163,0,1),(607,10152,'com.liferay.portal.model.Layout',4,'10571',10168,0,19),(627,10152,'com.liferay.portal.model.Layout',4,'10580',10160,0,0),(625,10152,'com.liferay.portal.model.Layout',4,'10580',10161,10156,1023),(634,10152,'com.liferay.portal.model.Layout',4,'10580',10163,0,1),(626,10152,'com.liferay.portal.model.Layout',4,'10580',10168,0,19),(637,10152,'com.liferay.portal.model.Layout',4,'10587',10160,0,0),(635,10152,'com.liferay.portal.model.Layout',4,'10587',10161,10156,1023),(644,10152,'com.liferay.portal.model.Layout',4,'10587',10163,0,1),(636,10152,'com.liferay.portal.model.Layout',4,'10587',10168,0,19),(645,10152,'com.liferay.portal.model.Layout',4,'10594',10161,10407,1023),(648,10152,'com.liferay.portal.model.Layout',4,'10599',10160,0,1),(646,10152,'com.liferay.portal.model.Layout',4,'10599',10161,10407,1023),(647,10152,'com.liferay.portal.model.Layout',4,'10599',10162,0,19),(677,10152,'com.liferay.portal.model.Layout',4,'10641',10160,0,0),(675,10152,'com.liferay.portal.model.Layout',4,'10641',10161,10156,1023),(678,10152,'com.liferay.portal.model.Layout',4,'10641',10163,0,1),(676,10152,'com.liferay.portal.model.Layout',4,'10641',10168,0,19),(681,10152,'com.liferay.portal.model.Layout',4,'10642',10160,0,0),(679,10152,'com.liferay.portal.model.Layout',4,'10642',10161,10156,1023),(682,10152,'com.liferay.portal.model.Layout',4,'10642',10163,0,1),(680,10152,'com.liferay.portal.model.Layout',4,'10642',10168,0,19),(685,10152,'com.liferay.portal.model.Layout',4,'10643',10160,0,0),(683,10152,'com.liferay.portal.model.Layout',4,'10643',10161,10156,1023),(686,10152,'com.liferay.portal.model.Layout',4,'10643',10163,0,1),(684,10152,'com.liferay.portal.model.Layout',4,'10643',10168,0,19),(689,10152,'com.liferay.portal.model.Layout',4,'10644',10160,0,0),(687,10152,'com.liferay.portal.model.Layout',4,'10644',10161,10156,1023),(690,10152,'com.liferay.portal.model.Layout',4,'10644',10163,0,1),(688,10152,'com.liferay.portal.model.Layout',4,'10644',10168,0,19),(693,10152,'com.liferay.portal.model.Layout',4,'10645',10160,0,0),(691,10152,'com.liferay.portal.model.Layout',4,'10645',10161,10156,1023),(694,10152,'com.liferay.portal.model.Layout',4,'10645',10163,0,1),(692,10152,'com.liferay.portal.model.Layout',4,'10645',10168,0,19),(697,10152,'com.liferay.portal.model.Layout',4,'10646',10160,0,0),(695,10152,'com.liferay.portal.model.Layout',4,'10646',10161,10156,1023),(698,10152,'com.liferay.portal.model.Layout',4,'10646',10163,0,1),(696,10152,'com.liferay.portal.model.Layout',4,'10646',10168,0,19),(701,10152,'com.liferay.portal.model.Layout',4,'10647',10160,0,0),(699,10152,'com.liferay.portal.model.Layout',4,'10647',10161,10156,1023),(702,10152,'com.liferay.portal.model.Layout',4,'10647',10163,0,1),(700,10152,'com.liferay.portal.model.Layout',4,'10647',10168,0,19),(773,10152,'com.liferay.portal.model.Layout',4,'10677',10160,0,1),(771,10152,'com.liferay.portal.model.Layout',4,'10677',10161,10407,1023),(772,10152,'com.liferay.portal.model.Layout',4,'10677',10168,0,19),(323,10152,'com.liferay.portal.model.LayoutPrototype',4,'10309',10161,10156,15),(337,10152,'com.liferay.portal.model.LayoutPrototype',4,'10319',10161,10156,15),(355,10152,'com.liferay.portal.model.LayoutPrototype',4,'10328',10161,10156,15),(370,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10337',10161,10156,15),(383,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10363',10161,10156,15),(467,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10450',10161,10156,15),(471,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10450',10445,0,1),(548,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10512',10161,10156,15),(602,10152,'com.liferay.portal.model.LayoutSetPrototype',4,'10560',10161,10156,15),(460,10152,'com.liferay.portal.model.Role',4,'10445',10161,10156,127),(462,10152,'com.liferay.portal.model.User',1,'10152',10445,0,1),(139,10152,'com.liferay.portal.model.User',4,'10194',10161,10194,31),(407,10152,'com.liferay.portal.model.User',4,'10407',10161,10407,31),(131,10152,'com.liferay.portlet.asset',2,'10187',10162,0,30),(326,10152,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10316',10161,10156,15),(671,10152,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10638',10161,10156,15),(674,10152,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10639',10160,0,0),(672,10152,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10639',10161,10156,15),(673,10152,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10639',10168,0,0),(347,10152,'com.liferay.portlet.assetcategoriesnavigation',4,'10320',10161,0,6),(365,10152,'com.liferay.portlet.assetcategoriesnavigation',4,'10329',10161,0,6),(354,10152,'com.liferay.portlet.assetpublisher',4,'10320',10161,0,6),(343,10152,'com.liferay.portlet.assettagsnavigation',4,'10320',10161,0,6),(369,10152,'com.liferay.portlet.assettagsnavigation',4,'10329',10161,0,6),(132,10152,'com.liferay.portlet.blogs',2,'10187',10162,0,30),(110,10152,'com.liferay.portlet.blogs',2,'10187',10163,0,26),(330,10152,'com.liferay.portlet.blogs',4,'10310',10161,0,30),(133,10152,'com.liferay.portlet.bookmarks',2,'10187',10162,0,15),(764,10152,'com.liferay.portlet.bookmarks',4,'10612',10160,0,1),(762,10152,'com.liferay.portlet.bookmarks',4,'10612',10161,0,15),(763,10152,'com.liferay.portlet.bookmarks',4,'10612',10168,0,3),(754,10152,'com.liferay.portlet.calendar',1,'10152',10162,0,14),(134,10152,'com.liferay.portlet.calendar',2,'10187',10162,0,0),(111,10152,'com.liferay.portlet.calendar',2,'10187',10163,0,14),(755,10152,'com.liferay.portlet.calendar.model.CalEvent',1,'10152',10162,0,127),(135,10152,'com.liferay.portlet.documentlibrary',2,'10187',10162,0,511),(315,10152,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10300',10161,10156,15),(317,10152,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10302',10161,10156,15),(319,10152,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10304',10161,10156,15),(321,10152,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10161,10156,15),(311,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10297',10161,10156,15),(312,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10298',10161,10156,15),(313,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10299',10161,10156,15),(314,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10301',10161,10156,15),(316,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10161,10156,15),(318,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10161,10156,15),(320,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10161,10156,15),(322,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10161,10156,15),(399,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10399',10161,10156,15),(400,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10400',10161,10156,15),(401,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10401',10161,10156,15),(402,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10402',10161,10156,15),(403,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10403',10161,10156,15),(404,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10404',10161,10156,15),(405,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10405',10161,10156,15),(406,10152,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10406',10161,10156,15),(463,10152,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10447',10161,0,15),(464,10152,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10447',10163,0,1),(465,10152,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10449',10161,0,15),(466,10152,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10449',10163,0,1),(136,10152,'com.liferay.portlet.messageboards',2,'10187',10162,0,2047),(137,10152,'com.liferay.portlet.polls',2,'10187',10162,0,6),(138,10152,'com.liferay.portlet.wiki',2,'10187',10162,0,14),(361,10152,'com.liferay.portlet.wiki',4,'10329',10161,0,14);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceTypePermission`
--

LOCK TABLES `ResourceTypePermission` WRITE;
/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_CBE204` (`type_`,`subtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES (10159,10152,10005,10159,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),(10160,10152,10005,10160,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),(10161,10152,10005,10161,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),(10162,10152,10005,10162,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),(10163,10152,10005,10163,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),(10164,10152,10005,10164,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),(10165,10152,10005,10165,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),(10166,10152,10005,10166,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),(10167,10152,10005,10167,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),(10168,10152,10005,10168,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),(10169,10152,10005,10169,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),(10445,10152,10005,10445,'Social Office User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Social Office Users have access to the Social Office Suite.</Description></root>',1,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

LOCK TABLES `SCFrameworkVersi_SCProductVers` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersion`
--

LOCK TABLES `SCFrameworkVersion` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicense`
--

LOCK TABLES `SCLicense` WRITE;
/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

LOCK TABLES `SCLicenses_SCProductEntries` WRITE;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductEntry`
--

LOCK TABLES `SCProductEntry` WRITE;
/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductScreenshot`
--

LOCK TABLES `SCProductScreenshot` WRITE;
/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(255)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductVersion`
--

LOCK TABLES `SCProductVersion` WRITE;
/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SO_FavoriteSite`
--

DROP TABLE IF EXISTS `SO_FavoriteSite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SO_FavoriteSite` (
  `favoriteSiteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`favoriteSiteId`),
  UNIQUE KEY `IX_3AA03DF8` (`groupId`,`userId`),
  KEY `IX_DE2F16A6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SO_FavoriteSite`
--

LOCK TABLES `SO_FavoriteSite` WRITE;
/*!40000 ALTER TABLE `SO_FavoriteSite` DISABLE KEYS */;
/*!40000 ALTER TABLE `SO_FavoriteSite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SO_MemberRequest`
--

DROP TABLE IF EXISTS `SO_MemberRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SO_MemberRequest` (
  `memberRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `invitedRoleId` bigint(20) DEFAULT NULL,
  `invitedTeamId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberRequestId`),
  KEY `IX_D34593C1` (`groupId`,`receiverUserId`,`status`),
  KEY `IX_212FA0EC` (`key_`),
  KEY `IX_D6810661` (`receiverUserId`),
  KEY `IX_16475447` (`receiverUserId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SO_MemberRequest`
--

LOCK TABLES `SO_MemberRequest` WRITE;
/*!40000 ALTER TABLE `SO_MemberRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SO_MemberRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SO_ProjectsEntry`
--

DROP TABLE IF EXISTS `SO_ProjectsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SO_ProjectsEntry` (
  `projectsEntryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `data_` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`projectsEntryId`),
  KEY `IX_3371C715` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SO_ProjectsEntry`
--

LOCK TABLES `SO_ProjectsEntry` WRITE;
/*!40000 ALTER TABLE `SO_ProjectsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SO_ProjectsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceComponent`
--

LOCK TABLES `ServiceComponent` WRITE;
/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` VALUES (10414,'Contacts',2,1343264272450,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Contacts_Entry (\n	entryId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	fullName VARCHAR(75) null,\n	emailAddress VARCHAR(75) null,\n	comments STRING null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_BD6B6406 on Contacts_Entry (userId);\ncreate index IX_C257DE32 on Contacts_Entry (userId, emailAddress);]]></indexes-sql>\n</data>'),(10423,'Calendar',1,1338929369971,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	color INTEGER,\n	defaultCalendar BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	title STRING null,\n	description STRING null,\n	location VARCHAR(75) null,\n	startDate LONG,\n	endDate LONG,\n	allDay BOOLEAN,\n	recurrence VARCHAR(75) null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	defaultCalendarId LONG,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	type_ VARCHAR(75) null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_C4D67607 on CalendarBooking (calendarId, startDate, endDate);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_97B612E2 on CalendarBooking (calendarResourceId, status);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_2C5184D4 on CalendarResource (companyId, name, active_);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_B9EA8C92 on CalendarResource (groupId, name, active_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(10426,'Microblogs',2,1343264393669,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table MicroblogsEntry (\n	microblogsEntryId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	content STRING null,\n	type_ INTEGER,\n	receiverUserId LONG,\n	receiverMicroblogsEntryId LONG,\n	socialRelationType INTEGER\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_837C013D on MicroblogsEntry (companyId);\ncreate index IX_36CA3D37 on MicroblogsEntry (type_, receiverMicroblogsEntryId);\ncreate index IX_7ABB0AB3 on MicroblogsEntry (type_, receiverUserId);\ncreate index IX_6C297B45 on MicroblogsEntry (userId);\ncreate index IX_92BA6F0 on MicroblogsEntry (userId, type_);]]></indexes-sql>\n</data>'),(10430,'PM',3,1343264408122,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table PM_UserThread (\n	userThreadId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	mbThreadId LONG,\n	topMBMessageId LONG,\n	read_ BOOLEAN,\n	deleted BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_A821854B on PM_UserThread (mbThreadId);\ncreate index IX_3084E97 on PM_UserThread (userId);\ncreate index IX_434EE852 on PM_UserThread (userId, deleted);\ncreate index IX_466F2985 on PM_UserThread (userId, mbThreadId);\ncreate index IX_A16EF3C7 on PM_UserThread (userId, read_, deleted);]]></indexes-sql>\n</data>'),(10436,'SO',4,1343264447701,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SO_FavoriteSite (\n	favoriteSiteId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG\n);\n\ncreate table SO_MemberRequest (\n	memberRequestId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	key_ VARCHAR(75) null,\n	receiverUserId LONG,\n	invitedRoleId LONG,\n	invitedTeamId LONG,\n	status INTEGER\n);\n\ncreate table SO_ProjectsEntry (\n	projectsEntryId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	title VARCHAR(75) null,\n	description STRING null,\n	startDate DATE null,\n	endDate DATE null,\n	data_ VARCHAR(1000) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create unique index IX_3AA03DF8 on SO_FavoriteSite (groupId, userId);\ncreate index IX_DE2F16A6 on SO_FavoriteSite (userId);\n\ncreate index IX_D34593C1 on SO_MemberRequest (groupId, receiverUserId, status);\ncreate index IX_212FA0EC on SO_MemberRequest (key_);\ncreate index IX_D6810661 on SO_MemberRequest (receiverUserId);\ncreate index IX_16475447 on SO_MemberRequest (receiverUserId, status);\n\ncreate index IX_3371C715 on SO_ProjectsEntry (userId);]]></indexes-sql>\n</data>'),(10440,'TMS',2,1343264478888,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table TMS_TasksEntry (\n	tasksEntryId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	title VARCHAR(75) null,\n	priority INTEGER,\n	assigneeUserId LONG,\n	resolverUserId LONG,\n	dueDate DATE null,\n	finishDate DATE null,\n	status INTEGER\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_9DB062B8 on TMS_TasksEntry (assigneeUserId);\ncreate index IX_DF694DFB on TMS_TasksEntry (groupId);\ncreate index IX_EE672124 on TMS_TasksEntry (groupId, assigneeUserId);\ncreate index IX_EB40A85B on TMS_TasksEntry (groupId, resolverUserId);\ncreate index IX_84A27B35 on TMS_TasksEntry (groupId, userId);\ncreate index IX_9A89E9EF on TMS_TasksEntry (resolverUserId);\ncreate index IX_5D4090C9 on TMS_TasksEntry (userId);]]></indexes-sql>\n</data>'),(10801,'Calendar',2,1345481229317,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	color INTEGER,\n	defaultCalendar BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	title STRING null,\n	description STRING null,\n	location VARCHAR(75) null,\n	startDate LONG,\n	endDate LONG,\n	allDay BOOLEAN,\n	recurrence VARCHAR(75) null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	defaultCalendarId LONG,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	type_ VARCHAR(75) null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_C4D67607 on CalendarBooking (calendarId, startDate, endDate);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_97B612E2 on CalendarBooking (calendarResourceId, status);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_2C5184D4 on CalendarResource (companyId, name, active_);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_B9EA8C92 on CalendarResource (groupId, name, active_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(11001,'Calendar',3,1345481633265,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	color INTEGER,\n	defaultCalendar BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	title STRING null,\n	description STRING null,\n	location VARCHAR(75) null,\n	startDate LONG,\n	endDate LONG,\n	allDay BOOLEAN,\n	recurrence VARCHAR(75) null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	defaultCalendarId LONG,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	type_ VARCHAR(75) null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_C4D67607 on CalendarBooking (calendarId, startDate, endDate);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_97B612E2 on CalendarBooking (calendarResourceId, status);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_2C5184D4 on CalendarResource (companyId, name, active_);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_B9EA8C92 on CalendarResource (groupId, name, active_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shard`
--

LOCK TABLES `Shard` WRITE;
/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` VALUES (10153,10022,10152,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCart`
--

LOCK TABLES `ShoppingCart` WRITE;
/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCategory`
--

LOCK TABLES `ShoppingCategory` WRITE;
/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCoupon`
--

LOCK TABLES `ShoppingCoupon` WRITE;
/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItem`
--

LOCK TABLES `ShoppingItem` WRITE;
/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemField`
--

LOCK TABLES `ShoppingItemField` WRITE;
/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemPrice`
--

LOCK TABLES `ShoppingItemPrice` WRITE;
/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrder`
--

LOCK TABLES `ShoppingOrder` WRITE;
/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrderItem`
--

LOCK TABLES `ShoppingOrderItem` WRITE;
/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityAchievement`
--

LOCK TABLES `SocialActivityAchievement` WRITE;
/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityCounter`
--

LOCK TABLES `SocialActivityCounter` WRITE;
/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityLimit`
--

LOCK TABLES `SocialActivityLimit` WRITE;
/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySetting`
--

LOCK TABLES `SocialActivitySetting` WRITE;
/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRelation`
--

LOCK TABLES `SocialRelation` WRITE;
/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRequest`
--

LOCK TABLES `SocialRequest` WRITE;
/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TMS_TasksEntry`
--

DROP TABLE IF EXISTS `TMS_TasksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TMS_TasksEntry` (
  `tasksEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `assigneeUserId` bigint(20) DEFAULT NULL,
  `resolverUserId` bigint(20) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `finishDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`tasksEntryId`),
  KEY `IX_9DB062B8` (`assigneeUserId`),
  KEY `IX_DF694DFB` (`groupId`),
  KEY `IX_EE672124` (`groupId`,`assigneeUserId`),
  KEY `IX_EB40A85B` (`groupId`,`resolverUserId`),
  KEY `IX_84A27B35` (`groupId`,`userId`),
  KEY `IX_9A89E9EF` (`resolverUserId`),
  KEY `IX_5D4090C9` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TMS_TasksEntry`
--

LOCK TABLES `TMS_TasksEntry` WRITE;
/*!40000 ALTER TABLE `TMS_TasksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TMS_TasksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashEntry`
--

DROP TABLE IF EXISTS `TrashEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashEntry`
--

LOCK TABLES `TrashEntry` WRITE;
/*!40000 ALTER TABLE `TrashEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashVersion`
--

DROP TABLE IF EXISTS `TrashVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashVersion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashVersion`
--

LOCK TABLES `TrashVersion` WRITE;
/*!40000 ALTER TABLE `TrashVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupGroupRole`
--

LOCK TABLES `UserGroupGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupRole`
--

LOCK TABLES `UserGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
INSERT INTO `UserGroupRole` VALUES (10407,10612,10169);
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups_Teams` (
  `userGroupId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`teamId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups_Teams`
--

LOCK TABLES `UserGroups_Teams` WRITE;
/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserIdMapper`
--

LOCK TABLES `UserIdMapper` WRITE;
/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationEvent`
--

LOCK TABLES `UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTracker`
--

LOCK TABLES `UserTracker` WRITE;
/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTrackerPath`
--

LOCK TABLES `UserTrackerPath` WRITE;
/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_`
--

DROP TABLE IF EXISTS `User_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_89509087` (`companyId`,`openId`(255)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('4ade93b0-fcb2-4a65-9705-73c6f6d6f12e',10156,10152,'2012-08-20 16:25:38','2012-08-20 16:25:38',1,10157,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,258ebc48ad1ede1ce2daef59c668f836,258ebc48ad1ede1ce2daef59c668f836','','',0,'10156','default@liferay.com',0,'',0,'en_US','GMT','Welcome!','','','','','','2012-08-20 16:25:38','',NULL,'',NULL,0,0,NULL,1,0,0),('b69565a5-b98b-4611-ac82-66e34a5ea1fc',10194,10152,'2012-08-20 16:25:39','2012-08-20 16:25:39',0,10195,'qUqP5cyxm6YcTAhz05Hph5gvu9M=',1,0,NULL,'','','',0,'test','test@liferay.com',0,'',0,'en_US','GMT','Welcome Test Test!','','Test','','Test','','2012-08-20 16:25:39','','2012-08-20 16:25:39','',NULL,0,0,NULL,0,1,5),('9ac32f60-8848-4a65-ad7a-cd5974113351',10407,10152,'2012-08-20 16:25:43','2012-08-20 16:25:43',0,10408,'0DPiKuNIrrVmD8IUCuw1hQxNqZc=',1,0,'2012-08-20 16:26:12','005b0c62ef2f3c0d02824fb472ab5cf9,af3ba2d492c721ba175acb368bb421d0,0e8d9bf6bb2761449ba2e9d32aff0ac9','what-is-your-father\'s-middle-name','Pino',0,'dpino','dpino@igalia.com',0,'',0,'en_US','GMT','Welcome Diego Pino!','','Diego','','Pino','','2012-08-20 16:49:31','0:0:0:0:0:0:0:1','2012-08-20 16:25:43','0:0:0:0:0:0:0:1',NULL,0,0,NULL,0,1,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Groups` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Groups`
--

LOCK TABLES `Users_Groups` WRITE;
/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` VALUES (10194,10178),(10407,10178),(10407,10612);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Orgs` (
  `userId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`organizationId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Orgs`
--

LOCK TABLES `Users_Orgs` WRITE;
/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Roles` (
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Roles`
--

LOCK TABLES `Users_Roles` WRITE;
/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` VALUES (10194,10159),(10407,10159),(10156,10160),(10194,10162),(10407,10162),(10194,10163),(10407,10163);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Teams` (
  `userId` bigint(20) NOT NULL,
  `teamId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`teamId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Teams`
--

LOCK TABLES `Users_Teams` WRITE;
/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_UserGroups` (
  `userGroupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`userId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_UserGroups`
--

LOCK TABLES `Users_UserGroups` WRITE;
/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualHost`
--

LOCK TABLES `VirtualHost` WRITE;
/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` VALUES (10155,10152,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebDAVProps`
--

LOCK TABLES `WebDAVProps` WRITE;
/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website`
--

DROP TABLE IF EXISTS `Website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website` (
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website`
--

LOCK TABLES `Website` WRITE;
/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiNode`
--

LOCK TABLES `WikiNode` WRITE;
/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPage`
--

LOCK TABLES `WikiPage` WRITE;
/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPageResource`
--

LOCK TABLES `WikiPageResource` WRITE;
/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

LOCK TABLES `WorkflowDefinitionLink` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstanceLink`
--

LOCK TABLES `WorkflowInstanceLink` WRITE;
/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-20 18:58:56
