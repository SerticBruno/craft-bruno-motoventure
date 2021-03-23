-- MariaDB dump 10.19  Distrib 10.4.18-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: craft-cms-db
-- ------------------------------------------------------
-- Server version	10.4.18-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assetindexdata`
--

DROP TABLE IF EXISTS `assetindexdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `volumeId` int(11) NOT NULL,
  `uri` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `recordId` int(11) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT 0,
  `completed` tinyint(1) DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_uuwtwcuewpfmbujjiceiactayieuuhdvozqx` (`sessionId`,`volumeId`),
  KEY `idx_uzvlcribiikjuzvcxohsqtpsswukvaqyldey` (`volumeId`),
  CONSTRAINT `fk_vglomnicaovnnxjghwjjbbtocdgnwsvwyfkd` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetindexdata`
--

LOCK TABLES `assetindexdata` WRITE;
/*!40000 ALTER TABLE `assetindexdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetindexdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `uploaderId` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `focalPoint` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletedWithVolume` tinyint(1) DEFAULT NULL,
  `keptFile` tinyint(1) DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_itvewqianpctdpkjapwneixbmicflcoancrh` (`filename`,`folderId`),
  KEY `idx_qakmrybnxougtlpwxwdzwomqbzykxlawedws` (`folderId`),
  KEY `idx_fweclrsupbsyhcazssjupadlcpjcrivhtlrs` (`volumeId`),
  KEY `fk_euafvpmqonhcwmmkvgcwycizwrymqgsnrpta` (`uploaderId`),
  CONSTRAINT `fk_euafvpmqonhcwmmkvgcwycizwrymqgsnrpta` FOREIGN KEY (`uploaderId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_jqxjdddiqmzqpicwrwrmckqwqtyfhhlqpxxe` FOREIGN KEY (`folderId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_udblphmfhmtupnqfzchkqeriujpfkcyygwck` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ydadfcwodkkkaussajuyjhlmmeybjtlqafwx` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (6,1,1,1,'gear.jpg','image',2000,1332,464057,NULL,NULL,NULL,'2021-03-15 14:16:38','2021-03-15 14:05:31','2021-03-15 14:16:39','aba3dc04-388e-4d1d-9114-e99a7faf87fa'),(8,1,1,1,'hero.jpg','image',1500,1001,162995,NULL,NULL,NULL,'2021-03-15 14:16:40','2021-03-15 14:07:52','2021-03-15 14:16:40','14b5af05-1635-47e8-a6ae-9c7655f3e7ce'),(11,1,1,1,'arrow.svg','image',18,12,350,NULL,NULL,NULL,'2021-03-15 14:15:43','2021-03-15 14:15:43','2021-03-15 14:15:43','27d4daa3-a5ef-49e2-b76f-e747aae20fcd'),(12,1,1,1,'arrow-next.svg','image',36,49,1024,NULL,NULL,NULL,'2021-03-15 14:15:45','2021-03-15 14:15:45','2021-03-15 14:15:45','8d5d1a15-0257-48ab-ae0a-92017af524b3'),(13,1,1,1,'arrow-prev.svg','image',35,49,1027,NULL,NULL,NULL,'2021-03-15 14:15:46','2021-03-15 14:15:46','2021-03-15 14:15:46','42c727e5-069b-4bec-b24a-549aefd8fe81'),(14,1,1,1,'list.svg','image',24,19,1554,NULL,NULL,NULL,'2021-03-15 14:15:47','2021-03-15 14:15:47','2021-03-15 14:15:47','30d526a6-8be1-4043-a341-330551f4af96'),(15,1,1,1,'logo.svg','image',138,14,3865,NULL,NULL,NULL,'2021-03-15 14:15:48','2021-03-15 14:15:48','2021-03-15 14:15:48','dcd59bb6-effb-4b64-8796-5769d0eca49f'),(16,1,1,1,'map-bg-dark.jpg','image',1200,1616,816842,NULL,NULL,NULL,'2021-03-15 14:15:50','2021-03-15 14:15:50','2021-03-15 14:15:50','42a61135-53c3-4afd-89c1-7c7d5ed6570a'),(17,1,1,1,'map-bg-light.jpg','image',1200,647,252148,NULL,NULL,NULL,'2021-03-15 14:15:51','2021-03-15 14:15:51','2021-03-15 14:15:51','f476b672-fb2a-4c0c-b02e-94f1b77ff09e'),(18,1,1,1,'x.svg','image',20,20,1144,NULL,NULL,NULL,'2021-03-15 14:15:52','2021-03-15 14:15:52','2021-03-15 14:15:52','34af3b1d-67c5-4cc3-95fc-03b75dbc1bc6'),(19,1,1,1,'felix-lam-J7fxkhtOqt0-unsplash.jpg','image',2000,1332,341827,NULL,NULL,NULL,'2021-03-15 14:16:01','2021-03-15 14:16:01','2021-03-15 14:16:01','953dec65-e4c9-4ad1-8ccf-92ff3d7f9259'),(20,1,1,1,'forest.jpg','image',2000,1332,491049,NULL,NULL,NULL,'2021-03-15 14:16:03','2021-03-15 14:16:03','2021-03-15 14:16:03','d97a07ec-0d45-4b48-b447-24feb79cbc32'),(21,1,1,1,'gear_2021-03-15-141604.jpg','image',2000,1332,464042,NULL,0,0,'2021-03-15 14:16:04','2021-03-15 14:16:04','2021-03-15 14:16:04','894829e3-b573-4e8c-8f55-7574a850bfbd'),(22,1,1,1,'henry-potter.jpg','image',128,128,5434,NULL,NULL,NULL,'2021-03-15 14:16:05','2021-03-15 14:16:05','2021-03-15 14:16:05','29fbf877-9b40-48c1-bdb1-bb45966c505b'),(23,1,1,1,'hero_2021-03-15-141606.jpg','image',1500,1001,162950,NULL,0,0,'2021-03-15 14:16:07','2021-03-15 14:16:07','2021-03-15 14:16:07','1771c6bb-68b6-4059-b249-25db0394564a'),(24,1,1,1,'jack-starfield.jpg','image',128,128,5663,NULL,NULL,NULL,'2021-03-15 14:16:08','2021-03-15 14:16:08','2021-03-15 14:16:08','97c2307d-1f1c-4275-abe6-c1a84ea23e79'),(25,1,1,1,'jeremy-bishop-hMHJYQlWQwU-unsplash.jpg','image',2000,1332,824560,NULL,NULL,NULL,'2021-03-15 14:16:09','2021-03-15 14:16:10','2021-03-15 14:16:10','f0c7b4e4-a128-4f2f-bf24-1cfffa35db48'),(26,1,1,1,'Peru.jpg','image',2000,1332,371955,NULL,NULL,NULL,'2021-03-15 14:16:11','2021-03-15 14:16:11','2021-03-17 22:35:50','52391464-fa8c-423d-82da-18449de85271'),(27,1,1,1,'mountains.jpg','image',2000,1332,999967,NULL,NULL,NULL,'2021-03-15 14:16:12','2021-03-15 14:16:13','2021-03-15 14:16:13','4eb26718-0da6-45c5-8cad-040e2f5a286e'),(28,1,1,1,'woods.jpg','image',2000,1332,595529,NULL,NULL,NULL,'2021-03-15 14:16:14','2021-03-15 14:16:14','2021-03-17 22:36:03','b363c069-d651-410b-bcff-92f5dd8fbf05'),(29,1,1,1,'sarah-bradbury.jpg','image',128,128,11317,NULL,NULL,NULL,'2021-03-15 14:16:15','2021-03-15 14:16:15','2021-03-15 14:16:15','583e9267-9154-45c6-87ff-dcc76fc9d0a6'),(30,1,1,1,'vander-films-IWi2xbThF8U-unsplash.jpg','image',2000,1332,570707,NULL,NULL,NULL,'2021-03-15 14:16:17','2021-03-15 14:16:17','2021-03-15 14:16:17','5b35029f-4a10-460a-aec5-5eb9e4107296');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettransformindex`
--

DROP TABLE IF EXISTS `assettransformindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) NOT NULL DEFAULT 0,
  `inProgress` tinyint(1) NOT NULL DEFAULT 0,
  `error` tinyint(1) NOT NULL DEFAULT 0,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cbgzmybkhgvjksedmiozexkkzrdsgaofmsop` (`volumeId`,`assetId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettransformindex`
--

LOCK TABLES `assettransformindex` WRITE;
/*!40000 ALTER TABLE `assettransformindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettransforms`
--

DROP TABLE IF EXISTS `assettransforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `interlace` enum('none','line','plane','partition') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_hexismmamudmdbwxdvnxvzkuhwhoqrxbsjbs` (`name`),
  KEY `idx_rcjpiyjmibdvjxwijrgjlxwtkfqtwosygnwi` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettransforms`
--

LOCK TABLES `assettransforms` WRITE;
/*!40000 ALTER TABLE `assettransforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettransforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_klccwuofpijmykbwusyqeklkbemojvdqlmhd` (`groupId`),
  KEY `fk_ygpztepjwjztrtpjjnqdgtedrjujhwoaqihb` (`parentId`),
  CONSTRAINT `fk_kelgbvurawfzjaelkabfzapphqpvsqesgwps` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qghpnxudgnujximefaheyyggsgrdiwemwxrc` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ygpztepjwjztrtpjjnqdgtedrjujhwoaqihb` FOREIGN KEY (`parentId`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorygroups`
--

DROP TABLE IF EXISTS `categorygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ookxysjfvgofmgzfdxwuzpayodhihkqtyfqc` (`name`),
  KEY `idx_vwqelzhdzqwytimanytbkooxtmmjhnctqage` (`handle`),
  KEY `idx_gqkwfwoauqatnzesklzoyldqpzdswfikucot` (`structureId`),
  KEY `idx_huocwvtkcqscyzpwoqvwefbvjebxvqejhkpn` (`fieldLayoutId`),
  KEY `idx_zcrwkrusmtmahchxlqeeheeedfejpnjzxtju` (`dateDeleted`),
  CONSTRAINT `fk_eitcmgevxelbjgljmgjcmowtdkbothnekdiq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_reczkuhigthnegrbvarwgjiqftrqgutwwdeo` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorygroups`
--

LOCK TABLES `categorygroups` WRITE;
/*!40000 ALTER TABLE `categorygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorygroups_sites`
--

DROP TABLE IF EXISTS `categorygroups_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorygroups_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_ixkpxklqxeigbyovikkktvzjhvytdfedooec` (`groupId`,`siteId`),
  KEY `idx_gtbvjfvxhxzailsqwptrwayyyqvmwwdakwcm` (`siteId`),
  CONSTRAINT `fk_eyuwrercpkeztftwzcrstcnvcvzmdlcvvpxq` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_kndalnvlbmxsnzrajrzquqcdhezheyprlthc` FOREIGN KEY (`groupId`) REFERENCES `categorygroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorygroups_sites`
--

LOCK TABLES `categorygroups_sites` WRITE;
/*!40000 ALTER TABLE `categorygroups_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorygroups_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changedattributes`
--

DROP TABLE IF EXISTS `changedattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedattributes` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`attribute`),
  KEY `idx_jzbxlxawrctrjulfrsmwqtxtsvcnptfiojzr` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_oplvgvmhvcgnuvvtefrxhamiazzbkwrrlhlt` (`siteId`),
  KEY `fk_bfkxruhyyrizdhjfotolthzpdoozcafdbtak` (`userId`),
  CONSTRAINT `fk_bfkxruhyyrizdhjfotolthzpdoozcafdbtak` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_oplvgvmhvcgnuvvtefrxhamiazzbkwrrlhlt` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_sbspxcmyoyvapfnpwjmthvivkfpflconvbyg` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedattributes`
--

LOCK TABLES `changedattributes` WRITE;
/*!40000 ALTER TABLE `changedattributes` DISABLE KEYS */;
INSERT INTO `changedattributes` VALUES (40,1,'authorId','2021-03-17 21:53:55',0,1),(40,1,'uri','2021-03-17 21:53:55',0,1),(43,1,'title','2021-03-17 23:49:27',0,1),(68,1,'title','2021-03-17 23:20:08',0,1);
/*!40000 ALTER TABLE `changedattributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `changedfields`
--

DROP TABLE IF EXISTS `changedfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changedfields` (
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `propagated` tinyint(1) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`elementId`,`siteId`,`fieldId`),
  KEY `idx_ttmfhnhjybesyztyxdadgowqxhagghqdcjem` (`elementId`,`siteId`,`dateUpdated`),
  KEY `fk_vfymmqwaszhfluzyavqvueibmrqkdpvcizux` (`siteId`),
  KEY `fk_mizhdlmmghbizngpgtjsfilcoypbpfkfjsug` (`fieldId`),
  KEY `fk_oueokvgrzzkukdiivxriamotuhtuasljhpbb` (`userId`),
  CONSTRAINT `fk_dhzqqefdzmvnehvuiuyiehffrjoxjdsslfcy` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mizhdlmmghbizngpgtjsfilcoypbpfkfjsug` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_oueokvgrzzkukdiivxriamotuhtuasljhpbb` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_vfymmqwaszhfluzyavqvueibmrqkdpvcizux` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `changedfields`
--

LOCK TABLES `changedfields` WRITE;
/*!40000 ALTER TABLE `changedfields` DISABLE KEYS */;
INSERT INTO `changedfields` VALUES (2,1,1,'2021-03-15 14:08:08',0,1),(2,1,2,'2021-03-15 14:08:08',0,1),(2,1,3,'2021-03-15 14:18:29',0,1),(2,1,4,'2021-03-15 14:18:29',0,1),(2,1,15,'2021-03-17 23:25:23',0,1),(40,1,1,'2021-03-17 21:53:55',0,1),(40,1,2,'2021-03-17 21:53:55',0,1),(40,1,12,'2021-03-17 21:56:51',0,1),(40,1,13,'2021-03-17 21:56:51',0,1),(40,1,14,'2021-03-17 21:56:51',0,1),(43,1,1,'2021-03-15 14:34:13',0,1),(43,1,2,'2021-03-15 14:34:13',0,1),(43,1,13,'2021-03-17 23:49:56',0,1),(43,1,14,'2021-03-17 23:49:56',0,1);
/*!40000 ALTER TABLE `changedfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_heroTitle` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_ridersIntroContent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_richText` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_shortDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_dickrhwsinxmajrsrqqubqtgiqgtpqyxtwgz` (`elementId`,`siteId`),
  KEY `idx_cuverkpseqavajgjytzvpygbxpdwmbgrozsf` (`siteId`),
  KEY `idx_vxhdvliqgxtqoujnhuuljqkzeeshtizldgti` (`title`),
  CONSTRAINT `fk_fcywqrkzgxzsxauubopcgmcfbwnpxcigkwpb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_mvwdtufyviglyofmtvfuttkejscffxyrwwot` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,1,1,NULL,'2021-03-15 13:52:17','2021-03-15 13:52:17','5cd8a553-68c9-4f2c-b0f1-d13f1ec3dc40',NULL,NULL,NULL,NULL),(2,2,1,'Home','2021-03-15 13:58:56','2021-03-17 23:25:22','5f52f198-3a99-4bd7-b9d8-2b9325cb6086','Motorcycle Stories, Lifestyle, and Gear','<h1>Meet the Riders</h1>\r\n<p>Cras non lorem tristique, non lorem tristique, efficitur lectus sit amet.</p>',NULL,NULL),(3,3,1,'Home','2021-03-15 13:58:57','2021-03-15 13:58:57','d7a94c0a-7412-44bb-9e3e-076c7356fa14',NULL,NULL,NULL,NULL),(4,4,1,'Home','2021-03-15 13:58:57','2021-03-15 13:58:57','c3c41f32-6928-44ea-a460-94c0d3769a3e',NULL,NULL,NULL,NULL),(5,5,1,'Home','2021-03-15 14:05:06','2021-03-15 14:05:06','291337f3-9ce3-44d1-a6f5-7278e505414d',NULL,NULL,NULL,NULL),(6,6,1,'Gear','2021-03-15 14:05:30','2021-03-15 14:16:38','639e9aec-2cb6-4780-9839-9d26b35d7ccc',NULL,NULL,NULL,NULL),(7,7,1,'Home','2021-03-15 14:05:36','2021-03-15 14:05:36','a8d8485b-56bf-4e6d-bad4-23ee8f677b18','Testing',NULL,NULL,NULL),(8,8,1,'Hero','2021-03-15 14:07:51','2021-03-15 14:16:40','d5a4bf33-fdac-4303-b878-9e1b917c76fe',NULL,NULL,NULL,NULL),(9,9,1,'Home','2021-03-15 14:08:07','2021-03-15 14:08:07','1ec7023a-0597-4921-85ae-fc89a4e4e5c3','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(10,10,1,'Home','2021-03-15 14:14:50','2021-03-15 14:14:50','bea298ec-025a-4997-a713-30c99494b00c','Motorcycle Stories, Lifestyle, and Gear',NULL,NULL,NULL),(11,11,1,'Arrow','2021-03-15 14:15:43','2021-03-15 14:15:43','294d9f84-4f14-46af-9c28-0c81c6e4a93e',NULL,NULL,NULL,NULL),(12,12,1,'Arrow next','2021-03-15 14:15:45','2021-03-15 14:15:45','9dce23ae-1435-40a3-ba1a-a98e76458f72',NULL,NULL,NULL,NULL),(13,13,1,'Arrow prev','2021-03-15 14:15:46','2021-03-15 14:15:46','a13b9233-1e3c-4885-b572-880bc33a6711',NULL,NULL,NULL,NULL),(14,14,1,'List','2021-03-15 14:15:47','2021-03-15 14:15:47','9568d1a1-830e-445c-b92b-34c5633211ac',NULL,NULL,NULL,NULL),(15,15,1,'Logo','2021-03-15 14:15:48','2021-03-15 14:15:48','cf436bae-fc1c-4267-a016-0cbb264e01d1',NULL,NULL,NULL,NULL),(16,16,1,'Map bg dark','2021-03-15 14:15:49','2021-03-15 14:15:49','c792ff12-3f87-4d08-a35d-69fb7c0068ef',NULL,NULL,NULL,NULL),(17,17,1,'Map bg light','2021-03-15 14:15:51','2021-03-15 14:15:51','f9029c25-cfa9-4548-875f-e9fb3f762083',NULL,NULL,NULL,NULL),(18,18,1,'X','2021-03-15 14:15:52','2021-03-15 14:15:52','0ad1eccd-3fd5-4407-af2b-0400c577324e',NULL,NULL,NULL,NULL),(19,19,1,'Felix lam J7fxkht Oqt0 unsplash','2021-03-15 14:16:01','2021-03-15 14:16:01','61e374b9-e857-4fa6-a82a-cdd5392d83d4',NULL,NULL,NULL,NULL),(20,20,1,'Forest','2021-03-15 14:16:02','2021-03-15 14:16:02','2d37d8d7-edc1-43d2-b450-d63716c9fe65',NULL,NULL,NULL,NULL),(21,21,1,'Gear','2021-03-15 14:16:04','2021-03-15 14:16:04','275f042b-68d6-498e-b213-afb3526f16ee',NULL,NULL,NULL,NULL),(22,22,1,'Henry potter','2021-03-15 14:16:05','2021-03-15 14:16:05','52af9560-eab4-4f89-803c-7a3b6230e552',NULL,NULL,NULL,NULL),(23,23,1,'Hero','2021-03-15 14:16:06','2021-03-15 14:16:06','6d05139e-df27-46d1-9a60-4a1c0dac5c4b',NULL,NULL,NULL,NULL),(24,24,1,'Jack starfield','2021-03-15 14:16:08','2021-03-15 14:16:08','612cf04a-c7ad-4fb2-9b4f-2cf41f564915',NULL,NULL,NULL,NULL),(25,25,1,'Jeremy bishop h MHJY Ql W Qw U unsplash','2021-03-15 14:16:09','2021-03-15 14:16:09','3aeaf6a7-83d4-4a32-b214-8d3b565a4a5a',NULL,NULL,NULL,NULL),(26,26,1,'Peru','2021-03-15 14:16:10','2021-03-17 22:35:50','4255fd8e-854d-4d41-bcb8-993e85b2a947',NULL,NULL,NULL,NULL),(27,27,1,'Mountains','2021-03-15 14:16:12','2021-03-15 14:16:12','3caa0872-fc6a-4c6d-a57a-4cebe09ebfef',NULL,NULL,NULL,NULL),(28,28,1,'Woods','2021-03-15 14:16:13','2021-03-17 22:36:03','0a6aeb49-3ad7-43d3-8525-c9ac17ab0233',NULL,NULL,NULL,NULL),(29,29,1,'Sarah bradbury','2021-03-15 14:16:15','2021-03-15 14:16:15','8fc53b99-27f5-4c23-9577-39031f8d9f57',NULL,NULL,NULL,NULL),(30,30,1,'Vander films I Wi2xb Th F8 U unsplash','2021-03-15 14:16:16','2021-03-15 14:16:16','4d9656ce-0922-4af3-b517-c7290bf70f14',NULL,NULL,NULL,NULL),(31,34,1,'Home','2021-03-15 14:18:28','2021-03-15 14:18:28','f59780b6-e34e-4964-9b1a-ad8bdf60b98a','Motorcycle Stories, Lifestyle, and Gear','<h1>Meet the Riders</h1>\r\n<p>Cras non lorem tristique, non lorem tristique, efficitur lectus sit amet.</p>',NULL,NULL),(32,38,1,'About Us','2021-03-15 14:29:22','2021-03-15 14:29:22','fcbd21b5-8cb4-440c-a06e-60936c6b4ec8',NULL,NULL,NULL,NULL),(33,39,1,'About Us','2021-03-15 14:29:22','2021-03-15 14:29:22','59038902-d3e1-4f86-ad31-5570b4fa92b1',NULL,NULL,NULL,NULL),(34,40,1,'Stories','2021-03-15 14:30:01','2021-03-17 21:56:50','f650e5be-8a53-4a59-8eb2-94299c8f93ff','Stories',NULL,NULL,NULL),(35,41,1,'Stories','2021-03-15 14:30:01','2021-03-15 14:30:01','f4311668-9ee4-45fb-bf00-db55b6d7e52c',NULL,NULL,NULL,NULL),(36,42,1,'Stories','2021-03-15 14:30:01','2021-03-15 14:30:01','8b1bee56-b270-4c6c-bbba-4bf0e8bacbcf',NULL,NULL,NULL,NULL),(37,43,1,'Our Gear Budasevo','2021-03-15 14:30:38','2021-03-17 23:49:59','deb00aec-f393-4787-b2c5-b250bb3851e0','Our gear',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. <strong>Nullam eu diam ut elit convallis ornare</strong>. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p><br /></p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.'),(38,44,1,'Our Gear','2021-03-15 14:30:39','2021-03-15 14:30:39','8997fb20-2904-480a-9dc1-f07a2293f05b',NULL,NULL,NULL,NULL),(39,45,1,'Our Gear','2021-03-15 14:30:39','2021-03-15 14:30:39','a10d59eb-12f7-4f62-b1ea-85b9cfaddfd7',NULL,NULL,NULL,NULL),(40,46,1,'Our Gear','2021-03-15 14:33:50','2021-03-15 14:33:50','c84def18-7ab9-442f-8838-f047bef3b2cd',NULL,NULL,NULL,NULL),(41,47,1,'Our Gear','2021-03-15 14:34:12','2021-03-15 14:34:12','ab008dee-a1e8-4467-a8f8-151fbfdfeeba','Our gear',NULL,NULL,NULL),(42,48,1,'Our Gear','2021-03-15 14:35:23','2021-03-15 14:35:23','e83d0511-6a9b-49a2-bf2d-e0a74493faab','Our gear',NULL,NULL,NULL),(43,49,1,'Our Gear','2021-03-15 14:40:04','2021-03-15 14:40:04','710f2b1c-ca76-4553-a573-2ce03986f283','Our gear',NULL,NULL,NULL),(44,50,1,'Our Gear','2021-03-15 14:40:04','2021-03-15 14:40:04','2894d431-c75c-4c6d-baa9-bba4135a8a78','Our gear',NULL,NULL,NULL),(45,51,1,NULL,'2021-03-15 14:42:04','2021-03-17 23:31:46','ad559465-adb8-4013-81d3-4c3ab6158e0b',NULL,NULL,NULL,NULL),(46,54,1,'Stories','2021-03-15 14:45:55','2021-03-15 14:45:55','edef8a80-f9b1-4acc-a991-5408ef58abc2',NULL,NULL,NULL,NULL),(47,55,1,'Our Gear','2021-03-15 14:48:13','2021-03-15 14:48:13','bec7f710-ea1a-4ec4-9c37-60bd86ecef6f',NULL,NULL,NULL,NULL),(48,56,1,'Stories','2021-03-15 14:48:31','2021-03-15 14:48:31','cfa4dc97-70c0-4ef0-abe9-4611737d232a','Stories',NULL,NULL,NULL),(49,57,1,NULL,'2021-03-17 21:57:04','2021-03-17 21:57:04','70df6ac1-d5e9-4326-88ac-ebfe6636627e',NULL,NULL,NULL,NULL),(53,61,1,NULL,'2021-03-17 23:02:51','2021-03-17 23:02:51','4c0b9df2-fe9e-4f44-ab35-f955712fe940',NULL,NULL,NULL,NULL),(54,62,1,'Summer Days in Budasevo','2021-03-17 23:04:26','2021-03-17 23:04:26','af79239c-bf81-4c76-b560-def2718cfcdc',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare.'),(55,63,1,'Summer Days in Budasevo','2021-03-17 23:04:26','2021-03-17 23:04:26','2a9bbc99-2fe1-4c67-8eee-6822db9f7716',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare.'),(56,64,1,'KTM\'s Nile River Rally','2021-03-17 23:04:41','2021-03-17 23:04:41','73fccf40-c9ea-4044-a233-ba2a08ea5912',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare.'),(57,65,1,'KTM\'s Nile River Rally','2021-03-17 23:04:41','2021-03-17 23:04:41','47eb77a9-5eed-4170-b946-7cef3036c183',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare.'),(58,66,1,'Exploring Pery by Motorbike','2021-03-17 23:04:56','2021-03-17 23:04:56','0001ae00-1e56-4d6d-919a-7570d7f2be15',NULL,NULL,'<p>Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo. Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.</p>\r\n<p><br /></p>\r\n<p>Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.</p>\r\n<p><br /></p>\r\n<p><br /></p>','Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.'),(59,67,1,'Exploring Pery by Motorbike','2021-03-17 23:04:56','2021-03-17 23:04:56','45fd7c84-9692-4cfd-bc54-ad1bd43fa146',NULL,NULL,'<p>Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo. Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.</p>\r\n<p><br /></p>\r\n<p>Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.</p>\r\n<p><br /></p>\r\n<p><br /></p>','Mauris ullamcorper dui libero, in auctor enim feugiat sed. Praesent a quam eget libero interdum tincidunt. Sed massa nisi, malesuada vel ex eu, interdum sollicitudin nibh. Integer lacinia felis sit amet tellus facilisis pharetra. Morbi tellus eros, malesuada nec scelerisque ut, laoreet sed risus. Mauris lectus quam, aliquet a nunc non, varius fermentum risus. Maecenas at ullamcorper leo.'),(60,68,1,'Tales from the Trail','2021-03-17 23:18:45','2021-03-17 23:20:08','10a0eb22-ce0c-45a6-a640-a1b4804bd82d',NULL,NULL,NULL,NULL),(61,69,1,'Stories Listing','2021-03-17 23:18:45','2021-03-17 23:18:45','e745e95d-bfc5-46a7-ab30-2a77e64c0749',NULL,NULL,NULL,NULL),(62,70,1,'Stories Listing','2021-03-17 23:18:56','2021-03-17 23:18:56','22af35b8-4057-497e-977d-a3d84d8079b5',NULL,NULL,NULL,NULL),(63,71,1,'Tales from the Trail','2021-03-17 23:19:36','2021-03-17 23:19:36','cbe64774-96c1-4141-ba1c-53d45b5372a4',NULL,NULL,NULL,NULL),(64,72,1,'Tales from the Trail2','2021-03-17 23:20:00','2021-03-17 23:20:00','89e1691b-4720-4122-9c84-410a7a90c92a',NULL,NULL,NULL,NULL),(65,73,1,'Tales from the Trail','2021-03-17 23:20:08','2021-03-17 23:20:08','1342ddcb-9b60-459a-bfb8-7e87f199f8bf',NULL,NULL,NULL,NULL),(66,74,1,'Home','2021-03-17 23:25:05','2021-03-17 23:25:05','d1df9028-50a4-4ec7-aa7a-263fd4118c9c','Motorcycle Stories, Lifestyle, and Gear','<h1>Meet the Riders</h1>\r\n<p>Cras non lorem tristique, non lorem tristique, efficitur lectus sit amet.</p>',NULL,NULL),(67,78,1,'Home','2021-03-17 23:25:22','2021-03-17 23:25:22','67df602c-cfef-4482-af4d-b77e54a0a459','Motorcycle Stories, Lifestyle, and Gear','<h1>Meet the Riders</h1>\r\n<p>Cras non lorem tristique, non lorem tristique, efficitur lectus sit amet.</p>',NULL,NULL),(68,82,1,NULL,'2021-03-17 23:35:16','2021-03-17 23:40:43','2d8899b0-5a87-4db0-a604-63a66c952fea',NULL,NULL,NULL,NULL),(69,84,1,NULL,'2021-03-17 23:43:18','2021-03-17 23:45:09','8ce004f4-d04f-4413-9991-3370e013587c',NULL,NULL,NULL,NULL),(70,87,1,'Our Gear','2021-03-17 23:47:07','2021-03-17 23:47:07','a64d6a01-3af0-4a85-b121-bd822c19e520',NULL,NULL,NULL,NULL),(71,88,1,'Our Gear','2021-03-17 23:47:07','2021-03-17 23:47:07','9ae19892-9c51-4fc3-87ff-7df5d0af4706',NULL,NULL,NULL,NULL),(72,89,1,'Our Gear','2021-03-17 23:49:08','2021-03-17 23:49:08','2ede563c-6a66-4131-92d4-3fd850f88d1a',NULL,NULL,NULL,NULL),(73,90,1,'Our Gear Budasevo','2021-03-17 23:49:27','2021-03-17 23:49:27','a5ed131e-271a-49c9-b857-0a3777aa74bb',NULL,NULL,NULL,NULL),(74,91,1,'Our Gear Budasevo','2021-03-17 23:49:56','2021-03-17 23:49:56','9fcd64db-0219-42e9-95d5-676726b49eee',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. <strong>Nullam eu diam ut elit convallis ornare</strong>. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p><br /></p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.'),(75,92,1,'Our Gear Budasevo','2021-03-17 23:49:59','2021-03-17 23:49:59','3dac9319-39d5-4462-aaa6-3494987b8ad1',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. <strong>Nullam eu diam ut elit convallis ornare</strong>. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta iaculis mi ut mollis. Nulla consectetur ex at sagittis venenatis. Maecenas congue vel augue ac tincidunt. Fusce a dictum lorem, ut mattis elit. Nullam eu diam ut elit convallis ornare. Maecenas metus mi, dignissim ac ipsum sed, viverra consequat nibh. Vestibulum est leo, molestie non porta nec, lobortis id lacus. </p>\r\n<p><br /></p>\r\n<p>Nam ut tellus erat. Nam quis leo neque. Donec cursus metus ac mauris fermentum, quis tincidunt purus blandit. Nunc sit amet dictum neque. Aliquam in tincidunt neque, nec pellentesque velit. Integer molestie lacus eu ultricies sodales. Curabitur venenatis at ex eget elementum. Mauris risus quam, eleifend id nulla nec, gravida finibus nisi.</p>','Maecenas sed enim ut sem viverra aliquet eget sit amet. Malesuada fames ac turpis egestas integer. Aliquet lectus proin nibh nisl condimentum id venenatis. Amet facilisis magna etiam tempor orci eu. Viverra accumsan in nisl nisi scelerisque eu.'),(76,93,1,NULL,'2021-03-17 23:54:52','2021-03-17 23:55:35','7e6b6e5d-3413-445e-be99-570561d6c4c1',NULL,NULL,'<p>Copyright 2021 GAMESARA Corp. All rights reserved.</p>',NULL);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `craftidtokens`
--

DROP TABLE IF EXISTS `craftidtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `craftidtokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `accessToken` text COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_wektpynsthxgkrmedzmrlfreetlhmsluthcq` (`userId`),
  CONSTRAINT `fk_wektpynsthxgkrmedzmrlfreetlhmsluthcq` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `craftidtokens`
--

LOCK TABLES `craftidtokens` WRITE;
/*!40000 ALTER TABLE `craftidtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `craftidtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deprecationerrors`
--

DROP TABLE IF EXISTS `deprecationerrors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_rjygcbpkelxzxmjwwudvajoyyelzidhgowax` (`key`,`fingerprint`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deprecationerrors`
--

LOCK TABLES `deprecationerrors` WRITE;
/*!40000 ALTER TABLE `deprecationerrors` DISABLE KEYS */;
INSERT INTO `deprecationerrors` VALUES (1,'ElementQuery::getIterator()','D:\\xampp\\htdocs\\motoventure\\templates\\index.twig:37','2021-03-17 21:48:38','D:\\xampp\\htdocs\\motoventure\\templates\\index.twig',37,'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":575,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\aa\\\\aa2d476d545196958c5db7751f491bf1428baff2da39989337f41fe19dfc8372.php\",\"line\":100,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\42\\\\42cd2ed524113ac08804c7ce8443562a039608379be44fdfc757126fc27c127b.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_72944abe187e71cae04fc5322f50e4b75f14a755f5b72820932eec7d7f092e14\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":390,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":451,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"home\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"home\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\web\\\\index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2021-03-17 21:48:38','2021-03-17 21:48:38','c7e9dc89-a4ef-4a02-a5eb-ea6c5121de5a'),(23,'ElementQuery::find()','D:\\xampp\\htdocs\\motoventure\\templates\\stories\\index.twig:5','2021-03-17 23:01:05','D:\\xampp\\htdocs\\motoventure\\templates\\stories\\index.twig',5,'The `find()` function used to query for elements is now deprecated. Use `all()` instead.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":1907,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::find()\\\", \\\"The `find()` function used to query for elements is now deprecat...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\EntryQuery\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Extension\\\\CoreExtension.php\",\"line\":1507,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"find\",\"args\":null},{\"objectClass\":null,\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\helpers\\\\Template.php\",\"line\":106,\"class\":null,\"method\":\"twig_get_attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":null,\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\a5\\\\a5092e3058fd48f1aad4a5532166f8a205bf7578a5afec9a324c0750b7a8982d.php\",\"line\":56,\"class\":\"craft\\\\helpers\\\\Template\",\"method\":\"attribute\",\"args\":\"craft\\\\web\\\\twig\\\\Environment, Twig\\\\Source, craft\\\\elements\\\\db\\\\EntryQuery, \\\"find\\\", ...\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":182,\"class\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"method\":\"block_content\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\aa\\\\aa2d476d545196958c5db7751f491bf1428baff2da39989337f41fe19dfc8372.php\",\"line\":102,\"class\":\"Twig\\\\Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", [\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\a5\\\\a5092e3058fd48f1aad4a5532166f8a205bf7578a5afec9a324c0750b7a8982d.php\",\"line\":43,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"method\":\"doDisplay\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, \\\"SORT_ASC\\\" => 4, \\\"SORT_DESC\\\" => 3, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":390,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"stories\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":451,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"stories\\\", []\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"stories\\\", [], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"stories\\\", []\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"stories\\\", []\"},{\"objectClass\":null,\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"stories\\\", []]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"stories\\\", \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"stories\\\", \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"stories\\\", \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"stories\\\", \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"stories\\\", \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\web\\\\index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2021-03-17 23:01:05','2021-03-17 23:01:05','459c5502-f6d7-48bc-82d6-82f3c4db019c'),(24,'ElementQuery::getIterator()','D:\\xampp\\htdocs\\motoventure\\templates\\index.twig:38','2021-03-19 08:40:01','D:\\xampp\\htdocs\\motoventure\\templates\\index.twig',38,'Looping through element queries directly has been deprecated. Use the `all()` function to fetch the query results before looping over them.','[{\"objectClass\":\"craft\\\\services\\\\Deprecator\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\elements\\\\db\\\\ElementQuery.php\",\"line\":575,\"class\":\"craft\\\\services\\\\Deprecator\",\"method\":\"log\",\"args\":\"\\\"ElementQuery::getIterator()\\\", \\\"Looping through element queries directly has been deprecated. Us...\\\"\"},{\"objectClass\":\"craft\\\\elements\\\\db\\\\MatrixBlockQuery\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\aa\\\\aa2d476d545196958c5db7751f491bf1428baff2da39989337f41fe19dfc8372.php\",\"line\":106,\"class\":\"craft\\\\elements\\\\db\\\\ElementQuery\",\"method\":\"getIterator\",\"args\":null},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_14361abbca1d4d0e9d9707e9b8eb1479496fe278a9cdcf6090822eeeaddbba06\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\storage\\\\runtime\\\\compiled_templates\\\\a5\\\\a5092e3058fd48f1aad4a5532166f8a205bf7578a5afec9a324c0750b7a8982d.php\",\"line\":46,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":405,\"class\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"method\":\"doDisplay\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":378,\"class\":\"Twig\\\\Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"view\\\" => craft\\\\web\\\\View, \\\"devMode\\\" => true, ...], [\\\"content\\\" => [__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090, \\\"block_content\\\"]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Template.php\",\"line\":390,\"class\":\"Twig\\\\Template\",\"method\":\"display\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"__TwigTemplate_48c0445afdb2067e6cd2a70d003a94f94490283679001e8e2c21a0883cf5c090\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\TemplateWrapper.php\",\"line\":45,\"class\":\"Twig\\\\Template\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], []\"},{\"objectClass\":\"Twig\\\\TemplateWrapper\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\twig\\\\twig\\\\src\\\\Environment.php\",\"line\":318,\"class\":\"Twig\\\\TemplateWrapper\",\"method\":\"render\",\"args\":\"[\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\twig\\\\Environment\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":390,\"class\":\"Twig\\\\Environment\",\"method\":\"render\",\"args\":\"\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\View.php\",\"line\":451,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderTemplate\",\"args\":\"\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\web\\\\View\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":257,\"class\":\"craft\\\\web\\\\View\",\"method\":\"renderPageTemplate\",\"args\":\"\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]], \\\"site\\\"\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\controllers\\\\TemplatesController.php\",\"line\":100,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"renderTemplate\",\"args\":\"\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"craft\\\\controllers\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry, \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":null,\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\InlineAction.php\",\"line\":57,\"class\":null,\"method\":\"call_user_func_array\",\"args\":\"[craft\\\\controllers\\\\TemplatesController, \\\"actionRender\\\"], [\\\"stories\\\\index\\\", [\\\"entry\\\" => craft\\\\elements\\\\Entry]]\"},{\"objectClass\":\"yii\\\\base\\\\InlineAction\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Controller.php\",\"line\":181,\"class\":\"yii\\\\base\\\\InlineAction\",\"method\":\"runWithParams\",\"args\":\"[\\\"template\\\" => \\\"stories\\\\index\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Controller.php\",\"line\":190,\"class\":\"yii\\\\base\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"stories\\\\index\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\controllers\\\\TemplatesController\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Module.php\",\"line\":534,\"class\":\"craft\\\\web\\\\Controller\",\"method\":\"runAction\",\"args\":\"\\\"render\\\", [\\\"template\\\" => \\\"stories\\\\index\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":274,\"class\":\"yii\\\\base\\\\Module\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"stories\\\\index\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\web\\\\Application.php\",\"line\":104,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"runAction\",\"args\":\"\\\"templates/render\\\", [\\\"template\\\" => \\\"stories\\\\index\\\", \\\"variables\\\" => [\\\"entry\\\" => craft\\\\elements\\\\Entry], \\\"p\\\" => \\\"stories\\\"]\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\craftcms\\\\cms\\\\src\\\\web\\\\Application.php\",\"line\":259,\"class\":\"yii\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\vendor\\\\yiisoft\\\\yii2\\\\base\\\\Application.php\",\"line\":392,\"class\":\"craft\\\\web\\\\Application\",\"method\":\"handleRequest\",\"args\":\"craft\\\\web\\\\Request\"},{\"objectClass\":\"craft\\\\web\\\\Application\",\"file\":\"D:\\\\xampp\\\\htdocs\\\\motoventure\\\\web\\\\index.php\",\"line\":22,\"class\":\"yii\\\\base\\\\Application\",\"method\":\"run\",\"args\":null}]','2021-03-19 08:40:01','2021-03-19 08:40:01','5b3eba8d-48aa-4c18-9e61-8b9402afcb92');
/*!40000 ALTER TABLE `deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drafts`
--

DROP TABLE IF EXISTS `drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `trackChanges` tinyint(1) NOT NULL DEFAULT 0,
  `dateLastMerged` datetime DEFAULT NULL,
  `saved` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_fxssdgolctpnfgrpdvgbfyvdgxwyjkppxqcv` (`saved`),
  KEY `fk_bsesolfcaunkjnlnvpluvjgcwbksptnzbzpq` (`creatorId`),
  KEY `fk_luuvttcjybtczhhzbjxbscosgkroddypista` (`sourceId`),
  CONSTRAINT `fk_bsesolfcaunkjnlnvpluvjgcwbksptnzbzpq` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_luuvttcjybtczhhzbjxbscosgkroddypista` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drafts`
--

LOCK TABLES `drafts` WRITE;
/*!40000 ALTER TABLE `drafts` DISABLE KEYS */;
INSERT INTO `drafts` VALUES (1,NULL,1,'First draft',NULL,0,NULL,0),(5,NULL,1,'First draft',NULL,0,NULL,0);
/*!40000 ALTER TABLE `drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elementindexsettings`
--

DROP TABLE IF EXISTS `elementindexsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_vlzhnpjctxuhgtpbgghijmvrbnyjhlkanpju` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elementindexsettings`
--

LOCK TABLES `elementindexsettings` WRITE;
/*!40000 ALTER TABLE `elementindexsettings` DISABLE KEYS */;
INSERT INTO `elementindexsettings` VALUES (1,'craft\\elements\\Entry','{\"sources\":{\"section:9b62c7b0-9947-4702-9726-b3929d2fb2dd\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"expiryDate\",\"3\":\"link\"}}}}','2021-03-17 23:04:13','2021-03-17 23:04:13','38ec3177-f723-4d0c-b771-76db3120cf27');
/*!40000 ALTER TABLE `elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `draftId` int(11) DEFAULT NULL,
  `revisionId` int(11) DEFAULT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `archived` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ceuonfzqrdhsoeuoikvollomlqjhhnzbohnj` (`dateDeleted`),
  KEY `idx_woxaujsgrsrcbcpbqkfmfzoocnafhkabtzzr` (`fieldLayoutId`),
  KEY `idx_puphjrczrakewtycbtmczgejnpkzeguxeqem` (`type`),
  KEY `idx_ohvlsbivysbubxvyiszzxmlbhuxcypgrjurm` (`enabled`),
  KEY `idx_yqawvoscfvjvrcrdvideeepzpcusemlxjyaf` (`archived`,`dateCreated`),
  KEY `idx_gfbwfglgheulqnvoyrgmpbrymwuhijegzbsg` (`archived`,`dateDeleted`,`draftId`,`revisionId`),
  KEY `fk_vqiznntkeoumxmhamhsslqkkboianrekgnkb` (`draftId`),
  KEY `fk_vvgwbaanwanuzwscowoummppuwsdvagyhpjn` (`revisionId`),
  CONSTRAINT `fk_phvnhmbnlvzmlyzcortvljasnieygzulxohb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_vqiznntkeoumxmhamhsslqkkboianrekgnkb` FOREIGN KEY (`draftId`) REFERENCES `drafts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_vvgwbaanwanuzwscowoummppuwsdvagyhpjn` FOREIGN KEY (`revisionId`) REFERENCES `revisions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (1,NULL,NULL,NULL,'craft\\elements\\User',1,0,'2021-03-15 13:52:17','2021-03-15 13:52:17',NULL,'d68b789b-d21c-4998-8880-9cc5d953a4b2'),(2,NULL,NULL,1,'craft\\elements\\Entry',1,0,'2021-03-15 13:58:56','2021-03-17 23:25:22',NULL,'fef33882-5c06-4539-af0c-4e2408e0dffd'),(3,NULL,1,1,'craft\\elements\\Entry',1,0,'2021-03-15 13:58:56','2021-03-15 13:58:56',NULL,'fa197e99-6442-4bfa-a4ab-0b2ffb7f7463'),(4,NULL,2,1,'craft\\elements\\Entry',1,0,'2021-03-15 13:58:57','2021-03-15 13:58:57',NULL,'5b90bfc3-51ec-4386-b304-076cabc163bf'),(5,NULL,3,1,'craft\\elements\\Entry',1,0,'2021-03-15 14:05:06','2021-03-15 14:05:06',NULL,'99c22810-5e26-45d1-977d-503bd3a83d80'),(6,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:05:30','2021-03-15 14:16:38',NULL,'8297b32c-e199-4be3-9409-e5592c93d6c2'),(7,NULL,4,1,'craft\\elements\\Entry',1,0,'2021-03-15 14:05:36','2021-03-15 14:05:36',NULL,'fc82d71f-5327-44af-bbcc-c3c83feb95e6'),(8,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:07:51','2021-03-15 14:16:40',NULL,'fd2e6621-f01f-413f-8ecb-b28b060b176b'),(9,NULL,5,1,'craft\\elements\\Entry',1,0,'2021-03-15 14:08:06','2021-03-15 14:08:06',NULL,'ad66a2c2-aa5f-43db-aa7d-dc0b0cc99d92'),(10,NULL,6,1,'craft\\elements\\Entry',1,0,'2021-03-15 14:14:49','2021-03-15 14:14:49',NULL,'e6586193-31ce-4694-8800-4274797d3463'),(11,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:42','2021-03-15 14:15:42',NULL,'4eb50ca1-3e9c-48e1-8fd1-9167faf6a2f5'),(12,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:45','2021-03-15 14:15:45',NULL,'80fdfea9-cf38-4cb5-9987-fbb5df7870d6'),(13,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:46','2021-03-15 14:15:46',NULL,'a414b8dc-3a49-44de-8e00-420043ccca33'),(14,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:47','2021-03-15 14:15:47',NULL,'b4b8ce7c-7a03-4536-8c5d-858492f6c5a9'),(15,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:48','2021-03-15 14:15:48',NULL,'a1b91d59-8c79-4d55-90d8-8eb70246c600'),(16,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:49','2021-03-15 14:15:49',NULL,'3775c70a-9e04-46ff-b7b1-cb8106c1e4a7'),(17,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:51','2021-03-15 14:15:51',NULL,'59504090-f055-439e-9003-59015ea8bd3d'),(18,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:15:52','2021-03-15 14:15:52',NULL,'c92cce8b-9e76-4ed2-940d-755528637cb5'),(19,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:01','2021-03-15 14:16:01',NULL,'ae0b99d2-54a6-4e08-80fc-7467d442c215'),(20,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:02','2021-03-15 14:16:02',NULL,'3c239b25-b7d5-4921-af26-c2474bc05530'),(21,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:04','2021-03-15 14:16:04','2021-03-15 14:16:39','112ec74e-5ddd-42e3-ac30-36a6b879fabd'),(22,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:05','2021-03-15 14:16:05',NULL,'86c33272-50ef-4034-882e-b22477365233'),(23,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:06','2021-03-15 14:16:06','2021-03-15 14:16:40','d35b1fc5-e06b-4159-a752-43673c34fe5e'),(24,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:08','2021-03-15 14:16:08',NULL,'ccce7ef8-1dc5-4a1f-9f10-3b528825400e'),(25,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:09','2021-03-15 14:16:09',NULL,'3caa7cea-e8c3-4397-9c17-5b79e01777cc'),(26,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:10','2021-03-17 22:35:50',NULL,'a600cb79-0586-441a-99a7-ca36ea64bc82'),(27,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:12','2021-03-15 14:16:12',NULL,'feb8baf2-d4c7-47dc-85bf-319f61000023'),(28,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:13','2021-03-17 22:36:03',NULL,'9d20c89b-53ba-4a03-8857-559df4eda550'),(29,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:15','2021-03-15 14:16:15',NULL,'536d45d8-0aa4-405a-832e-916fe62f64bb'),(30,NULL,NULL,2,'craft\\elements\\Asset',1,0,'2021-03-15 14:16:16','2021-03-15 14:16:16',NULL,'7ce6c873-3648-451a-973a-eee6d5361a1b'),(31,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:28','2021-03-15 14:18:28',NULL,'47c2ed61-5c85-4ac8-a941-444cc8ce1cfd'),(32,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:28','2021-03-15 14:18:28',NULL,'2b68c784-7561-46a0-bf1e-0735af23999a'),(33,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:28','2021-03-15 14:18:28',NULL,'66d4bd28-707c-4bcd-bdcf-efcd25c8891b'),(34,NULL,7,1,'craft\\elements\\Entry',1,0,'2021-03-15 14:18:28','2021-03-15 14:18:28',NULL,'476d1f96-1021-499f-a41a-09a5d4924218'),(35,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:29','2021-03-15 14:18:28',NULL,'1a4406af-eebc-4c43-a879-d19eb44ee293'),(36,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:29','2021-03-15 14:18:28',NULL,'f935f692-da6b-4623-80e3-1ce8fc7f85a5'),(37,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:18:29','2021-03-15 14:18:28',NULL,'3e0b60dc-37c6-4f68-9fea-a89a4f857030'),(38,NULL,NULL,4,'craft\\elements\\Entry',1,0,'2021-03-15 14:29:22','2021-03-15 14:29:22','2021-03-15 14:29:45','df253242-381f-4efc-96f5-b8a59fb6c93b'),(39,NULL,8,4,'craft\\elements\\Entry',1,0,'2021-03-15 14:29:22','2021-03-15 14:29:22','2021-03-15 14:29:45','12754a2e-da44-40cd-a4ae-194b035c9037'),(40,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:00','2021-03-15 14:48:30','2021-03-17 21:57:24','f4ec450b-62cf-4b79-8266-54d8e905b271'),(41,NULL,9,5,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:00','2021-03-15 14:30:00','2021-03-17 21:57:25','e86915fb-2c86-4044-ac99-739f85dd13fc'),(42,NULL,10,5,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:01','2021-03-15 14:30:01','2021-03-17 21:57:25','1ff1dc5a-2bb4-4a3d-9b8e-b7b889930220'),(43,NULL,NULL,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:38','2021-03-17 23:49:59',NULL,'d70d90ca-ef86-4d1c-9ac3-e00858ca6194'),(44,NULL,11,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:38','2021-03-15 14:30:38',NULL,'440eac1d-63db-40b3-8e70-c276246490d5'),(45,NULL,12,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:30:39','2021-03-15 14:30:39',NULL,'1d144955-bd81-4186-865c-81e018035893'),(46,NULL,13,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:33:50','2021-03-15 14:33:50',NULL,'d1b1ba6c-36d6-4487-872c-f65a045c15ba'),(47,NULL,14,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:34:12','2021-03-15 14:34:12',NULL,'373a5cc9-8740-4d15-9a3e-3d3bfb8c89e2'),(48,NULL,15,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:35:23','2021-03-15 14:35:23',NULL,'f29d97b9-7ac5-43f2-908b-f48b12346a05'),(49,NULL,16,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:40:03','2021-03-15 14:40:03',NULL,'432a2eb3-0587-4097-9281-f72ebf6b1a40'),(50,NULL,17,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:40:04','2021-03-15 14:40:04',NULL,'2c2fdc0b-a983-451e-8938-eccd3d7e1352'),(51,NULL,NULL,8,'craft\\elements\\GlobalSet',1,0,'2021-03-15 14:42:04','2021-03-17 23:31:46','2021-03-17 23:31:56','9fce6474-2ab7-4e7b-bb1f-ed9329dbe0bb'),(52,NULL,NULL,7,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:45:07','2021-03-15 14:45:07','2021-03-17 21:49:28','65994180-4156-4065-be53-6a472afe94a3'),(53,NULL,NULL,7,'craft\\elements\\MatrixBlock',1,0,'2021-03-15 14:45:07','2021-03-15 14:45:07','2021-03-17 21:49:28','7930b762-c9e7-4683-a554-1e7df97e9bcd'),(54,NULL,18,5,'craft\\elements\\Entry',1,0,'2021-03-15 14:45:54','2021-03-15 14:45:54','2021-03-17 21:57:25','3e35d281-24bf-4e96-8353-3261d4ca318f'),(55,NULL,19,6,'craft\\elements\\Entry',1,0,'2021-03-15 14:48:13','2021-03-15 14:48:13',NULL,'902547c6-189d-4afa-b511-38d6eea945d9'),(56,NULL,20,5,'craft\\elements\\Entry',1,0,'2021-03-15 14:48:30','2021-03-15 14:48:30','2021-03-17 21:57:25','2bd387c6-1443-4a14-84f2-04dffff858c1'),(57,1,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-17 21:57:04','2021-03-17 21:57:04',NULL,'605146bc-7b1c-45bf-bd8d-c746d9905e52'),(61,5,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:02:51','2021-03-17 23:02:51',NULL,'631f2bf7-a0e3-4357-86b0-ce81aaeb06b7'),(62,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:26','2021-03-17 23:04:25',NULL,'0999f0c8-59a0-4c4e-9879-d1ab03493656'),(63,NULL,21,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:25','2021-03-17 23:04:25',NULL,'efb85375-39eb-462b-a2d7-ab3428ff2466'),(64,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:41','2021-03-17 23:04:41',NULL,'12757315-4159-45e0-a1d8-f6c6a0b6df9b'),(65,NULL,22,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:41','2021-03-17 23:04:41',NULL,'08bd3ee0-d7fd-4d42-90cc-ce88948b3a0f'),(66,NULL,NULL,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:55','2021-03-17 23:04:55',NULL,'a737c48a-b92e-468b-ae09-fe3c82a7c65c'),(67,NULL,23,5,'craft\\elements\\Entry',1,0,'2021-03-17 23:04:55','2021-03-17 23:04:55',NULL,'a9071875-c472-4209-b357-12fbb3cedc8e'),(68,NULL,NULL,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:18:45','2021-03-17 23:20:08',NULL,'2b19f0c5-2da3-4de7-a7d6-77fe1994e35a'),(69,NULL,24,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:18:45','2021-03-17 23:18:45',NULL,'7a49e10a-8470-4853-8815-abd128903b25'),(70,NULL,25,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:18:56','2021-03-17 23:18:56',NULL,'55d23878-a6a7-4665-a03d-2b0034e637c3'),(71,NULL,26,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:19:36','2021-03-17 23:19:36',NULL,'39b1c4bf-5692-403e-8f91-9402915fe89e'),(72,NULL,27,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:20:00','2021-03-17 23:20:00',NULL,'5d6d9ad7-587b-42bf-b32e-d634fc3d88e5'),(73,NULL,28,9,'craft\\elements\\Entry',1,0,'2021-03-17 23:20:08','2021-03-17 23:20:08',NULL,'b563ed14-a84f-4265-9473-ace14fdc3b03'),(74,NULL,29,1,'craft\\elements\\Entry',1,0,'2021-03-17 23:25:05','2021-03-17 23:25:05',NULL,'79f9e34f-b1db-41c9-836f-86c216e590a2'),(75,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:05','2021-03-15 14:18:28',NULL,'1f907ab4-0a9c-4f28-b9d6-572795a33f0f'),(76,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:06','2021-03-15 14:18:28',NULL,'9132490b-8a52-4bf8-9136-617d5ae32d58'),(77,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:06','2021-03-15 14:18:28',NULL,'d1f5d1f7-219e-444b-80a6-3a940eeba507'),(78,NULL,30,1,'craft\\elements\\Entry',1,0,'2021-03-17 23:25:22','2021-03-17 23:25:22',NULL,'678a1a2e-38e9-491b-987f-ea8111d49f47'),(79,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:23','2021-03-15 14:18:28',NULL,'d61d22bc-cbc1-41ef-9ab4-225afd675f70'),(80,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:23','2021-03-15 14:18:28',NULL,'f777b43b-60d0-4f70-be7d-75efc126fdd9'),(81,NULL,NULL,3,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:25:23','2021-03-15 14:18:28',NULL,'8381d48a-480d-455c-8622-7df2cf35a3fc'),(82,NULL,NULL,11,'craft\\elements\\GlobalSet',1,0,'2021-03-17 23:35:16','2021-03-17 23:40:43','2021-03-17 23:41:13','55810e4a-7f9d-40ca-8f4e-4043221e0bd9'),(83,NULL,NULL,10,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:36:56','2021-03-17 23:38:41','2021-03-17 23:41:13','8106634d-eb44-47ee-8c7e-b84b0ffcad3c'),(84,NULL,NULL,13,'craft\\elements\\GlobalSet',1,0,'2021-03-17 23:43:18','2021-03-17 23:45:09',NULL,'83247a89-0b72-49f4-a8c3-6db679e1584d'),(85,NULL,NULL,12,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:43:33','2021-03-17 23:45:10',NULL,'54325646-77c4-4ee9-990b-afafd9d4fa5d'),(86,NULL,NULL,12,'craft\\elements\\MatrixBlock',1,0,'2021-03-17 23:44:16','2021-03-17 23:45:10',NULL,'94658e5f-370c-4935-9e91-d2a4b06dc292'),(87,NULL,31,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:47:06','2021-03-17 23:47:06',NULL,'bd2822ca-15d3-49c7-98b5-b49a010e20ef'),(88,NULL,32,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:47:07','2021-03-17 23:47:07',NULL,'cf7648fc-3258-4c46-8c05-b61d26cb9b3b'),(89,NULL,33,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:49:08','2021-03-17 23:49:08',NULL,'96a0f917-7156-4e88-98dd-48b0f444a239'),(90,NULL,34,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:49:27','2021-03-17 23:49:27',NULL,'a9ecdc6a-946f-49ba-8c1b-f8fd58ad7406'),(91,NULL,35,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:49:56','2021-03-17 23:49:56',NULL,'c4ed7c36-3647-4286-afcc-0ee203a807e0'),(92,NULL,36,6,'craft\\elements\\Entry',1,0,'2021-03-17 23:49:59','2021-03-17 23:49:59',NULL,'29a9bba5-5bdf-40bd-959b-977853f76712'),(93,NULL,NULL,14,'craft\\elements\\GlobalSet',1,0,'2021-03-17 23:54:52','2021-03-17 23:55:35',NULL,'bcba405e-b106-48ab-83d2-076b3d8c7547');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements_sites`
--

DROP TABLE IF EXISTS `elements_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_ifoaflruakzqyfjdlqlpyrhmarlrjtrsvbmn` (`elementId`,`siteId`),
  KEY `idx_nofohfzqupscwqeemebahrhcrgirkytaksgn` (`siteId`),
  KEY `idx_tfzroaercfeosdcbxvqjtrjtmhockzwxipzy` (`slug`,`siteId`),
  KEY `idx_pjoygojuttirxqjmuloppqvmgijzkkfiqpoe` (`enabled`),
  KEY `idx_fkvncqsovdkrbxjwfkzzkiqwxdnqmgyydalg` (`uri`,`siteId`),
  CONSTRAINT `fk_lpqrmvqorzontecnviowabkvsrxdvvxfbzta` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_qzdmbiaentbhjigistagcvabixnkthdbhwzp` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements_sites`
--

LOCK TABLES `elements_sites` WRITE;
/*!40000 ALTER TABLE `elements_sites` DISABLE KEYS */;
INSERT INTO `elements_sites` VALUES (1,1,1,NULL,NULL,1,'2021-03-15 13:52:17','2021-03-15 13:52:17','c0964a9f-b4d7-4b82-8368-ad02eeadca99'),(2,2,1,'home','__home__',1,'2021-03-15 13:58:56','2021-03-15 13:58:56','4ec025d4-d718-4a68-b9d5-ae43276e3883'),(3,3,1,'home','__home__',1,'2021-03-15 13:58:57','2021-03-15 13:58:57','9884296e-383b-4f28-a217-fcdf9668733b'),(4,4,1,'home','__home__',1,'2021-03-15 13:58:57','2021-03-15 13:58:57','f54d27d0-8733-4cdc-9944-b8f38dd53d16'),(5,5,1,'home','__home__',1,'2021-03-15 14:05:06','2021-03-15 14:05:06','ee6c5ab4-2667-451b-b44b-95c0a93da971'),(6,6,1,NULL,NULL,1,'2021-03-15 14:05:30','2021-03-15 14:05:30','2b27d894-9c62-4343-a62b-43d650468e5b'),(7,7,1,'home','__home__',1,'2021-03-15 14:05:36','2021-03-15 14:05:36','afe268e3-eb09-4b5f-aa35-22bcd4fc43b2'),(8,8,1,NULL,NULL,1,'2021-03-15 14:07:51','2021-03-15 14:07:51','384408e3-2bc1-40c7-8ac6-a6a4b66c1efb'),(9,9,1,'home','__home__',1,'2021-03-15 14:08:07','2021-03-15 14:08:07','8425852d-d55f-4c95-99d1-740699135ca1'),(10,10,1,'home','__home__',1,'2021-03-15 14:14:50','2021-03-15 14:14:50','7db7cc4f-10bb-49c0-80c2-7d57f0721972'),(11,11,1,NULL,NULL,1,'2021-03-15 14:15:43','2021-03-15 14:15:43','8199fe43-f7f2-4336-b8bc-46f29f8d4b50'),(12,12,1,NULL,NULL,1,'2021-03-15 14:15:45','2021-03-15 14:15:45','dd14afc0-a1e4-42b5-b8f9-776e39ceb28e'),(13,13,1,NULL,NULL,1,'2021-03-15 14:15:46','2021-03-15 14:15:46','f98bdac2-6e61-46cd-9f62-597bd9318bb1'),(14,14,1,NULL,NULL,1,'2021-03-15 14:15:47','2021-03-15 14:15:47','66088c5a-0c40-45ea-945f-82e9cb67caa7'),(15,15,1,NULL,NULL,1,'2021-03-15 14:15:48','2021-03-15 14:15:48','b22a7981-675c-40c7-bb54-1395e4f565e8'),(16,16,1,NULL,NULL,1,'2021-03-15 14:15:49','2021-03-15 14:15:49','0650a5d2-5c41-46b6-9878-e2f04dc1b453'),(17,17,1,NULL,NULL,1,'2021-03-15 14:15:51','2021-03-15 14:15:51','211498b3-f1bd-4928-b754-1a583e352429'),(18,18,1,NULL,NULL,1,'2021-03-15 14:15:52','2021-03-15 14:15:52','ac0897b9-cbb9-4d3a-bb31-2cff46568cbc'),(19,19,1,NULL,NULL,1,'2021-03-15 14:16:01','2021-03-15 14:16:01','406384ec-9975-45ba-ac9f-f982b4dfa466'),(20,20,1,NULL,NULL,1,'2021-03-15 14:16:02','2021-03-15 14:16:02','ffe237e9-a7eb-477e-9875-59a1a8e994b8'),(21,21,1,NULL,NULL,1,'2021-03-15 14:16:04','2021-03-15 14:16:04','5bb6c73f-e18a-411e-8684-0ac0a0bfca14'),(22,22,1,NULL,NULL,1,'2021-03-15 14:16:05','2021-03-15 14:16:05','bb7dcd40-2426-4a76-9a08-91b33eb5a1aa'),(23,23,1,NULL,NULL,1,'2021-03-15 14:16:06','2021-03-15 14:16:06','17174d43-d3dc-48db-9310-1d62c9591470'),(24,24,1,NULL,NULL,1,'2021-03-15 14:16:08','2021-03-15 14:16:08','6e2c9758-938d-4203-97b7-c8f425e2d213'),(25,25,1,NULL,NULL,1,'2021-03-15 14:16:09','2021-03-15 14:16:09','5d58a985-eb57-4282-82f0-abb459bd4ce1'),(26,26,1,NULL,NULL,1,'2021-03-15 14:16:10','2021-03-15 14:16:10','fd1c93a0-4171-4b99-8edf-b0c489cee04e'),(27,27,1,NULL,NULL,1,'2021-03-15 14:16:12','2021-03-15 14:16:12','9779a764-8b10-42a6-bbce-7e35999e2192'),(28,28,1,NULL,NULL,1,'2021-03-15 14:16:13','2021-03-15 14:16:13','d36470d6-1edf-4d12-9773-f3968ef29f85'),(29,29,1,NULL,NULL,1,'2021-03-15 14:16:15','2021-03-15 14:16:15','f942e428-98bf-489c-a3d4-8b31077ee62a'),(30,30,1,NULL,NULL,1,'2021-03-15 14:16:16','2021-03-15 14:16:16','07502af0-3682-4b1b-ba0b-0afadd3fc099'),(31,31,1,NULL,NULL,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','4cd860be-8527-4e17-89aa-581b3ca755db'),(32,32,1,NULL,NULL,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','1d44c8fa-35ee-4aa9-b8d1-d695b045c536'),(33,33,1,NULL,NULL,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','dc6c9608-d380-4a97-a9b1-b508c3525009'),(34,34,1,'home','__home__',1,'2021-03-15 14:18:28','2021-03-15 14:18:28','471be9d7-9b22-4635-a0b4-02e08032e636'),(35,35,1,NULL,NULL,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','5a4e9bbf-a45c-4ee5-8910-ff419764e255'),(36,36,1,NULL,NULL,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','81182a72-0783-4284-b001-7a44ca939553'),(37,37,1,NULL,NULL,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','59a32801-391e-4f54-a992-2480ce55656b'),(38,38,1,'about-us','about-us',1,'2021-03-15 14:29:22','2021-03-15 14:29:22','6aa7825e-3a5d-4039-a2a6-db502f7231fd'),(39,39,1,'about-us','about-us',1,'2021-03-15 14:29:22','2021-03-15 14:29:22','d33ded2a-e7a0-4767-a612-147355456215'),(40,40,1,'stories','stories/stories',1,'2021-03-15 14:30:01','2021-03-17 21:53:55','a2418b65-4d0e-46da-bb96-a3780a9e80ec'),(41,41,1,'stories','stories',1,'2021-03-15 14:30:01','2021-03-15 14:30:01','e2d41beb-d1fc-43c9-8ad7-146eab0ad57a'),(42,42,1,'stories','stories',1,'2021-03-15 14:30:01','2021-03-15 14:30:01','b87f3ae1-9d0e-47bd-9887-fca0b8842746'),(43,43,1,'our-gear','ourGear',1,'2021-03-15 14:30:38','2021-03-15 14:30:38','335880c2-06db-4d47-853c-cda54f8caa96'),(44,44,1,'our-gear','ourGear',1,'2021-03-15 14:30:39','2021-03-15 14:30:39','a02895e1-049c-4f6c-a6e6-ff8799d7d36a'),(45,45,1,'our-gear','ourGear',1,'2021-03-15 14:30:39','2021-03-15 14:30:39','6b8a7ad0-6741-48f0-8e04-021786f7204d'),(46,46,1,'our-gear','ourGear',1,'2021-03-15 14:33:50','2021-03-15 14:33:50','088e86b9-4458-4af4-ac2b-08f9e1c99f4e'),(47,47,1,'our-gear','ourGear',1,'2021-03-15 14:34:12','2021-03-15 14:34:12','12d8b78a-d038-4522-91a5-063b60fda68f'),(48,48,1,'our-gear','ourGear',1,'2021-03-15 14:35:23','2021-03-15 14:35:23','e0d27ae1-ae17-48c3-9c42-89dd22b85058'),(49,49,1,'our-gear','ourGear',1,'2021-03-15 14:40:03','2021-03-15 14:40:03','41d43608-ad6d-4f95-a2c8-71ffd8cf09e5'),(50,50,1,'our-gear','ourGear',1,'2021-03-15 14:40:04','2021-03-15 14:40:04','a322ad1f-827d-4b34-81a3-40835a9d5c8e'),(51,51,1,NULL,NULL,1,'2021-03-15 14:42:04','2021-03-15 14:42:04','b9e10e1c-13a5-4588-ad7c-a8881c7dd721'),(52,52,1,NULL,NULL,1,'2021-03-15 14:45:07','2021-03-15 14:45:07','3b0d0843-4526-48de-b4b7-de2a4b3ba7a4'),(53,53,1,NULL,NULL,1,'2021-03-15 14:45:07','2021-03-15 14:45:07','a58dbf2a-4cd6-49c7-9d2f-d8b9dd4c9bff'),(54,54,1,'stories','stories',1,'2021-03-15 14:45:55','2021-03-15 14:45:55','e07f07ff-7214-4aec-b45e-e3d15f79932f'),(55,55,1,'our-gear','ourGear',1,'2021-03-15 14:48:13','2021-03-15 14:48:13','50d095ef-ac67-44d8-acb6-34bdf5b94af5'),(56,56,1,'stories','stories',1,'2021-03-15 14:48:31','2021-03-15 14:48:31','d3a4ff2f-59ea-4351-b222-205516a88f66'),(57,57,1,'__temp_pnkbdhzwjhyikcfjgwugqpordrixqbzmduwe','stories/__temp_pnkbdhzwjhyikcfjgwugqpordrixqbzmduwe',1,'2021-03-17 21:57:04','2021-03-17 21:57:04','289b7359-767b-4663-b237-c44e67d8b78a'),(61,61,1,'__temp_jqpgrfyiscftsoseoxaolcwpwxxepeedovml','stories/__temp_jqpgrfyiscftsoseoxaolcwpwxxepeedovml',1,'2021-03-17 23:02:51','2021-03-17 23:02:51','1ed80f05-68fc-4c3e-b90b-09af79c1898d'),(62,62,1,'summer-days-in-budasevo','stories/summer-days-in-budasevo',1,'2021-03-17 23:04:26','2021-03-17 23:04:26','8ef9db5c-f5f2-4ce5-b829-8d016210475b'),(63,63,1,'summer-days-in-budasevo','stories/summer-days-in-budasevo',1,'2021-03-17 23:04:26','2021-03-17 23:04:26','538787ac-af3f-40f2-b1f5-c93bd2b445b3'),(64,64,1,'ktms-nile-river-rally','stories/ktms-nile-river-rally',1,'2021-03-17 23:04:41','2021-03-17 23:04:41','a8797911-2061-40f7-962f-426b0fed8a1f'),(65,65,1,'ktms-nile-river-rally','stories/ktms-nile-river-rally',1,'2021-03-17 23:04:41','2021-03-17 23:04:41','686836e8-f6bb-4535-afa6-dddc808f92bc'),(66,66,1,'exploring-pery-by-motorbike','stories/exploring-pery-by-motorbike',1,'2021-03-17 23:04:55','2021-03-17 23:04:55','cf14d1e6-95c6-4df4-a272-4759766cc605'),(67,67,1,'exploring-pery-by-motorbike','stories/exploring-pery-by-motorbike',1,'2021-03-17 23:04:56','2021-03-17 23:04:56','37b692ba-6286-410a-b0c4-f75e1e84ec38'),(68,68,1,'stories-listing','stories',1,'2021-03-17 23:18:45','2021-03-17 23:18:45','7990c789-d9ac-45b1-b9dc-6e9ffc297bcf'),(69,69,1,'stories-listing','stories',1,'2021-03-17 23:18:45','2021-03-17 23:18:45','26b658f1-0e4d-4c30-b06c-af677b11e3ec'),(70,70,1,'stories-listing','stories',1,'2021-03-17 23:18:56','2021-03-17 23:18:56','e746e4a2-8ef1-4283-8f22-d8aab7e95eb5'),(71,71,1,'stories-listing','stories',1,'2021-03-17 23:19:36','2021-03-17 23:19:36','a119b192-0213-4d64-b83c-29c6b3dc9a4d'),(72,72,1,'stories-listing','stories',1,'2021-03-17 23:20:00','2021-03-17 23:20:00','e8e3b9f4-525d-4858-a178-70e020a121a7'),(73,73,1,'stories-listing','stories',1,'2021-03-17 23:20:08','2021-03-17 23:20:08','f8ae714c-add2-441d-b04b-59b8286480cb'),(74,74,1,'home','__home__',1,'2021-03-17 23:25:05','2021-03-17 23:25:05','3cd128d1-425b-4703-80cf-b53e1ffcc60e'),(75,75,1,NULL,NULL,1,'2021-03-17 23:25:05','2021-03-17 23:25:05','45accaaf-bb9a-43bc-b372-56481e8f6a4f'),(76,76,1,NULL,NULL,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','3e8fd6d2-d8e3-4fd5-8041-d02a190b0b1f'),(77,77,1,NULL,NULL,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','dae9473f-883d-48a8-850c-45b6bc178510'),(78,78,1,'home','__home__',1,'2021-03-17 23:25:22','2021-03-17 23:25:22','10abd779-140c-4b44-b35c-2ac9fcc57aa5'),(79,79,1,NULL,NULL,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','c30d06fc-bc01-4e78-b23a-58fb7d1a3a21'),(80,80,1,NULL,NULL,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','75848645-cf49-424a-8657-078729623260'),(81,81,1,NULL,NULL,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','c703dc9e-bc32-4b6d-84b1-acc42c2fb1d8'),(82,82,1,NULL,NULL,1,'2021-03-17 23:35:16','2021-03-17 23:35:16','3db3a751-8ce7-409a-8555-9373f554a030'),(83,83,1,NULL,NULL,1,'2021-03-17 23:36:56','2021-03-17 23:36:56','a8f21412-7355-4384-a106-c89e0c949d3a'),(84,84,1,NULL,NULL,1,'2021-03-17 23:43:18','2021-03-17 23:43:18','15c5ea20-76e4-4e5a-af61-978bb0d7bf03'),(85,85,1,NULL,NULL,1,'2021-03-17 23:43:33','2021-03-17 23:43:33','2a615b2b-0650-4937-bbb2-7a59436625d1'),(86,86,1,NULL,NULL,1,'2021-03-17 23:44:16','2021-03-17 23:44:16','cb51d8f9-c563-400a-8c18-72af2b119a9b'),(87,87,1,'our-gear','ourGear',1,'2021-03-17 23:47:06','2021-03-17 23:47:06','bc859f9c-5cff-4763-a6bb-418105b21466'),(88,88,1,'our-gear','ourGear',1,'2021-03-17 23:47:07','2021-03-17 23:47:07','4a79a5ce-56c4-48d1-8a41-877d4a79a18c'),(89,89,1,'our-gear','ourGear',1,'2021-03-17 23:49:08','2021-03-17 23:49:08','906ccd67-7913-4811-a9b8-992105b6b365'),(90,90,1,'our-gear','ourGear',1,'2021-03-17 23:49:27','2021-03-17 23:49:27','0ec140a5-89b9-4cef-90fc-db8db1644b4f'),(91,91,1,'our-gear','ourGear',1,'2021-03-17 23:49:56','2021-03-17 23:49:56','499c4b04-225c-4a92-ae84-7c1579216606'),(92,92,1,'our-gear','ourGear',1,'2021-03-17 23:49:59','2021-03-17 23:49:59','29b850a9-abb4-4446-8650-1ff26828c0d4'),(93,93,1,NULL,NULL,1,'2021-03-17 23:54:52','2021-03-17 23:54:52','c05e547f-85e4-4c52-a938-adb36354e82a');
/*!40000 ALTER TABLE `elements_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `deletedWithEntryType` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_dsfrkejuskbcualslvksiberarbqazcuzeyr` (`postDate`),
  KEY `idx_kfzlvjxfbcjfshuwaxptrtwggbvnmnxgcoqq` (`expiryDate`),
  KEY `idx_spvkwcbtyjpuqvjmdgroqludccshtjkilqqn` (`authorId`),
  KEY `idx_febfuxwfybmelflmaefdvqgacuyigwmbljga` (`sectionId`),
  KEY `idx_xwwvicmsazkjozzhgpiwowdopogmtevaehkq` (`typeId`),
  KEY `fk_mhwsiyvhggbvyocvfoygczxchjxqvqgoweyo` (`parentId`),
  CONSTRAINT `fk_iufpanczccujdiqxxhmthgmfbhdvdvrhmhwt` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_mhwsiyvhggbvyocvfoygczxchjxqvqgoweyo` FOREIGN KEY (`parentId`) REFERENCES `entries` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_ppsbqhtfstqrrfkalvxnhfhzmxlvyufworwm` FOREIGN KEY (`typeId`) REFERENCES `entrytypes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_sagdmmquwhgwfqquahfjpmmekbqfxbjndvam` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_yingisdhqevescvrjyvuisrtpnihppmnbuuw` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (2,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 13:58:56','2021-03-15 13:58:56','e042add1-36de-4104-ac49-a90319b52148'),(3,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 13:58:57','2021-03-15 13:58:57','c29dee02-f553-4439-af42-753c04c0ac3d'),(4,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 13:58:57','2021-03-15 13:58:57','0fd31fbc-8cd3-44a8-b0f2-829713dd7a1b'),(5,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 14:05:06','2021-03-15 14:05:06','f14817f0-e923-4d30-8fdd-f20b10c1baa1'),(7,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 14:05:36','2021-03-15 14:05:36','11161588-a399-490f-8d79-c41f74051286'),(9,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 14:08:07','2021-03-15 14:08:07','0659aee9-1553-4cc2-aa5b-bd15c9eef445'),(10,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 14:14:50','2021-03-15 14:14:50','6f675433-be9c-4399-b0bd-3e2ea4a39ccb'),(34,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-15 14:18:28','2021-03-15 14:18:28','b2975fa9-8b68-4bcf-a4fc-e498e7bbb3c9'),(38,2,NULL,2,NULL,'2021-03-15 14:29:00',NULL,1,'2021-03-15 14:29:22','2021-03-15 14:29:22','f75ad2d3-1ad7-450e-95cc-3d82edf772fc'),(39,2,NULL,2,NULL,'2021-03-15 14:29:00',NULL,NULL,'2021-03-15 14:29:22','2021-03-15 14:29:22','849b8079-bb48-4ad7-b977-c5404f77e89c'),(40,3,NULL,3,1,'2021-03-15 14:30:00',NULL,0,'2021-03-15 14:30:01','2021-03-17 21:53:55','c100f98c-0102-4421-b22a-234dca747922'),(41,3,NULL,3,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:30:01','2021-03-15 14:30:01','3999c6f2-cacf-441b-9054-b29579d6310d'),(42,3,NULL,3,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:30:01','2021-03-15 14:30:01','03d1e307-c645-428b-82e3-73523a6a2d8b'),(43,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:30:38','2021-03-15 14:30:38','2f94b2aa-4f77-4023-8e8f-0208f66d8c41'),(44,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:30:39','2021-03-15 14:30:39','f1fd52a8-a9a6-44cd-9126-c87487de7363'),(45,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:30:39','2021-03-15 14:30:39','51e3f543-e6b3-4bfd-b6d2-729e1147f75b'),(46,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:33:50','2021-03-15 14:33:50','66de79d9-4522-42cd-ad2f-59a388eff06e'),(47,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:34:12','2021-03-15 14:34:12','84f372c4-6f60-46be-abcb-266e4453c051'),(48,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:35:23','2021-03-15 14:35:23','aa12aae7-dbdd-4a2d-982d-5fbf2b09e6fb'),(49,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:40:04','2021-03-15 14:40:04','6e787fcc-77d6-458d-943f-55de12a01b14'),(50,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:40:04','2021-03-15 14:40:04','66120a3b-1171-4934-9d4e-2f2910729978'),(54,3,NULL,3,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:45:55','2021-03-15 14:45:55','c8f09d13-aecd-4970-b391-ff181bc6019b'),(55,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:48:13','2021-03-15 14:48:13','98009d95-7556-4c35-8b1f-741ae2c4dc27'),(56,3,NULL,3,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-15 14:48:31','2021-03-15 14:48:31','2b9873d9-b09c-4a0c-8ff1-7c5381cec093'),(57,3,NULL,3,1,'2021-03-17 21:57:00',NULL,NULL,'2021-03-17 21:57:04','2021-03-17 21:57:04','44676960-aff4-408f-9904-f9362ffcfa89'),(61,3,NULL,3,1,'2021-03-17 23:02:00',NULL,NULL,'2021-03-17 23:02:51','2021-03-17 23:02:51','a406b062-ea65-4723-a221-768320e3c373'),(62,3,NULL,3,1,'2021-03-17 22:37:00',NULL,NULL,'2021-03-17 23:04:26','2021-03-17 23:04:26','aa4e2231-1c7f-4e88-a334-e80feb17fcd3'),(63,3,NULL,3,1,'2021-03-17 22:37:00',NULL,NULL,'2021-03-17 23:04:26','2021-03-17 23:04:26','2d4c87cb-0ff5-480e-b19c-c896ca0bf3f8'),(64,3,NULL,3,1,'2021-03-17 22:36:00',NULL,NULL,'2021-03-17 23:04:41','2021-03-17 23:04:41','4856c417-b60a-4aa2-afd6-e7f1da6698bd'),(65,3,NULL,3,1,'2021-03-17 22:36:00',NULL,NULL,'2021-03-17 23:04:41','2021-03-17 23:04:41','edf1f002-90d4-46ee-81d1-51777981e771'),(66,3,NULL,3,1,'2021-03-17 21:57:00',NULL,NULL,'2021-03-17 23:04:56','2021-03-17 23:04:56','a4efdc7c-cbb8-4f97-8d24-06e1276579bd'),(67,3,NULL,3,1,'2021-03-17 21:57:00',NULL,NULL,'2021-03-17 23:04:56','2021-03-17 23:04:56','a4228e4b-0c55-4bbf-85a7-b7a509b61537'),(68,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:18:45','2021-03-17 23:18:45','c7bd3ab9-0a5c-4288-bd15-4a81ec2193fc'),(69,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:18:45','2021-03-17 23:18:45','38a5b3cf-0443-4fff-b8f4-010d441e95dd'),(70,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:18:56','2021-03-17 23:18:56','8578e5a0-0be3-4f09-a778-52e48ed2064b'),(71,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:19:36','2021-03-17 23:19:36','dc0b2657-0d2f-40b7-9dfe-775cd13fa6cb'),(72,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:20:00','2021-03-17 23:20:00','6d7689da-4632-4599-a351-3027af3b88f1'),(73,5,NULL,5,NULL,'2021-03-17 23:18:00',NULL,NULL,'2021-03-17 23:20:08','2021-03-17 23:20:08','74047b9f-c062-4df4-a3df-13927833540b'),(74,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-17 23:25:05','2021-03-17 23:25:05','e1096896-9cd2-45df-bdfc-532cf616f45c'),(78,1,NULL,1,NULL,'2021-03-15 13:58:00',NULL,NULL,'2021-03-17 23:25:22','2021-03-17 23:25:22','e3a53887-799c-4bb0-878e-594cc8d78426'),(87,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:47:07','2021-03-17 23:47:07','9183be27-0250-444e-b78d-e4cec148ffc1'),(88,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:47:07','2021-03-17 23:47:07','2d2fe2b3-5864-4ab7-90e5-4e9f94ad4f3b'),(89,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:49:08','2021-03-17 23:49:08','60ff1c5b-51a9-4ec5-8b40-e75c8c8afa61'),(90,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:49:27','2021-03-17 23:49:27','4747f6f8-7182-496e-9fcc-803f291ada3d'),(91,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:49:56','2021-03-17 23:49:56','d8eb486c-d110-426a-8b96-412db3072122'),(92,4,NULL,4,NULL,'2021-03-15 14:30:00',NULL,NULL,'2021-03-17 23:49:59','2021-03-17 23:49:59','abd32f5d-44af-4ae0-a419-07f7cae4f78e');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrytypes`
--

DROP TABLE IF EXISTS `entrytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) NOT NULL DEFAULT 1,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_xnjwgagmfqhumuujwmcowjttqsuktzkexfak` (`name`,`sectionId`),
  KEY `idx_lkkheqracwgpcrajohuqcvulwavvgtmolokj` (`handle`,`sectionId`),
  KEY `idx_sxiedtzfzvkmqgbikxqrnxassaahvltnpxfp` (`sectionId`),
  KEY `idx_pddynwwteqhtvhztjchueiprhedeushcxmld` (`fieldLayoutId`),
  KEY `idx_bznscbfhdspyitvqeqsehrxvnbggpwxkhylb` (`dateDeleted`),
  CONSTRAINT `fk_jxntjbhfolazpkehjjzjtqvywreqokpcmvik` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_qfygwjrrknybjkjkwybckiimaaekpvydgbzh` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrytypes`
--

LOCK TABLES `entrytypes` WRITE;
/*!40000 ALTER TABLE `entrytypes` DISABLE KEYS */;
INSERT INTO `entrytypes` VALUES (1,1,1,'Home','home',0,'site',NULL,'{section.name|raw}',1,'2021-03-15 13:58:56','2021-03-15 13:58:56',NULL,'10f68c59-d239-4667-a050-f1c467437cea'),(2,2,4,'About Us','aboutUs',0,'site',NULL,'{section.name|raw}',1,'2021-03-15 14:29:22','2021-03-15 14:29:22','2021-03-15 14:29:45','8eeadd59-a366-45d9-950a-71241df10172'),(3,3,5,'Stories','stories',1,'site',NULL,'{section.name|raw}',1,'2021-03-15 14:30:00','2021-03-17 21:56:48',NULL,'a3d0cb1d-364c-4fde-9712-fadc34874be9'),(4,4,6,'Our Gear','ourGear',1,'site',NULL,'{section.name|raw}',1,'2021-03-15 14:30:38','2021-03-15 14:33:50',NULL,'d6738b9c-c6e7-4f42-b38d-285594d01370'),(5,5,9,'Stories Listing','storiesListing',1,'site',NULL,'{section.name|raw}',1,'2021-03-17 23:18:44','2021-03-17 23:18:56',NULL,'13f4ea18-1f10-41d3-ba62-f477db21bdca');
/*!40000 ALTER TABLE `entrytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldgroups`
--

DROP TABLE IF EXISTS `fieldgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_niidkblkoyzudjkykococqwrurvfebagyolq` (`name`),
  KEY `idx_qxnrvfgzjxpbswxdwwgxltlzslrwlnhefamd` (`dateDeleted`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldgroups`
--

LOCK TABLES `fieldgroups` WRITE;
/*!40000 ALTER TABLE `fieldgroups` DISABLE KEYS */;
INSERT INTO `fieldgroups` VALUES (1,'Common','2021-03-15 13:52:16','2021-03-15 13:52:16',NULL,'db424180-892a-40cc-be45-7914371304ae'),(2,'Home Page','2021-03-15 14:03:39','2021-03-15 14:03:39',NULL,'94ca4c7a-4bb1-4f6c-b3ef-47c44c902757');
/*!40000 ALTER TABLE `fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayoutfields`
--

DROP TABLE IF EXISTS `fieldlayoutfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_ojgfvkyrjqliubgbsdzckeskqvnsrhopqvox` (`layoutId`,`fieldId`),
  KEY `idx_bnkomxfgqcyuvcrbpouthxghkxggywaoerzg` (`sortOrder`),
  KEY `idx_aopwtcnmuwxqbculgvzzqohiegzaqohxpxvw` (`tabId`),
  KEY `idx_zybcfvagwsoojoezpxpwnvxwaylymhlcuvcb` (`fieldId`),
  CONSTRAINT `fk_oujqxndnbjbjzojnbrmvaudlspoonvapapnc` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qmvfrteymeepnrrzrfmeuhzvlgwydoqmrylz` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_svehwjixxaclxptpbhmrjfvuyoidpbdadkqk` FOREIGN KEY (`tabId`) REFERENCES `fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayoutfields`
--

LOCK TABLES `fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `fieldlayoutfields` DISABLE KEYS */;
INSERT INTO `fieldlayoutfields` VALUES (3,3,4,5,1,0,'2021-03-15 14:13:47','2021-03-15 14:13:47','be725f7a-9f3e-463c-bed8-344288fd6bec'),(4,3,4,7,1,1,'2021-03-15 14:13:47','2021-03-15 14:13:47','f1b1081d-9fc0-4397-ada4-e13b04cf8d6b'),(5,3,4,6,1,2,'2021-03-15 14:13:47','2021-03-15 14:13:47','814e64a7-4c5e-4c87-b9bc-9859f6478338'),(18,5,15,12,0,1,'2021-03-17 21:56:48','2021-03-17 21:56:48','c0833ee6-0262-4282-b884-b8606a9f5c2c'),(19,5,15,13,0,2,'2021-03-17 21:56:48','2021-03-17 21:56:48','b10d8b03-58df-440c-8a4a-7f5423122917'),(20,5,15,14,0,3,'2021-03-17 21:56:48','2021-03-17 21:56:48','bae4e1df-06c1-408f-86c9-23ebad75e509'),(21,1,18,1,0,1,'2021-03-17 23:25:04','2021-03-17 23:25:04','a9d62144-5640-4dbe-abf3-db7242df2f18'),(22,1,18,2,0,2,'2021-03-17 23:25:04','2021-03-17 23:25:04','bf1d07a5-2783-4b3c-85df-f3b60ac04f79'),(23,1,19,15,0,0,'2021-03-17 23:25:04','2021-03-17 23:25:04','677c0cbe-de62-43b8-8548-cc7cba7ffb92'),(24,1,20,3,0,0,'2021-03-17 23:25:04','2021-03-17 23:25:04','d5ce4812-9b31-43c4-b421-46f8d93c7c3d'),(25,1,20,4,0,1,'2021-03-17 23:25:04','2021-03-17 23:25:04','597b21a0-6f16-4a70-8571-b06c99350f34'),(30,12,24,20,1,0,'2021-03-17 23:42:50','2021-03-17 23:42:50','f21c3d96-44c2-4b73-844e-1dd41d62872d'),(31,12,24,21,0,1,'2021-03-17 23:42:50','2021-03-17 23:42:50','d0ea8a65-5d54-4455-994b-fbd7d4468351'),(32,13,25,19,0,0,'2021-03-17 23:43:18','2021-03-17 23:43:18','fc4e9a9b-5281-41aa-8784-0024ba3c0703'),(33,6,26,14,0,1,'2021-03-17 23:49:08','2021-03-17 23:49:08','fe2eab36-0751-411d-9d9f-f9947baf1e2e'),(34,6,26,2,0,2,'2021-03-17 23:49:08','2021-03-17 23:49:08','a95ebb19-4488-4916-9f54-03f31670465c'),(35,6,26,13,0,3,'2021-03-17 23:49:08','2021-03-17 23:49:08','4761baa0-4a24-4e8f-9e3c-c173c5893f41'),(36,14,27,13,0,0,'2021-03-17 23:54:52','2021-03-17 23:54:52','939ea105-5132-4bd9-97fc-d32ddc03ea65');
/*!40000 ALTER TABLE `fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayouts`
--

DROP TABLE IF EXISTS `fieldlayouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_qjdbzgxwvowkjfoqjwsgbldqorkpodytpsuk` (`dateDeleted`),
  KEY `idx_pkmnlsnrvwdhklfjzmuueebekphldrooqlms` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayouts`
--

LOCK TABLES `fieldlayouts` WRITE;
/*!40000 ALTER TABLE `fieldlayouts` DISABLE KEYS */;
INSERT INTO `fieldlayouts` VALUES (1,'craft\\elements\\Entry','2021-03-15 13:58:56','2021-03-15 13:58:56',NULL,'3297705c-24b9-4a4f-9b44-990fd3c8ccc3'),(2,'craft\\elements\\Asset','2021-03-15 14:03:20','2021-03-15 14:03:20',NULL,'42ece358-05bf-4b94-b3f3-c67bd4a1a707'),(3,'craft\\elements\\MatrixBlock','2021-03-15 14:13:46','2021-03-15 14:13:46',NULL,'741ef499-6e1f-4262-8aa8-969f3beb8230'),(4,'craft\\elements\\Entry','2021-03-15 14:29:22','2021-03-15 14:29:22','2021-03-15 14:29:45','500e8084-1c69-42cf-a95e-77ba8c1c5ad0'),(5,'craft\\elements\\Entry','2021-03-15 14:30:00','2021-03-15 14:30:00',NULL,'9c07c560-7d45-414e-ba78-275483bdb4c1'),(6,'craft\\elements\\Entry','2021-03-15 14:30:38','2021-03-15 14:30:38',NULL,'30266867-4bb1-43f9-8753-9647d47b553c'),(7,'craft\\elements\\MatrixBlock','2021-03-15 14:41:32','2021-03-15 14:41:32','2021-03-17 21:49:29','118d72d3-4e9b-4c0e-873d-04d19c234b30'),(8,'craft\\elements\\GlobalSet','2021-03-15 14:42:04','2021-03-15 14:42:04','2021-03-17 23:31:56','3d032691-49a2-496f-8d05-5821bec22066'),(9,'craft\\elements\\Entry','2021-03-17 23:18:44','2021-03-17 23:18:44',NULL,'e5353fc1-2b8d-487c-8627-b77f43c5fa32'),(10,'craft\\elements\\MatrixBlock','2021-03-17 23:34:52','2021-03-17 23:34:52','2021-03-17 23:41:27','11f93aee-1ed4-41e2-8ad3-b4b4a8fb9993'),(11,'craft\\elements\\GlobalSet','2021-03-17 23:35:16','2021-03-17 23:35:16','2021-03-17 23:41:13','4f5a5b37-45c7-463d-892b-ae9bc2fdd168'),(12,'craft\\elements\\MatrixBlock','2021-03-17 23:42:50','2021-03-17 23:42:50',NULL,'79e13098-fb63-43f5-a048-a418660b4491'),(13,'craft\\elements\\GlobalSet','2021-03-17 23:43:18','2021-03-17 23:43:18',NULL,'af19c6af-0077-4ce7-b260-62d5168d1f00'),(14,'craft\\elements\\GlobalSet','2021-03-17 23:54:51','2021-03-17 23:54:51',NULL,'0ebefe1d-4f83-400b-8466-c447007cfdb4');
/*!40000 ALTER TABLE `fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fieldlayouttabs`
--

DROP TABLE IF EXISTS `fieldlayouttabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elements` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ulzzlmkxxabbpctzlwtpjlmyfxvynhncvqof` (`sortOrder`),
  KEY `idx_hyuhanfdobknzpziuqxqagtegjrcxwuxrbtd` (`layoutId`),
  CONSTRAINT `fk_cdnqomlrdmcjweidckfblixqpewzusgzgudl` FOREIGN KEY (`layoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fieldlayouttabs`
--

LOCK TABLES `fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `fieldlayouttabs` DISABLE KEYS */;
INSERT INTO `fieldlayouttabs` VALUES (2,2,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\AssetTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2021-03-15 14:03:20','2021-03-15 14:03:20','d22b3281-a9eb-469f-9ca1-901cf8be3bdb'),(4,3,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"321605ff-8708-47e9-a213-1d92b1da61fb\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"a975a1f8-ddcb-47cb-a55d-58f74dd47eaa\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3\"}]',1,'2021-03-15 14:13:46','2021-03-15 14:13:46','cc497cd3-da00-4a9e-8fb3-51d1f8423111'),(7,4,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2021-03-15 14:29:22','2021-03-15 14:29:22','09d51171-e9c4-4a17-b735-b4abcfa92e7a'),(11,7,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"de41a95c-a30b-4995-93f3-2e2e0a37a035\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"856cc5f4-c949-4710-a8c0-9115c6eedc2d\"}]',1,'2021-03-15 14:41:33','2021-03-15 14:41:33','9a3c3f94-be64-4bd5-b123-ce046ebc3f8f'),(12,8,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c2f3d531-9abf-4f1b-808d-8935c5ab728d\"}]',1,'2021-03-15 14:42:04','2021-03-15 14:42:04','1319f512-7ce4-4645-8629-189d3aea7b68'),(15,5,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f690d083-0f9e-49e5-8d83-3a647dc74a5f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ee331c79-07b9-472d-bc91-1a7bae592c46\"}]',1,'2021-03-17 21:56:48','2021-03-17 21:56:48','28d62750-962d-4183-80a7-2d8d189fc197'),(17,9,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100}]',1,'2021-03-17 23:18:56','2021-03-17 23:18:56','ba9b804f-45d9-468a-a0fa-69d59a788f63'),(18,1,'Hero','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"c32944d8-cc7d-4860-97dd-e164dfda947e\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"1bf017fc-87c7-4ae3-b857-1826939ce2be\"}]',1,'2021-03-17 23:25:04','2021-03-17 23:25:04','8f639938-cf0f-4d43-91ab-0e8e4e14181f'),(19,1,'Featured Story','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d65e3279-43b8-45ed-b494-8f10ee772957\"}]',2,'2021-03-17 23:25:04','2021-03-17 23:25:04','bb3f2827-4cba-4246-8422-84d14570e16a'),(20,1,'Riders','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b4609a50-b4a3-4fc9-9b23-3c87928047fd\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"e574e269-2b5e-4770-8da3-1be40c8e13e0\"}]',3,'2021-03-17 23:25:04','2021-03-17 23:25:04','7391a3ff-1cdb-4176-9e2d-c08c5e021b8f'),(21,10,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"944302b2-c4d4-45a6-a875-83340a6c5800\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ca8ede5f-77b9-49e5-bc7b-9207a92ffbf4\"}]',1,'2021-03-17 23:34:52','2021-03-17 23:34:52','ec49d22d-39a8-4206-ab16-2d783dc5e84e'),(23,11,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f1a42a20-e9d2-42fa-aa5b-5e5a9714a245\"}]',1,'2021-03-17 23:40:43','2021-03-17 23:40:43','24748e94-7cc5-48d3-95bb-ea33d590ed1b'),(24,12,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":true,\"width\":100,\"fieldUid\":\"67f8bf4c-3979-4564-9d1c-ed5920a87f24\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"f5aea78d-8ebe-4868-bc02-f4de64aedd2d\"}]',1,'2021-03-17 23:42:50','2021-03-17 23:42:50','2c0f8826-1240-4090-a3f3-2bd605a78f05'),(25,13,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"b13cab7b-f5c5-4387-90a7-64620f7a6e73\"}]',1,'2021-03-17 23:43:18','2021-03-17 23:43:18','4876bf74-aa28-4eae-87c4-9ac3af46730f'),(26,6,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\EntryTitleField\",\"autocomplete\":false,\"class\":null,\"size\":null,\"name\":null,\"autocorrect\":true,\"autocapitalize\":true,\"disabled\":false,\"readonly\":false,\"title\":null,\"placeholder\":null,\"step\":null,\"min\":null,\"max\":null,\"requirable\":false,\"id\":null,\"containerAttributes\":[],\"inputContainerAttributes\":[],\"labelAttributes\":[],\"orientation\":null,\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"width\":100},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"ee331c79-07b9-472d-bc91-1a7bae592c46\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"1bf017fc-87c7-4ae3-b857-1826939ce2be\"},{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"}]',1,'2021-03-17 23:49:07','2021-03-17 23:49:07','7f0fce97-769a-4d6f-984c-0137a2cfe03b'),(27,14,'Content','[{\"type\":\"craft\\\\fieldlayoutelements\\\\CustomField\",\"label\":null,\"instructions\":null,\"tip\":null,\"warning\":null,\"required\":false,\"width\":100,\"fieldUid\":\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"}]',1,'2021-03-17 23:54:51','2021-03-17 23:54:51','67d3ac32-b7ed-4d8a-9ef1-765f489bd0f8');
/*!40000 ALTER TABLE `fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `searchable` tinyint(1) NOT NULL DEFAULT 1,
  `translationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `translationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_xvzrebobvbannqdwcrabknehruddlneopxqa` (`handle`,`context`),
  KEY `idx_nomkppsdynjuqudoidzqanobvmzhkryupobq` (`groupId`),
  KEY `idx_zqzatascxpumpsqflppjgbvsjphfuvyynlfz` (`context`),
  CONSTRAINT `fk_byplccmmajdfobrpieyyglfgfvclooyagyit` FOREIGN KEY (`groupId`) REFERENCES `fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
INSERT INTO `fields` VALUES (1,2,'Hero Title','heroTitle','global','',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}','2021-03-15 14:03:52','2021-03-15 14:03:52','c32944d8-cc7d-4860-97dd-e164dfda947e'),(2,2,'Hero Image','heroImage','global','',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"1\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add a background image\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}','2021-03-15 14:04:38','2021-03-15 14:04:38','1bf017fc-87c7-4ae3-b857-1826939ce2be'),(3,2,'Riders Intro Content','ridersIntroContent','global','',0,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"1\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2021-03-15 14:11:53','2021-03-15 14:11:53','b4609a50-b4a3-4fc9-9b23-3c87928047fd'),(4,2,'Riders','riders','global','',0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_riders}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}','2021-03-15 14:13:42','2021-03-15 14:13:42','e574e269-2b5e-4770-8da3-1be40c8e13e0'),(5,NULL,'Photo','photo','matrixBlockType:16a8fa3d-9344-4092-9a5d-cd898ff6f921','',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"large\"}','2021-03-15 14:13:45','2021-03-15 14:13:45','321605ff-8708-47e9-a213-1d92b1da61fb'),(6,NULL,'Description','description','matrixBlockType:16a8fa3d-9344-4092-9a5d-cd898ff6f921','',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"2\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}','2021-03-15 14:13:46','2021-03-15 14:13:46','999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3'),(7,NULL,'Full Name','fullName','matrixBlockType:16a8fa3d-9344-4092-9a5d-cd898ff6f921','',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}','2021-03-15 14:13:46','2021-03-15 14:13:46','a975a1f8-ddcb-47cb-a55d-58f74dd47eaa'),(12,1,'Photos','photos','global','',0,'site',NULL,'craft\\fields\\Assets','{\"allowSelfRelations\":false,\"allowUploads\":true,\"allowedKinds\":[\"image\"],\"defaultUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"defaultUploadLocationSubpath\":\"\",\"limit\":\"\",\"localizeRelations\":false,\"previewMode\":\"full\",\"restrictFiles\":\"1\",\"selectionLabel\":\"Add a photo\",\"showSiteMenu\":false,\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"singleUploadLocationSource\":\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\",\"singleUploadLocationSubpath\":\"\",\"source\":null,\"sources\":[\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"],\"targetSiteId\":null,\"useSingleFolder\":false,\"validateRelatedElements\":false,\"viewMode\":\"list\"}','2021-03-17 21:50:32','2021-03-17 21:50:32','f690d083-0f9e-49e5-8d83-3a647dc74a5f'),(13,1,'Rich Text','richText','global','',0,'none',NULL,'craft\\redactor\\Field','{\"availableTransforms\":\"*\",\"availableVolumes\":\"*\",\"cleanupHtml\":true,\"columnType\":\"text\",\"configSelectionMode\":\"choose\",\"defaultTransform\":\"\",\"manualConfig\":\"\",\"purifierConfig\":\"\",\"purifyHtml\":\"1\",\"redactorConfig\":\"\",\"removeEmptyTags\":\"1\",\"removeInlineStyles\":\"1\",\"removeNbsp\":\"1\",\"showHtmlButtonForNonAdmins\":\"1\",\"showUnpermittedFiles\":false,\"showUnpermittedVolumes\":false,\"uiMode\":\"enlarged\"}','2021-03-17 21:50:56','2021-03-17 21:50:56','d62a7882-b1d6-439e-9ae3-416bfb28c72f'),(14,1,'Short Description','shortDescription','global','',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"3\",\"multiline\":\"1\",\"placeholder\":null,\"uiMode\":\"normal\"}','2021-03-17 21:55:57','2021-03-17 21:55:57','ee331c79-07b9-472d-bc91-1a7bae592c46'),(15,1,'Featured Story','featuredStory','global','',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"Select featured Story\",\"showSiteMenu\":false,\"source\":null,\"sources\":[\"section:9b62c7b0-9947-4702-9726-b3929d2fb2dd\"],\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2021-03-17 23:24:45','2021-03-17 23:24:45','d65e3279-43b8-45ed-b494-8f10ee772957'),(19,1,'Navi','navi','global','',0,'site',NULL,'craft\\fields\\Matrix','{\"contentTable\":\"{{%matrixcontent_navi}}\",\"maxBlocks\":\"\",\"minBlocks\":\"\",\"propagationMethod\":\"all\"}','2021-03-17 23:42:46','2021-03-17 23:42:46','b13cab7b-f5c5-4387-90a7-64620f7a6e73'),(20,NULL,'Link Text','linkText','matrixBlockType:3623f66d-68e9-4fe5-b37e-70796c7f2360','',0,'none',NULL,'craft\\fields\\PlainText','{\"byteLimit\":null,\"charLimit\":null,\"code\":\"\",\"columnType\":null,\"initialRows\":\"4\",\"multiline\":\"\",\"placeholder\":null,\"uiMode\":\"normal\"}','2021-03-17 23:42:49','2021-03-17 23:42:49','67f8bf4c-3979-4564-9d1c-ed5920a87f24'),(21,NULL,'Link Destination','linkDestination','matrixBlockType:3623f66d-68e9-4fe5-b37e-70796c7f2360','',0,'site',NULL,'craft\\fields\\Entries','{\"allowSelfRelations\":false,\"limit\":\"1\",\"localizeRelations\":false,\"selectionLabel\":\"\",\"showSiteMenu\":false,\"source\":null,\"sources\":\"*\",\"targetSiteId\":null,\"validateRelatedElements\":false,\"viewMode\":null}','2021-03-17 23:42:50','2021-03-17 23:42:50','f5aea78d-8ebe-4868-bc02-f4de64aedd2d');
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `globalsets`
--

DROP TABLE IF EXISTS `globalsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `globalsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tobarszgvzyhbcskpmztufcrwoxsxpzukuzl` (`name`),
  KEY `idx_bzhfiecsdhftmnnhvjlznxarvuqdjojtfset` (`handle`),
  KEY `idx_cyfzqcopvjjbjbfrinkzakjwfglzcbykhbqg` (`fieldLayoutId`),
  CONSTRAINT `fk_dpyzakbxxwvgdohtillhmvxqiunnovjbrozi` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_xynhgdjgniyzrvpsextqrjrieficchnsakjz` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `globalsets`
--

LOCK TABLES `globalsets` WRITE;
/*!40000 ALTER TABLE `globalsets` DISABLE KEYS */;
INSERT INTO `globalsets` VALUES (51,'Header','header',8,'2021-03-15 14:42:04','2021-03-15 14:42:04','9fce6474-2ab7-4e7b-bb1f-ed9329dbe0bb'),(82,'Header','header',11,'2021-03-17 23:35:16','2021-03-17 23:35:16','55810e4a-7f9d-40ca-8f4e-4043221e0bd9'),(84,'Head','head',13,'2021-03-17 23:43:18','2021-03-17 23:43:18','83247a89-0b72-49f4-a8c3-6db679e1584d'),(93,'Footer','footer',14,'2021-03-17 23:54:52','2021-03-17 23:54:52','bcba405e-b106-48ab-83d2-076b3d8c7547');
/*!40000 ALTER TABLE `globalsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gqlschemas`
--

DROP TABLE IF EXISTS `gqlschemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqlschemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `isPublic` tinyint(1) NOT NULL DEFAULT 0,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gqlschemas`
--

LOCK TABLES `gqlschemas` WRITE;
/*!40000 ALTER TABLE `gqlschemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `gqlschemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gqltokens`
--

DROP TABLE IF EXISTS `gqltokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gqltokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `expiryDate` datetime DEFAULT NULL,
  `lastUsed` datetime DEFAULT NULL,
  `schemaId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_mujzbmfkfcartdonmrgyymdlqcowxjwwdcqt` (`accessToken`),
  UNIQUE KEY `idx_pykiiosxeoolounxccxcjrmvjucllaarzcnd` (`name`),
  KEY `fk_mpcuoddlryxzhoweoarlmopqsatmxeqttegp` (`schemaId`),
  CONSTRAINT `fk_mpcuoddlryxzhoweoarlmopqsatmxeqttegp` FOREIGN KEY (`schemaId`) REFERENCES `gqlschemas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gqltokens`
--

LOCK TABLES `gqltokens` WRITE;
/*!40000 ALTER TABLE `gqltokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `gqltokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance` tinyint(1) NOT NULL DEFAULT 0,
  `configVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `fieldVersion` char(12) COLLATE utf8_unicode_ci NOT NULL DEFAULT '000000000000',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'3.6.10','3.6.6',0,'ejuvaoupifns','xcxspfodnczu','2021-03-15 13:52:16','2021-03-17 23:54:52','d64848a9-59a1-4401-9704-2a1f27cc8e5f');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixblocks`
--

DROP TABLE IF EXISTS `matrixblocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `deletedWithOwner` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ytjfamyhilzbxwuscajsvaelgfegirdcobza` (`ownerId`),
  KEY `idx_fucxzvrglgkieibryzppwzbaljjkrpvuehhr` (`fieldId`),
  KEY `idx_mvyesaftedqfbixavyndfvkahpylralhylwe` (`typeId`),
  KEY `idx_fbjkbckpceugqkxkdeuxufixzfcqekqwirug` (`sortOrder`),
  CONSTRAINT `fk_jsjsyvpkddgkywtrwvwjmzylxculudoyzaqn` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_odjhnibjwlgzbkcyqksqtpjbmwfllhxduhmr` FOREIGN KEY (`ownerId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_qtayallroffptqotvtfpomnxphtllgmceiuu` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ulkgdxjnpzvhofzvkrikbfhibtlbkzauutdm` FOREIGN KEY (`typeId`) REFERENCES `matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixblocks`
--

LOCK TABLES `matrixblocks` WRITE;
/*!40000 ALTER TABLE `matrixblocks` DISABLE KEYS */;
INSERT INTO `matrixblocks` VALUES (31,2,4,1,1,NULL,'2021-03-15 14:18:28','2021-03-15 14:18:28','5cdd8e05-ccea-4d74-8e2f-c2d79cac5063'),(32,2,4,1,2,NULL,'2021-03-15 14:18:28','2021-03-15 14:18:28','1331dadb-d58f-40e9-8fe2-32c8bd90bb3d'),(33,2,4,1,3,NULL,'2021-03-15 14:18:28','2021-03-15 14:18:28','0089360f-b65c-41d7-84c8-568a7ae1807d'),(35,34,4,1,1,NULL,'2021-03-15 14:18:29','2021-03-15 14:18:29','d1e9af49-fc84-48a8-9ec2-ac1bcf39c2bd'),(36,34,4,1,2,NULL,'2021-03-15 14:18:29','2021-03-15 14:18:29','f28ba678-d863-430a-880e-98ba44e3f7f0'),(37,34,4,1,3,NULL,'2021-03-15 14:18:29','2021-03-15 14:18:29','37d065ab-c6c9-40d2-afd8-f59e946ec49f'),(75,74,4,1,1,NULL,'2021-03-17 23:25:06','2021-03-17 23:25:06','efc71aee-3208-4e36-8969-96cd00d9cc2a'),(76,74,4,1,2,NULL,'2021-03-17 23:25:06','2021-03-17 23:25:06','3d10e10e-67bf-456e-86ba-bea43dc1c865'),(77,74,4,1,3,NULL,'2021-03-17 23:25:06','2021-03-17 23:25:06','b427d68c-f30a-4fde-bf69-5bb2ed22fb3a'),(79,78,4,1,1,NULL,'2021-03-17 23:25:23','2021-03-17 23:25:23','e5284746-3dfa-4f64-ae3d-7bd97b3112ed'),(80,78,4,1,2,NULL,'2021-03-17 23:25:23','2021-03-17 23:25:23','793b42f0-9cb7-4072-892b-5e6d430b13e7'),(81,78,4,1,3,NULL,'2021-03-17 23:25:23','2021-03-17 23:25:23','77591297-7dbd-42d6-a7c9-b5da205afbc5'),(85,84,19,4,2,NULL,'2021-03-17 23:43:33','2021-03-17 23:44:16','764b62ec-3557-402f-a80a-7bf780a0e3c5'),(86,84,19,4,1,NULL,'2021-03-17 23:44:16','2021-03-17 23:44:16','12acf232-7374-4486-ada1-442010d9aca9');
/*!40000 ALTER TABLE `matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixblocktypes`
--

DROP TABLE IF EXISTS `matrixblocktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_vficjwqqaourhhlwptsbvthhrwmvebnfaqwh` (`name`,`fieldId`),
  KEY `idx_bliacjdreueaidhofqqmpfwkuqeoybysiezh` (`handle`,`fieldId`),
  KEY `idx_dtflvijtzrkelqiengoeavfdacopfbkwhfiq` (`fieldId`),
  KEY `idx_xtnypavakwghnzeqvxagksokcjragbdemoyj` (`fieldLayoutId`),
  CONSTRAINT `fk_guseeuzwzbjvjrkuxwuugbxjhebdlzzlwlrq` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fk_mjbebhtcdjzcpfcqakmchxjgrvtvnbbdkazg` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixblocktypes`
--

LOCK TABLES `matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `matrixblocktypes` DISABLE KEYS */;
INSERT INTO `matrixblocktypes` VALUES (1,4,3,'Rider','rider',1,'2021-03-15 14:13:47','2021-03-15 14:13:47','16a8fa3d-9344-4092-9a5d-cd898ff6f921'),(4,19,12,'Nav Link','navLink',1,'2021-03-17 23:42:51','2021-03-17 23:42:51','3623f66d-68e9-4fe5-b37e-70796c7f2360');
/*!40000 ALTER TABLE `matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixcontent_navi`
--

DROP TABLE IF EXISTS `matrixcontent_navi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixcontent_navi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_navLink_linkText` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_wynhkruwlelitpwsuarmwlaeumnhwmkvemvp` (`elementId`,`siteId`),
  KEY `fk_eqjfgkpknwpgtxavwwrvuvzeqawjfoasiziv` (`siteId`),
  CONSTRAINT `fk_eqjfgkpknwpgtxavwwrvuvzeqawjfoasiziv` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_gqiioryrkbtnlyujzllafwltunxqtbzzuixs` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixcontent_navi`
--

LOCK TABLES `matrixcontent_navi` WRITE;
/*!40000 ALTER TABLE `matrixcontent_navi` DISABLE KEYS */;
INSERT INTO `matrixcontent_navi` VALUES (1,85,1,'2021-03-17 23:43:33','2021-03-17 23:45:10','2df22773-47ad-42d8-b03c-a6333359cd0d','Our Gear'),(2,86,1,'2021-03-17 23:44:16','2021-03-17 23:45:10','8b669e29-1fb5-46e5-8544-bbbb05ce9d36','Stories');
/*!40000 ALTER TABLE `matrixcontent_navi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrixcontent_riders`
--

DROP TABLE IF EXISTS `matrixcontent_riders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrixcontent_riders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `field_rider_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_rider_fullName` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_rsydjnuyagbrxglgsmubvtcjgxkpyglnufnl` (`elementId`,`siteId`),
  KEY `fk_byaunozsqhujjeybfpbcvfqzofzjwqopzhei` (`siteId`),
  CONSTRAINT `fk_byaunozsqhujjeybfpbcvfqzofzjwqopzhei` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_iojiycohfskxseggijgficudgmiewnjlieeb` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrixcontent_riders`
--

LOCK TABLES `matrixcontent_riders` WRITE;
/*!40000 ALTER TABLE `matrixcontent_riders` DISABLE KEYS */;
INSERT INTO `matrixcontent_riders` VALUES (1,31,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','4817bce3-71d3-471b-848f-e376fee7b4ee','Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Henry Potter'),(2,32,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','b9f2cb92-8871-4690-86fd-44fdf47bc3d5','Efficitur lectus sit amet, consequat erat. Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Sarah Bradburry'),(3,33,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','c39695dc-8fe8-4bca-9c58-62c21557d82f','Afficitur lectus sit amet, consequat erat. Non lorem tristique, efficitur lectus sit amet.','Jack Starfield'),(4,35,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','7c5ca8c0-cb5f-449e-83e3-b9e955c7aaf8','Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Henry Potter'),(5,36,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','bcdb8ace-427b-4026-9946-51d9b1927da0','Efficitur lectus sit amet, consequat erat. Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Sarah Bradburry'),(6,37,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','2521f3c2-6e78-48a4-a1b2-25c354842691','Afficitur lectus sit amet, consequat erat. Non lorem tristique, efficitur lectus sit amet.','Jack Starfield'),(7,75,1,'2021-03-17 23:25:05','2021-03-17 23:25:05','37a1860a-3b4c-444b-82e7-4e9f491f6e55','Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Henry Potter'),(8,76,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','1a80ce7a-6bb6-4618-9ed0-b0629b2568b4','Efficitur lectus sit amet, consequat erat. Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Sarah Bradburry'),(9,77,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','2c0d1d68-437b-4e57-887a-113a1488eced','Afficitur lectus sit amet, consequat erat. Non lorem tristique, efficitur lectus sit amet.','Jack Starfield'),(10,79,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','1c74c9df-1bb8-4026-830c-91b4be5a9c58','Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Henry Potter'),(11,80,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','ebd212ac-81a9-456f-b0b9-980a61cc3a2a','Efficitur lectus sit amet, consequat erat. Cras non lorem tristique, efficitur lectus sit amet, consequat erat.','Sarah Bradburry'),(12,81,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','e351068e-ad97-4c66-a993-0e671b453be6','Afficitur lectus sit amet, consequat erat. Non lorem tristique, efficitur lectus sit amet.','Jack Starfield');
/*!40000 ALTER TABLE `matrixcontent_riders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_hwbovlysrzudylzamlizvrgpwluqlsrtjozw` (`track`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'craft','Install','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','1f4d1bc7-8040-4f51-90af-044995a7f16f'),(2,'craft','m150403_183908_migrations_table_changes','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','a11bb0a0-4b9c-48d1-afa1-87cc09803261'),(3,'craft','m150403_184247_plugins_table_changes','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','9da5453b-cc5c-47f3-bc2c-c77427e65407'),(4,'craft','m150403_184533_field_version','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','48b3caa8-e832-41ba-9de8-f899fba5a209'),(5,'craft','m150403_184729_type_columns','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','63c95406-ec02-4ea3-ace0-ce59d6d3963a'),(6,'craft','m150403_185142_volumes','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','27bb48f6-aaa9-4d75-9216-622de750f349'),(7,'craft','m150428_231346_userpreferences','2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-15 13:52:18','67b8b788-4120-4b90-9130-86eafef43dee'),(8,'craft','m150519_150900_fieldversion_conversion','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','fec6affe-d392-4ed1-a1e1-8159d2073693'),(9,'craft','m150617_213829_update_email_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','fb81f8c2-d629-4c2d-a0fa-21a3e30ec170'),(10,'craft','m150721_124739_templatecachequeries','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','337d73ca-62fa-438b-803f-ace472fee810'),(11,'craft','m150724_140822_adjust_quality_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','6cc32df6-6988-4ab3-ab1f-f35cd46233d5'),(12,'craft','m150815_133521_last_login_attempt_ip','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','7a705a97-fd5c-428f-ac84-ff457b3e74b8'),(13,'craft','m151002_095935_volume_cache_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','3d0e805b-7aa3-495c-94aa-dd079fea751c'),(14,'craft','m151005_142750_volume_s3_storage_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','2f39855f-0032-4e41-b17d-8f6fa18937d7'),(15,'craft','m151016_133600_delete_asset_thumbnails','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','22b0c787-0064-408c-ae73-42204b1dfba0'),(16,'craft','m151209_000000_move_logo','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','19283311-46f7-40f2-b3f1-0a3ef35a0ea2'),(17,'craft','m151211_000000_rename_fileId_to_assetId','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','646c4cac-0754-406a-b372-e3cdcc28ba9c'),(18,'craft','m151215_000000_rename_asset_permissions','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','032123cb-bc12-46b9-89b7-741d148c8ad7'),(19,'craft','m160707_000001_rename_richtext_assetsource_setting','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','8d7b9ece-9f39-4f7c-a26c-628f06a9c16e'),(20,'craft','m160708_185142_volume_hasUrls_setting','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','96e4a320-8612-400c-916d-59755a408674'),(21,'craft','m160714_000000_increase_max_asset_filesize','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','cbce320c-fdac-48ec-95cd-4a616820ebfe'),(22,'craft','m160727_194637_column_cleanup','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','27eb4c3b-d71d-4619-8a38-2babcf0c233c'),(23,'craft','m160804_110002_userphotos_to_assets','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','9c5bb0d8-74bb-4638-a599-b4827bea3abf'),(24,'craft','m160807_144858_sites','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','0b46173d-d697-4cac-ab56-2f90cd1889dd'),(25,'craft','m160829_000000_pending_user_content_cleanup','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','ef349130-230d-4d90-8654-2298838491b2'),(26,'craft','m160830_000000_asset_index_uri_increase','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','c28f0d7a-15cf-4d2a-b5b9-1e67fd274cd1'),(27,'craft','m160912_230520_require_entry_type_id','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','053c66d8-a1f8-4297-a8f3-5c680a5f1320'),(28,'craft','m160913_134730_require_matrix_block_type_id','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','d5d2aacd-010e-46e3-80ae-ea639c833b8f'),(29,'craft','m160920_174553_matrixblocks_owner_site_id_nullable','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','14f15567-12b5-4234-b031-9272cba65dbb'),(30,'craft','m160920_231045_usergroup_handle_title_unique','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','69454cc5-3982-4345-b14b-bcb8acfd94b4'),(31,'craft','m160925_113941_route_uri_parts','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','e897abc0-d3f1-4bfd-b077-595ac47d9297'),(32,'craft','m161006_205918_schemaVersion_not_null','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','a5d9822c-3798-47ff-a5b2-a78c2e1f4522'),(33,'craft','m161007_130653_update_email_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','0a7146e7-96aa-4ed5-b6c2-33c1945ad8ff'),(34,'craft','m161013_175052_newParentId','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','211090c6-e7d2-4ec2-8f4a-234ed65761af'),(35,'craft','m161021_102916_fix_recent_entries_widgets','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','40f9d920-7a03-406e-a7e2-2ac6a46468d5'),(36,'craft','m161021_182140_rename_get_help_widget','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','4977888c-5617-4284-852d-aa4761880591'),(37,'craft','m161025_000000_fix_char_columns','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','2d53ac94-28f6-4f9a-a555-e104697cdd67'),(38,'craft','m161029_124145_email_message_languages','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','fbe847c8-4f34-44b3-a139-5603d8474469'),(39,'craft','m161108_000000_new_version_format','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','073d6c3c-5c67-4bf2-a74b-bce1b3e04970'),(40,'craft','m161109_000000_index_shuffle','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','8e833df7-fe30-49f9-a7a0-be600610f375'),(41,'craft','m161122_185500_no_craft_app','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','2528fe21-2a2d-43ad-8ef5-5c8b8179635d'),(42,'craft','m161125_150752_clear_urlmanager_cache','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','a13ae2e8-a4dd-46f5-8c32-d8620ed75baf'),(43,'craft','m161220_000000_volumes_hasurl_notnull','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','1d983ae9-0f90-450d-8382-4c8ba4ca52ba'),(44,'craft','m170114_161144_udates_permission','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','3a94bff4-5c4c-4139-b4a2-0dcca0d315dd'),(45,'craft','m170120_000000_schema_cleanup','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','10b74594-4cc8-40fc-b88a-d987c2b05a65'),(46,'craft','m170126_000000_assets_focal_point','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','3b0a6a42-28f9-4d64-9bad-1edc6ea8041a'),(47,'craft','m170206_142126_system_name','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','125ea507-bb7c-4caa-92c3-fa29b6778480'),(48,'craft','m170217_044740_category_branch_limits','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','aa6e2974-23df-4bbb-888b-b41c7f2b60da'),(49,'craft','m170217_120224_asset_indexing_columns','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','87a961ca-cc72-4104-a6ba-0cbd42e5a56a'),(50,'craft','m170223_224012_plain_text_settings','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','9675be72-0db9-490f-8c48-db5c37aa136d'),(51,'craft','m170227_120814_focal_point_percentage','2021-03-15 13:52:19','2021-03-15 13:52:19','2021-03-15 13:52:19','46750b51-f3b3-4a8e-ac3f-c1072f793710'),(52,'craft','m170228_171113_system_messages','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','d75aa2d0-9446-405f-8a74-e173ed03ca55'),(53,'craft','m170303_140500_asset_field_source_settings','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','1c7e763f-0e3f-477a-b59e-f39c4dada6ec'),(54,'craft','m170306_150500_asset_temporary_uploads','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','65feedc9-7fd1-4668-9670-245f40eede4a'),(55,'craft','m170523_190652_element_field_layout_ids','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','25cdd665-911b-439f-8c5e-cbcab2ff9573'),(56,'craft','m170621_195237_format_plugin_handles','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','2067d9b5-fe8a-4c40-a69b-3d8faa761a48'),(57,'craft','m170630_161027_deprecation_line_nullable','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','7e7318fc-1f23-41e2-b6f8-fbeb5363d1d7'),(58,'craft','m170630_161028_deprecation_changes','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','f7bbd2ad-167f-431d-857d-bd4fefdb087b'),(59,'craft','m170703_181539_plugins_table_tweaks','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','526aadb1-541d-40fd-acef-8072091d40c4'),(60,'craft','m170704_134916_sites_tables','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','48ace402-d2c8-4a57-b060-e07094704e00'),(61,'craft','m170706_183216_rename_sequences','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','1d848fd8-da91-4e9d-bcf0-652450d19995'),(62,'craft','m170707_094758_delete_compiled_traits','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','3200806a-ae16-49e8-a851-65bd805f5c8c'),(63,'craft','m170731_190138_drop_asset_packagist','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','c85cf8c2-8907-4c77-96cf-c1bc99710204'),(64,'craft','m170810_201318_create_queue_table','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','f3d2b5f3-1425-4a6a-9e15-ac9d116081e8'),(65,'craft','m170903_192801_longblob_for_queue_jobs','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','e03a94f5-960c-45d1-afe6-0b7d368c7513'),(66,'craft','m170914_204621_asset_cache_shuffle','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','67313de9-8705-4dff-8fa8-d42bb5980b63'),(67,'craft','m171011_214115_site_groups','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','ac63337b-b057-44e2-806d-54d1f12edff8'),(68,'craft','m171012_151440_primary_site','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','1ad8851d-88bc-4cdb-9eeb-21fd4661c097'),(69,'craft','m171013_142500_transform_interlace','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','1af41f44-dbbd-4f2e-8d50-5d581b48de1c'),(70,'craft','m171016_092553_drop_position_select','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','f4e25da0-295d-42ad-bdc1-326116f98809'),(71,'craft','m171016_221244_less_strict_translation_method','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','b7f9da0a-ed02-482b-82e7-f4ed10c6b7af'),(72,'craft','m171107_000000_assign_group_permissions','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','90ee46b8-d82d-4931-8ce2-a35e887421a2'),(73,'craft','m171117_000001_templatecache_index_tune','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','46553bc7-b258-4a6c-be4e-c9c9542e5f01'),(74,'craft','m171126_105927_disabled_plugins','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','b0bbe56a-a96b-4e4f-9bac-2e6db657f4dc'),(75,'craft','m171130_214407_craftidtokens_table','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','27c7520a-9c3c-44d0-944c-dd62efe2087a'),(76,'craft','m171202_004225_update_email_settings','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','a5cc7cd0-dbae-4511-82de-b9514e555f50'),(77,'craft','m171204_000001_templatecache_index_tune_deux','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','e8361210-5ec5-4702-97b7-593397fd1607'),(78,'craft','m171205_130908_remove_craftidtokens_refreshtoken_column','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','432b80b7-d5e6-466e-a293-af0f4192c448'),(79,'craft','m171218_143135_longtext_query_column','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','0e8fcccf-5c2a-4d8c-b51d-767b27e1ee15'),(80,'craft','m171231_055546_environment_variables_to_aliases','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','d337c44c-ea51-4319-a409-38078b30e8db'),(81,'craft','m180113_153740_drop_users_archived_column','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','017eeb62-d605-4f19-ae9c-dd10b73b6fd3'),(82,'craft','m180122_213433_propagate_entries_setting','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','605ecfa3-481b-4cdc-8bb1-29d71acce669'),(83,'craft','m180124_230459_fix_propagate_entries_values','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','41551638-f75f-4e16-b712-4c2a2b6d9406'),(84,'craft','m180128_235202_set_tag_slugs','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','7df98eb2-c479-41f2-9ecb-314bb96c2b27'),(85,'craft','m180202_185551_fix_focal_points','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','27437d14-104b-42e7-8554-42ba5e2efc91'),(86,'craft','m180217_172123_tiny_ints','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','0000a87d-e6b7-4366-83d0-ff3ad7c36b58'),(87,'craft','m180321_233505_small_ints','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','a6026b24-8428-4533-948d-1662e27c1e45'),(88,'craft','m180404_182320_edition_changes','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','8a9d0e93-e5ef-4da3-8b04-5380ac3b0346'),(89,'craft','m180411_102218_fix_db_routes','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','4596c8f5-832b-49c9-8327-192e1df4036a'),(90,'craft','m180416_205628_resourcepaths_table','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','46c4d87e-b8e5-490e-adbb-91018c50a21a'),(91,'craft','m180418_205713_widget_cleanup','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','32be465e-9171-43de-91a1-6be4a3fc2a9f'),(92,'craft','m180425_203349_searchable_fields','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','6d8cc5c4-e7a0-44b5-8a47-19d713b82674'),(93,'craft','m180516_153000_uids_in_field_settings','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','986aa369-67b8-4196-bfd5-ab38a7632b5b'),(94,'craft','m180517_173000_user_photo_volume_to_uid','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','30bc5ce3-0588-4899-98b5-5fc31b461fda'),(95,'craft','m180518_173000_permissions_to_uid','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','744951e8-0135-43a9-8044-4b699644a82f'),(96,'craft','m180520_173000_matrix_context_to_uids','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','1c4af340-ce4e-478f-8685-3d6e13706680'),(97,'craft','m180521_172900_project_config_table','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','732cd603-ece5-4185-bf16-2847b1f44149'),(98,'craft','m180521_173000_initial_yml_and_snapshot','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','4a31e5f6-faca-4f2d-86b9-920c8bd6c136'),(99,'craft','m180731_162030_soft_delete_sites','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','319d1a72-4016-4b5a-beb1-493a8753ac88'),(100,'craft','m180810_214427_soft_delete_field_layouts','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','a33499a0-b185-4b12-9d88-c4f09db1db27'),(101,'craft','m180810_214439_soft_delete_elements','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','ec8442a5-c71e-4bd0-b57b-a09a858c304d'),(102,'craft','m180824_193422_case_sensitivity_fixes','2021-03-15 13:52:20','2021-03-15 13:52:20','2021-03-15 13:52:20','c5d4dc99-fa8b-4322-bd26-85fc9f2a78be'),(103,'craft','m180901_151639_fix_matrixcontent_tables','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','01f39ea5-6048-43d7-ae3f-d1334d19a495'),(104,'craft','m180904_112109_permission_changes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','eec14172-caec-43b2-b6fc-3607f56a4c7e'),(105,'craft','m180910_142030_soft_delete_sitegroups','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','2cf20da2-6850-4f46-ae9d-e595341eff76'),(106,'craft','m181011_160000_soft_delete_asset_support','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','736345e5-becb-4ea1-85ce-db3a23fa7ac5'),(107,'craft','m181016_183648_set_default_user_settings','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','856c2fbb-b84c-43fa-8acb-7114a3a965c1'),(108,'craft','m181017_225222_system_config_settings','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','519d013a-5fac-49de-97d4-7ff554a6140f'),(109,'craft','m181018_222343_drop_userpermissions_from_config','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','f90c6f0c-055d-4b03-b60c-35cc929656c6'),(110,'craft','m181029_130000_add_transforms_routes_to_config','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','fdaea152-482f-4721-8fc4-5e94d41dde1b'),(111,'craft','m181112_203955_sequences_table','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','0c712d5e-9572-4e04-83cb-c2b2dc503a21'),(112,'craft','m181121_001712_cleanup_field_configs','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','f8d59986-dc7b-4c69-86ca-8b9fc38e39d3'),(113,'craft','m181128_193942_fix_project_config','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','a6cead13-71bc-4b43-9a35-a12c3cab1e5e'),(114,'craft','m181130_143040_fix_schema_version','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','3c990b56-2e62-42a5-af58-77baddf55cf8'),(115,'craft','m181211_143040_fix_entry_type_uids','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','d94eb1d4-29ed-4c2c-b9ab-31f853f332cf'),(116,'craft','m181217_153000_fix_structure_uids','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','33b07652-0a20-4a65-9cba-2a1cd4bb2400'),(117,'craft','m190104_152725_store_licensed_plugin_editions','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','a4b7c96b-d40e-48ef-ba3e-5e1eb567b91c'),(118,'craft','m190108_110000_cleanup_project_config','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','2813948f-f7ce-467c-9062-eafeac8cd3be'),(119,'craft','m190108_113000_asset_field_setting_change','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','01e1fc94-4608-471b-9715-7796b8419421'),(120,'craft','m190109_172845_fix_colspan','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','b5f71ef5-7fe4-4355-b5d8-5708c424470c'),(121,'craft','m190110_150000_prune_nonexisting_sites','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','f2e097b2-515d-408f-a961-fe7efeb21a62'),(122,'craft','m190110_214819_soft_delete_volumes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','5ae07bd6-4511-4223-ad57-84a1baaef932'),(123,'craft','m190112_124737_fix_user_settings','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','e920b345-68ef-4b23-9560-6b6b8cdf3ca4'),(124,'craft','m190112_131225_fix_field_layouts','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','62cfca6c-63ac-4e6a-9d3a-8b3e137e4a52'),(125,'craft','m190112_201010_more_soft_deletes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','00b0c4c3-63fa-4711-99b6-18b4988169db'),(126,'craft','m190114_143000_more_asset_field_setting_changes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','94e0221d-21dc-47b8-a1d5-cd9c3a59659d'),(127,'craft','m190121_120000_rich_text_config_setting','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','38ed6925-6b05-45a5-80ec-9c0ac8d0f568'),(128,'craft','m190125_191628_fix_email_transport_password','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','4bd6fb87-ceaf-4491-9bed-a0c79e73a621'),(129,'craft','m190128_181422_cleanup_volume_folders','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','09ef0925-cc06-4ddb-8eec-ec32df5c2939'),(130,'craft','m190205_140000_fix_asset_soft_delete_index','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','d5a40f18-6f7f-42db-a20c-d6dd5a4008ee'),(131,'craft','m190218_143000_element_index_settings_uid','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','a8f51695-c9b3-46e4-a0ce-d8afe43b22f6'),(132,'craft','m190312_152740_element_revisions','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','5c8942f7-af74-471b-9781-e4ba95b57d47'),(133,'craft','m190327_235137_propagation_method','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','1e327f4c-11d2-4952-958a-d1b61412fffe'),(134,'craft','m190401_223843_drop_old_indexes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','56122677-2f6e-4b7e-8ee8-82e95d1c7d8f'),(135,'craft','m190416_014525_drop_unique_global_indexes','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','cc3e025b-a00c-4c6c-87c3-c5afe45e2c67'),(136,'craft','m190417_085010_add_image_editor_permissions','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','79cbd68c-0c0e-417c-a718-0ea17ed173ba'),(137,'craft','m190502_122019_store_default_user_group_uid','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','c8a02257-8add-4c96-81fb-1286233bff91'),(138,'craft','m190504_150349_preview_targets','2021-03-15 13:52:21','2021-03-15 13:52:21','2021-03-15 13:52:21','aa1a2ad7-0423-4e4f-ae60-2631845934b6'),(139,'craft','m190516_184711_job_progress_label','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','2c055c07-0ead-4c57-a319-f4301bb01026'),(140,'craft','m190523_190303_optional_revision_creators','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','318e5fa4-eea5-4215-9607-099fc0781a09'),(141,'craft','m190529_204501_fix_duplicate_uids','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','737c3f6b-5805-4beb-ab5f-a0b404a134e0'),(142,'craft','m190605_223807_unsaved_drafts','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','922a18e6-ab9a-4d47-9f09-aed69b815ac5'),(143,'craft','m190607_230042_entry_revision_error_tables','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','7db12dc9-b359-4fdd-a0e6-474af250b4fc'),(144,'craft','m190608_033429_drop_elements_uid_idx','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','e4fb8926-3d16-48eb-8c08-9466bc18c1e0'),(145,'craft','m190617_164400_add_gqlschemas_table','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','26bdc524-c996-413e-8515-674501dfb7d4'),(146,'craft','m190624_234204_matrix_propagation_method','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','8ec32531-525d-4fc0-869f-402236b0cd05'),(147,'craft','m190711_153020_drop_snapshots','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','307c2cf2-74a3-43b0-920f-93d667f6a4a8'),(148,'craft','m190712_195914_no_draft_revisions','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','829c0f55-35d0-47c4-8039-494061ff8eb4'),(149,'craft','m190723_140314_fix_preview_targets_column','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','fd4b022d-82f4-4f6c-977f-a8f2d186bd6c'),(150,'craft','m190820_003519_flush_compiled_templates','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','fbd43264-fca0-42ea-a05d-3f88444d6f28'),(151,'craft','m190823_020339_optional_draft_creators','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','6828a4ab-6b22-4386-9bde-3cb372615ef3'),(152,'craft','m190913_152146_update_preview_targets','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','82fe24d5-9947-4576-8a30-d0e5af328ae7'),(153,'craft','m191107_122000_add_gql_project_config_support','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','0688e9d8-5c04-4609-9d70-c620389d8bcc'),(154,'craft','m191204_085100_pack_savable_component_settings','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','628b6be8-b8f5-4e6e-aa2b-21bb23b384fb'),(155,'craft','m191206_001148_change_tracking','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','672b937c-48d1-4e03-a684-6f4057f19927'),(156,'craft','m191216_191635_asset_upload_tracking','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','34b9a9c5-73fe-468d-bfc9-7a796238b5e6'),(157,'craft','m191222_002848_peer_asset_permissions','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','a2b4b36c-d275-483e-a05f-a16c16fb0f9f'),(158,'craft','m200127_172522_queue_channels','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','d44008a4-ce0e-4250-833f-541f28256eec'),(159,'craft','m200211_175048_truncate_element_query_cache','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','2686d1ad-e0c6-4357-9dff-e3dd7e05854e'),(160,'craft','m200213_172522_new_elements_index','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','2082d0ba-e767-42d7-bee3-783a2914b08f'),(161,'craft','m200228_195211_long_deprecation_messages','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','6a7cfecd-eb16-4d74-a728-7bb20d87b77d'),(162,'craft','m200306_054652_disabled_sites','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','4430ee52-5357-4422-ba37-f0efc2fe51c4'),(163,'craft','m200522_191453_clear_template_caches','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','30cf8345-37c3-4a67-9751-655580cfe474'),(164,'craft','m200606_231117_migration_tracks','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','3bd6914d-e61c-41b6-a09b-e0f414c3e118'),(165,'craft','m200619_215137_title_translation_method','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','78b5bc99-cdc4-41ff-9eba-dc6621fa36df'),(166,'craft','m200620_005028_user_group_descriptions','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','bb7828f2-042e-4b24-9c80-6518e868b0ac'),(167,'craft','m200620_230205_field_layout_changes','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','52fbb54b-c1dd-4ff0-bab1-7b2b4c4a4dd2'),(168,'craft','m200625_131100_move_entrytypes_to_top_project_config','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','06c61b05-66c1-40cc-879d-46de80265342'),(169,'craft','m200629_112700_remove_project_config_legacy_files','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','cc1d812c-a481-4187-b29b-20b2f930972c'),(170,'craft','m200630_183000_drop_configmap','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','442c7378-d74c-4078-9e26-da3feed97de1'),(171,'craft','m200715_113400_transform_index_error_flag','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','9230d5a4-5092-4e69-9d2e-478d406d18fa'),(172,'craft','m200716_110900_replace_file_asset_permissions','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','4ebaf91e-1020-41a2-9d94-aa02858447f6'),(173,'craft','m200716_153800_public_token_settings_in_project_config','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','dd2bbb3c-56db-41c0-b99e-ccb6a9574f20'),(174,'craft','m200720_175543_drop_unique_constraints','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','ed66701e-9297-44ee-b640-48502fd736b1'),(175,'craft','m200825_051217_project_config_version','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','d901e984-cf07-42ae-a2b7-c00cbb7a94c0'),(176,'craft','m201116_190500_asset_title_translation_method','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','cf864af1-7322-4f8e-8b22-cffb833afba9'),(177,'craft','m201124_003555_plugin_trials','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','3c0153dc-a9fd-4df9-acea-918e6d270bb6'),(178,'craft','m210209_135503_soft_delete_field_groups','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','143ba272-3de3-4c03-b9b6-c3346e1fe4c2'),(179,'craft','m210212_223539_delete_invalid_drafts','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','73bf08e0-25e6-462e-9fb7-7ee939c16f96'),(180,'craft','m210214_202731_track_saved_drafts','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','8c1dc258-c0ab-44be-82d2-84e9e7a32b5c'),(181,'craft','m210223_150900_add_new_element_gql_schema_components','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','28d4f98a-6d90-4f9d-a75c-4c7fad4e4575'),(182,'craft','m210224_162000_add_projectconfignames_table','2021-03-15 13:52:22','2021-03-15 13:52:22','2021-03-15 13:52:22','1bbbe34a-7f78-4f7c-89d8-3c40f509c299'),(183,'plugin:redactor','m180430_204710_remove_old_plugins','2021-03-15 14:11:05','2021-03-15 14:11:05','2021-03-15 14:11:05','fe312ee3-eefe-43e5-808d-d27303aabc56'),(184,'plugin:redactor','Install','2021-03-15 14:11:05','2021-03-15 14:11:05','2021-03-15 14:11:05','99b8d6cf-eb43-47c4-880c-e8bd495b3ad0'),(185,'plugin:redactor','m190225_003922_split_cleanup_html_settings','2021-03-15 14:11:05','2021-03-15 14:11:05','2021-03-15 14:11:05','52efc806-8683-423d-8091-36b08b56398a');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `licenseKeyStatus` enum('valid','trial','invalid','mismatched','astray','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `licensedEdition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_yvkoldcqylzjiracdjvuosozoaemeazsgrpy` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES (1,'redactor','2.8.5','2.3.0','unknown',NULL,'2021-03-15 14:11:05','2021-03-15 14:11:05','2021-03-17 21:48:56','a50f4188-0f17-4821-beaa-e07219519497');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectconfig`
--

DROP TABLE IF EXISTS `projectconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectconfig` (
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectconfig`
--

LOCK TABLES `projectconfig` WRITE;
/*!40000 ALTER TABLE `projectconfig` DISABLE KEYS */;
INSERT INTO `projectconfig` VALUES ('dateModified','1616025291'),('email.fromEmail','\"sertic.bruno@gmail.com\"'),('email.fromName','\"Motoventure\"'),('email.transportType','\"craft\\\\mail\\\\transportadapters\\\\Sendmail\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.autocapitalize','true'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.autocomplete','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.autocorrect','true'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.class','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.disabled','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.id','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.max','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.min','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.name','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.orientation','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.placeholder','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.readonly','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.requirable','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.size','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.step','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.title','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.0.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.fieldUid','\"c32944d8-cc7d-4860-97dd-e164dfda947e\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.required','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.1.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.fieldUid','\"1bf017fc-87c7-4ae3-b857-1826939ce2be\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.required','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.elements.2.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.name','\"Hero\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.0.sortOrder','1'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.fieldUid','\"d65e3279-43b8-45ed-b494-8f10ee772957\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.required','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.elements.0.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.name','\"Featured Story\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.1.sortOrder','2'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.fieldUid','\"b4609a50-b4a3-4fc9-9b23-3c87928047fd\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.required','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.0.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.fieldUid','\"e574e269-2b5e-4770-8da3-1be40c8e13e0\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.instructions','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.label','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.required','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.tip','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.warning','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.elements.1.width','100'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.name','\"Riders\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.fieldLayouts.3297705c-24b9-4a4f-9b44-990fd3c8ccc3.tabs.2.sortOrder','3'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.handle','\"home\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.hasTitleField','false'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.name','\"Home\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.section','\"cc5e9c31-6dc8-45d9-a0bb-596309ba5b53\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.sortOrder','1'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.titleFormat','\"{section.name|raw}\"'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.titleTranslationKeyFormat','null'),('entryTypes.10f68c59-d239-4667-a050-f1c467437cea.titleTranslationMethod','\"site\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.autocapitalize','true'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.autocomplete','false'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.autocorrect','true'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.class','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.disabled','false'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.id','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.instructions','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.label','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.max','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.min','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.name','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.orientation','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.placeholder','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.readonly','false'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.requirable','false'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.size','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.step','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.tip','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.title','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.warning','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.elements.0.width','100'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.name','\"Content\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.fieldLayouts.e5353fc1-2b8d-487c-8627-b77f43c5fa32.tabs.0.sortOrder','1'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.handle','\"storiesListing\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.hasTitleField','true'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.name','\"Stories Listing\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.section','\"debaabca-2695-4a96-a838-d7c01dbcb7d2\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.sortOrder','1'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.titleFormat','\"{section.name|raw}\"'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.titleTranslationKeyFormat','null'),('entryTypes.13f4ea18-1f10-41d3-ba62-f477db21bdca.titleTranslationMethod','\"site\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.autocapitalize','true'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.autocomplete','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.autocorrect','true'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.class','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.disabled','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.id','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.instructions','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.label','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.max','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.min','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.name','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.orientation','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.placeholder','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.readonly','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.requirable','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.size','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.step','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.tip','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.title','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.warning','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.0.width','100'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.fieldUid','\"f690d083-0f9e-49e5-8d83-3a647dc74a5f\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.instructions','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.label','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.required','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.tip','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.warning','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.1.width','100'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.fieldUid','\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.instructions','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.label','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.required','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.tip','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.warning','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.2.width','100'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.fieldUid','\"ee331c79-07b9-472d-bc91-1a7bae592c46\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.instructions','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.label','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.required','false'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.tip','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.warning','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.elements.3.width','100'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.name','\"Content\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.fieldLayouts.9c07c560-7d45-414e-ba78-275483bdb4c1.tabs.0.sortOrder','1'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.handle','\"stories\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.hasTitleField','true'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.name','\"Stories\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.section','\"9b62c7b0-9947-4702-9726-b3929d2fb2dd\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.sortOrder','1'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.titleFormat','\"{section.name|raw}\"'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.titleTranslationKeyFormat','null'),('entryTypes.a3d0cb1d-364c-4fde-9712-fadc34874be9.titleTranslationMethod','\"site\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.autocapitalize','true'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.autocomplete','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.autocorrect','true'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.class','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.disabled','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.id','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.instructions','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.label','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.max','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.min','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.name','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.orientation','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.placeholder','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.readonly','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.requirable','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.size','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.step','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.tip','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.title','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\EntryTitleField\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.warning','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.0.width','100'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.fieldUid','\"ee331c79-07b9-472d-bc91-1a7bae592c46\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.instructions','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.label','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.required','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.tip','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.warning','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.1.width','100'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.fieldUid','\"1bf017fc-87c7-4ae3-b857-1826939ce2be\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.instructions','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.label','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.required','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.tip','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.warning','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.2.width','100'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.fieldUid','\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.instructions','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.label','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.required','false'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.tip','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.warning','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.elements.3.width','100'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.name','\"Content\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.fieldLayouts.30266867-4bb1-43f9-8753-9647d47b553c.tabs.0.sortOrder','1'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.handle','\"ourGear\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.hasTitleField','true'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.name','\"Our Gear\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.section','\"f3a09e39-e50f-4198-b766-e3d03e5e23a9\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.sortOrder','1'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.titleFormat','\"{section.name|raw}\"'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.titleTranslationKeyFormat','null'),('entryTypes.d6738b9c-c6e7-4f42-b38d-285594d01370.titleTranslationMethod','\"site\"'),('fieldGroups.94ca4c7a-4bb1-4f6c-b3ef-47c44c902757.name','\"Home Page\"'),('fieldGroups.db424180-892a-40cc-be45-7914371304ae.name','\"Common\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.contentColumnType','\"string\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.fieldGroup','\"94ca4c7a-4bb1-4f6c-b3ef-47c44c902757\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.handle','\"heroImage\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.instructions','\"\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.name','\"Hero Image\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.searchable','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.allowedKinds.0','\"image\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.allowSelfRelations','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.allowUploads','true'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.defaultUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.defaultUploadLocationSubpath','\"\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.limit','\"1\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.localizeRelations','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.previewMode','\"full\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.restrictFiles','\"1\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.selectionLabel','\"Add a background image\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.showSiteMenu','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.showUnpermittedFiles','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.showUnpermittedVolumes','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.singleUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.singleUploadLocationSubpath','\"\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.source','null'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.sources.0','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.targetSiteId','null'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.useSingleFolder','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.validateRelatedElements','false'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.settings.viewMode','\"large\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.translationKeyFormat','null'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.translationMethod','\"site\"'),('fields.1bf017fc-87c7-4ae3-b857-1826939ce2be.type','\"craft\\\\fields\\\\Assets\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.contentColumnType','\"string\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.fieldGroup','\"db424180-892a-40cc-be45-7914371304ae\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.handle','\"navi\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.instructions','\"\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.name','\"Navi\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.searchable','false'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.settings.contentTable','\"{{%matrixcontent_navi}}\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.settings.maxBlocks','\"\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.settings.minBlocks','\"\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.settings.propagationMethod','\"all\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.translationKeyFormat','null'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.translationMethod','\"site\"'),('fields.b13cab7b-f5c5-4387-90a7-64620f7a6e73.type','\"craft\\\\fields\\\\Matrix\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.contentColumnType','\"text\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.fieldGroup','\"94ca4c7a-4bb1-4f6c-b3ef-47c44c902757\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.handle','\"ridersIntroContent\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.instructions','\"\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.name','\"Riders Intro Content\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.searchable','false'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.availableTransforms','\"*\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.availableVolumes','\"*\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.cleanupHtml','true'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.columnType','\"text\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.configSelectionMode','\"choose\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.defaultTransform','\"\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.manualConfig','\"\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.purifierConfig','\"\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.purifyHtml','\"1\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.redactorConfig','\"\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.removeEmptyTags','\"1\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.removeInlineStyles','\"1\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.removeNbsp','\"1\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.showHtmlButtonForNonAdmins','\"1\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.showUnpermittedFiles','false'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.showUnpermittedVolumes','false'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.settings.uiMode','\"enlarged\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.translationKeyFormat','null'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.translationMethod','\"none\"'),('fields.b4609a50-b4a3-4fc9-9b23-3c87928047fd.type','\"craft\\\\redactor\\\\Field\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.contentColumnType','\"text\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.fieldGroup','\"94ca4c7a-4bb1-4f6c-b3ef-47c44c902757\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.handle','\"heroTitle\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.instructions','\"\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.name','\"Hero Title\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.searchable','false'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.byteLimit','null'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.charLimit','null'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.code','\"\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.columnType','null'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.initialRows','\"4\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.multiline','\"\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.placeholder','null'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.settings.uiMode','\"normal\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.translationKeyFormat','null'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.translationMethod','\"none\"'),('fields.c32944d8-cc7d-4860-97dd-e164dfda947e.type','\"craft\\\\fields\\\\PlainText\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.contentColumnType','\"text\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.fieldGroup','\"db424180-892a-40cc-be45-7914371304ae\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.handle','\"richText\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.instructions','\"\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.name','\"Rich Text\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.searchable','false'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.availableTransforms','\"*\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.availableVolumes','\"*\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.cleanupHtml','true'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.columnType','\"text\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.configSelectionMode','\"choose\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.defaultTransform','\"\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.manualConfig','\"\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.purifierConfig','\"\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.purifyHtml','\"1\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.redactorConfig','\"\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.removeEmptyTags','\"1\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.removeInlineStyles','\"1\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.removeNbsp','\"1\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.showHtmlButtonForNonAdmins','\"1\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.showUnpermittedFiles','false'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.showUnpermittedVolumes','false'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.settings.uiMode','\"enlarged\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.translationKeyFormat','null'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.translationMethod','\"none\"'),('fields.d62a7882-b1d6-439e-9ae3-416bfb28c72f.type','\"craft\\\\redactor\\\\Field\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.contentColumnType','\"string\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.fieldGroup','\"db424180-892a-40cc-be45-7914371304ae\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.handle','\"featuredStory\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.instructions','\"\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.name','\"Featured Story\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.searchable','false'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.allowSelfRelations','false'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.limit','\"1\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.localizeRelations','false'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.selectionLabel','\"Select featured Story\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.showSiteMenu','false'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.source','null'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.sources.0','\"section:9b62c7b0-9947-4702-9726-b3929d2fb2dd\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.targetSiteId','null'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.validateRelatedElements','false'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.settings.viewMode','null'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.translationKeyFormat','null'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.translationMethod','\"site\"'),('fields.d65e3279-43b8-45ed-b494-8f10ee772957.type','\"craft\\\\fields\\\\Entries\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.contentColumnType','\"string\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.fieldGroup','\"94ca4c7a-4bb1-4f6c-b3ef-47c44c902757\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.handle','\"riders\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.instructions','\"\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.name','\"Riders\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.searchable','false'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.settings.contentTable','\"{{%matrixcontent_riders}}\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.settings.maxBlocks','\"\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.settings.minBlocks','\"\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.settings.propagationMethod','\"all\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.translationKeyFormat','null'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.translationMethod','\"site\"'),('fields.e574e269-2b5e-4770-8da3-1be40c8e13e0.type','\"craft\\\\fields\\\\Matrix\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.contentColumnType','\"text\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.fieldGroup','\"db424180-892a-40cc-be45-7914371304ae\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.handle','\"shortDescription\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.instructions','\"\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.name','\"Short Description\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.searchable','false'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.byteLimit','null'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.charLimit','null'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.code','\"\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.columnType','null'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.initialRows','\"3\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.multiline','\"1\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.placeholder','null'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.settings.uiMode','\"normal\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.translationKeyFormat','null'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.translationMethod','\"none\"'),('fields.ee331c79-07b9-472d-bc91-1a7bae592c46.type','\"craft\\\\fields\\\\PlainText\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.contentColumnType','\"string\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.fieldGroup','\"db424180-892a-40cc-be45-7914371304ae\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.handle','\"photos\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.instructions','\"\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.name','\"Photos\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.searchable','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.allowedKinds.0','\"image\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.allowSelfRelations','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.allowUploads','true'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.defaultUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.defaultUploadLocationSubpath','\"\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.limit','\"\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.localizeRelations','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.previewMode','\"full\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.restrictFiles','\"1\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.selectionLabel','\"Add a photo\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.showSiteMenu','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.showUnpermittedFiles','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.showUnpermittedVolumes','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.singleUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.singleUploadLocationSubpath','\"\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.source','null'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.sources.0','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.targetSiteId','null'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.useSingleFolder','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.validateRelatedElements','false'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.settings.viewMode','\"list\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.translationKeyFormat','null'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.translationMethod','\"site\"'),('fields.f690d083-0f9e-49e5-8d83-3a647dc74a5f.type','\"craft\\\\fields\\\\Assets\"'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.fieldUid','\"b13cab7b-f5c5-4387-90a7-64620f7a6e73\"'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.instructions','null'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.label','null'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.required','false'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.tip','null'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.warning','null'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.elements.0.width','100'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.name','\"Content\"'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.fieldLayouts.af19c6af-0077-4ce7-b260-62d5168d1f00.tabs.0.sortOrder','1'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.handle','\"head\"'),('globalSets.83247a89-0b72-49f4-a8c3-6db679e1584d.name','\"Head\"'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.fieldUid','\"d62a7882-b1d6-439e-9ae3-416bfb28c72f\"'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.instructions','null'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.label','null'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.required','false'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.tip','null'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.warning','null'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.elements.0.width','100'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.name','\"Content\"'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.fieldLayouts.0ebefe1d-4f83-400b-8466-c447007cfdb4.tabs.0.sortOrder','1'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.handle','\"footer\"'),('globalSets.bcba405e-b106-48ab-83d2-076b3d8c7547.name','\"Footer\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.field','\"e574e269-2b5e-4770-8da3-1be40c8e13e0\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.fieldUid','\"321605ff-8708-47e9-a213-1d92b1da61fb\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.label','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.required','true'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.tip','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.warning','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.0.width','100'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.fieldUid','\"a975a1f8-ddcb-47cb-a55d-58f74dd47eaa\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.label','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.required','true'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.tip','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.warning','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.1.width','100'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.fieldUid','\"999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.instructions','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.label','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.required','true'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.tip','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.warning','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.elements.2.width','100'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.name','\"Content\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fieldLayouts.741ef499-6e1f-4262-8aa8-969f3beb8230.tabs.0.sortOrder','1'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.contentColumnType','\"string\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.fieldGroup','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.handle','\"photo\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.instructions','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.name','\"Photo\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.searchable','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.allowedKinds.0','\"image\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.allowSelfRelations','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.allowUploads','true'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.defaultUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.defaultUploadLocationSubpath','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.limit','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.localizeRelations','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.previewMode','\"full\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.restrictFiles','\"1\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.selectionLabel','\"Add a photo\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.showSiteMenu','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.showUnpermittedFiles','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.showUnpermittedVolumes','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.singleUploadLocationSource','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.singleUploadLocationSubpath','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.source','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.sources.0','\"volume:cdaf9d90-568d-4a00-9f2c-242909582620\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.targetSiteId','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.useSingleFolder','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.validateRelatedElements','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.settings.viewMode','\"large\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.translationKeyFormat','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.translationMethod','\"site\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.321605ff-8708-47e9-a213-1d92b1da61fb.type','\"craft\\\\fields\\\\Assets\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.contentColumnType','\"text\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.fieldGroup','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.handle','\"description\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.instructions','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.name','\"Description\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.searchable','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.byteLimit','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.charLimit','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.code','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.columnType','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.initialRows','\"2\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.multiline','\"1\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.placeholder','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.settings.uiMode','\"normal\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.translationKeyFormat','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.translationMethod','\"none\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.contentColumnType','\"text\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.fieldGroup','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.handle','\"fullName\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.instructions','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.name','\"Full Name\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.searchable','false'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.byteLimit','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.charLimit','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.code','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.columnType','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.initialRows','\"4\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.multiline','\"\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.placeholder','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.settings.uiMode','\"normal\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.translationKeyFormat','null'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.translationMethod','\"none\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.fields.a975a1f8-ddcb-47cb-a55d-58f74dd47eaa.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.handle','\"rider\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.name','\"Rider\"'),('matrixBlockTypes.16a8fa3d-9344-4092-9a5d-cd898ff6f921.sortOrder','1'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.field','\"b13cab7b-f5c5-4387-90a7-64620f7a6e73\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.fieldUid','\"67f8bf4c-3979-4564-9d1c-ed5920a87f24\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.instructions','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.label','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.required','true'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.tip','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.warning','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.0.width','100'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.fieldUid','\"f5aea78d-8ebe-4868-bc02-f4de64aedd2d\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.instructions','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.label','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.required','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.tip','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.type','\"craft\\\\fieldlayoutelements\\\\CustomField\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.warning','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.elements.1.width','100'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.name','\"Content\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fieldLayouts.79e13098-fb63-43f5-a048-a418660b4491.tabs.0.sortOrder','1'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.contentColumnType','\"text\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.fieldGroup','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.handle','\"linkText\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.instructions','\"\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.name','\"Link Text\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.searchable','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.byteLimit','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.charLimit','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.code','\"\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.columnType','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.initialRows','\"4\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.multiline','\"\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.placeholder','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.settings.uiMode','\"normal\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.translationKeyFormat','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.translationMethod','\"none\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.67f8bf4c-3979-4564-9d1c-ed5920a87f24.type','\"craft\\\\fields\\\\PlainText\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.contentColumnType','\"string\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.fieldGroup','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.handle','\"linkDestination\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.instructions','\"\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.name','\"Link Destination\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.searchable','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.allowSelfRelations','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.limit','\"1\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.localizeRelations','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.selectionLabel','\"\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.showSiteMenu','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.source','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.sources','\"*\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.targetSiteId','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.validateRelatedElements','false'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.settings.viewMode','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.translationKeyFormat','null'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.translationMethod','\"site\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.fields.f5aea78d-8ebe-4868-bc02-f4de64aedd2d.type','\"craft\\\\fields\\\\Entries\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.handle','\"navLink\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.name','\"Nav Link\"'),('matrixBlockTypes.3623f66d-68e9-4fe5-b37e-70796c7f2360.sortOrder','1'),('plugins.redactor.edition','\"standard\"'),('plugins.redactor.enabled','true'),('plugins.redactor.schemaVersion','\"2.3.0\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.enableVersioning','true'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.handle','\"stories\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.name','\"Stories\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.propagationMethod','\"all\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.enabledByDefault','true'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.hasUrls','true'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.template','\"stories/_entry\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.uriFormat','\"stories/{slug}\"'),('sections.9b62c7b0-9947-4702-9726-b3929d2fb2dd.type','\"channel\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.enableVersioning','true'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.handle','\"home\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.name','\"Home\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.propagationMethod','\"all\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.enabledByDefault','true'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.hasUrls','true'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.template','\"home\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.uriFormat','\"__home__\"'),('sections.cc5e9c31-6dc8-45d9-a0bb-596309ba5b53.type','\"single\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.enableVersioning','true'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.handle','\"storiesListing\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.name','\"Stories Listing\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.propagationMethod','\"all\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.enabledByDefault','true'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.hasUrls','true'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.template','\"stories\\\\index\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.uriFormat','\"stories\"'),('sections.debaabca-2695-4a96-a838-d7c01dbcb7d2.type','\"single\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.enableVersioning','true'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.handle','\"ourGear\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.name','\"Our Gear\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.propagationMethod','\"all\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.enabledByDefault','true'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.hasUrls','true'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.template','\"ourGear\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.siteSettings.e3dc308d-0e52-4537-96a8-68579a37aa34.uriFormat','\"ourGear\"'),('sections.f3a09e39-e50f-4198-b766-e3d03e5e23a9.type','\"single\"'),('siteGroups.d1c7cc10-a1e1-42c6-ba2e-aeedc957f59c.name','\"Motoventure\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.baseUrl','\"$PRIMARY_SITE_URL\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.handle','\"default\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.hasUrls','true'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.language','\"en-US\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.name','\"Motoventure\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.primary','true'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.siteGroup','\"d1c7cc10-a1e1-42c6-ba2e-aeedc957f59c\"'),('sites.e3dc308d-0e52-4537-96a8-68579a37aa34.sortOrder','1'),('system.edition','\"solo\"'),('system.live','true'),('system.name','\"Motoventure\"'),('system.schemaVersion','\"3.6.6\"'),('system.timeZone','\"America/Los_Angeles\"'),('users.allowPublicRegistration','false'),('users.defaultGroup','null'),('users.photoSubpath','null'),('users.photoVolumeUid','null'),('users.requireEmailVerification','true'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.autocapitalize','true'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.autocomplete','false'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.autocorrect','true'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.class','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.disabled','false'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.id','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.instructions','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.label','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.max','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.min','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.name','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.orientation','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.placeholder','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.readonly','false'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.requirable','false'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.size','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.step','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.tip','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.title','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.type','\"craft\\\\fieldlayoutelements\\\\AssetTitleField\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.warning','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.elements.0.width','100'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.name','\"Content\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.fieldLayouts.42ece358-05bf-4b94-b3f3-c67bd4a1a707.tabs.0.sortOrder','1'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.handle','\"uploads\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.hasUrls','true'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.name','\"Uploads\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.settings.path','\"$ASSET_BASE_PATH\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.sortOrder','1'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.titleTranslationKeyFormat','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.titleTranslationMethod','null'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.type','\"craft\\\\volumes\\\\Local\"'),('volumes.cdaf9d90-568d-4a00-9f2c-242909582620.url','\"$ASSET_BASE_URL\"');
/*!40000 ALTER TABLE `projectconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projectconfignames`
--

DROP TABLE IF EXISTS `projectconfignames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projectconfignames` (
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projectconfignames`
--

LOCK TABLES `projectconfignames` WRITE;
/*!40000 ALTER TABLE `projectconfignames` DISABLE KEYS */;
INSERT INTO `projectconfignames` VALUES ('10f68c59-d239-4667-a050-f1c467437cea','Home'),('13f4ea18-1f10-41d3-ba62-f477db21bdca','Stories Listing'),('16a8fa3d-9344-4092-9a5d-cd898ff6f921','Rider'),('1bf017fc-87c7-4ae3-b857-1826939ce2be','Hero Image'),('321605ff-8708-47e9-a213-1d92b1da61fb','Photo'),('3623f66d-68e9-4fe5-b37e-70796c7f2360','Nav Link'),('67f8bf4c-3979-4564-9d1c-ed5920a87f24','Link Text'),('83247a89-0b72-49f4-a8c3-6db679e1584d','Head'),('856cc5f4-c949-4710-a8c0-9115c6eedc2d','Link Destination'),('944302b2-c4d4-45a6-a875-83340a6c5800','Link Text'),('94ca4c7a-4bb1-4f6c-b3ef-47c44c902757','Home Page'),('999a61c2-f15f-4c54-b3e6-4c01a9dbd8c3','Description'),('9b62c7b0-9947-4702-9726-b3929d2fb2dd','Stories'),('a3d0cb1d-364c-4fde-9712-fadc34874be9','Stories'),('a975a1f8-ddcb-47cb-a55d-58f74dd47eaa','Full Name'),('b13cab7b-f5c5-4387-90a7-64620f7a6e73','Navi'),('b4609a50-b4a3-4fc9-9b23-3c87928047fd','Riders Intro Content'),('bcba405e-b106-48ab-83d2-076b3d8c7547','Footer'),('c32944d8-cc7d-4860-97dd-e164dfda947e','Hero Title'),('ca8ede5f-77b9-49e5-bc7b-9207a92ffbf4','Link Description'),('cc5e9c31-6dc8-45d9-a0bb-596309ba5b53','Home'),('cdaf9d90-568d-4a00-9f2c-242909582620','Uploads'),('d1c7cc10-a1e1-42c6-ba2e-aeedc957f59c','Motoventure'),('d62a7882-b1d6-439e-9ae3-416bfb28c72f','Rich Text'),('d65e3279-43b8-45ed-b494-8f10ee772957','Featured Story'),('d6738b9c-c6e7-4f42-b38d-285594d01370','Our Gear'),('db424180-892a-40cc-be45-7914371304ae','Common'),('de41a95c-a30b-4995-93f3-2e2e0a37a035','Link Text'),('debaabca-2695-4a96-a838-d7c01dbcb7d2','Stories Listing'),('e3dc308d-0e52-4537-96a8-68579a37aa34','Motoventure'),('e574e269-2b5e-4770-8da3-1be40c8e13e0','Riders'),('ee331c79-07b9-472d-bc91-1a7bae592c46','Short Description'),('f3a09e39-e50f-4198-b766-e3d03e5e23a9','Our Gear'),('f5aea78d-8ebe-4868-bc02-f4de64aedd2d','Link Destination'),('f690d083-0f9e-49e5-8d83-3a647dc74a5f','Photos');
/*!40000 ALTER TABLE `projectconfignames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'queue',
  `job` longblob NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timePushed` int(11) NOT NULL,
  `ttr` int(11) NOT NULL,
  `delay` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) unsigned NOT NULL DEFAULT 1024,
  `dateReserved` datetime DEFAULT NULL,
  `timeUpdated` int(11) DEFAULT NULL,
  `progress` smallint(6) NOT NULL DEFAULT 0,
  `progressLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempt` int(11) DEFAULT NULL,
  `fail` tinyint(1) DEFAULT 0,
  `dateFailed` datetime DEFAULT NULL,
  `error` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hfqagfdobbutkgelknmaztgwpsoxwdkseigx` (`channel`,`fail`,`timeUpdated`,`timePushed`),
  KEY `idx_sxgtubeuyfiqkmbcqsfcqirkbpqwwjwbjcxh` (`channel`,`fail`,`timeUpdated`,`delay`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queue`
--

LOCK TABLES `queue` WRITE;
/*!40000 ALTER TABLE `queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relations`
--

DROP TABLE IF EXISTS `relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceSiteId` int(11) DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_lpinxhiobtsqbflpjfpmtkkujzdbfnoqpfid` (`fieldId`,`sourceId`,`sourceSiteId`,`targetId`),
  KEY `idx_oessjxmjdvogdybeahyqwpfewpuewjayzwat` (`sourceId`),
  KEY `idx_sljqmfanuolbmdsiacadeheekfrzafgfybxu` (`targetId`),
  KEY `idx_ckpyzopjclxvdeliwlxppxstcgjudgntngcj` (`sourceSiteId`),
  CONSTRAINT `fk_hgkdvdemmifwystuxutndvmlscosehdgczgk` FOREIGN KEY (`sourceSiteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_szyspzsrzjcyhehqtslzgolbixelynfpzukw` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_ufdgrckyttynzdlfxqljmbcnkigfzdlilzut` FOREIGN KEY (`targetId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_wioqyvdqjumihkculculxopqwadmolqghlod` FOREIGN KEY (`fieldId`) REFERENCES `fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relations`
--

LOCK TABLES `relations` WRITE;
/*!40000 ALTER TABLE `relations` DISABLE KEYS */;
INSERT INTO `relations` VALUES (2,2,7,NULL,6,1,'2021-03-15 14:05:36','2021-03-15 14:05:36','8e9c654c-68d1-42b1-8525-4798b26cd531'),(3,2,2,NULL,8,1,'2021-03-15 14:08:06','2021-03-15 14:08:06','530b4896-545f-4f31-9032-fb85ed9adb41'),(4,2,9,NULL,8,1,'2021-03-15 14:08:07','2021-03-15 14:08:07','c032e6ac-64d7-4f10-83e7-7b76c30efb8b'),(5,2,10,NULL,8,1,'2021-03-15 14:14:50','2021-03-15 14:14:50','c9697cb6-07ef-4382-a104-af14acfea062'),(6,5,31,NULL,22,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','4a6f33ac-6e5d-484c-a859-42c1c4a8a193'),(7,5,32,NULL,29,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','27938ed3-be25-4210-a0e3-b7e5e5d88fae'),(8,5,33,NULL,24,1,'2021-03-15 14:18:28','2021-03-15 14:18:28','abdda4ee-0ea1-4433-8292-028327550173'),(9,2,34,NULL,8,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','57dc0e5d-ef22-4c19-936a-50e1617cdf48'),(10,5,35,NULL,22,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','777513c6-56f2-49a7-a08d-20426a34ecef'),(11,5,36,NULL,29,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','f2ba9cfb-a71c-4425-b5bc-3ca9ba8b5255'),(12,5,37,NULL,24,1,'2021-03-15 14:18:29','2021-03-15 14:18:29','e219225c-9abf-481b-bfac-4f8a658cc204'),(13,2,43,NULL,6,1,'2021-03-15 14:34:12','2021-03-15 14:34:12','7b55a23a-69dc-4e79-9937-ede3ccbbf04f'),(14,2,47,NULL,6,1,'2021-03-15 14:34:12','2021-03-15 14:34:12','0173348b-d59e-4ef9-8d46-e9273e75750c'),(15,2,48,NULL,6,1,'2021-03-15 14:35:23','2021-03-15 14:35:23','fa7c97ce-a64c-46df-8b57-ef7b5146da72'),(16,2,49,NULL,6,1,'2021-03-15 14:40:04','2021-03-15 14:40:04','8f298ba8-10aa-4d75-bb63-2ffefde8d5ea'),(17,2,50,NULL,6,1,'2021-03-15 14:40:04','2021-03-15 14:40:04','3c590eb1-69c3-475c-ac9f-8549332d985c'),(20,2,40,NULL,26,1,'2021-03-15 14:48:30','2021-03-15 14:48:30','8a5c70b7-455b-4f28-8328-54f389eaa166'),(21,2,56,NULL,26,1,'2021-03-15 14:48:31','2021-03-15 14:48:31','2e011dac-ad30-4bed-a857-cc1b3a7a35f9'),(30,12,62,NULL,30,1,'2021-03-17 23:04:26','2021-03-17 23:04:26','b7eaf851-470e-4423-ace2-151f65f0eeb8'),(31,12,62,NULL,27,2,'2021-03-17 23:04:26','2021-03-17 23:04:26','4d4cf282-52b5-4b43-88a1-46bbafddd584'),(32,12,62,NULL,25,3,'2021-03-17 23:04:26','2021-03-17 23:04:26','27f243be-2185-4f25-81c9-c3586c73cbcc'),(33,12,63,NULL,30,1,'2021-03-17 23:04:26','2021-03-17 23:04:26','9baeb064-6588-42c0-8615-f484e169ddc0'),(34,12,63,NULL,27,2,'2021-03-17 23:04:26','2021-03-17 23:04:26','1d37c759-1331-44a4-a869-790d53110478'),(35,12,63,NULL,25,3,'2021-03-17 23:04:26','2021-03-17 23:04:26','903ac07b-671c-4afb-b011-8c9d8ffa2851'),(36,12,64,NULL,27,1,'2021-03-17 23:04:41','2021-03-17 23:04:41','5b9aa183-e146-44e5-945c-d0013f002712'),(37,12,64,NULL,20,2,'2021-03-17 23:04:41','2021-03-17 23:04:41','c685baf6-9a69-470c-9ee1-2cacc212ddee'),(38,12,65,NULL,27,1,'2021-03-17 23:04:41','2021-03-17 23:04:41','7fa9dad2-db96-4011-95b5-4000059e431b'),(39,12,65,NULL,20,2,'2021-03-17 23:04:41','2021-03-17 23:04:41','7f0a3156-8996-41db-951f-747ff4ced745'),(40,12,66,NULL,26,1,'2021-03-17 23:04:56','2021-03-17 23:04:56','ea661414-edfc-4ce3-8534-d3885c140fb8'),(41,12,66,NULL,28,2,'2021-03-17 23:04:56','2021-03-17 23:04:56','f2b91b0d-d097-49f9-bc60-fe3f5857537d'),(42,12,66,NULL,27,3,'2021-03-17 23:04:56','2021-03-17 23:04:56','89c64d85-91bc-4184-9790-f8ad2f5709de'),(43,12,67,NULL,26,1,'2021-03-17 23:04:56','2021-03-17 23:04:56','dbd0bf85-9a77-49a6-882e-35e7502d2fb6'),(44,12,67,NULL,28,2,'2021-03-17 23:04:56','2021-03-17 23:04:56','f5393d69-47b0-473f-becc-382ee73f321c'),(45,12,67,NULL,27,3,'2021-03-17 23:04:56','2021-03-17 23:04:56','95679632-dced-4365-ac55-6ded6aea09a1'),(46,2,74,NULL,8,1,'2021-03-17 23:25:05','2021-03-17 23:25:05','d44e7735-58c6-4830-aff4-e6af752d654d'),(47,5,75,NULL,22,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','babd929a-4b36-487d-979d-72bc21b46774'),(48,5,76,NULL,29,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','c158152d-4641-4aa4-a05d-dbdd5bb73177'),(49,5,77,NULL,24,1,'2021-03-17 23:25:06','2021-03-17 23:25:06','0ec5c16f-021a-4000-88a7-e106fb01a53e'),(50,15,2,NULL,62,1,'2021-03-17 23:25:22','2021-03-17 23:25:22','771a4b71-263d-4ccf-a43c-99be150066e3'),(51,2,78,NULL,8,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','27394bdf-db23-4184-89c2-353cdedda640'),(52,15,78,NULL,62,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','f52a3db5-393d-467a-9d69-42c7fde300ca'),(53,5,79,NULL,22,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','424e0d42-8780-4b26-a353-2f2b677b14a2'),(54,5,80,NULL,29,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','87355d9f-5cf9-4410-a624-dd09701f2d54'),(55,5,81,NULL,24,1,'2021-03-17 23:25:23','2021-03-17 23:25:23','d1b6b4ae-2ba9-434a-a655-6537fd58c1f1'),(57,21,85,NULL,43,1,'2021-03-17 23:43:33','2021-03-17 23:43:33','5c9e1667-1177-4d23-a62a-9d4ea5eaca4a'),(59,21,86,NULL,68,1,'2021-03-17 23:45:10','2021-03-17 23:45:10','8c43c9e4-5ae8-4153-b9f8-7e5159610fc2'),(60,2,89,NULL,6,1,'2021-03-17 23:49:08','2021-03-17 23:49:08','22aaecbd-3d8d-4a62-a347-c4259d13332e'),(61,2,90,NULL,6,1,'2021-03-17 23:49:27','2021-03-17 23:49:27','76dc5252-c40d-4fe5-b72a-4ad022951a66'),(62,2,91,NULL,6,1,'2021-03-17 23:49:56','2021-03-17 23:49:56','4ce71041-87f8-4f55-aa67-bd74997ac0fe'),(63,2,92,NULL,6,1,'2021-03-17 23:49:59','2021-03-17 23:49:59','acc2f9b5-5085-4060-8c29-a189ed208f30');
/*!40000 ALTER TABLE `relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepaths`
--

DROP TABLE IF EXISTS `resourcepaths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepaths` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepaths`
--

LOCK TABLES `resourcepaths` WRITE;
/*!40000 ALTER TABLE `resourcepaths` DISABLE KEYS */;
INSERT INTO `resourcepaths` VALUES ('10c6cd1a','@craft/web/assets/editentry/dist'),('1698b1a5','@craft/web/assets/installer/dist'),('177d180','@craft/web/assets/dashboard/dist'),('21d11380','@craft/web/assets/editentry/dist'),('2799c192','@craft/web/assets/utilities/dist'),('30600f1a','@craft/web/assets/dashboard/dist'),('33ac5160','@craft/web/assets/updateswidget/dist'),('35624897','@lib/selectize'),('3f0e0c1d','@lib/xregexp'),('407726eb','@lib/jquery-touch-events'),('40b453e6','@craft/web/assets/recententries/dist'),('4721ca0f','@craft/web/assets/craftsupport/dist'),('494286fa','@lib/fabric'),('49763a78','@lib/d3'),('4d55551','@craft/web/assets/updater/dist'),('525e8e3c','@craft/web/assets/editsection/dist'),('539824c0','@lib/iframe-resizer'),('563c4c83','@craft/web/assets/login/dist'),('5680e5e0','@lib/xregexp'),('57ec361e','@craft/redactor/assets/field/dist'),('5c0452c4','@lib/garnishjs'),('5ceca16a','@lib/selectize'),('5f3b1bd7','@lib/fileupload'),('611c6513','@lib/picturefill'),('612ec8ba','@craft/web/assets/fields/dist'),('612fc60a','@craft/web/assets/feed/dist'),('634950a6','@craft/web/assets/editsection/dist'),('643e5358','@lib/prismjs'),('66b859d1','@lib/jquery-touch-events'),('671520c9','@craft/web/assets/updateswidget/dist'),('697fbd95','@lib/timepicker'),('6f6451cd','@craft/redactor/assets/redactor-plugins/dist/fullscreen'),('6f8df9c0','@lib/fabric'),('6fb94542','@lib/d3'),('75575bfa','@lib/iframe-resizer'),('76361495','@craft/web/assets/craftsupport/dist'),('79f464ed','@lib/fileupload'),('7a603ad','@craft/web/assets/matrixsettings/dist'),('7acb2dfe','@lib/garnishjs'),('8438b069','@bower/jquery/dist'),('8928cee','@lib/picturefill'),('8990e8fc','@lib/jquery.payment'),('8da18b40','@craft/redactor/assets/redactor/dist'),('95acd670','@lib/vue'),('95b74714','@lib/velocity'),('9922f61f','@craft/web/assets/fields/dist'),('9923f8af','@craft/web/assets/feed/dist'),('9e880a3f','@lib/axios'),('a11bd050','@craft/web/assets/admintable/dist'),('a15c4444','@lib/axios'),('a23a6c48','@craft/web/assets/admintable/dist'),('ae307226','@craft/web/assets/login/dist'),('b1c13865','@craft/web/assets/matrix/dist'),('b290354c','@lib/jquery-ui'),('b84eb4f','@craft/web/assets/pluginstore/dist'),('c0b50e24','@craft/redactor/assets/redactor-plugins/dist/video'),('c226f261','@lib/element-resize-detector'),('cd910bb','@craft/web/assets/fieldsettings/dist'),('d16130e','@craft/web/assets/recententries/dist'),('d2ff0a4c','@craft/web/assets/cp/dist'),('db0baa5','@lib/prismjs'),('db1edcb1','@lib/jquery-ui'),('e01e0101','@lib/jquery.payment'),('e4e98d5b','@lib/element-resize-detector'),('ea93e4ab','@craft/web/assets/pluginstore/dist'),('ecf68143','@lib/iframe-resizer-cw'),('edb65994','@bower/jquery/dist'),('f0b9591c','@craft/web/assets/generalsettings/dist'),('f4d52e1e','@craft/web/assets/fieldsettings/dist'),('faf3e597','@craft/web/assets/cp/dist'),('fc223f8d','@lib/vue'),('fc39aee9','@lib/velocity');
/*!40000 ALTER TABLE `resourcepaths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourceId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bwgszweoehlhaglcorrkkrglnngbaojxabzk` (`sourceId`,`num`),
  KEY `fk_hshsjnjkvrsrzxvonstcosnehxzqqpzknpjj` (`creatorId`),
  CONSTRAINT `fk_fwgclazrxtvmfkqbnpmkzcuwxamxhoqglpnr` FOREIGN KEY (`sourceId`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_hshsjnjkvrsrzxvonstcosnehxzqqpzknpjj` FOREIGN KEY (`creatorId`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,2,1,1,NULL),(2,2,1,2,NULL),(3,2,1,3,NULL),(4,2,1,4,''),(5,2,1,5,''),(6,2,1,6,NULL),(7,2,1,7,''),(8,38,1,1,NULL),(9,40,1,1,NULL),(10,40,1,2,NULL),(11,43,1,1,NULL),(12,43,1,2,NULL),(13,43,1,3,NULL),(14,43,1,4,''),(15,43,1,5,''),(16,43,1,6,NULL),(17,43,1,7,NULL),(18,40,1,3,NULL),(19,43,1,8,NULL),(20,40,1,4,''),(21,62,1,1,''),(22,64,1,1,''),(23,66,1,1,''),(24,68,1,1,NULL),(25,68,1,2,NULL),(26,68,1,3,''),(27,68,1,4,''),(28,68,1,5,''),(29,2,1,8,NULL),(30,2,1,9,''),(31,43,1,9,NULL),(32,43,1,10,NULL),(33,43,1,11,NULL),(34,43,1,12,''),(35,43,1,13,''),(36,43,1,14,'');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searchindex`
--

DROP TABLE IF EXISTS `searchindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`siteId`),
  FULLTEXT KEY `idx_gagvzkpyernbhldifbadnwqxeevwzkmqfleq` (`keywords`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searchindex`
--

LOCK TABLES `searchindex` WRITE;
/*!40000 ALTER TABLE `searchindex` DISABLE KEYS */;
INSERT INTO `searchindex` VALUES (1,'email',0,1,' sertic bruno gmail com '),(1,'firstname',0,1,''),(1,'fullname',0,1,''),(1,'lastname',0,1,''),(1,'slug',0,1,''),(1,'username',0,1,' admin '),(2,'slug',0,1,' home '),(2,'title',0,1,' home '),(6,'extension',0,1,' jpg '),(6,'filename',0,1,' gear jpg '),(6,'kind',0,1,' image '),(6,'slug',0,1,''),(6,'title',0,1,' gear '),(8,'extension',0,1,' jpg '),(8,'filename',0,1,' hero jpg '),(8,'kind',0,1,' image '),(8,'slug',0,1,''),(8,'title',0,1,' hero '),(11,'extension',0,1,' svg '),(11,'filename',0,1,' arrow svg '),(11,'kind',0,1,' image '),(11,'slug',0,1,''),(11,'title',0,1,' arrow '),(12,'extension',0,1,' svg '),(12,'filename',0,1,' arrow next svg '),(12,'kind',0,1,' image '),(12,'slug',0,1,''),(12,'title',0,1,' arrow next '),(13,'extension',0,1,' svg '),(13,'filename',0,1,' arrow prev svg '),(13,'kind',0,1,' image '),(13,'slug',0,1,''),(13,'title',0,1,' arrow prev '),(14,'extension',0,1,' svg '),(14,'filename',0,1,' list svg '),(14,'kind',0,1,' image '),(14,'slug',0,1,''),(14,'title',0,1,' list '),(15,'extension',0,1,' svg '),(15,'filename',0,1,' logo svg '),(15,'kind',0,1,' image '),(15,'slug',0,1,''),(15,'title',0,1,' logo '),(16,'extension',0,1,' jpg '),(16,'filename',0,1,' map bg dark jpg '),(16,'kind',0,1,' image '),(16,'slug',0,1,''),(16,'title',0,1,' map bg dark '),(17,'extension',0,1,' jpg '),(17,'filename',0,1,' map bg light jpg '),(17,'kind',0,1,' image '),(17,'slug',0,1,''),(17,'title',0,1,' map bg light '),(18,'extension',0,1,' svg '),(18,'filename',0,1,' x svg '),(18,'kind',0,1,' image '),(18,'slug',0,1,''),(18,'title',0,1,' x '),(19,'extension',0,1,' jpg '),(19,'filename',0,1,' felix lam j7fxkhtoqt0 unsplash jpg '),(19,'kind',0,1,' image '),(19,'slug',0,1,''),(19,'title',0,1,' felix lam j7fxkht oqt0 unsplash '),(20,'extension',0,1,' jpg '),(20,'filename',0,1,' forest jpg '),(20,'kind',0,1,' image '),(20,'slug',0,1,''),(20,'title',0,1,' forest '),(21,'extension',0,1,' jpg '),(21,'filename',0,1,' gear 2021 03 15 141604 jpg '),(21,'kind',0,1,' image '),(21,'slug',0,1,''),(21,'title',0,1,' gear '),(22,'extension',0,1,' jpg '),(22,'filename',0,1,' henry potter jpg '),(22,'kind',0,1,' image '),(22,'slug',0,1,''),(22,'title',0,1,' henry potter '),(23,'extension',0,1,' jpg '),(23,'filename',0,1,' hero 2021 03 15 141606 jpg '),(23,'kind',0,1,' image '),(23,'slug',0,1,''),(23,'title',0,1,' hero '),(24,'extension',0,1,' jpg '),(24,'filename',0,1,' jack starfield jpg '),(24,'kind',0,1,' image '),(24,'slug',0,1,''),(24,'title',0,1,' jack starfield '),(25,'extension',0,1,' jpg '),(25,'filename',0,1,' jeremy bishop hmhjyqlwqwu unsplash jpg '),(25,'kind',0,1,' image '),(25,'slug',0,1,''),(25,'title',0,1,' jeremy bishop h mhjy ql w qw u unsplash '),(26,'extension',0,1,' jpg '),(26,'filename',0,1,' peru jpg '),(26,'kind',0,1,' image '),(26,'slug',0,1,''),(26,'title',0,1,' peru '),(27,'extension',0,1,' jpg '),(27,'filename',0,1,' mountains jpg '),(27,'kind',0,1,' image '),(27,'slug',0,1,''),(27,'title',0,1,' mountains '),(28,'extension',0,1,' jpg '),(28,'filename',0,1,' woods jpg '),(28,'kind',0,1,' image '),(28,'slug',0,1,''),(28,'title',0,1,' woods '),(29,'extension',0,1,' jpg '),(29,'filename',0,1,' sarah bradbury jpg '),(29,'kind',0,1,' image '),(29,'slug',0,1,''),(29,'title',0,1,' sarah bradbury '),(30,'extension',0,1,' jpg '),(30,'filename',0,1,' vander films iwi2xbthf8u unsplash jpg '),(30,'kind',0,1,' image '),(30,'slug',0,1,''),(30,'title',0,1,' vander films i wi2xb th f8 u unsplash '),(31,'slug',0,1,''),(32,'slug',0,1,''),(33,'slug',0,1,''),(35,'slug',0,1,''),(36,'slug',0,1,''),(37,'slug',0,1,''),(38,'slug',0,1,' about us '),(38,'title',0,1,' about us '),(40,'slug',0,1,' stories '),(40,'title',0,1,' stories '),(43,'slug',0,1,' our gear '),(43,'title',0,1,' our gear budasevo '),(51,'slug',0,1,''),(52,'slug',0,1,''),(53,'slug',0,1,''),(57,'slug',0,1,' temp pnkbdhzwjhyikcfjgwugqpordrixqbzmduwe '),(57,'title',0,1,''),(61,'slug',0,1,' temp jqpgrfyiscftsoseoxaolcwpwxxepeedovml '),(61,'title',0,1,''),(62,'slug',0,1,' summer days in budasevo '),(62,'title',0,1,' summer days in budasevo '),(64,'slug',0,1,' ktms nile river rally '),(64,'title',0,1,' ktms nile river rally '),(66,'slug',0,1,' exploring pery by motorbike '),(66,'title',0,1,' exploring pery by motorbike '),(68,'slug',0,1,' stories listing '),(68,'title',0,1,' tales from the trail '),(75,'slug',0,1,''),(76,'slug',0,1,''),(77,'slug',0,1,''),(79,'slug',0,1,''),(80,'slug',0,1,''),(81,'slug',0,1,''),(82,'slug',0,1,''),(83,'slug',0,1,''),(84,'slug',0,1,''),(85,'slug',0,1,''),(86,'slug',0,1,''),(93,'slug',0,1,'');
/*!40000 ALTER TABLE `searchindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `enableVersioning` tinyint(1) NOT NULL DEFAULT 0,
  `propagationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'all',
  `previewTargets` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fjzyrucmgljwdyxyolfhesjukynuwgwhyjnn` (`handle`),
  KEY `idx_btvuxklplmrycejyzhydgzgbccwmnbstpcth` (`name`),
  KEY `idx_joccatrilqlzsxtcezwrobcstftzkropdugp` (`structureId`),
  KEY `idx_kffzomkrhyrxupagluttxwtxltytooiqurcq` (`dateDeleted`),
  CONSTRAINT `fk_vwjjzfniqkvyvwjgktaamasovguauwqibwdc` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,NULL,'Home','home','single',1,'all',NULL,'2021-03-15 13:58:56','2021-03-15 13:58:56',NULL,'cc5e9c31-6dc8-45d9-a0bb-596309ba5b53'),(2,NULL,'About Us','aboutUs','single',1,'all',NULL,'2021-03-15 14:29:22','2021-03-15 14:29:22','2021-03-15 14:29:45','a2d22b6c-746b-45d1-bdf5-3f3cd7ff63f8'),(3,NULL,'Stories','stories','channel',1,'all',NULL,'2021-03-15 14:30:00','2021-03-17 21:53:52',NULL,'9b62c7b0-9947-4702-9726-b3929d2fb2dd'),(4,NULL,'Our Gear','ourGear','single',1,'all',NULL,'2021-03-15 14:30:38','2021-03-15 14:30:38',NULL,'f3a09e39-e50f-4198-b766-e3d03e5e23a9'),(5,NULL,'Stories Listing','storiesListing','single',1,'all',NULL,'2021-03-17 23:18:44','2021-03-17 23:18:44',NULL,'debaabca-2695-4a96-a838-d7c01dbcb7d2');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_sites`
--

DROP TABLE IF EXISTS `sections_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `siteId` int(11) NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `uriFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabledByDefault` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_bpvtfulwtbhrbxutbfvptjlfnuqfrwqgilpv` (`sectionId`,`siteId`),
  KEY `idx_cfhlobajvjoukltrezveridlppevolrnwbwa` (`siteId`),
  CONSTRAINT `fk_fnwvlqaknztrmprjdmmejzvnntrdtvgeesij` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lygewervmgloferbtdafqepxwmzqnnmdztlf` FOREIGN KEY (`sectionId`) REFERENCES `sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_sites`
--

LOCK TABLES `sections_sites` WRITE;
/*!40000 ALTER TABLE `sections_sites` DISABLE KEYS */;
INSERT INTO `sections_sites` VALUES (1,1,1,1,'__home__','home',1,'2021-03-15 13:58:56','2021-03-15 13:58:56','d9bf1442-cc5c-4736-b719-6d04453f842c'),(2,2,1,1,'about-us','general',1,'2021-03-15 14:29:22','2021-03-15 14:29:22','b8bb7a4d-2d20-4d2d-aae9-ce02d6564730'),(3,3,1,1,'stories/{slug}','stories/_entry',1,'2021-03-15 14:30:00','2021-03-17 21:53:52','1ec73858-4d0e-439b-83b4-91e8445c1afb'),(4,4,1,1,'ourGear','ourGear',1,'2021-03-15 14:30:38','2021-03-17 23:47:06','e42aeac7-8107-417c-b0c3-ce486db3ea4d'),(5,5,1,1,'stories','stories\\index',1,'2021-03-17 23:18:44','2021-03-17 23:18:44','b57d2397-5817-4d0e-8607-eec0089a0fd6');
/*!40000 ALTER TABLE `sections_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequences`
--

DROP TABLE IF EXISTS `sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequences` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `next` int(11) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequences`
--

LOCK TABLES `sequences` WRITE;
/*!40000 ALTER TABLE `sequences` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_nsmbjwryykubbeijekqlnqxzturnvacmioig` (`uid`),
  KEY `idx_ykctcwccafbrilkkzwlkgafpphzgbhbozwkv` (`token`),
  KEY `idx_pyayaunjfttcxzxfuvfogwvtcbqlvbjpolip` (`dateUpdated`),
  KEY `idx_cqklsjqxrsyaekdmsdtlmcgfxroxjnhgnmxx` (`userId`),
  CONSTRAINT `fk_tflryuiyhhgsdabqavxtfhghihayfpqcskzj` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'W1nwGYq-IVEgw30Fi9wL5Hop-OY7JHjLD0HfD5mJQap1pbySbfZb_5GubK4Imc533IncKV7B7rNK3cR-CjsBU5ybNjUmn4BG-tnY','2021-03-15 13:53:57','2021-03-15 14:54:39','189fa7b3-d9a7-4c35-83a2-8ea39c8c235c');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shunnedmessages`
--

DROP TABLE IF EXISTS `shunnedmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_xhpkmesxondbbtlommkedxlgzqpkicwjqnsb` (`userId`,`message`),
  CONSTRAINT `fk_rrbgofadwyrbdmqsrthsvvjdxlugecrcjkca` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shunnedmessages`
--

LOCK TABLES `shunnedmessages` WRITE;
/*!40000 ALTER TABLE `shunnedmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `shunnedmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sitegroups`
--

DROP TABLE IF EXISTS `sitegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sitegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_qpzbpqlfabdgielhblgxbgxanyztpvsiopnj` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sitegroups`
--

LOCK TABLES `sitegroups` WRITE;
/*!40000 ALTER TABLE `sitegroups` DISABLE KEYS */;
INSERT INTO `sitegroups` VALUES (1,'Motoventure','2021-03-15 13:52:16','2021-03-15 13:52:16',NULL,'d1c7cc10-a1e1-42c6-ba2e-aeedc957f59c');
/*!40000 ALTER TABLE `sitegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 0,
  `baseUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_hqloslqqgvovikafuyuugjqimbckeuqrmlyu` (`dateDeleted`),
  KEY `idx_owwwrvhgqbobcqflwzqkqlchslxhoeckvtpj` (`handle`),
  KEY `idx_olohfxxooautedlqvlilycafqgglnfjpobsk` (`sortOrder`),
  KEY `fk_nhitkpolwapmwhjdmkyjizivtdpoqpodmjal` (`groupId`),
  CONSTRAINT `fk_nhitkpolwapmwhjdmkyjizivtdpoqpodmjal` FOREIGN KEY (`groupId`) REFERENCES `sitegroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,1,1,1,'Motoventure','default','en-US',1,'$PRIMARY_SITE_URL',1,'2021-03-15 13:52:16','2021-03-15 13:52:16',NULL,'e3dc308d-0e52-4537-96a8-68579a37aa34');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structureelements`
--

DROP TABLE IF EXISTS `structureelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_qxwghpdtmgjrjspnfnuocuggdlkceasanapr` (`structureId`,`elementId`),
  KEY `idx_torsmxeydbjqkniqjqkyeauwkzojmxbcnfah` (`root`),
  KEY `idx_nizlyemaportcdlamdrdozshgvezavegthlf` (`lft`),
  KEY `idx_bhlhszwfpeybzmmwrqngomdhtjpvhpqbdfkc` (`rgt`),
  KEY `idx_cvknpndyhcktfdcxxclcmcdkvfcpcoctizzn` (`level`),
  KEY `idx_lgztmiqofgtheouimlfcdmidahytevivqaxl` (`elementId`),
  CONSTRAINT `fk_gckpypdackstjcwoxsbxqdeydyrgihbazzel` FOREIGN KEY (`structureId`) REFERENCES `structures` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_grrcitjkgnrrjwudrhndtyzpxzbsrswjirnu` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structureelements`
--

LOCK TABLES `structureelements` WRITE;
/*!40000 ALTER TABLE `structureelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `structureelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `structures`
--

DROP TABLE IF EXISTS `structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lciwlvsarosawybdginjutbdexehilcrhvaf` (`dateDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `structures`
--

LOCK TABLES `structures` WRITE;
/*!40000 ALTER TABLE `structures` DISABLE KEYS */;
/*!40000 ALTER TABLE `structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemmessages`
--

DROP TABLE IF EXISTS `systemmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_yidycxfjqdphnluhhfzllpyxdzhoobnbostb` (`key`,`language`),
  KEY `idx_kegryqjxxklaucgvlzjwzizonaoulisxcdgg` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemmessages`
--

LOCK TABLES `systemmessages` WRITE;
/*!40000 ALTER TABLE `systemmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggroups`
--

DROP TABLE IF EXISTS `taggroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bfwbulmhnotpxfhtmdipzxonybpwnqgcfgjk` (`name`),
  KEY `idx_pujekcshisewzfeghwfjfdnndamcbywdxsho` (`handle`),
  KEY `idx_vzyheuddpahcktanrzyaqgvkiojnziglfojf` (`dateDeleted`),
  KEY `fk_osokfxilhqqhzsfelidorooihnywmdzvyyvh` (`fieldLayoutId`),
  CONSTRAINT `fk_osokfxilhqqhzsfelidorooihnywmdzvyyvh` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggroups`
--

LOCK TABLES `taggroups` WRITE;
/*!40000 ALTER TABLE `taggroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `deletedWithGroup` tinyint(1) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_jegvqfkcgxmluynbyoxswpfscudqccixsnsd` (`groupId`),
  CONSTRAINT `fk_adcwlsnjgkhdkolqdoygruizlhzqkgkctyti` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_xrlvldboeyvfkjfjvhqivildlrocmurcrpzr` FOREIGN KEY (`groupId`) REFERENCES `taggroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecacheelements`
--

DROP TABLE IF EXISTS `templatecacheelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecacheelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_qwzefrgohpbcwcaihmqsugeqreicaboykaev` (`cacheId`),
  KEY `idx_fekhddeythgnbolzlgdpgxnxmexfugluiysl` (`elementId`),
  CONSTRAINT `fk_lzkpodrnsefteszvgnizqacsiamczqqigomj` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_skimzovmdskeivlyddgceyjefmgmatirsvko` FOREIGN KEY (`elementId`) REFERENCES `elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecacheelements`
--

LOCK TABLES `templatecacheelements` WRITE;
/*!40000 ALTER TABLE `templatecacheelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecacheelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecachequeries`
--

DROP TABLE IF EXISTS `templatecachequeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecachequeries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_knsyjxzzteybfdfujxxqdjkrnpxvksuurolo` (`cacheId`),
  KEY `idx_yvdgyymbkepoziewniiezavnqituubmdalee` (`type`),
  CONSTRAINT `fk_mzqwgdpwnzzbwaifhxeyvgkjdikcvxvpplie` FOREIGN KEY (`cacheId`) REFERENCES `templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecachequeries`
--

LOCK TABLES `templatecachequeries` WRITE;
/*!40000 ALTER TABLE `templatecachequeries` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecachequeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatecaches`
--

DROP TABLE IF EXISTS `templatecaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` int(11) NOT NULL,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_zsgflhuvopgaqlmsdrbbzctvirkthlhfbjjq` (`cacheKey`,`siteId`,`expiryDate`,`path`),
  KEY `idx_msnebgvcmwqtdtccysyynciklzvryqvgkdyr` (`cacheKey`,`siteId`,`expiryDate`),
  KEY `idx_oofvhikptqulvibmhbyynpaueympewxnjobr` (`siteId`),
  CONSTRAINT `fk_lwzzlhjdzctbxtjawsdininoebsaccabbrfe` FOREIGN KEY (`siteId`) REFERENCES `sites` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatecaches`
--

LOCK TABLES `templatecaches` WRITE;
/*!40000 ALTER TABLE `templatecaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatecaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_pxwwpwfhnbvhmauncogoajdnvjgxgkmvzgiu` (`token`),
  KEY `idx_qowatsiccwqviujchbyqraxndehilueevmct` (`expiryDate`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (1,'BwK87VTL3x1jIMJccw9mFm8Ih1kav746','[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":61,\"siteId\":1,\"draftId\":5,\"revisionId\":null}]',NULL,NULL,'2021-03-18 23:03:15','2021-03-17 23:03:15','2021-03-17 23:03:15','a27370c1-89a9-441e-974b-5dd3a4583d17'),(2,'jQ-xJiWz1Y608qBEbVhhtirT9ZceBrHA','[\"preview/preview\",{\"elementType\":\"craft\\\\elements\\\\Entry\",\"sourceId\":58,\"siteId\":1,\"draftId\":2,\"revisionId\":null}]',NULL,NULL,'2021-03-18 23:03:33','2021-03-17 23:03:33','2021-03-17 23:03:33','95e66475-bde2-4baf-b301-5d8519d18122');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_mkdmtvpjygsvcvdzxjgibinmrflhsxdujxex` (`handle`),
  KEY `idx_bzhctcsbldymmmybgmlesiuhkisadlplyabz` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups`
--

LOCK TABLES `usergroups` WRITE;
/*!40000 ALTER TABLE `usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_users`
--

DROP TABLE IF EXISTS `usergroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_hknyzidfuimybtwhcdfosztpjksfobthlqty` (`groupId`,`userId`),
  KEY `idx_qajxiutuwzrcirnhdgqnpzocfyjdobpsrvzd` (`userId`),
  CONSTRAINT `fk_fgjoxisclxvjvftknucwjtluxjjrmidqgzdu` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_heybbtnlempnvmozkxhqyveujsniagvfdrml` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_users`
--

LOCK TABLES `usergroups_users` WRITE;
/*!40000 ALTER TABLE `usergroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions`
--

DROP TABLE IF EXISTS `userpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_tkwkvkgpjhnkjqvhxxgwjodlktztbqpefozi` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions`
--

LOCK TABLES `userpermissions` WRITE;
/*!40000 ALTER TABLE `userpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions_usergroups`
--

DROP TABLE IF EXISTS `userpermissions_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_nazbaldfqsrczylexgfyqyyxbkteomdpzvty` (`permissionId`,`groupId`),
  KEY `idx_kudzthwcdxgaytzmzualnbiaxuobucmtxycd` (`groupId`),
  CONSTRAINT `fk_ghzzbdmziibmhdplkmagtgmfnybeksowqznx` FOREIGN KEY (`groupId`) REFERENCES `usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_nrakiecmqjadswerpewkfownagaqamtkuxbd` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions_usergroups`
--

LOCK TABLES `userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `userpermissions_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpermissions_users`
--

DROP TABLE IF EXISTS `userpermissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_ikleczugpacwiqoxuzdvewjabivqrozfrwxo` (`permissionId`,`userId`),
  KEY `idx_bsjytpteujnkepqzvyegrzgcfyujyithpsaq` (`userId`),
  CONSTRAINT `fk_hbjoukhylosqextrtedsusxckmitzrfdnpkn` FOREIGN KEY (`permissionId`) REFERENCES `userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_hihcgzupqivlybymcrojrixfjnlzlttimnfr` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpermissions_users`
--

LOCK TABLES `userpermissions_users` WRITE;
/*!40000 ALTER TABLE `userpermissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `userpermissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userpreferences`
--

DROP TABLE IF EXISTS `userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userpreferences` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `preferences` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userId`),
  CONSTRAINT `fk_rzgeiqfmmvjbdsvreixggexvjyuwfjviwsyc` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userpreferences`
--

LOCK TABLES `userpreferences` WRITE;
/*!40000 ALTER TABLE `userpreferences` DISABLE KEYS */;
INSERT INTO `userpreferences` VALUES (1,'{\"language\":\"en-US\"}');
/*!40000 ALTER TABLE `userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photoId` int(11) DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  `pending` tinyint(1) NOT NULL DEFAULT 0,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(3) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `hasDashboard` tinyint(1) NOT NULL DEFAULT 0,
  `verificationCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) NOT NULL DEFAULT 0,
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lcenpgwtolvzwvxebezywbgnvbaftlxcntoh` (`uid`),
  KEY `idx_lyyhakjbjuykhqawldhclsmpnhfixaylzzmk` (`verificationCode`),
  KEY `idx_rxilljkepgisonzelfudxkntbbdoqdgwwgda` (`email`),
  KEY `idx_wlpfqcoqordhvfzrkanljabvqpiypmtpeyze` (`username`),
  KEY `fk_gowbijvjlngrbclgoneyylvrfrcpmavzkqmq` (`photoId`),
  CONSTRAINT `fk_cdtkthzuejowwavyjvizcxuowiewtynjirgi` FOREIGN KEY (`id`) REFERENCES `elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_gowbijvjlngrbclgoneyylvrfrcpmavzkqmq` FOREIGN KEY (`photoId`) REFERENCES `assets` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin',NULL,NULL,NULL,'sertic.bruno@gmail.com','$2y$13$nyiFArq6k8PWGZJrsheuQO3y6Jv7ZZFe9eQKIOWTtaFAqJl7kDpEq',1,0,0,0,'2021-03-17 21:48:49',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,'2021-03-15 13:52:18','2021-03-15 13:52:18','2021-03-17 21:48:49','aa0f221d-6cb1-4462-ac3a-99bd0c85c6ca');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumefolders`
--

DROP TABLE IF EXISTS `volumefolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumefolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `volumeId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_toldqccremhlpklnwxvlguhvwfmpaupdpfcs` (`name`,`parentId`,`volumeId`),
  KEY `idx_pstjuutyuorrtyumhjsbngrpyuqvislvjovk` (`parentId`),
  KEY `idx_pgfiinnmmgsxmslccidtyzeoujcyvuvlnbvz` (`volumeId`),
  CONSTRAINT `fk_kfejddmpmrhayurqequsfakslmmzvtdkzfwr` FOREIGN KEY (`volumeId`) REFERENCES `volumes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_xudzvitatmnzhipqafdjcylhkrnjxofgpttm` FOREIGN KEY (`parentId`) REFERENCES `volumefolders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumefolders`
--

LOCK TABLES `volumefolders` WRITE;
/*!40000 ALTER TABLE `volumefolders` DISABLE KEYS */;
INSERT INTO `volumefolders` VALUES (1,NULL,1,'Uploads','','2021-03-15 14:03:20','2021-03-15 14:03:20','d36f576d-a630-441f-a5eb-70499744d75a'),(2,NULL,NULL,'Temporary source',NULL,'2021-03-15 14:15:24','2021-03-15 14:15:24','e419525c-2e0b-466a-99c1-aeb88dcc74d7'),(3,2,NULL,'user_1','user_1/','2021-03-15 14:15:24','2021-03-15 14:15:24','052632f2-1155-420d-a71a-ea038b3f2999');
/*!40000 ALTER TABLE `volumefolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumes`
--

DROP TABLE IF EXISTS `volumes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) NOT NULL DEFAULT 1,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleTranslationMethod` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'site',
  `titleTranslationKeyFormat` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `dateDeleted` datetime DEFAULT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_muonhnkkkbsanwyjgkqstqcnuijxdpwnxcpx` (`name`),
  KEY `idx_ccncrzjgolizkqlxvqwohiljdfqccsttzkih` (`handle`),
  KEY `idx_grxpqbbavldjgcyjztksezrmuyiyuskympkf` (`fieldLayoutId`),
  KEY `idx_fknocqjhtzxjgkbngktdssekxuvccvxtqtxj` (`dateDeleted`),
  CONSTRAINT `fk_nimiujausjwjejxvwqwhbzxbmbmxyspxperb` FOREIGN KEY (`fieldLayoutId`) REFERENCES `fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumes`
--

LOCK TABLES `volumes` WRITE;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
INSERT INTO `volumes` VALUES (1,2,'Uploads','uploads','craft\\volumes\\Local',1,'$ASSET_BASE_URL','site',NULL,'{\"path\":\"$ASSET_BASE_PATH\"}',1,'2021-03-15 14:03:20','2021-03-15 14:03:20',NULL,'cdaf9d90-568d-4a00-9f2c-242909582620');
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(3) DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_jdmwjbzqlatrniuewmgppiyxbjcayiwepiea` (`userId`),
  CONSTRAINT `fk_muneznucezqarwczqcutgxoknchtkczmwqif` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,1,'craft\\widgets\\RecentEntries',1,NULL,'{\"siteId\":1,\"section\":\"*\",\"limit\":10}',1,'2021-03-15 13:53:58','2021-03-15 13:53:58','ff36cf47-5b5a-4f30-b04c-6490bfab5b35'),(2,1,'craft\\widgets\\CraftSupport',2,NULL,'[]',1,'2021-03-15 13:53:59','2021-03-15 13:53:59','78da05a8-3d17-4ff2-b976-72bcc415b094'),(3,1,'craft\\widgets\\Updates',3,NULL,'[]',1,'2021-03-15 13:53:59','2021-03-15 13:53:59','1b4813e9-1b79-4c5f-9849-348032f44ad5'),(4,1,'craft\\widgets\\Feed',4,NULL,'{\"url\":\"https://craftcms.com/news.rss\",\"title\":\"Craft News\",\"limit\":5}',1,'2021-03-15 13:53:59','2021-03-15 13:53:59','ec835f63-e29c-4ed9-91e2-c32075ee74ec');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19  9:42:09
