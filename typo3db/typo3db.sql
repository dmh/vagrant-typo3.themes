-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: typo3
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `config` text NOT NULL,
  `icon` text NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text,
  `explicit_allowdeny` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text,
  `db_mountpoints` text,
  `pagetypes_select` varchar(255) NOT NULL DEFAULT '',
  `tables_select` text,
  `tables_modify` text,
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `groupMods` text,
  `file_mountpoints` text,
  `file_permissions` text,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `subgroup` text,
  `hide_in_lists` tinyint(4) NOT NULL DEFAULT '0',
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` longtext,
  `ses_backuserid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `usergroup` varchar(255) NOT NULL DEFAULT '',
  `disable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` char(2) NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `db_mountpoints` text,
  `options` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumtext,
  `file_mountpoints` text,
  `file_permissions` text,
  `workspace_perms` tinyint(3) NOT NULL DEFAULT '1',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `disableIPlock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `createdByAction` int(11) NOT NULL DEFAULT '0',
  `usergroup_cached_list` text,
  `workspace_id` int(11) NOT NULL DEFAULT '0',
  `workspace_preview` tinyint(3) NOT NULL DEFAULT '1',
  `category_perms` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1431087332,'admin','$P$CDUx1JHCd.QYBoGLusgUhQ0ibei9om0',1,'',0,0,0,'','',NULL,0,1431087332,0,'',NULL,'','a:20:{s:14:\"interfaceSetup\";N;s:10:\"moduleData\";a:7:{s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:9:\"file_list\";a:0:{}s:16:\"xMOD_alt_doc.php\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:0:{}i:1;s:32:\"cbf9fcb9646172755056b7c156c1c7ac\";}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:8:\"web_list\";a:0:{}s:16:\"opendocs::recent\";a:2:{s:32:\"cbf9fcb9646172755056b7c156c1c7ac\";a:4:{i:0;s:15:\"[Default Title]\";i:1;a:7:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:101:\"&edit[pages][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"0\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}s:32:\"0eaa25358e9ceeb3d00af423a49c8b8a\";a:4:{i:0;s:17:\"TYPO3 Themes test\";i:1;a:7:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:24:\"editRegularContentFromId\";N;s:9:\"workspace\";N;}i:2;s:108:\"&edit[sys_template][1]=edit&defVals=&overrideVals=&columnsOnly=&noView=&editRegularContentFromId=&workspace=\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";s:1:\"1\";s:3:\"pid\";s:1:\"1\";s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";i:1;}}}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:11:\"startModule\";s:29:\"help_AboutmodulesAboutmodules\";s:18:\"hideSubmoduleIcons\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:13:\"navFrameWidth\";s:0:\"\";s:17:\"navFrameResizable\";i:0;s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1431087344;s:15:\"moduleSessionID\";a:7:{s:10:\"web_layout\";s:32:\"e5e1ecc10a9a11471f0e7f73c5f4d4c6\";s:9:\"file_list\";s:32:\"bf6770d1baa627a793a4bd4131bcafbd\";s:16:\"xMOD_alt_doc.php\";s:32:\"bf6770d1baa627a793a4bd4131bcafbd\";s:10:\"FormEngine\";s:32:\"44ca32b634431f9696c4cc25e9841582\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"44ca32b634431f9696c4cc25e9841582\";s:8:\"web_list\";s:32:\"44ca32b634431f9696c4cc25e9841582\";s:16:\"opendocs::recent\";s:32:\"44ca32b634431f9696c4cc25e9841582\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:3:{s:8:\"Pagetree\";O:8:\"stdClass\":1:{s:9:\"stateHash\";O:8:\"stdClass\":4:{s:1:\"0\";i:1;s:1:\"1\";i:1;s:4:\"root\";i:1;s:16:\"lastSelectedNode\";s:2:\"p1\";}}s:25:\"typo3-navigationContainer\";O:8:\"stdClass\":1:{s:5:\"width\";i:233;}s:17:\"typo3-module-menu\";O:8:\"stdClass\":1:{s:5:\"width\";i:199;}}}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:35:\"a:1:{i:25218;a:1:{i:62822724;i:1;}}\";}s:8:\"tcaTrees\";a:1:{s:32:\"fc5490915273e8f87906abaacb8eff12\";i:0;}}',NULL,NULL,1,'',0,0,NULL,1431677676,0,NULL,0,1,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_md5params`
--

DROP TABLE IF EXISTS `cache_md5params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_md5params` (
  `md5hash` varchar(20) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `params` text,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_md5params`
--

LOCK TABLES `cache_md5params` WRITE;
/*!40000 ALTER TABLE `cache_md5params` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_md5params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT '0',
  `treelist` mediumtext,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object`
--

DROP TABLE IF EXISTS `cf_extbase_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object`
--

LOCK TABLES `cf_extbase_object` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_object_tags`
--

DROP TABLE IF EXISTS `cf_extbase_object_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_object_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_object_tags`
--

LOCK TABLES `cf_extbase_object_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_object_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_object_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection`
--

DROP TABLE IF EXISTS `cf_extbase_reflection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection`
--

LOCK TABLES `cf_extbase_reflection` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_reflection_tags`
--

DROP TABLE IF EXISTS `cf_extbase_reflection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_reflection_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_reflection_tags`
--

LOCK TABLES `cf_extbase_reflection_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_reflection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_queries_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_queries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_queries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_queries_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_queries_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_queries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

DROP TABLE IF EXISTS `cf_extbase_typo3dbbackend_tablecolumns_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_typo3dbbackend_tablecolumns_tags`
--

LOCK TABLES `cf_extbase_typo3dbbackend_tablecolumns_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_typo3dbbackend_tablecolumns_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache`
--

DROP TABLE IF EXISTS `cf_themes_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob,
  `expires` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`,`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache`
--

LOCK TABLES `cf_themes_cache` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_themes_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_themes_cache_tags`
--

DROP TABLE IF EXISTS `cf_themes_cache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_themes_cache_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`),
  KEY `cache_tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_themes_cache_tags`
--

LOCK TABLES `cf_themes_cache_tags` WRITE;
/*!40000 ALTER TABLE `cf_themes_cache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_themes_cache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `subgroup` tinytext NOT NULL,
  `TSconfig` text NOT NULL,
  `felogin_redirectPid` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_session_data`
--

DROP TABLE IF EXISTS `fe_session_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_session_data` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `content` mediumblob,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`),
  KEY `tstamp` (`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_session_data`
--

LOCK TABLES `fe_session_data` WRITE;
/*!40000 ALTER TABLE `fe_session_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_session_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) NOT NULL DEFAULT '',
  `ses_name` varchar(32) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_hashlock` int(11) NOT NULL DEFAULT '0',
  `ses_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `ses_data` blob,
  `ses_permanent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ses_id`,`ses_name`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` tinytext,
  `disable` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `fax` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lockToDomain` varchar(50) NOT NULL DEFAULT '',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uc` blob,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext,
  `TSconfig` text,
  `fe_cruser_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0',
  `is_online` int(10) unsigned NOT NULL DEFAULT '0',
  `felogin_redirectPid` tinytext,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`),
  KEY `username` (`username`),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `perms_userid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `TSconfig` text,
  `storage_pid` int(11) NOT NULL DEFAULT '0',
  `is_siteroot` tinyint(4) NOT NULL DEFAULT '0',
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  `no_cache` int(10) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT '0',
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` text,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` text,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT '0',
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text,
  `module` varchar(10) NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT '0',
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid` int(10) unsigned NOT NULL DEFAULT '0',
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT '0',
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT '0',
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,0,0,0,'',0,0,0,0,0,0,1431677783,256,0,1,0,31,27,0,0,1431677699,1,0,'Home',1,NULL,0,1,0,0,'',0,0,1,0,0,0,'','',0,0,'','0',0,NULL,0,'',0,NULL,0,1431677901,NULL,'',0,'','','',0,0,0,0,'',0,0,'pagets__ContentStartsite','',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_language_overlay`
--

DROP TABLE IF EXISTS `pages_language_overlay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_language_overlay` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `doktype` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `media` text,
  `keywords` text,
  `description` text,
  `abstract` text,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(80) NOT NULL DEFAULT '',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `url` varchar(255) NOT NULL DEFAULT '',
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `shortcut` int(10) unsigned NOT NULL DEFAULT '0',
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_language_overlay`
--

LOCK TABLES `pages_language_overlay` WRITE;
/*!40000 ALTER TABLE `pages_language_overlay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_language_overlay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_countries`
--

DROP TABLE IF EXISTS `static_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_countries` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `cn_iso_2` char(2) NOT NULL DEFAULT '',
  `cn_iso_3` char(3) NOT NULL DEFAULT '',
  `cn_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cn_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `cn_parent_tr_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cn_official_name_local` varchar(128) NOT NULL DEFAULT '',
  `cn_official_name_en` varchar(128) NOT NULL DEFAULT '',
  `cn_capital` varchar(45) NOT NULL DEFAULT '',
  `cn_tldomain` char(2) NOT NULL DEFAULT '',
  `cn_currency_uid` int(11) NOT NULL DEFAULT '0',
  `cn_currency_iso_3` char(3) NOT NULL DEFAULT '',
  `cn_currency_iso_nr` int(10) unsigned NOT NULL DEFAULT '0',
  `cn_phone` int(10) unsigned NOT NULL DEFAULT '0',
  `cn_eu_member` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_uno_member` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_address_format` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cn_zone_flag` tinyint(4) NOT NULL DEFAULT '0',
  `cn_short_local` varchar(70) NOT NULL DEFAULT '',
  `cn_short_en` varchar(50) NOT NULL DEFAULT '',
  `cn_country_zones` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_countries`
--

LOCK TABLES `static_countries` WRITE;
/*!40000 ALTER TABLE `static_countries` DISABLE KEYS */;
INSERT INTO `static_countries` VALUES (1,0,0,'AD','AND',20,10,39,'Principat d\'Andorra','Principality of Andorra','Andorra la Vella','ad',49,'EUR',978,376,0,1,1,0,'Andorra','Andorra',0),(2,0,0,'AE','ARE',784,9,145,'???????? ???????? ????????','United Arab Emirates','Abu Dhabi','ae',2,'AED',784,971,0,1,1,0,'???????? ???????? ????????','United Arab Emirates',0),(3,0,0,'AF','AFG',4,30,34,'? ????????? ?????? ????','Islamic Republic of Afghanistan','Kabul','af',171,'AFN',971,93,0,1,2,0,'?????????','Afghanistan',0),(4,0,0,'AG','ATG',28,19,29,'Antigua and Barbuda','Antigua and Barbuda','St John\'s','ag',163,'XCD',951,1268,0,1,1,0,'Antigua and Barbuda','Antigua and Barbuda',0),(5,0,0,'AI','AIA',660,19,29,'Anguilla','Anguilla','The Valley','ai',163,'XCD',951,1264,0,0,1,0,'Anguilla','Anguilla',0),(6,0,0,'AL','ALB',8,10,39,'Republika e Shqipërisë','Republic of Albania','Tirana','al',4,'ALL',8,355,0,1,1,0,'Shqipëria','Albania',0),(7,0,0,'AM','ARM',51,9,145,'????????? ???????????????','Republic of Armenia','Yerevan','am',5,'AMD',51,374,0,1,1,0,'????????','Armenia',0),(8,0,1,'AN','ANT',530,19,29,'Nederlandse Antillen','Netherlands Antilles','Willemstad','an',6,'ANG',532,599,0,0,1,0,'Nederlandse Antillen','Netherlands Antilles',0),(9,0,0,'AO','AGO',24,23,17,'República de Angola','Republic of Angola','Luanda','ao',7,'AOA',973,244,0,1,1,0,'Angola','Angola',0),(10,0,0,'AQ','ATA',10,0,0,'Antarctica','Antarctica','','aq',0,'',0,67212,0,0,1,0,'Antarctica','Antarctica',0),(11,0,0,'AR','ARG',32,16,5,'República Argentina','Argentine Republic','Buenos Aires','ar',8,'ARS',32,54,0,1,2,0,'Argentina','Argentina',0),(12,0,0,'AS','ASM',16,28,61,'Amerika Samoa','American Samoa','Pago Pago','as',155,'USD',840,685,0,0,1,0,'Amerika Samoa','American Samoa',0),(13,0,0,'AT','AUT',40,13,155,'Republik Österreich','Republic of Austria','Vienna','at',49,'EUR',978,43,1,1,1,0,'Österreich','Austria',9),(14,0,0,'AU','AUS',36,25,53,'Commonwealth of Australia','Commonwealth of Australia','Canberra','au',9,'AUD',36,61,0,1,3,0,'Australia','Australia',8),(15,0,0,'AW','ABW',533,19,29,'Aruba','Aruba','Oranjestad','aw',10,'AWG',533,297,0,0,0,0,'Aruba','Aruba',0),(16,0,0,'AZ','AZE',31,9,145,'Az?rbaycan Respublikas?','Republic of Azerbaijan','Baku','az',11,'AZN',944,994,0,1,1,0,'Az?rbaycan','Azerbaijan',0),(17,0,0,'BA','BIH',70,10,39,'Bosna i Hercegovina / ????? ? ???????????','Bosnia and Herzegovina','Sarajevo','ba',12,'BAM',977,387,0,1,0,0,'BiH/???','Bosnia and Herzegovina',0),(18,0,0,'BB','BRB',52,19,29,'Barbados','Barbados','Bridgetown','bb',13,'BBD',52,1246,0,1,1,0,'Barbados','Barbados',0),(19,0,0,'BD','BGD',50,30,34,'?????????????? ?????','People’s Republic of Bangladesh','Dhaka','bd',14,'BDT',50,880,0,1,1,0,'????????','Bangladesh',0),(20,0,0,'BE','BEL',56,13,155,'Koninkrijk België / Royaume de Belgique','Kingdom of Belgium','Brussels','be',49,'EUR',978,32,1,1,1,0,'Belgique','Belgium',0),(21,0,0,'BF','BFA',854,20,11,'Burkina Faso','Burkina Faso','Ouagadougou','bf',164,'XOF',952,226,0,1,1,0,'Burkina','Burkina Faso',0),(22,0,0,'BG','BGR',100,11,151,'????????? ????????','Republic of Bulgaria','Sofia','bg',16,'BGN',975,359,1,1,1,0,'Bulgaria','Bulgaria',0),(23,0,0,'BH','BHR',48,9,145,'????? ???????','Kingdom of Bahrain','Manama','bh',17,'BHD',48,973,0,1,1,0,'??????','Bahrain',0),(24,0,0,'BI','BDI',108,21,14,'Republika y\'u Burundi','Republic of Burundi','Bujumbura','bi',18,'BIF',108,257,0,1,1,0,'Burundi','Burundi',0),(25,0,0,'BJ','BEN',204,20,11,'République du Bénin','Republic of Benin','Porto Novo','bj',164,'XOF',952,229,0,1,1,0,'Bénin','Benin',0),(26,0,0,'BM','BMU',60,18,21,'Bermuda','Bermuda','Hamilton','bm',19,'BMD',60,1441,0,0,1,0,'Bermuda','Bermuda',0),(27,0,0,'BN','BRN',96,7,35,'???? ?????????','Sultanate of Brunei','Bandar Seri Begawan','bn',20,'BND',96,673,0,1,1,0,'?????????','Brunei',0),(28,0,0,'BO','BOL',68,16,5,'Estado Plurinacional de Bolivia','Plurinational State of Bolivia','Sucre','bo',21,'BOB',68,591,0,1,1,0,'Bolivia','Bolivia',0),(29,0,0,'BR','BRA',76,16,5,'República Federativa do Brasil','Federative Republic of Brazil','Brasilia','br',23,'BRL',986,55,0,1,9,0,'Brasil','Brazil',27),(30,0,0,'BS','BHS',44,19,29,'Commonwealth of The Bahamas','Commonwealth of The Bahamas','Nassau','bs',24,'BSD',44,1242,0,1,1,0,'The Bahamas','The Bahamas',0),(31,0,0,'BT','BTN',64,30,34,'Druk-Yul','Kingdom of Bhutan','Thimphu','bt',25,'BTN',64,975,0,1,1,0,'Druk-Yul','Bhutan',0),(32,0,0,'BV','BVT',74,0,0,'Bouvet Island','Bouvet Island','','bv',111,'NOK',578,0,0,0,1,0,'Bouvetøya','Bouvet Island',0),(33,0,0,'BW','BWA',72,24,18,'Republic of Botswana','Republic of Botswana','Gaborone','bw',26,'BWP',72,267,0,1,1,0,'Botswana','Botswana',0),(34,0,0,'BY','BLR',112,11,151,'?????????? ????????','Republic of Belarus','Minsk','by',27,'BYR',974,375,0,1,1,0,'????????','Belarus',0),(35,0,0,'BZ','BLZ',84,17,13,'Belize','Belize','Belmopan','bz',28,'BZD',84,501,0,1,1,0,'Belize','Belize',0),(36,0,0,'CA','CAN',124,18,21,'Canada','Canada','Ottawa','ca',29,'CAD',124,1,0,1,4,0,'Canada','Canada',13),(37,0,0,'CC','CCK',166,25,53,'Territory of Cocos (Keeling) Islands','Territory of Cocos (Keeling) Islands','Bantam','cc',9,'AUD',36,6722,0,0,1,0,'Cocos (Keeling) Islands','Cocos (Keeling) Islands',0),(38,0,0,'CD','COD',180,23,17,'République Démocratique du Congo','Democratic Republic of the Congo','Kinshasa','cd',30,'CDF',976,243,0,1,0,0,'Congo','Congo',0),(39,0,0,'CF','CAF',140,23,17,'République centrafricaine','Central African Republic','Bangui','cf',162,'XAF',950,236,0,1,1,0,'République centrafricaine','Central African Republic',0),(40,0,0,'CG','COG',178,23,17,'République du Congo','Republic of the Congo','Brazzaville','cg',162,'XAF',950,242,0,1,1,0,'Congo-Brazzaville','Congo-Brazzaville',0),(41,0,0,'CH','CHE',756,13,155,'Confédération suisse / Schweizerische Eidgenossenschaft','Swiss Confederation','Berne','ch',31,'CHF',756,41,0,1,1,0,'Schweiz','Switzerland',26),(42,0,0,'CI','CIV',384,20,11,'République de Côte d’Ivoire','Republic of Côte d\'Ivoire','Yamoussoukro','ci',164,'XOF',952,225,0,1,2,0,'Côte d’Ivoire','Côte d’Ivoire',0),(43,0,0,'CK','COK',184,28,61,'Cook Islands','Cook Islands','Avarua','ck',113,'NZD',554,682,0,0,1,0,'Cook Islands','Cook Islands',0),(44,0,0,'CL','CHL',152,16,5,'República de Chile','Republic of Chile','Santiago','cl',33,'CLP',152,56,0,1,1,0,'Chile','Chile',0),(45,0,0,'CM','CMR',120,23,17,'Republic of Cameroon / République du Cameroun','Republic of Cameroon','Yaoundé','cm',162,'XAF',950,237,0,1,1,0,'Cameroun','Cameroon',0),(46,0,0,'CN','CHN',156,6,30,'???????','People’s Republic of China','Beijing','cn',34,'CNY',156,86,0,1,1,0,'??','China',0),(47,0,0,'CO','COL',170,16,5,'República de Colombia','Republic of Colombia','Bogotá','co',35,'COP',170,57,0,1,1,0,'Colombia','Colombia',0),(48,0,0,'CR','CRI',188,17,13,'República de Costa Rica','Republic of Costa Rica','San José','cr',36,'CRC',188,506,0,1,1,0,'Costa Rica','Costa Rica',0),(49,0,0,'CU','CUB',192,19,29,'República de Cuba','Republic of Cuba','Havana','cu',37,'CUP',192,53,0,1,1,0,'Cuba','Cuba',0),(50,0,0,'CV','CPV',132,20,11,'República de Cabo Verde','Republic of Cape Verde','Praia','cv',38,'CVE',132,238,0,1,1,0,'Cabo Verde','Cape Verde',0),(51,0,0,'CX','CXR',162,0,0,'Territory of Christmas Island','Territory of Christmas Island','Flying Fish Cove','cx',9,'AUD',36,6724,0,0,1,0,'Christmas Island','Christmas Island',0),(52,0,0,'CY','CYP',196,9,145,'???????? ?????????? / K?br?s Cumhuriyeti','Republic of Cyprus','Nicosia','cy',49,'EUR',978,357,1,1,1,0,'?????? / K?br?s','Cyprus',0),(53,0,0,'CZ','CZE',203,11,151,'?eská republika','Czech Republic','Prague','cz',40,'CZK',203,420,1,1,1,0,'?esko','Czech Republic',0),(54,0,0,'DE','DEU',276,13,155,'Bundesrepublik Deutschland','Federal Republic of Germany','Berlin','de',49,'EUR',978,49,1,1,1,0,'Deutschland','Germany',16),(55,0,0,'DJ','DJI',262,21,14,'??????? ?????? / République de Djibouti','Republic of Djibouti','Djibouti','dj',41,'DJF',262,253,0,1,1,0,'?????? /Djibouti','Djibouti',0),(56,0,0,'DK','DNK',208,12,154,'Kongeriget Danmark','Kingdom of Denmark','Copenhagen','dk',42,'DKK',208,45,1,1,1,0,'Danmark','Denmark',0),(57,0,0,'DM','DMA',212,19,29,'Commonwealth of Dominica','Commonwealth of Dominica','Roseau','dm',163,'XCD',951,1767,0,1,1,0,'Dominica','Dominica',0),(58,0,0,'DO','DOM',214,19,29,'República Dominicana','Dominican Republic','Santo Domingo','do',43,'DOP',214,1809,0,1,1,0,'Quisqueya','Dominican Republic',0),(59,0,0,'DZ','DZA',12,22,15,'????????? ????????? ???????????','People’s Democratic Republic of Algeria','Algiers','dz',44,'DZD',12,213,0,1,1,0,'??????','Algeria',0),(60,0,0,'EC','ECU',218,16,5,'República del Ecuador','Republic of Ecuador','Quito','ec',155,'USD',840,593,0,1,1,0,'Ecuador','Ecuador',0),(61,0,0,'EE','EST',233,12,154,'Eesti Vabariik','Republic of Estonia','Tallinn','ee',45,'EEK',233,372,1,1,1,0,'Eesti','Estonia',0),(62,0,0,'EG','EGY',818,22,15,'???????? ??? ????????','Arab Republic of Egypt','Cairo','eg',46,'EGP',818,20,0,1,1,0,'???','Egypt',0),(63,0,0,'EH','ESH',732,22,15,'??????? ???????','Western Sahara','El Aaiún','eh',92,'MAD',504,212,0,0,1,0,'??????? ??????','Western Sahara',0),(64,0,0,'ER','ERI',232,21,14,'??? ????','State of Eritrea','Asmara','er',47,'ERN',232,291,0,1,1,0,'????','Eritrea',0),(65,0,0,'ES','ESP',724,10,39,'Reino de España','Kingdom of Spain','Madrid','es',49,'EUR',978,34,1,1,8,0,'España','Spain',52),(66,0,0,'ET','ETH',231,21,14,'?????? ?????','Federal Democratic Republic of Ethiopia','Addis Ababa','et',48,'ETB',230,251,0,1,1,0,'?????','Ethiopia',0),(67,0,0,'FI','FIN',246,12,154,'Suomen Tasavalta / Republiken Finland','Republic of Finland','Helsinki','fi',49,'EUR',978,358,1,1,1,0,'Suomi','Finland',0),(68,0,0,'FJ','FJI',242,26,54,'Republic of Fiji / Matanitu Tu-Vaka-i-koya ko Vi','Republic of Fiji','Suva','fj',50,'FJD',242,679,0,1,1,0,'Fiji / Viti','Fiji',0),(69,0,0,'FK','FLK',238,16,5,'Falkland Islands','Falkland Islands','Stanley','fk',51,'FKP',238,500,0,0,1,0,'Falkland Islands','Falkland Islands',0),(70,0,0,'FM','FSM',583,27,57,'Federated States of Micronesia','Federated States of Micronesia','Palikir','fm',155,'USD',840,691,0,1,1,0,'Micronesia','Micronesia',0),(71,0,0,'FO','FRO',234,12,154,'Føroyar / Færøerne','Faroe Islands','Thorshavn','fo',42,'DKK',208,298,0,0,1,0,'Føroyar / Færøerne','Faroes',0),(72,0,0,'FR','FRA',250,13,155,'République française','French Republic','Paris','fr',49,'EUR',978,33,1,1,1,0,'France','France',131),(73,0,0,'GA','GAB',266,23,17,'République Gabonaise','Gabonese Republic','Libreville','ga',162,'XAF',950,241,0,1,1,0,'Gabon','Gabon',0),(74,0,0,'GB','GBR',826,12,154,'United Kingdom of Great Britain and Northern','United Kingdom of Great Britain and Northern','London','uk',52,'GBP',826,44,1,1,5,0,'United Kingdom','United Kingdom',105),(75,0,0,'GD','GRD',308,19,29,'Grenada','Grenada','St George\'s','gd',163,'XCD',951,1473,0,1,1,0,'Grenada','Grenada',0),(76,0,0,'GE','GEO',268,9,145,'??????????','Georgia','Tbilisi','ge',53,'GEL',981,995,0,1,1,0,'??????????','Georgia',0),(77,0,0,'GF','GUF',254,16,5,'Guyane française','French Guiana','Cayenne','gf',49,'EUR',978,594,0,0,1,0,'Guyane française','French Guiana',0),(78,0,0,'GH','GHA',288,20,11,'Republic of Ghana','Republic of Ghana','Accra','gh',177,'GHS',936,233,0,1,1,0,'Ghana','Ghana',0),(79,0,0,'GI','GIB',292,10,39,'Gibraltar','Gibraltar','Gibraltar','gi',55,'GIP',292,350,0,0,1,0,'Gibraltar','Gibraltar',0),(80,0,0,'GL','GRL',304,18,21,'Kalaallit Nunaat / Grønland','Greenland','Nuuk','gl',42,'DKK',208,299,0,0,1,0,'Grønland','Greenland',0),(81,0,0,'GM','GMB',270,20,11,'Republic of The Gambia','Republic of The Gambia','Banjul','gm',56,'GMD',270,220,0,1,1,0,'Gambia','Gambia',0),(82,0,0,'GN','GIN',324,20,11,'République de Guinée','Republic of Guinea','Conakry','gn',57,'GNF',324,224,0,1,1,0,'Guinée','Guinea',0),(83,0,0,'GP','GLP',312,19,29,'Département de la Guadeloupe','Department of Guadeloupe','Basse Terre','gp',49,'EUR',978,590,0,0,1,0,'Guadeloupe','Guadeloupe',0),(84,0,0,'GQ','GNQ',226,23,17,'República de Guinea Ecuatorial','Republic of Equatorial Guinea','Malabo','gq',162,'XAF',950,240,0,1,1,0,'Guinea Ecuatorial','Equatorial Guinea',0),(85,0,0,'GR','GRC',300,10,39,'???????? ??????????','Hellenic Republic','Athens','gr',49,'EUR',978,30,1,1,1,0,'??????','Greece',0),(86,0,0,'GS','SGS',239,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','','gs',52,'GBP',826,0,0,0,0,0,'South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands',0),(87,0,0,'GT','GTM',320,17,13,'República de Guatemala','Republic of Guatemala','Guatemala City','gt',58,'GTQ',320,502,0,1,1,0,'Guatemala','Guatemala',0),(88,0,0,'GU','GUM',316,27,57,'The Territory of Guam / Guåhån','The Territory of Guam','Hagåtña','gu',155,'USD',840,671,0,0,1,0,'Guåhån','Guam',0),(89,0,0,'GW','GNB',624,20,11,'República da Guiné-Bissau','Republic of Guinea-Bissau','Bissau','gw',164,'XOF',952,245,0,1,1,0,'Guiné-Bissau','Guinea-Bissau',0),(90,0,0,'GY','GUY',328,16,5,'Co-operative Republic of Guyana','Co-operative Republic of Guyana','Georgetown','gy',60,'GYD',328,592,0,1,1,0,'Guyana','Guyana',0),(91,0,0,'HK','HKG',344,6,30,'???????','Hong Kong SAR of the People’s Republic of China','','hk',61,'HKD',344,852,0,0,1,0,'??','Hong Kong SAR of China',0),(92,0,0,'HN','HND',340,17,13,'República de Honduras','Republic of Honduras','Tegucigalpa','hn',62,'HNL',340,504,0,1,1,0,'Honduras','Honduras',0),(93,0,0,'HR','HRV',191,10,39,'Republika Hrvatska','Republic of Croatia','Zagreb','hr',63,'HRK',191,385,0,1,1,0,'Hrvatska','Croatia',21),(94,0,0,'HT','HTI',332,19,29,'Repiblik d Ayiti / République d\'Haïti','Republic of Haiti','Port-au-Prince','ht',64,'HTG',332,509,0,1,1,0,'Ayiti','Haiti',0),(95,0,0,'HU','HUN',348,11,151,'Magyar Köztársaság','Hungary','Budapest','hu',65,'HUF',348,36,1,1,1,0,'Magyarország','Hungary',0),(96,0,0,'ID','IDN',360,7,35,'Republik Indonesia','Republic of Indonesia','Jakarta','id',66,'IDR',360,62,0,1,2,0,'Indonesia','Indonesia',0),(97,0,0,'IE','IRL',372,12,154,'Poblacht na hÉireann / Republic of Ireland','Republic of Ireland','Dublin','ie',49,'EUR',978,353,1,1,1,0,'Éire','Ireland',26),(98,0,0,'IL','ISR',376,9,145,'???? ??????? / ????? ??????','State of Israel','Tel Aviv','il',67,'ILS',376,972,0,1,2,0,'?????','Israel',0),(99,0,0,'IN','IND',356,30,34,'Bharat; Republic of India','Republic of India','New Delhi','in',68,'INR',356,91,0,1,2,0,'India','India',0),(100,0,0,'IO','IOT',86,30,34,'British Indian Ocean Territory','British Indian Ocean Territory','','io',52,'GBP',826,0,0,0,1,0,'British Indian Ocean Territory','British Indian Ocean Territory',0),(101,0,0,'IQ','IRQ',368,9,145,'????????? ????????','Republic of Iraq','Baghdad','iq',69,'IQD',368,964,0,1,1,0,'?????? / ??????','Iraq',0),(102,0,0,'IR','IRN',364,30,34,'?????? ?????? ?????','Islamic Republic of Iran','Tehran','ir',70,'IRR',364,98,0,1,1,0,'?????','Iran',0),(103,0,0,'IS','ISL',352,12,154,'Lýðveldið Ísland','Republic of Iceland','Reykjavík','is',71,'ISK',352,354,0,1,1,0,'Ísland','Iceland',0),(104,0,0,'IT','ITA',380,10,39,'Repubblica Italiana','Italian Republic','Rome','it',49,'EUR',978,39,1,1,7,0,'Italia','Italy',110),(105,0,0,'JM','JAM',388,19,29,'Commonwealth of Jamaica','Commonwealth of Jamaica','Kingston','jm',72,'JMD',388,1876,0,1,2,0,'Jamaica','Jamaica',0),(106,0,0,'JO','JOR',400,9,145,'??????? ???????? ????????','Hashemite Kingdom of Jordan','Amman','jo',73,'JOD',400,962,0,1,1,0,'?????','Jordan',0),(107,0,0,'JP','JPN',392,6,30,'???','Japan','Tokyo','jp',74,'JPY',392,81,0,1,2,0,'??','Japan',0),(108,0,0,'KE','KEN',404,21,14,'Jamhuri va Kenya','Republic of Kenia','Nairobi','ke',75,'KES',404,254,0,1,1,0,'Kenya','Kenya',0),(109,0,0,'KG','KGZ',417,8,143,'??????????','Kyrgyzstan','Bishkek','kg',76,'KGS',417,996,0,1,1,0,'??????????','Kyrgyzstan',0),(110,0,0,'KH','KHM',116,7,35,'Pre?h Réachéanachâkr Kâmp?chea','Kingdom of Cambodia','Phnom Penh','kh',77,'KHR',116,855,0,1,1,0,'Kâmp?chea','Cambodia',0),(111,0,0,'KI','KIR',296,27,57,'Republic of Kiribati','Republic of Kiribati','Bairiki','ki',9,'AUD',36,686,0,1,0,0,'Kiribati','Kiribati',0),(112,0,0,'KM','COM',174,21,14,'Udzima wa Komori /Union des Comores /????? ?????','Union of the Comoros','Moroni','km',78,'KMF',174,269,0,1,1,0,'????? ?????','Comoros',0),(113,0,0,'KN','KNA',659,19,29,'Federation of Saint Kitts and Nevis','Federation of Saint Kitts and Nevis','Basseterre','kn',163,'XCD',951,1869,0,1,1,0,'Saint Kitts and Nevis','Saint Kitts and Nevis',0),(114,0,0,'KP','PRK',408,6,30,'??????????','Democratic People’s Republic of Korea','Pyongyang','kp',79,'KPW',408,850,0,1,0,0,'???','North Korea',0),(115,0,0,'KR','KOR',410,6,30,'????','Republic of Korea','Seoul','kr',80,'KRW',410,82,0,1,1,0,'??','South Korea',0),(116,0,0,'KW','KWT',414,9,145,'???? ??????','State of Kuweit','Kuwait City','kw',81,'KWD',414,965,0,1,1,0,'??????','Kuwait',0),(117,0,0,'KY','CYM',136,19,29,'Cayman Islands','Cayman Islands','George Town','ky',82,'KYD',136,1345,0,0,1,0,'Cayman Islands','Cayman Islands',0),(118,0,0,'KZ','KAZ',398,8,143,'????????? ???????????? /?????????? ?????????','Republic of Kazakhstan','Astana','kz',83,'KZT',398,7,0,1,1,0,'????????? /?????????','Kazakhstan',0),(119,0,0,'LA','LAO',418,7,35,'???????????????????????????????','Lao People’s Democratic Republic','Vientiane','la',84,'LAK',418,856,0,1,1,0,'????????','Laos',0),(120,0,0,'LB','LBN',422,9,145,'?????????? ??????????','Republic of Lebanon','Beirut','lb',85,'LBP',422,961,0,1,1,0,'?????','Lebanon',0),(121,0,0,'LC','LCA',662,19,29,'Saint Lucia','Saint Lucia','Castries','lc',163,'XCD',951,1758,0,1,1,0,'Saint Lucia','Saint Lucia',0),(122,0,0,'LI','LIE',438,13,155,'Fürstentum Liechtenstein','Principality of Liechtenstein','Vaduz','li',31,'CHF',756,423,0,1,1,0,'Liechtenstein','Liechtenstein',0),(123,0,0,'LK','LKA',144,30,34,'????? ???? / ?????? ?????? ???????? ????????','Democratic Socialist Republic of Sri Lanka','Colombo','lk',86,'LKR',144,94,0,1,2,0,'????? ???? / ??????','Sri Lanka',0),(124,0,0,'LR','LBR',430,20,11,'Republic of Liberia','Republic of Liberia','Monrovia','lr',87,'LRD',430,231,0,1,1,0,'Liberia','Liberia',0),(125,0,0,'LS','LSO',426,24,18,'Muso oa Lesotho / Kingdom of Lesotho','Kingdon of Lesotho','Maseru','ls',88,'LSL',426,266,0,1,1,0,'Lesotho','Lesotho',0),(126,0,0,'LT','LTU',440,12,154,'Lietuvos Respublika','Republic of Lithuania','Vilnius','lt',89,'LTL',440,370,1,1,1,0,'Lietuva','Lithuania',0),(127,0,0,'LU','LUX',442,13,155,'Grand-Duché de Luxembourg / Großherzogtum Luxemburg / Groussherzogtum Lëtzebuerg','Grand Duchy of Luxembourg','Luxembourg','lu',49,'EUR',978,352,1,1,1,0,'Luxemburg','Luxembourg',0),(128,0,0,'LV','LVA',428,12,154,'Latvijas Republika','Republic of Latvia','Riga','lv',90,'LVL',428,371,1,1,1,0,'Latvija','Latvia',0),(129,0,0,'LY','LBY',434,22,15,'???????','Libya','Tripoli','ly',91,'LYD',434,218,0,1,1,0,'???????','Libya',0),(130,0,0,'MA','MAR',504,22,15,'??????? ????????','Kingdom of Morocco','Rabat','ma',92,'MAD',504,212,0,1,1,0,'????????','Morocco',0),(131,0,0,'MC','MCO',492,13,155,'Principauté de Monaco / Principatu de Munegu','Principality of Monaco','Monaco','mc',49,'EUR',978,377,0,1,1,0,'Monaco','Monaco',0),(132,0,0,'MD','MDA',498,11,151,'Republica Moldova','Republic of Moldova','Chisinau','md',93,'MDL',498,373,0,1,1,0,'Moldova','Moldova',0),(133,0,0,'MG','MDG',450,21,14,'Repoblikan\'i Madagasikara / République de Madagascar','Republic of Madagascar','Antananarivo','mg',173,'MGA',969,261,0,1,1,0,'Madagascar','Madagascar',0),(134,0,0,'MH','MHL',584,27,57,'Aolep?n Aor?kin M?aje? / Republic of the Marshall Islands','Republic of the Marshall Islands','Dalap-Uliga-Darrit (DUD)','mh',155,'USD',840,692,0,1,1,0,'Marshall Islands','Marshall Islands',0),(135,0,0,'MK','MKD',807,10,39,'????????? ??????????','Republic of Macedonia','Skopje','mk',95,'MKD',807,389,0,1,1,0,'??????????','Macedonia',0),(136,0,0,'ML','MLI',466,20,11,'République du Mali','Republik Mali','Bamako','ml',164,'XOF',952,223,0,1,1,0,'Mali','Mali',0),(137,0,0,'MM','MMR',104,7,35,'Pyidaungzu Myanma Naingngandaw','Republic of the Union of Myanmar','Yangon','mm',96,'MMK',104,95,0,1,1,0,'Myanmar','Myanmar',0),(138,0,0,'MN','MNG',496,6,30,'?????? ???','Mongolia','Ulan Bator','mn',97,'MNT',496,976,0,1,1,0,'?????? ???','Mongolia',0),(139,0,0,'MO','MAC',446,6,30,'?????????????? / Região Administrativa Especial de Macau da República Popular da China','Macao SAR of the People’s Republic of China','Macau','mo',98,'MOP',446,853,0,0,1,0,'?? / Macau','Macao SAR of China',0),(140,0,0,'MP','MNP',580,27,57,'Commonwealth of the Northern Mariana Islands','Commonwealth of the Northern Mariana Islands','Garapan','mp',155,'USD',840,1670,0,0,0,0,'Northern Marianas','Northern Marianas',0),(141,0,0,'MQ','MTQ',474,19,29,'Département de la Martinique','Department of Martinique','Fort-de-France','mq',49,'EUR',978,596,0,0,1,0,'Martinique','Martinique',0),(142,0,0,'MR','MRT',478,20,11,'????????? ????????? ???????????','Islamic Republic of Mauritania','Nouakchott','mr',99,'MRO',478,222,0,1,1,0,'???????????','Mauritania',0),(143,0,0,'MS','MSR',500,19,29,'Montserrat','Montserrat','Plymouth','ms',163,'XCD',951,1664,0,0,1,0,'Montserrat','Montserrat',0),(144,0,0,'MT','MLT',470,10,39,'Repubblika ta\' Malta / Republic of Malta','Republic of Malta','Valletta','mt',49,'EUR',978,356,1,1,1,0,'Malta','Malta',0),(145,0,0,'MU','MUS',480,21,14,'Republic of Mauritius','Republic of Mauritius','Port Louis','mu',101,'MUR',480,230,0,1,1,0,'Mauritius','Mauritius',0),(146,0,0,'MV','MDV',462,30,34,'?????????????? ????????????','Republic of Maldives','Malé','mv',102,'MVR',462,960,0,1,1,0,'???????????','Maldives',0),(147,0,0,'MW','MWI',454,21,14,'Republic of Malawi / Dziko la Mala?i','Republic of Malawi','Lilongwe','mw',103,'MWK',454,265,0,1,1,0,'Malawi','Malawi',0),(148,0,0,'MX','MEX',484,17,13,'Estados Unidos Mexicanos','United Mexican States','Mexico City','mx',104,'MXN',484,52,0,1,6,0,'México','Mexico',32),(149,0,0,'MY','MYS',458,7,35,'????????? ??????','Malaysia','Kuala Lumpur','my',106,'MYR',458,60,0,1,1,0,'??????','Malaysia',0),(150,0,0,'MZ','MOZ',508,21,14,'República de Moçambique','Republic of Mozambique','Maputo','mz',178,'MZN',943,258,0,1,1,0,'Moçambique','Mozambique',0),(151,0,0,'NA','NAM',516,24,18,'Republic of Namibia','Republic of Namibia','Windhoek','na',108,'NAD',516,264,0,1,1,0,'Namibia','Namibia',0),(152,0,0,'NC','NCL',540,26,54,'Territoire de Nouvelle-Caledonie et Dépendances','Territory of New Caledonia','Nouméa','nc',165,'XPF',953,687,0,0,1,0,'Nouvelle-Calédonie','New Caledonia',0),(153,0,0,'NE','NER',562,20,11,'République du Niger','Republic of Niger','Niamey','ne',164,'XOF',952,227,0,1,1,0,'Niger','Niger',0),(154,0,0,'NF','NFK',574,25,53,'Territory of Norfolk Island','Territory of Norfolk Island','Kingston','nf',9,'AUD',36,6723,0,0,1,0,'Norfolk Island','Norfolk Island',0),(155,0,0,'NG','NGA',566,20,11,'Federal Republic of Nigeria','Federal Republic of Nigeria','Abuja','ng',109,'NGN',566,234,0,1,1,0,'Nigeria','Nigeria',0),(156,0,0,'NI','NIC',558,17,13,'República de Nicaragua','Republic of Nicaragua','Managua','ni',110,'NIO',558,505,0,1,1,0,'Nicaragua','Nicaragua',0),(157,0,0,'NL','NLD',528,13,155,'Koninkrijk der Nederlanden','Kingdom of the Netherlands','Amsterdam','nl',49,'EUR',978,31,1,1,1,0,'Nederland','Netherlands',12),(158,0,0,'NO','NOR',578,12,154,'Kongeriket Norge','Kingdom of Norway','Oslo','no',111,'NOK',578,47,0,1,1,0,'Norge','Norway',0),(159,0,0,'NP','NPL',524,30,34,'?????? ???????????? ???????? ?????','Federal Democratic Republic of Nepal','Kathmandu','np',112,'NPR',524,977,0,1,1,0,'?????','Nepal',0),(160,0,0,'NR','NRU',520,27,57,'Ripublik Naoero','Republic of Nauru','Yaren','nr',9,'AUD',36,674,0,1,1,0,'Naoero','Nauru',0),(161,0,0,'NU','NIU',570,28,61,'Niue','Niue','Alofi','nu',113,'NZD',554,683,0,0,1,0,'Niue','Niue',0),(162,0,0,'NZ','NZL',554,25,53,'New Zealand / Aotearoa','New Zealand','Wellington','nz',113,'NZD',554,64,0,1,2,0,'New Zealand / Aotearoa','New Zealand',0),(163,0,0,'OM','OMN',512,9,145,'????? ?????','Sultanate of Oman','Muscat','om',114,'OMR',512,968,0,1,1,0,'?????','Oman',0),(164,0,0,'PA','PAN',591,17,13,'República de Panamá','Repulic of Panama','Panama City','pa',115,'PAB',590,507,0,1,2,0,'Panamá','Panama',0),(165,0,0,'PE','PER',604,16,5,'República del Perú','Republic of Peru','Lima','pe',116,'PEN',604,51,0,1,2,0,'Perú','Peru',0),(166,0,0,'PF','PYF',258,28,61,'Polynésie française','French Polynesia','Papeete','pf',165,'XPF',953,689,0,0,1,0,'Polynésie française','French Polynesia',0),(167,0,0,'PG','PNG',598,26,54,'Independent State of Papua New Guinea / Papua Niugini','Independent State of Papua New Guinea','Port Moresby','pg',117,'PGK',598,675,0,1,1,0,'Papua New Guinea  / Papua Niugini','Papua New Guinea',0),(168,0,0,'PH','PHL',608,7,35,'Republika ng Pilipinas / Republic of the Philippines','Republic of the Philippines','Manila','ph',118,'PHP',608,63,0,1,2,0,'Philippines','Philippines',0),(169,0,0,'PK','PAK',586,30,34,'Islamic Republic of Pakistan / ?????? ??????? ???????','Islamic Republic of Pakistan','Islamabad','pk',119,'PKR',586,92,0,1,1,0,'???????','Pakistan',0),(170,0,0,'PL','POL',616,11,151,'Rzeczpospolita Polska','Republic of Poland','Warsaw','pl',120,'PLN',985,48,1,1,1,0,'Polska','Poland',16),(171,0,0,'PM','SPM',666,18,21,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon','Saint-Pierre','pm',49,'EUR',978,508,0,0,1,0,'Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',0),(172,0,0,'PN','PCN',612,28,61,'Pitcairn Islands','Pitcairn Islands','Adamstown','pn',113,'NZD',554,0,0,0,1,0,'Pitcairn Islands','Pitcairn Islands',0),(173,0,0,'PR','PRI',630,19,29,'Estado Libre Asociado de Puerto Rico / Commonwealth of Puerto Rico','Commonwealth of Puerto Rico','San Juan','pr',155,'USD',840,1787,0,0,2,0,'Puerto Rico','Puerto Rico',0),(174,0,0,'PT','PRT',620,10,39,'República Portuguesa','Portuguese Republic','Lisbon','pt',49,'EUR',978,351,1,1,1,0,'Portugal','Portugal',0),(175,0,0,'PW','PLW',585,27,57,'Belu\'u era Belau / Republic of Palau','Republic of Palau','Koror','pw',155,'USD',840,680,0,1,1,0,'Belau / Palau','Palau',0),(176,0,0,'PY','PRY',600,16,5,'República del Paraguay / Tetä Paraguáype','Republic of Paraguay','Asunción','py',121,'PYG',600,595,0,1,1,0,'Paraguay','Paraguay',0),(177,0,0,'QA','QAT',634,9,145,'???? ???','State of Qatar','Doha','qa',122,'QAR',634,974,0,1,1,0,'???','Qatar',0),(178,0,0,'RE','REU',638,21,14,'Département de la Réunion','Department of Réunion','Saint-Denis','re',49,'EUR',978,262,0,0,1,0,'Réunion','Reunion',0),(179,0,0,'RO','ROU',642,11,151,'România','Romania','Bucharest','ro',179,'RON',946,40,1,1,1,0,'România','Romania',0),(180,0,0,'RU','RUS',643,11,151,'?????????? ?????????','Russian Federation','Moscow','ru',124,'RUB',643,7,0,1,1,0,'???????','Russia',0),(181,0,0,'RW','RWA',646,21,14,'Repubulika y\'u Rwanda / République Rwandaise','Republic of Rwanda','Kigali','rw',126,'RWF',646,250,0,1,1,0,'Rwanda','Rwanda',0),(182,0,0,'SA','SAU',682,9,145,'??????? ??????? ????????','Kingdom of Saudi Arabia','Riyadh','sa',127,'SAR',682,966,0,1,2,0,'????????','Saudi Arabia',0),(183,0,0,'SB','SLB',90,26,54,'Solomon Islands','Solomon Islands','Honiara','sb',128,'SBD',90,677,0,1,1,0,'Solomon Islands','Solomon Islands',0),(184,0,0,'SC','SYC',690,21,14,'Repiblik Sesel / Republic of Seychelles / République des Seychelles','Republic of Seychelles','Victoria','sc',129,'SCR',690,248,0,1,1,0,'Seychelles','Seychelles',0),(185,0,0,'SD','SDN',729,22,15,'??????? ???????','Republic of the Sudan','Khartoum','sd',130,'SDG',938,249,0,1,1,0,'???????','Sudan',0),(186,0,0,'SE','SWE',752,12,154,'Konungariket Sverige','Kingdom of Sweden','Stockholm','se',131,'SEK',752,46,1,1,1,0,'Sverige','Sweden',0),(187,0,0,'SG','SGP',702,7,35,'Republic of Singapore / ?????? / Republik Singapura / ??????????? ????????','Republic of Singapore','Singapore','sg',132,'SGD',702,65,0,1,2,0,'Singapore','Singapore',0),(188,0,0,'SH','SHN',654,20,11,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha','Jamestown','sh',133,'SHP',654,290,0,0,1,0,'Saint Helena, Ascension and Tristan da Cunha','Saint Helena, Ascension and Tristan da Cunha',0),(189,0,0,'SI','SVN',705,10,39,'Republika Slovenija','Republic of Slovenia','Ljubljana','si',49,'EUR',978,386,1,1,1,0,'Slovenija','Slovenia',0),(190,0,0,'SJ','SJM',744,12,154,'Svalbard','Svalbard','Longyearbyen','sj',111,'NOK',578,47,0,0,1,0,'Svalbard','Svalbard',0),(191,0,0,'SK','SVK',703,11,151,'Slovenská republika','Slovak Republic','Bratislava','sk',49,'EUR',978,421,1,1,1,0,'Slovensko','Slovakia',0),(192,0,0,'SL','SLE',694,20,11,'Republic of Sierra Leone','Republic of Sierra Leone','Freetown','sl',136,'SLL',694,232,0,1,1,0,'Sierra Leone','Sierra Leone',0),(193,0,0,'SM','SMR',674,10,39,'Serenissima Repubblica di San Marino','Most Serene Republic of San Marino','San Marino','sm',49,'EUR',978,378,0,1,1,0,'San Marino','San Marino',0),(194,0,0,'SN','SEN',686,20,11,'République de Sénégal','Republic of Senegal','Dakar','sn',164,'XOF',952,221,0,1,1,0,'Sénégal','Senegal',0),(195,0,0,'SO','SOM',706,21,14,'Soomaaliya','Federal Republic of Somalia','Mogadishu','so',137,'SOS',706,252,0,1,1,0,'Soomaaliya','Somalia',0),(196,0,0,'SR','SUR',740,16,5,'Republiek Suriname','Republic of Surinam','Paramaribo','sr',174,'SRD',968,597,0,1,1,0,'Suriname','Suriname',0),(197,0,0,'ST','STP',678,23,17,'República Democrática de São Tomé e Príncipe','Democratic Republic of São Tomé e Príncipe','São Tomé','st',139,'STD',678,239,0,1,1,0,'São Tomé e Príncipe','São Tomé e Príncipe',0),(198,0,0,'SV','SLV',222,17,13,'República de El Salvador','Republic of El Salvador','San Salvador','sv',140,'SVC',222,503,0,1,1,0,'El Salvador','El Salvador',0),(199,0,0,'SY','SYR',760,9,145,'?????????? ???????? ?????????','Syrian Arab Republic','Damascus','sy',141,'SYP',760,963,0,1,1,0,'????','Syria',0),(200,0,0,'SZ','SWZ',748,24,18,'Umboso weSwatini / Kingdom of Swaziland','Kingdom of Swaziland','Mbabane','sz',142,'SZL',748,268,0,1,1,0,'weSwatini','Swaziland',0),(201,0,0,'TC','TCA',796,19,29,'Turks and Caicos Islands','Turks and Caicos Islands','Cockburn Town','tc',155,'USD',840,1649,0,0,1,0,'Turks and Caicos Islands','Turks and Caicos Islands',0),(202,0,0,'TD','TCD',148,23,17,'??????? ???? / République du Tchad','Republic of Chad','N\'Djamena','td',162,'XAF',950,235,0,1,1,0,'???? / Tchad','Chad',0),(203,0,0,'TF','ATF',260,0,0,'Terres australes françaises','French Southern Territories','','tf',49,'EUR',978,0,0,0,0,0,'Terres australes françaises','French Southern Territories',0),(204,0,0,'TG','TGO',768,20,11,'République Togolaise','Republic of Togo','Lomé','tg',164,'XOF',952,228,0,1,1,0,'Togo','Togo',0),(205,0,0,'TH','THA',764,7,35,'??????????????','Kingdom of Thailand','Bangkok','th',143,'THB',764,66,0,1,2,0,'???','Thailand',0),(206,0,0,'TJ','TJK',762,8,143,'???????? ??????????','Republic of Tajikistan','Dushanbe','tj',144,'TJS',972,992,0,1,1,0,'??????????','Tajikistan',0),(207,0,0,'TK','TKL',772,28,61,'Tokelau','Tokelau','Fakaofo','tk',113,'NZD',554,0,0,0,1,0,'Tokelau','Tokelau',0),(208,0,0,'TM','TKM',795,8,143,'Türkmenistan Jumhuriyäti','Republic of Turkmenistan','Ashgabat','tm',180,'TMT',934,993,0,1,1,0,'Türkmenistan','Turkmenistan',0),(209,0,0,'TN','TUN',788,22,15,'????????? ????????','Republic of Tunisia','Tunis','tn',146,'TND',788,216,0,1,1,0,'????????','Tunisia',0),(210,0,0,'TO','TON',776,28,61,'Pule\'anga Fakatu\'i \'o Tonga / Kingdom of Tonga','Kingdom of Tonga','Nuku\'alofa','to',147,'TOP',776,676,0,1,1,0,'Tonga','Tonga',0),(211,0,0,'TL','TLS',626,7,35,'Repúblika Demokrátika Timor Lorosa\'e / República Democrática de Timor-Leste','Democratic Republic of Timor-Leste','Dili','tp',155,'USD',840,670,0,1,1,0,'Timor Lorosa\'e','Timor-Leste',0),(212,0,0,'TR','TUR',792,9,145,'Türkiye Cumhuriyeti','Republic of Turkey','Ankara','tr',175,'TRY',949,90,0,1,1,0,'Türkiye','Turkey',0),(213,0,0,'TT','TTO',780,19,29,'Republic of Trinidad and Tobago','Republic of Trinidad and Tobago','Port of Spain','tt',150,'TTD',780,1868,0,1,1,0,'Trinidad and Tobago','Trinidad and Tobago',0),(214,0,0,'TV','TUV',798,28,61,'Tuvalu','Tuvalu','Fongafale','tv',9,'AUD',36,688,0,1,1,0,'Tuvalu','Tuvalu',0),(215,0,0,'TW','TWN',158,6,30,'????','Republic of China','Taipei','tw',151,'TWD',901,886,0,0,1,0,'??','Taiwan',0),(216,0,0,'TZ','TZA',834,21,14,'Jamhuri ya Muungano wa Tanzania','United Republic of Tanzania','Dodoma','tz',152,'TZS',834,255,0,1,1,0,'Tanzania','Tanzania',0),(217,0,0,'UA','UKR',804,11,151,'???????','Ukraine','Kiev','ua',153,'UAH',980,380,0,1,1,0,'???????','Ukraine',0),(218,0,0,'UG','UGA',800,21,14,'Republic of Uganda','Republic of Uganda','Kampala','ug',154,'UGX',800,256,0,1,1,0,'Uganda','Uganda',0),(219,0,0,'UM','UMI',581,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands','','um',155,'USD',840,0,0,0,0,0,'United States Minor Outlying Islands','United States Minor Outlying Islands',0),(220,0,0,'US','USA',840,18,21,'United States of America','United States of America','Washington DC','us',155,'USD',840,1,0,1,3,1,'United States','United States',53),(221,0,0,'UY','URY',858,16,5,'República Oriental del Uruguay','Eastern Republic of Uruguay','Montevideo','uy',156,'UYU',858,598,0,1,1,0,'Uruguay','Uruguay',0),(222,0,0,'UZ','UZB',860,8,143,'O‘zbekiston Respublikasi','Republic of Uzbekistan','Tashkent','uz',157,'UZS',860,998,0,1,1,0,'O‘zbekiston','Uzbekistan',0),(223,0,0,'VA','VAT',336,10,39,'Status Civitatis Vaticanae / Città del Vaticano','Vatican City','Vatican City','va',49,'EUR',978,396,0,0,1,0,'Vaticano','Vatican City',0),(224,0,0,'VC','VCT',670,19,29,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','Kingstown','vc',163,'XCD',951,1784,0,1,1,0,'Saint Vincent and the Grenadines','Saint Vincent and the Grenadines',0),(225,0,0,'VE','VEN',862,16,5,'República Bolivariana de Venezuela','Bolivarian Republic of Venezuela','Caracas','ve',158,'VEF',937,58,0,1,1,0,'Venezuela','Venezuela',0),(226,0,0,'VG','VGB',92,19,29,'British Virgin Islands','British Virgin Islands','Road Town','vg',155,'USD',840,1284,0,0,1,0,'British Virgin Islands','British Virgin Islands',0),(227,0,0,'VI','VIR',850,19,29,'United States Virgin Islands','United States Virgin Islands','Charlotte Amalie','vi',155,'USD',840,1340,0,0,1,0,'US Virgin Islands','US Virgin Islands',0),(228,0,0,'VN','VNM',704,7,35,'C?ng Hòa Xã H?i Ch? Ngh?a Vi?t Nam','Socialist Republic of Vietnam','Hanoi','vn',159,'VND',704,84,0,1,1,0,'Vi?t Nam','Vietnam',0),(229,0,0,'VU','VUT',548,26,54,'Ripablik blong Vanuatu / Republic of Vanuatu / République du Vanuatu','Republic of Vanuatu','Port Vila','vu',160,'VUV',548,678,0,1,1,0,'Vanuatu','Vanuatu',0),(230,0,0,'WF','WLF',876,28,61,'Territoire de Wallis et Futuna','Territory of Wallis and Futuna Islands','Mata-Utu','wf',165,'XPF',953,681,0,0,1,0,'Wallis and Futuna','Wallis and Futuna',0),(231,0,0,'WS','WSM',882,28,61,'Malo Sa\'oloto Tuto\'atasi o Samoa / Independent State of Samoa','Independent State of Samoa','Apia','ws',161,'WST',882,685,0,1,1,0,'Samoa','Samoa',0),(232,0,0,'YE','YEM',887,9,145,'?????????? ???????','Republic of Yemen','San\'a','ye',166,'YER',886,967,0,1,1,0,'???????','Yemen',0),(233,0,0,'YT','MYT',175,21,14,'Mayotte','Mayotte','Mamoudzou','yt',49,'EUR',978,269,0,0,0,0,'Mayotte','Mayotte',0),(235,0,0,'ZA','ZAF',710,24,18,'Republic of South Africa / Republiek van Suid-Afrika / Rephaboliki ya Afrika-Borwa','Republic of South Africa','Pretoria','za',168,'ZAR',710,27,0,1,2,0,'Afrika-Borwa','South Africa',0),(236,0,0,'ZM','ZMB',894,21,14,'Republic of Zambia','Republic of Zambia','Lusaka','zm',169,'ZMW',967,260,0,1,1,0,'Zambia','Zambia',0),(237,0,0,'ZW','ZWE',716,21,14,'Republic of Zimbabwe','Republic of Zimbabwe','Harare','zw',169,'ZMW',967,263,0,1,1,0,'Zimbabwe','Zimbabwe',0),(238,0,0,'PS','PSE',275,9,145,'???? ??????','State of Palestine','','ps',0,'',0,0,0,0,0,0,'??????','Palestine',0),(239,0,1,'CS','CSG',891,10,39,'??????? ????????? ?????? ? ???? ????','State Union of Serbia and Montenegro','Belgrade','cs',0,'CSD',891,381,0,1,0,0,'?????? ? ???? ????','Serbia and Montenegro',0),(240,0,0,'AX','ALA',248,12,154,'Landskapet Åland','Åland Islands','Mariehamn','ax',49,'EUR',978,35818,1,0,0,0,'Åland','Åland',0),(241,0,0,'HM','HMD',334,25,53,'Heard Island and McDonald Islands','Heard Island and McDonald Islands','','',9,'AUD',36,0,0,0,0,0,'Heard Island and McDonald Islands','Heard Island and McDonald Islands',0),(242,0,0,'ME','MNE',499,10,39,'Republike Crne Gore','Montenegro','Podgorica','me',49,'EUR',978,382,0,1,1,0,'Crna Gora','Montenegro',0),(243,0,0,'RS','SRB',688,10,39,'Republika Srbija','Republic of Serbia','Belgrade','rs',172,'RSD',941,381,0,1,1,0,'Srbija','Serbia',0),(244,0,0,'JE','JEY',832,12,154,'Bailiwick of Jersey','Bailiwick of Jersey','Saint Helier','je',52,'GBP',826,44,0,0,5,0,'Jersey','Jersey',0),(245,0,0,'GG','GGY',831,12,154,'Bailiwick of Guernsey','Bailiwick of Guernsey','Saint Peter Port','gg',52,'GBP',826,44,0,0,5,0,'Guernsey','Guernsey',0),(246,0,0,'IM','IMN',833,12,154,'Isle of Man / Ellan Vannin','Isle of Man','Douglas','im',52,'GBP',826,44,0,0,5,0,'Mann / Mannin','Isle of Man',0),(247,0,0,'MF','MAF',652,19,29,'Collectivité de Saint-Martin','Collectivity of Saint Martin','Marigot','fr',49,'EUR',978,590,0,0,1,0,'Saint-Martin','Saint Martin',0),(248,0,0,'BL','BLM',652,19,29,'Collectivité de Saint-Barthélemy','Collectivity of Saint Barthélemy','Gustavia','fr',49,'EUR',978,590,0,0,1,0,'Saint-Barthélemy','Saint Barthélemy',0),(249,0,0,'BQ','BES',535,19,29,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba','Oranjestad','bq',155,'USD',840,599,0,0,0,0,'Bonaire, Sint Eustatius en Saba','Bonaire, Sint Eustatius and Saba',0),(250,0,0,'CW','CUW',531,19,29,'Curaçao','Curaçao','Willemstad','cw',6,'ANG',532,599,0,0,0,0,'Curaçao','Curaçao',0),(251,0,0,'SX','SXM',534,19,29,'Sint Maarten','Sint Maarten','Philipsburg','sx',6,'ANG',532,599,0,0,0,0,'Sint Maarten','Sint Maarten',0),(252,0,0,'SS','SSD',728,22,15,'Republic of South Sudan','Republic of South Sudan','Juba','ss',176,'SSP',728,211,0,0,0,0,'South Sudan','South Sudan',0);
/*!40000 ALTER TABLE `static_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_country_zones`
--

DROP TABLE IF EXISTS `static_country_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_country_zones` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `zn_country_iso_2` char(2) NOT NULL DEFAULT '',
  `zn_country_iso_3` char(3) NOT NULL DEFAULT '',
  `zn_country_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `zn_code` varchar(45) NOT NULL DEFAULT '',
  `zn_name_local` varchar(128) NOT NULL DEFAULT '',
  `zn_name_en` varchar(50) NOT NULL DEFAULT '',
  `zn_country_uid` int(11) NOT NULL DEFAULT '0',
  `zn_country_table` tinytext,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=710 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_country_zones`
--

LOCK TABLES `static_country_zones` WRITE;
/*!40000 ALTER TABLE `static_country_zones` DISABLE KEYS */;
INSERT INTO `static_country_zones` VALUES (1,0,0,'US','USA',840,'AL','Alabama','',220,'static_countries'),(2,0,0,'US','USA',840,'AK','Alaska','',220,'static_countries'),(4,0,0,'US','USA',840,'AZ','Arizona','',220,'static_countries'),(5,0,0,'US','USA',840,'AR','Arkansas','',220,'static_countries'),(12,0,0,'US','USA',840,'CA','California','',220,'static_countries'),(13,0,0,'US','USA',840,'CO','Colorado','',220,'static_countries'),(14,0,0,'US','USA',840,'CT','Connecticut','',220,'static_countries'),(15,0,0,'US','USA',840,'DE','Delaware','',220,'static_countries'),(16,0,0,'US','USA',840,'DC','District of Columbia','',220,'static_countries'),(18,0,0,'US','USA',840,'FL','Florida','',220,'static_countries'),(19,0,0,'US','USA',840,'GA','Georgia','',220,'static_countries'),(20,0,0,'US','USA',840,'GU','Guam','',220,'static_countries'),(21,0,0,'US','USA',840,'HI','Hawaii','',220,'static_countries'),(22,0,0,'US','USA',840,'ID','Idaho','',220,'static_countries'),(23,0,0,'US','USA',840,'IL','Illinois','',220,'static_countries'),(24,0,0,'US','USA',840,'IN','Indiana','',220,'static_countries'),(25,0,0,'US','USA',840,'IA','Iowa','',220,'static_countries'),(26,0,0,'US','USA',840,'KS','Kansas','',220,'static_countries'),(27,0,0,'US','USA',840,'KY','Kentucky','',220,'static_countries'),(28,0,0,'US','USA',840,'LA','Louisiana','',220,'static_countries'),(29,0,0,'US','USA',840,'ME','Maine','',220,'static_countries'),(31,0,0,'US','USA',840,'MD','Maryland','',220,'static_countries'),(32,0,0,'US','USA',840,'MA','Massachusetts','',220,'static_countries'),(33,0,0,'US','USA',840,'MI','Michigan','',220,'static_countries'),(34,0,0,'US','USA',840,'MN','Minnesota','',220,'static_countries'),(35,0,0,'US','USA',840,'MS','Mississippi','',220,'static_countries'),(36,0,0,'US','USA',840,'MO','Missouri','',220,'static_countries'),(37,0,0,'US','USA',840,'MT','Montana','',220,'static_countries'),(38,0,0,'US','USA',840,'NE','Nebraska','',220,'static_countries'),(39,0,0,'US','USA',840,'NV','Nevada','',220,'static_countries'),(40,0,0,'US','USA',840,'NH','New Hampshire','',220,'static_countries'),(41,0,0,'US','USA',840,'NJ','New Jersey','',220,'static_countries'),(42,0,0,'US','USA',840,'NM','New Mexico','',220,'static_countries'),(43,0,0,'US','USA',840,'NY','New York','',220,'static_countries'),(44,0,0,'US','USA',840,'NC','North Carolina','',220,'static_countries'),(45,0,0,'US','USA',840,'ND','North Dakota','',220,'static_countries'),(47,0,0,'US','USA',840,'OH','Ohio','',220,'static_countries'),(48,0,0,'US','USA',840,'OK','Oklahoma','',220,'static_countries'),(49,0,0,'US','USA',840,'OR','Oregon','',220,'static_countries'),(51,0,0,'US','USA',840,'PA','Pennsylvania','',220,'static_countries'),(52,0,0,'US','USA',840,'PR','Puerto Rico','',220,'static_countries'),(53,0,0,'US','USA',840,'RI','Rhode Island','',220,'static_countries'),(54,0,0,'US','USA',840,'SC','South Carolina','',220,'static_countries'),(55,0,0,'US','USA',840,'SD','South Dakota','',220,'static_countries'),(56,0,0,'US','USA',840,'TN','Tennessee','',220,'static_countries'),(57,0,0,'US','USA',840,'TX','Texas','',220,'static_countries'),(58,0,0,'US','USA',840,'UT','Utah','',220,'static_countries'),(59,0,0,'US','USA',840,'VT','Vermont','',220,'static_countries'),(61,0,0,'US','USA',840,'VA','Virginia','',220,'static_countries'),(62,0,0,'US','USA',840,'WA','Washington','',220,'static_countries'),(63,0,0,'US','USA',840,'WV','West Virginia','',220,'static_countries'),(64,0,0,'US','USA',840,'WI','Wisconsin','',220,'static_countries'),(65,0,0,'US','USA',840,'WY','Wyoming','',220,'static_countries'),(66,0,0,'CA','CAN',124,'AB','Alberta','',36,'static_countries'),(67,0,0,'CA','CAN',124,'BC','British Columbia','',36,'static_countries'),(68,0,0,'CA','CAN',124,'MB','Manitoba','',36,'static_countries'),(69,0,0,'CA','CAN',124,'NF','Newfoundland and Labrabor','',36,'static_countries'),(70,0,0,'CA','CAN',124,'NB','New Brunswick','',36,'static_countries'),(71,0,0,'CA','CAN',124,'NS','Nova Scotia','',36,'static_countries'),(72,0,0,'CA','CAN',124,'NT','Northwest Territories','',36,'static_countries'),(73,0,0,'CA','CAN',124,'NU','Nunavut','',36,'static_countries'),(74,0,0,'CA','CAN',124,'ON','Ontario','',36,'static_countries'),(75,0,0,'CA','CAN',124,'PE','Prince Edward Island','',36,'static_countries'),(76,0,0,'CA','CAN',124,'QC','Québec','Quebec',36,'static_countries'),(77,0,0,'CA','CAN',124,'SK','Saskatchewan','',36,'static_countries'),(78,0,0,'CA','CAN',124,'YT','Yukon Territory','',36,'static_countries'),(79,0,0,'DE','DEU',276,'NI','Niedersachsen','Lower Saxony',54,'static_countries'),(80,0,0,'DE','DEU',276,'BW','Baden-Württemberg','',54,'static_countries'),(81,0,0,'DE','DEU',276,'BY','Bayern','Bavaria',54,'static_countries'),(82,0,0,'DE','DEU',276,'BE','Berlin','',54,'static_countries'),(83,0,0,'DE','DEU',276,'BB','Brandenburg','',54,'static_countries'),(84,0,0,'DE','DEU',276,'HB','Bremen','',54,'static_countries'),(85,0,0,'DE','DEU',276,'HH','Hamburg','',54,'static_countries'),(86,0,0,'DE','DEU',276,'HE','Hessen','Hesse',54,'static_countries'),(87,0,0,'DE','DEU',276,'MV','Mecklenburg-Vorpommern','Mecklenburg-Western Pomerania',54,'static_countries'),(88,0,0,'DE','DEU',276,'NW','Nordrhein-Westfalen','North Rhine-Westphalia',54,'static_countries'),(89,0,0,'DE','DEU',276,'RP','Rheinland-Pfalz','Rhineland-Palatinate',54,'static_countries'),(90,0,0,'DE','DEU',276,'SL','Saarland','',54,'static_countries'),(91,0,0,'DE','DEU',276,'SN','Sachsen','Saxony',54,'static_countries'),(92,0,0,'DE','DEU',276,'ST','Sachsen-Anhalt','Saxony-Anhalt',54,'static_countries'),(93,0,0,'DE','DEU',276,'SH','Schleswig-Holstein','',54,'static_countries'),(94,0,0,'DE','DEU',276,'TH','Thüringen','Thuringia',54,'static_countries'),(95,0,0,'AT','AUT',40,'9','Wien','Vienna',13,'static_countries'),(96,0,0,'AT','AUT',40,'3','Niederösterreich','Lower Austria',13,'static_countries'),(97,0,0,'AT','AUT',40,'4','Oberösterreich','Upper Austria',13,'static_countries'),(98,0,0,'AT','AUT',40,'5','Salzburg','',13,'static_countries'),(99,0,0,'AT','AUT',40,'2','Kärnten','Carinthia',13,'static_countries'),(100,0,0,'AT','AUT',40,'6','Steiermark','Styria',13,'static_countries'),(101,0,0,'AT','AUT',40,'7','Tirol','Tyrol',13,'static_countries'),(102,0,0,'AT','AUT',40,'1','Burgenland','',13,'static_countries'),(103,0,0,'AT','AUT',40,'8','Vorarlberg','',13,'static_countries'),(104,0,0,'CH','CHE',756,'AG','Aargau','',41,'static_countries'),(105,0,0,'CH','CHE',756,'AI','Appenzell Innerrhoden','',41,'static_countries'),(106,0,0,'CH','CHE',756,'AR','Appenzell Ausserrhoden','',41,'static_countries'),(107,0,0,'CH','CHE',756,'BE','Bern','',41,'static_countries'),(108,0,0,'CH','CHE',756,'BL','Basel-Landschaft','',41,'static_countries'),(109,0,0,'CH','CHE',756,'BS','Basel-Stadt','',41,'static_countries'),(110,0,0,'CH','CHE',756,'FR','Freiburg','',41,'static_countries'),(111,0,0,'CH','CHE',756,'GE','Genf','Geneve',41,'static_countries'),(112,0,0,'CH','CHE',756,'GL','Glarus','',41,'static_countries'),(113,0,0,'CH','CHE',756,'GR','Graubünden','',41,'static_countries'),(114,0,0,'CH','CHE',756,'JU','Jura','',41,'static_countries'),(115,0,0,'CH','CHE',756,'LU','Luzern','',41,'static_countries'),(116,0,0,'CH','CHE',756,'NE','Neuenburg','',41,'static_countries'),(117,0,0,'CH','CHE',756,'NW','Nidwalden','',41,'static_countries'),(118,0,0,'CH','CHE',756,'OW','Obwalden','',41,'static_countries'),(119,0,0,'CH','CHE',756,'SG','St. Gallen','',41,'static_countries'),(120,0,0,'CH','CHE',756,'SH','Schaffhausen','',41,'static_countries'),(121,0,0,'CH','CHE',756,'SO','Solothurn','',41,'static_countries'),(122,0,0,'CH','CHE',756,'SZ','Schwyz','',41,'static_countries'),(123,0,0,'CH','CHE',756,'TG','Thurgau','',41,'static_countries'),(124,0,0,'CH','CHE',756,'TI','Tessin','',41,'static_countries'),(125,0,0,'CH','CHE',756,'UR','Uri','',41,'static_countries'),(126,0,0,'CH','CHE',756,'VD','Waadt','',41,'static_countries'),(127,0,0,'CH','CHE',756,'VS','Wallis','',41,'static_countries'),(128,0,0,'CH','CHE',756,'ZG','Zug','',41,'static_countries'),(129,0,0,'CH','CHE',756,'ZH','Zürich','',41,'static_countries'),(130,0,0,'ES','ESP',724,'Alava','Alava','',65,'static_countries'),(131,0,0,'ES','ESP',724,'Malaga','Malaga','',65,'static_countries'),(132,0,0,'ES','ESP',724,'Segovia','Segovia','',65,'static_countries'),(133,0,0,'ES','ESP',724,'Granada','Granada','',65,'static_countries'),(134,0,0,'ES','ESP',724,'Jaen','Jaen','',65,'static_countries'),(135,0,0,'ES','ESP',724,'Sevilla','Sevilla','',65,'static_countries'),(136,0,0,'ES','ESP',724,'Barcelona','Barcelona','',65,'static_countries'),(137,0,0,'ES','ESP',724,'Valencia','Valencia','',65,'static_countries'),(138,0,0,'ES','ESP',724,'Albacete','Albacete','',65,'static_countries'),(139,0,0,'ES','ESP',724,'Alicante','Alicante','',65,'static_countries'),(140,0,0,'ES','ESP',724,'Almeria','Almeria','',65,'static_countries'),(141,0,0,'ES','ESP',724,'Asturias','Asturias','',65,'static_countries'),(142,0,0,'ES','ESP',724,'Avila','Avila','',65,'static_countries'),(143,0,0,'ES','ESP',724,'Badajoz','Badajoz','',65,'static_countries'),(144,0,0,'ES','ESP',724,'Burgos','Burgos','',65,'static_countries'),(145,0,0,'ES','ESP',724,'Caceres','Caceres','',65,'static_countries'),(146,0,0,'ES','ESP',724,'Cadiz','Cadiz','',65,'static_countries'),(147,0,0,'ES','ESP',724,'Cantabria','Cantabria','',65,'static_countries'),(148,0,0,'ES','ESP',724,'Castellon','Castellon','',65,'static_countries'),(149,0,0,'ES','ESP',724,'Ceuta','Ceuta','',65,'static_countries'),(150,0,0,'ES','ESP',724,'Ciudad Real','Ciudad Real','',65,'static_countries'),(151,0,0,'ES','ESP',724,'Cordoba','Cordoba','',65,'static_countries'),(152,0,0,'ES','ESP',724,'Cuenca','Cuenca','',65,'static_countries'),(153,0,0,'ES','ESP',724,'Girona','Girona','',65,'static_countries'),(154,0,0,'ES','ESP',724,'Las Palmas','Las Palmas','',65,'static_countries'),(155,0,0,'ES','ESP',724,'Guadalajara','Guadalajara','',65,'static_countries'),(156,0,0,'ES','ESP',724,'Guipuzcoa','Guipuzcoa','',65,'static_countries'),(157,0,0,'ES','ESP',724,'Huelva','Huelva','',65,'static_countries'),(158,0,0,'ES','ESP',724,'Huesca','Huesca','',65,'static_countries'),(159,0,0,'ES','ESP',724,'A Coruña','A Coruña','',65,'static_countries'),(160,0,0,'ES','ESP',724,'La Rioja','La Rioja','',65,'static_countries'),(161,0,0,'ES','ESP',724,'Leon','Leon','',65,'static_countries'),(162,0,0,'ES','ESP',724,'Lugo','Lugo','',65,'static_countries'),(163,0,0,'ES','ESP',724,'Lleida','Lleida','',65,'static_countries'),(164,0,0,'ES','ESP',724,'Madrid','Madrid','',65,'static_countries'),(165,0,0,'ES','ESP',724,'Baleares','Baleares','',65,'static_countries'),(166,0,0,'ES','ESP',724,'Murcia','Murcia','',65,'static_countries'),(167,0,0,'ES','ESP',724,'Navarra','Navarra','',65,'static_countries'),(168,0,0,'ES','ESP',724,'Ourense','Ourense','',65,'static_countries'),(169,0,0,'ES','ESP',724,'Palencia','Palencia','',65,'static_countries'),(170,0,0,'ES','ESP',724,'Pontevedra','Pontevedra','',65,'static_countries'),(171,0,0,'ES','ESP',724,'Salamanca','Salamanca','',65,'static_countries'),(172,0,0,'ES','ESP',724,'Soria','Soria','',65,'static_countries'),(173,0,0,'ES','ESP',724,'Tarragona','Tarragona','',65,'static_countries'),(174,0,0,'ES','ESP',724,'Tenerife','Tenerife','',65,'static_countries'),(175,0,0,'ES','ESP',724,'Teruel','Teruel','',65,'static_countries'),(176,0,0,'ES','ESP',724,'Toledo','Toledo','',65,'static_countries'),(177,0,0,'ES','ESP',724,'Valladolid','Valladolid','',65,'static_countries'),(178,0,0,'ES','ESP',724,'Vizcaya','Vizcaya','',65,'static_countries'),(179,0,0,'ES','ESP',724,'Zamora','Zamora','',65,'static_countries'),(180,0,0,'ES','ESP',724,'Zaragoza','Zaragoza','',65,'static_countries'),(181,0,0,'ES','ESP',724,'Melilla','Melilla','',65,'static_countries'),(182,0,0,'MX','MEX',484,'AGS','Aguascalientes','',148,'static_countries'),(183,0,0,'MX','MEX',484,'BCS','Baja California Sur','',148,'static_countries'),(184,0,0,'MX','MEX',484,'BC','Baja California Norte','',148,'static_countries'),(185,0,0,'MX','MEX',484,'CAM','Campeche','',148,'static_countries'),(186,0,0,'MX','MEX',484,'CHIS','Chiapas','',148,'static_countries'),(187,0,0,'MX','MEX',484,'CHIH','Chihuahua','',148,'static_countries'),(188,0,0,'MX','MEX',484,'COAH','Coahuila','',148,'static_countries'),(189,0,0,'MX','MEX',484,'COL','Colima','',148,'static_countries'),(190,0,0,'MX','MEX',484,'DIF','Distrito Federal','',148,'static_countries'),(191,0,0,'MX','MEX',484,'DGO','Durango','',148,'static_countries'),(192,0,0,'MX','MEX',484,'GTO','Guanajuato','',148,'static_countries'),(193,0,0,'MX','MEX',484,'GRO','Guerrero','',148,'static_countries'),(194,0,0,'MX','MEX',484,'HGO','Hidalgo','',148,'static_countries'),(195,0,0,'MX','MEX',484,'JAL','Jalisco','',148,'static_countries'),(196,0,0,'MX','MEX',484,'MEX','México','',148,'static_countries'),(197,0,0,'MX','MEX',484,'MICH','Michoacán','',148,'static_countries'),(198,0,0,'MX','MEX',484,'MOR','Morelos','',148,'static_countries'),(199,0,0,'MX','MEX',484,'NAY','Nayarit','',148,'static_countries'),(200,0,0,'MX','MEX',484,'NL','Nuevo León','',148,'static_countries'),(201,0,0,'MX','MEX',484,'OAX','Oaxaca','',148,'static_countries'),(202,0,0,'MX','MEX',484,'PUE','Puebla','',148,'static_countries'),(203,0,0,'MX','MEX',484,'QRO','Querétaro','',148,'static_countries'),(204,0,0,'MX','MEX',484,'QROO','Quintana Roo','',148,'static_countries'),(205,0,0,'MX','MEX',484,'SLP','San Luis Potosí','',148,'static_countries'),(206,0,0,'MX','MEX',484,'SIN','Sinaloa','',148,'static_countries'),(207,0,0,'MX','MEX',484,'SON','Sonora','',148,'static_countries'),(208,0,0,'MX','MEX',484,'TAB','Tabasco','',148,'static_countries'),(209,0,0,'MX','MEX',484,'TAMPS','Tamaulipas','',148,'static_countries'),(210,0,0,'MX','MEX',484,'TLAX','Tlaxcala','',148,'static_countries'),(211,0,0,'MX','MEX',484,'VER','Veracruz','',148,'static_countries'),(212,0,0,'MX','MEX',484,'YUC','Yucatán','',148,'static_countries'),(213,0,0,'MX','MEX',484,'ZAC','Zacatecas','',148,'static_countries'),(214,0,0,'AU','AUS',36,'ACT','Australian Capital Territory','',14,'static_countries'),(215,0,0,'AU','AUS',36,'NSW','New South Wales','',14,'static_countries'),(216,0,0,'AU','AUS',36,'NT','Northern Territory','',14,'static_countries'),(217,0,0,'AU','AUS',36,'QLD','Queensland','',14,'static_countries'),(218,0,0,'AU','AUS',36,'SA','South Australia','',14,'static_countries'),(219,0,0,'AU','AUS',36,'TAS','Tasmania','',14,'static_countries'),(220,0,0,'AU','AUS',36,'VIC','Victoria','',14,'static_countries'),(221,0,0,'AU','AUS',36,'WA','Western Australia','',14,'static_countries'),(222,0,0,'IT','ITA',380,'AG','Agrigento','',104,'static_countries'),(223,0,0,'IT','ITA',380,'AL','Alessandria','',104,'static_countries'),(224,0,0,'IT','ITA',380,'AN','Ancona','',104,'static_countries'),(225,0,0,'IT','ITA',380,'AO','Aosta','',104,'static_countries'),(226,0,0,'IT','ITA',380,'AP','Ascoli Piceno','',104,'static_countries'),(227,0,0,'IT','ITA',380,'AQ','L\'Aquila','',104,'static_countries'),(228,0,0,'IT','ITA',380,'AR','Arezzo','',104,'static_countries'),(229,0,0,'IT','ITA',380,'AT','Asti','',104,'static_countries'),(230,0,0,'IT','ITA',380,'AV','Avellino','',104,'static_countries'),(231,0,0,'IT','ITA',380,'BA','Bari','',104,'static_countries'),(232,0,0,'IT','ITA',380,'BG','Bergamo','',104,'static_countries'),(233,0,0,'IT','ITA',380,'BI','Biella','',104,'static_countries'),(234,0,0,'IT','ITA',380,'BL','Belluno','',104,'static_countries'),(235,0,0,'IT','ITA',380,'BN','Benevento','',104,'static_countries'),(236,0,0,'IT','ITA',380,'BO','Bologna','',104,'static_countries'),(237,0,0,'IT','ITA',380,'BR','Brindisi','',104,'static_countries'),(238,0,0,'IT','ITA',380,'BS','Brescia','',104,'static_countries'),(239,0,0,'IT','ITA',380,'BT','Barletta-Andria-Trani','',104,'static_countries'),(240,0,0,'IT','ITA',380,'BZ','Bozen','',104,'static_countries'),(241,0,0,'IT','ITA',380,'CA','Cagliari','',104,'static_countries'),(242,0,0,'IT','ITA',380,'CB','Campobasso','',104,'static_countries'),(243,0,0,'IT','ITA',380,'CE','Caserta','',104,'static_countries'),(244,0,0,'IT','ITA',380,'CH','Chieti','',104,'static_countries'),(245,0,0,'IT','ITA',380,'CI','Carbonia-Iglesias','',104,'static_countries'),(246,0,0,'IT','ITA',380,'CL','Caltanissetta','',104,'static_countries'),(247,0,0,'IT','ITA',380,'CN','Cuneo','',104,'static_countries'),(248,0,0,'IT','ITA',380,'CO','Como','',104,'static_countries'),(249,0,0,'IT','ITA',380,'CR','Cremona','',104,'static_countries'),(250,0,0,'IT','ITA',380,'CS','Cosenza','',104,'static_countries'),(251,0,0,'IT','ITA',380,'CT','Catania','',104,'static_countries'),(252,0,0,'IT','ITA',380,'CZ','Catanzaro','',104,'static_countries'),(253,0,0,'IT','ITA',380,'EN','Enna','',104,'static_countries'),(254,0,0,'IT','ITA',380,'FE','Ferrara','',104,'static_countries'),(255,0,0,'IT','ITA',380,'FG','Foggia','',104,'static_countries'),(256,0,0,'IT','ITA',380,'FI','Firenze','Florence',104,'static_countries'),(257,0,0,'IT','ITA',380,'FM','Fermo','',104,'static_countries'),(258,0,0,'IT','ITA',380,'FC','Forlì-Cesena','',104,'static_countries'),(259,0,0,'IT','ITA',380,'FR','Frosinone','',104,'static_countries'),(260,0,0,'IT','ITA',380,'GE','Genova','',104,'static_countries'),(261,0,0,'IT','ITA',380,'GO','Gorizia','',104,'static_countries'),(262,0,0,'IT','ITA',380,'GR','Grosseto','',104,'static_countries'),(263,0,0,'IT','ITA',380,'IM','Imperia','',104,'static_countries'),(264,0,0,'IT','ITA',380,'IS','Isernia','',104,'static_countries'),(265,0,0,'IT','ITA',380,'KR','Crotone','',104,'static_countries'),(266,0,0,'IT','ITA',380,'LC','Lecco','',104,'static_countries'),(267,0,0,'IT','ITA',380,'LE','Lecce','',104,'static_countries'),(268,0,0,'IT','ITA',380,'LI','Livorno','',104,'static_countries'),(269,0,0,'IT','ITA',380,'LO','Lodi','',104,'static_countries'),(270,0,0,'IT','ITA',380,'LT','Latina','',104,'static_countries'),(271,0,0,'IT','ITA',380,'LU','Lucca','',104,'static_countries'),(272,0,0,'IT','ITA',380,'MB','Monza e Brianza','',104,'static_countries'),(273,0,0,'IT','ITA',380,'MC','Macerata','',104,'static_countries'),(274,0,0,'IT','ITA',380,'ME','Messina','',104,'static_countries'),(275,0,0,'IT','ITA',380,'MI','Milano','',104,'static_countries'),(276,0,0,'IT','ITA',380,'MN','Mantova','',104,'static_countries'),(277,0,0,'IT','ITA',380,'MO','Modena','',104,'static_countries'),(278,0,0,'IT','ITA',380,'MS','Massa Carrara','',104,'static_countries'),(279,0,0,'IT','ITA',380,'MT','Matera','',104,'static_countries'),(280,0,0,'IT','ITA',380,'NA','Napoli','Naples',104,'static_countries'),(281,0,0,'IT','ITA',380,'NO','Novara','',104,'static_countries'),(282,0,0,'IT','ITA',380,'NU','Nuoro','',104,'static_countries'),(283,0,0,'IT','ITA',380,'OG','Ogliastra','',104,'static_countries'),(284,0,0,'IT','ITA',380,'OR','Oristano','',104,'static_countries'),(285,0,0,'IT','ITA',380,'OT','Olbia-Tempio','',104,'static_countries'),(286,0,0,'IT','ITA',380,'PA','Palermo','',104,'static_countries'),(287,0,0,'IT','ITA',380,'PC','Piacenza','',104,'static_countries'),(288,0,0,'IT','ITA',380,'PD','Padova','',104,'static_countries'),(289,0,0,'IT','ITA',380,'PE','Pescara','',104,'static_countries'),(290,0,0,'IT','ITA',380,'PG','Perugia','',104,'static_countries'),(291,0,0,'IT','ITA',380,'PI','Pisa','',104,'static_countries'),(292,0,0,'IT','ITA',380,'PN','Pordenone','',104,'static_countries'),(293,0,0,'IT','ITA',380,'PR','Parma','',104,'static_countries'),(294,0,0,'IT','ITA',380,'PT','Pistoia','',104,'static_countries'),(295,0,0,'IT','ITA',380,'PU','Pesaro e Urbino','',104,'static_countries'),(296,0,0,'IT','ITA',380,'PV','Pavia','',104,'static_countries'),(297,0,0,'IT','ITA',380,'PO','Prato','',104,'static_countries'),(298,0,0,'IT','ITA',380,'PZ','Potenza','',104,'static_countries'),(299,0,0,'IT','ITA',380,'RA','Ravenna','',104,'static_countries'),(300,0,0,'IT','ITA',380,'RC','Reggio Calabria','',104,'static_countries'),(301,0,0,'IT','ITA',380,'RE','Reggio Emilia','',104,'static_countries'),(302,0,0,'IT','ITA',380,'RG','Ragusa','',104,'static_countries'),(303,0,0,'IT','ITA',380,'RI','Rieti','',104,'static_countries'),(304,0,0,'IT','ITA',380,'RM','Roma','Rome',104,'static_countries'),(305,0,0,'IT','ITA',380,'RN','Rimini','',104,'static_countries'),(306,0,0,'IT','ITA',380,'RO','Rovigo','',104,'static_countries'),(307,0,0,'IT','ITA',380,'SA','Salerno','',104,'static_countries'),(308,0,0,'IT','ITA',380,'SI','Siena','',104,'static_countries'),(309,0,0,'IT','ITA',380,'SO','Sondrio','',104,'static_countries'),(310,0,0,'IT','ITA',380,'SP','La Spezia','',104,'static_countries'),(311,0,0,'IT','ITA',380,'SR','Siracusa','',104,'static_countries'),(312,0,0,'IT','ITA',380,'SS','Sassari','',104,'static_countries'),(313,0,0,'IT','ITA',380,'SV','Savona','',104,'static_countries'),(314,0,0,'IT','ITA',380,'TA','Taranto','',104,'static_countries'),(315,0,0,'IT','ITA',380,'TE','Teramo','',104,'static_countries'),(316,0,0,'IT','ITA',380,'TN','Trento','',104,'static_countries'),(317,0,0,'IT','ITA',380,'TO','Torino','',104,'static_countries'),(318,0,0,'IT','ITA',380,'TP','Trapani','',104,'static_countries'),(319,0,0,'IT','ITA',380,'TR','Terni','',104,'static_countries'),(320,0,0,'IT','ITA',380,'TS','Trieste','',104,'static_countries'),(321,0,0,'IT','ITA',380,'TV','Treviso','',104,'static_countries'),(322,0,0,'IT','ITA',380,'UD','Udine','',104,'static_countries'),(323,0,0,'IT','ITA',380,'VA','Varese','',104,'static_countries'),(324,0,0,'IT','ITA',380,'VB','Verbano-Cusio-Ossola','',104,'static_countries'),(325,0,0,'IT','ITA',380,'VC','Vercelli','',104,'static_countries'),(326,0,0,'IT','ITA',380,'VE','Venezia','Venice',104,'static_countries'),(327,0,0,'IT','ITA',380,'VI','Vicenza','',104,'static_countries'),(328,0,0,'IT','ITA',380,'VR','Verona','',104,'static_countries'),(329,0,0,'IT','ITA',380,'VS','Medio Campidano','',104,'static_countries'),(330,0,0,'IT','ITA',380,'VT','Viterbo','',104,'static_countries'),(331,0,0,'IT','ITA',380,'VV','Vibo Valentia','',104,'static_countries'),(332,0,0,'GB','GBR',826,'ALD','Alderney','',74,'static_countries'),(333,0,0,'GB','GBR',826,'ARM','Armagh','',74,'static_countries'),(334,0,0,'GB','GBR',826,'ATM','Antrim','',74,'static_countries'),(335,0,0,'GB','GBR',826,'BDS','Borders','',74,'static_countries'),(336,0,0,'GB','GBR',826,'BFD','Bedfordshire','',74,'static_countries'),(337,0,0,'GB','GBR',826,'BIR','Birmingham','',74,'static_countries'),(338,0,0,'GB','GBR',826,'BLG','Blaenau Gwent','',74,'static_countries'),(339,0,0,'GB','GBR',826,'BRI','Bridgend','',74,'static_countries'),(340,0,0,'GB','GBR',826,'BRK','Berkshire','',74,'static_countries'),(341,0,0,'GB','GBR',826,'BRS','Bristol','',74,'static_countries'),(342,0,0,'GB','GBR',826,'BUX','Buckinghamshire','',74,'static_countries'),(343,0,0,'GB','GBR',826,'CAP','Caerphilly','',74,'static_countries'),(344,0,0,'GB','GBR',826,'CAR','Cardiff','',74,'static_countries'),(345,0,0,'GB','GBR',826,'CAS','Carmarthenshire','',74,'static_countries'),(346,0,0,'GB','GBR',826,'CBA','Cumbria','',74,'static_countries'),(347,0,0,'GB','GBR',826,'CBE','Cambridgeshire','',74,'static_countries'),(348,0,0,'GB','GBR',826,'CER','Ceredigion','',74,'static_countries'),(349,0,0,'GB','GBR',826,'CHI','Channel Islands','',74,'static_countries'),(350,0,0,'GB','GBR',826,'CHS','Cheshire','',74,'static_countries'),(351,0,0,'GB','GBR',826,'CLD','Clwyd','',74,'static_countries'),(352,0,0,'GB','GBR',826,'CNL','Cornwall','',74,'static_countries'),(353,0,0,'GB','GBR',826,'CON','Conway','',74,'static_countries'),(354,0,0,'GB','GBR',826,'CTR','Central','',74,'static_countries'),(355,0,0,'GB','GBR',826,'CVE','Cleveland','',74,'static_countries'),(356,0,0,'GB','GBR',826,'DEN','Denbighshire','',74,'static_countries'),(357,0,0,'GB','GBR',826,'DFD','Dyfed','',74,'static_countries'),(358,0,0,'GB','GBR',826,'DGL','Dumfries and Galloway','',74,'static_countries'),(359,0,0,'GB','GBR',826,'DHM','Durham','',74,'static_countries'),(360,0,0,'GB','GBR',826,'DOR','Dorset','',74,'static_countries'),(361,0,0,'GB','GBR',826,'DVN','Devon','',74,'static_countries'),(362,0,0,'GB','GBR',826,'DWN','Down','',74,'static_countries'),(363,0,0,'GB','GBR',826,'DYS','Derbyshire','',74,'static_countries'),(364,0,0,'GB','GBR',826,'ESX','Essex','',74,'static_countries'),(365,0,0,'GB','GBR',826,'FER','Fermanagh','',74,'static_countries'),(366,0,0,'GB','GBR',826,'FFE','Fife','',74,'static_countries'),(367,0,0,'GB','GBR',826,'FLI','Flintshire','',74,'static_countries'),(368,0,0,'GB','GBR',826,'FMH','County Fermanagh','',74,'static_countries'),(369,0,0,'GB','GBR',826,'GDD','Gwynedd','',74,'static_countries'),(370,0,0,'GB','GBR',826,'GLO','Gloucestershire','',74,'static_countries'),(371,0,0,'GB','GBR',826,'GLR','Gloucester','',74,'static_countries'),(372,0,0,'GB','GBR',826,'GNM','Mid Glamorgan','',74,'static_countries'),(373,0,0,'GB','GBR',826,'GNS','South Glamorgan','',74,'static_countries'),(374,0,0,'GB','GBR',826,'GNW','West Glamorgan','',74,'static_countries'),(375,0,0,'GB','GBR',826,'GRN','Grampian','',74,'static_countries'),(376,0,0,'GB','GBR',826,'GUR','Guernsey','',74,'static_countries'),(377,0,0,'GB','GBR',826,'GWT','Gwent','',74,'static_countries'),(378,0,0,'GB','GBR',826,'HBS','Humberside','',74,'static_countries'),(379,0,0,'GB','GBR',826,'HFD','Hertfordshire','',74,'static_countries'),(380,0,0,'GB','GBR',826,'HLD','Highlands','',74,'static_countries'),(381,0,0,'GB','GBR',826,'HPH','Hampshire','',74,'static_countries'),(382,0,0,'GB','GBR',826,'HWR','Hereford and Worcester','',74,'static_countries'),(383,0,0,'GB','GBR',826,'IOM','Isle of Man','',74,'static_countries'),(384,0,0,'GB','GBR',826,'IOW','Isle of Wight','',74,'static_countries'),(385,0,0,'GB','GBR',826,'ISL','Isle of Anglesey','',74,'static_countries'),(386,0,0,'GB','GBR',826,'JER','Jersey','',74,'static_countries'),(387,0,0,'GB','GBR',826,'KNT','Kent','',74,'static_countries'),(388,0,0,'GB','GBR',826,'LCN','Lincolnshire','',74,'static_countries'),(389,0,0,'GB','GBR',826,'LDN','Greater London','',74,'static_countries'),(390,0,0,'GB','GBR',826,'LDR','Londonderry','',74,'static_countries'),(391,0,0,'GB','GBR',826,'LEC','Leicestershire','',74,'static_countries'),(392,0,0,'GB','GBR',826,'LNH','Lancashire','',74,'static_countries'),(393,0,0,'GB','GBR',826,'LON','London','',74,'static_countries'),(394,0,0,'GB','GBR',826,'LTE','East Lothian','',74,'static_countries'),(395,0,0,'GB','GBR',826,'LTM','Mid Lothian','',74,'static_countries'),(396,0,0,'GB','GBR',826,'LTW','West Lothian','',74,'static_countries'),(397,0,0,'GB','GBR',826,'MCH','Greater Manchester','',74,'static_countries'),(398,0,0,'GB','GBR',826,'MER','Merthyr Tydfil','',74,'static_countries'),(399,0,0,'GB','GBR',826,'MON','Monmouthshire','',74,'static_countries'),(400,0,0,'GB','GBR',826,'MSY','Merseyside','',74,'static_countries'),(401,0,0,'GB','GBR',826,'NET','Neath Port Talbot','',74,'static_countries'),(402,0,0,'GB','GBR',826,'NEW','Newport','',74,'static_countries'),(403,0,0,'GB','GBR',826,'NHM','Northamptonshire','',74,'static_countries'),(404,0,0,'GB','GBR',826,'NLD','Northumberland','',74,'static_countries'),(405,0,0,'GB','GBR',826,'NOR','Norfolk','',74,'static_countries'),(406,0,0,'GB','GBR',826,'NOT','Nottinghamshire','',74,'static_countries'),(407,0,0,'GB','GBR',826,'NWH','North West Highlands','',74,'static_countries'),(408,0,0,'GB','GBR',826,'OFE','Oxfordshire','',74,'static_countries'),(409,0,0,'GB','GBR',826,'ORK','Orkney','',74,'static_countries'),(410,0,0,'GB','GBR',826,'PEM','Pembrokeshire','',74,'static_countries'),(411,0,0,'GB','GBR',826,'PWS','Powys','',74,'static_countries'),(412,0,0,'GB','GBR',826,'SCD','Strathclyde','',74,'static_countries'),(413,0,0,'GB','GBR',826,'SFD','Staffordshire','',74,'static_countries'),(414,0,0,'GB','GBR',826,'SFK','Suffolk','',74,'static_countries'),(415,0,0,'GB','GBR',826,'SLD','Shetland','',74,'static_countries'),(416,0,0,'GB','GBR',826,'SOM','Somerset','',74,'static_countries'),(417,0,0,'GB','GBR',826,'SPE','Shropshire','',74,'static_countries'),(418,0,0,'GB','GBR',826,'SRK','Sark','',74,'static_countries'),(419,0,0,'GB','GBR',826,'SRY','Surrey','',74,'static_countries'),(420,0,0,'GB','GBR',826,'SWA','Swansea','',74,'static_countries'),(421,0,0,'GB','GBR',826,'SXE','East Sussex','',74,'static_countries'),(422,0,0,'GB','GBR',826,'SXW','West Sussex','',74,'static_countries'),(423,0,0,'GB','GBR',826,'TAF','Rhondda Cynon Taff','',74,'static_countries'),(424,0,0,'GB','GBR',826,'TOR','Torfaen','',74,'static_countries'),(425,0,0,'GB','GBR',826,'TWR','Tyne and Wear','',74,'static_countries'),(426,0,0,'GB','GBR',826,'TYR','Tyrone','',74,'static_countries'),(427,0,0,'GB','GBR',826,'TYS','Tayside','',74,'static_countries'),(428,0,0,'GB','GBR',826,'VAL','Vale of Glamorgan','',74,'static_countries'),(429,0,0,'GB','GBR',826,'WIL','Western Isles','',74,'static_countries'),(430,0,0,'GB','GBR',826,'WKS','Warwickshire','',74,'static_countries'),(431,0,0,'GB','GBR',826,'WLT','Wiltshire','',74,'static_countries'),(432,0,0,'GB','GBR',826,'WMD','West Midlands','',74,'static_countries'),(433,0,0,'GB','GBR',826,'WRE','Wrexham','',74,'static_countries'),(434,0,0,'GB','GBR',826,'YSN','North Yorkshire','',74,'static_countries'),(435,0,0,'GB','GBR',826,'YSS','South Yorkshire','',74,'static_countries'),(436,0,0,'GB','GBR',826,'YSW','West Yorkshire','',74,'static_countries'),(460,0,0,'IE','IRL',372,'CAR','Carlow','',97,'static_countries'),(461,0,0,'IE','IRL',372,'CAV','Cavan','',97,'static_countries'),(462,0,0,'IE','IRL',372,'CLA','Clare','',97,'static_countries'),(463,0,0,'IE','IRL',372,'COR','Cork','',97,'static_countries'),(464,0,0,'IE','IRL',372,'DON','Donegal','',97,'static_countries'),(465,0,0,'IE','IRL',372,'DUB','Dublin','',97,'static_countries'),(466,0,0,'IE','IRL',372,'GAL','Galway','',97,'static_countries'),(467,0,0,'IE','IRL',372,'KER','Kerry','',97,'static_countries'),(468,0,0,'IE','IRL',372,'KIL','Kildare','',97,'static_countries'),(469,0,0,'IE','IRL',372,'KLK','Kilkenny','',97,'static_countries'),(470,0,0,'IE','IRL',372,'LAO','Laois','',97,'static_countries'),(471,0,0,'IE','IRL',372,'LEI','Leitrim','',97,'static_countries'),(472,0,0,'IE','IRL',372,'LIM','Limerick','',97,'static_countries'),(473,0,0,'IE','IRL',372,'LON','Longford','',97,'static_countries'),(474,0,0,'IE','IRL',372,'LOU','Louth','',97,'static_countries'),(475,0,0,'IE','IRL',372,'MAY','Mayo','',97,'static_countries'),(476,0,0,'IE','IRL',372,'MEA','Meath','',97,'static_countries'),(477,0,0,'IE','IRL',372,'MON','Monaghan','',97,'static_countries'),(478,0,0,'IE','IRL',372,'OFF','Offaly','',97,'static_countries'),(479,0,0,'IE','IRL',372,'ROS','Roscommon','',97,'static_countries'),(480,0,0,'IE','IRL',372,'SLI','Sligo','',97,'static_countries'),(481,0,0,'IE','IRL',372,'TIP','Tipperary','',97,'static_countries'),(482,0,0,'IE','IRL',372,'WAT','Waterford','',97,'static_countries'),(483,0,0,'IE','IRL',372,'WES','Westmeath','',97,'static_countries'),(484,0,0,'IE','IRL',372,'WEX','Wexford','',97,'static_countries'),(485,0,0,'IE','IRL',372,'WIC','Wicklow','',97,'static_countries'),(490,0,0,'BR','BRA',76,'AC','Acre','',29,'static_countries'),(491,0,0,'BR','BRA',76,'AP','Amapá','',29,'static_countries'),(492,0,0,'BR','BRA',76,'AL','Alagoas','',29,'static_countries'),(493,0,0,'BR','BRA',76,'AM','Amazonas','',29,'static_countries'),(494,0,0,'BR','BRA',76,'BA','Bahia','',29,'static_countries'),(495,0,0,'BR','BRA',76,'CE','Ceará','',29,'static_countries'),(496,0,0,'BR','BRA',76,'DF','Distrito Federal','',29,'static_countries'),(497,0,0,'BR','BRA',76,'ES','Espírito Santo','',29,'static_countries'),(498,0,0,'BR','BRA',76,'GO','Goiás','',29,'static_countries'),(499,0,0,'BR','BRA',76,'MA','Maranhão','',29,'static_countries'),(500,0,0,'BR','BRA',76,'MG','Minas Gerais','',29,'static_countries'),(501,0,0,'BR','BRA',76,'MS','Mato Grosso do Sul','',29,'static_countries'),(502,0,0,'BR','BRA',76,'MT','Mato Grosso','',29,'static_countries'),(503,0,0,'BR','BRA',76,'PA','Pará','',29,'static_countries'),(504,0,0,'BR','BRA',76,'PB','Paraíba','',29,'static_countries'),(505,0,0,'BR','BRA',76,'PE','Pernambuco','',29,'static_countries'),(506,0,0,'BR','BRA',76,'PI','Piauí','',29,'static_countries'),(507,0,0,'BR','BRA',76,'PR','Paraná','',29,'static_countries'),(508,0,0,'BR','BRA',76,'RJ','Rio de Janeiro','',29,'static_countries'),(509,0,0,'BR','BRA',76,'RN','Rio Grande do Norte','',29,'static_countries'),(510,0,0,'BR','BRA',76,'RO','Rondônia','',29,'static_countries'),(511,0,0,'BR','BRA',76,'RR','Roraima','',29,'static_countries'),(512,0,0,'BR','BRA',76,'RS','Rio Grande do Sul','',29,'static_countries'),(513,0,0,'BR','BRA',76,'SC','Santa Catarina','',29,'static_countries'),(514,0,0,'BR','BRA',76,'SE','Sergipe','',29,'static_countries'),(515,0,0,'BR','BRA',76,'SP','São Paulo','',29,'static_countries'),(516,0,0,'BR','BRA',76,'TO','Tocantins','',29,'static_countries'),(530,0,0,'NL','NLD',528,'DR','Drenthe','',157,'static_countries'),(531,0,0,'NL','NLD',528,'FL','Flevoland','',157,'static_countries'),(532,0,0,'NL','NLD',528,'FR','Friesland','',157,'static_countries'),(533,0,0,'NL','NLD',528,'GE','Gelderland','',157,'static_countries'),(534,0,0,'NL','NLD',528,'GR','Groningen','',157,'static_countries'),(535,0,0,'NL','NLD',528,'LI','Limburg','',157,'static_countries'),(536,0,0,'NL','NLD',528,'NB','Noord-Brabant','',157,'static_countries'),(537,0,0,'NL','NLD',528,'NH','Noord-Holland','',157,'static_countries'),(538,0,0,'NL','NLD',528,'OV','Overijssel','',157,'static_countries'),(539,0,0,'NL','NLD',528,'UT','Utrecht','',157,'static_countries'),(540,0,0,'NL','NLD',528,'ZH','Zuid-Holland','',157,'static_countries'),(541,0,0,'NL','NLD',528,'ZE','Zeeland','',157,'static_countries'),(542,0,0,'FR','FRA',250,'A','Alsace','',72,'static_countries'),(543,0,0,'FR','FRA',250,'B','Aquitaine','',72,'static_countries'),(544,0,0,'FR','FRA',250,'C','Auvergne','',72,'static_countries'),(545,0,0,'FR','FRA',250,'D','Bourgogne','',72,'static_countries'),(546,0,0,'FR','FRA',250,'E','Bretagne','',72,'static_countries'),(547,0,0,'FR','FRA',250,'F','Centre','',72,'static_countries'),(548,0,0,'FR','FRA',250,'G','Champagne-Ardenne','',72,'static_countries'),(549,0,0,'FR','FRA',250,'H','Corse','',72,'static_countries'),(550,0,0,'FR','FRA',250,'I','Franche-Comté','',72,'static_countries'),(551,0,0,'FR','FRA',250,'J','Île-de-France','',72,'static_countries'),(552,0,0,'FR','FRA',250,'K','Languedoc-Roussillon','',72,'static_countries'),(553,0,0,'FR','FRA',250,'L','Limousin','',72,'static_countries'),(554,0,0,'FR','FRA',250,'M','Lorraine','',72,'static_countries'),(555,0,0,'FR','FRA',250,'N','Midi-Pyrénées','',72,'static_countries'),(556,0,0,'FR','FRA',250,'O','Nord-Pas-de-Calais','',72,'static_countries'),(557,0,0,'FR','FRA',250,'P','Basse-Normandie','',72,'static_countries'),(558,0,0,'FR','FRA',250,'Q','Haute-Normandie','',72,'static_countries'),(559,0,0,'FR','FRA',250,'R','Pays de la Loire','',72,'static_countries'),(560,0,0,'FR','FRA',250,'S','Picardie','',72,'static_countries'),(561,0,0,'FR','FRA',250,'T','Poitou-Charentes','',72,'static_countries'),(562,0,0,'FR','FRA',250,'U','Provence-Alpes-Côte d\'Azur','',72,'static_countries'),(563,0,0,'FR','FRA',250,'V','Rhône-Alpes','',72,'static_countries'),(564,0,0,'FR','FRA',250,'01','Ain','',72,'static_countries'),(565,0,0,'FR','FRA',250,'02','Aisne','',72,'static_countries'),(566,0,0,'FR','FRA',250,'03','Allier','',72,'static_countries'),(567,0,0,'FR','FRA',250,'04','Alpes-de-Haute-Provence','',72,'static_countries'),(568,0,0,'FR','FRA',250,'05','Hautes-Alpes','',72,'static_countries'),(569,0,0,'FR','FRA',250,'06','Alpes-Maritimes','',72,'static_countries'),(570,0,0,'FR','FRA',250,'07','Ardèche','',72,'static_countries'),(571,0,0,'FR','FRA',250,'08','Ardennes','',72,'static_countries'),(572,0,0,'FR','FRA',250,'09','Ariège','',72,'static_countries'),(573,0,0,'FR','FRA',250,'10','Aube','',72,'static_countries'),(574,0,0,'FR','FRA',250,'11','Aude','',72,'static_countries'),(575,0,0,'FR','FRA',250,'12','Aveyron','',72,'static_countries'),(576,0,0,'FR','FRA',250,'13','Bouches-du-Rhône','',72,'static_countries'),(577,0,0,'FR','FRA',250,'14','Calvados','',72,'static_countries'),(578,0,0,'FR','FRA',250,'15','Cantal','',72,'static_countries'),(579,0,0,'FR','FRA',250,'16','Charente','',72,'static_countries'),(580,0,0,'FR','FRA',250,'17','Charente-Maritime','',72,'static_countries'),(581,0,0,'FR','FRA',250,'18','Cher','',72,'static_countries'),(582,0,0,'FR','FRA',250,'19','Corrèze','',72,'static_countries'),(583,0,0,'FR','FRA',250,'2A','Corse-du-Sud','',72,'static_countries'),(584,0,0,'FR','FRA',250,'2B','Haute-Corse','',72,'static_countries'),(585,0,0,'FR','FRA',250,'21','Côte-d\'Or','',72,'static_countries'),(586,0,0,'FR','FRA',250,'22','Côtes-d\'Armor','',72,'static_countries'),(587,0,0,'FR','FRA',250,'23','Creuse','',72,'static_countries'),(588,0,0,'FR','FRA',250,'24','Dordogne','',72,'static_countries'),(589,0,0,'FR','FRA',250,'25','Doubs','',72,'static_countries'),(590,0,0,'FR','FRA',250,'26','Drôme','',72,'static_countries'),(591,0,0,'FR','FRA',250,'27','Eure','',72,'static_countries'),(592,0,0,'FR','FRA',250,'28','Eure-et-Loir','',72,'static_countries'),(593,0,0,'FR','FRA',250,'29','Finistère','',72,'static_countries'),(594,0,0,'FR','FRA',250,'30','Gard','',72,'static_countries'),(595,0,0,'FR','FRA',250,'31','Haute-Garonne','',72,'static_countries'),(596,0,0,'FR','FRA',250,'32','Gers','',72,'static_countries'),(597,0,0,'FR','FRA',250,'33','Gironde','',72,'static_countries'),(598,0,0,'FR','FRA',250,'34','Hérault','',72,'static_countries'),(599,0,0,'FR','FRA',250,'35','Ille-et-Vilaine','',72,'static_countries'),(600,0,0,'FR','FRA',250,'36','Indre','',72,'static_countries'),(601,0,0,'FR','FRA',250,'37','Indre-et-Loire','',72,'static_countries'),(602,0,0,'FR','FRA',250,'38','Isère','',72,'static_countries'),(603,0,0,'FR','FRA',250,'39','Jura','',72,'static_countries'),(604,0,0,'FR','FRA',250,'40','Landes','',72,'static_countries'),(605,0,0,'FR','FRA',250,'41','Loir-et-Cher','',72,'static_countries'),(606,0,0,'FR','FRA',250,'42','Loire','',72,'static_countries'),(607,0,0,'FR','FRA',250,'43','Haute-Loire','',72,'static_countries'),(608,0,0,'FR','FRA',250,'44','Loire-Atlantique','',72,'static_countries'),(609,0,0,'FR','FRA',250,'45','Loiret','',72,'static_countries'),(610,0,0,'FR','FRA',250,'46','Lot','',72,'static_countries'),(611,0,0,'FR','FRA',250,'47','Lot-et-Garonne','',72,'static_countries'),(612,0,0,'FR','FRA',250,'48','Lozère','',72,'static_countries'),(613,0,0,'FR','FRA',250,'49','Maine-et-Loire','',72,'static_countries'),(614,0,0,'FR','FRA',250,'50','Manche','',72,'static_countries'),(615,0,0,'FR','FRA',250,'51','Marne','',72,'static_countries'),(616,0,0,'FR','FRA',250,'52','Haute-Marne','',72,'static_countries'),(617,0,0,'FR','FRA',250,'53','Mayenne','',72,'static_countries'),(618,0,0,'FR','FRA',250,'54','Meurthe-et-Moselle','',72,'static_countries'),(619,0,0,'FR','FRA',250,'55','Meuse','',72,'static_countries'),(620,0,0,'FR','FRA',250,'56','Morbihan','',72,'static_countries'),(621,0,0,'FR','FRA',250,'57','Moselle','',72,'static_countries'),(622,0,0,'FR','FRA',250,'58','Nièvre','',72,'static_countries'),(623,0,0,'FR','FRA',250,'59','Nord','',72,'static_countries'),(624,0,0,'FR','FRA',250,'60','Oise','',72,'static_countries'),(625,0,0,'FR','FRA',250,'61','Orne','',72,'static_countries'),(626,0,0,'FR','FRA',250,'62','Pas-de-Calais','',72,'static_countries'),(627,0,0,'FR','FRA',250,'63','Puy-de-Dôme','',72,'static_countries'),(628,0,0,'FR','FRA',250,'64','Pyrénées-Atlantiques','',72,'static_countries'),(629,0,0,'FR','FRA',250,'65','Hautes-Pyrénées','',72,'static_countries'),(630,0,0,'FR','FRA',250,'66','Pyrénées-Orientales','',72,'static_countries'),(631,0,0,'FR','FRA',250,'67','Bas-Rhin','',72,'static_countries'),(632,0,0,'FR','FRA',250,'68','Haut-Rhin','',72,'static_countries'),(633,0,0,'FR','FRA',250,'69','Rhône','',72,'static_countries'),(634,0,0,'FR','FRA',250,'70','Haute-Saône','',72,'static_countries'),(635,0,0,'FR','FRA',250,'71','Saône-et-Loire','',72,'static_countries'),(636,0,0,'FR','FRA',250,'72','Sarthe','',72,'static_countries'),(637,0,0,'FR','FRA',250,'73','Savoie','',72,'static_countries'),(638,0,0,'FR','FRA',250,'74','Haute-Savoie','',72,'static_countries'),(639,0,0,'FR','FRA',250,'75','Paris','',72,'static_countries'),(640,0,0,'FR','FRA',250,'76','Seine-Maritime','',72,'static_countries'),(641,0,0,'FR','FRA',250,'77','Seine-et-Marne','',72,'static_countries'),(642,0,0,'FR','FRA',250,'78','Yvelines','',72,'static_countries'),(643,0,0,'FR','FRA',250,'79','Deux-Sèvres','',72,'static_countries'),(644,0,0,'FR','FRA',250,'80','Somme','',72,'static_countries'),(645,0,0,'FR','FRA',250,'81','Tarn','',72,'static_countries'),(646,0,0,'FR','FRA',250,'82','Tarn-et-Garonne','',72,'static_countries'),(647,0,0,'FR','FRA',250,'83','Var','',72,'static_countries'),(648,0,0,'FR','FRA',250,'84','Vaucluse','',72,'static_countries'),(649,0,0,'FR','FRA',250,'85','Vendée','',72,'static_countries'),(650,0,0,'FR','FRA',250,'86','Vienne','',72,'static_countries'),(651,0,0,'FR','FRA',250,'87','Haute-Vienne','',72,'static_countries'),(652,0,0,'FR','FRA',250,'88','Vosges','',72,'static_countries'),(653,0,0,'FR','FRA',250,'89','Yonne','',72,'static_countries'),(654,0,0,'FR','FRA',250,'90','Territoire de Belfort','',72,'static_countries'),(655,0,0,'FR','FRA',250,'91','Essonne','',72,'static_countries'),(656,0,0,'FR','FRA',250,'92','Hauts-de-Seine','',72,'static_countries'),(657,0,0,'FR','FRA',250,'93','Seine-Saint-Denis','',72,'static_countries'),(658,0,0,'FR','FRA',250,'94','Val-de-Marne','',72,'static_countries'),(659,0,0,'FR','FRA',250,'95','Val-d\'Oise','',72,'static_countries'),(660,0,0,'FR','FRA',250,'GP','Guadeloupe','',72,'static_countries'),(661,0,0,'FR','FRA',250,'GF','Guyane française','French Guiana',72,'static_countries'),(662,0,0,'FR','FRA',250,'MQ','Martinique','Martinique',72,'static_countries'),(663,0,0,'FR','FRA',250,'RE','La Réunion','Réunion',72,'static_countries'),(664,0,0,'FR','FRA',250,'CP','Clipperton','',72,'static_countries'),(665,0,0,'FR','FRA',250,'YT','Mayotte','',72,'static_countries'),(666,0,0,'FR','FRA',250,'NC','Nouvelle-Calédonie','New Caledonia',72,'static_countries'),(667,0,0,'FR','FRA',250,'PF','Polynésie française','French Polynesia',72,'static_countries'),(668,0,0,'FR','FRA',250,'BL','Saint-Barthélemy','Saint Barthélemy',72,'static_countries'),(669,0,0,'FR','FRA',250,'MF','Saint-Martin','Saint Martin',72,'static_countries'),(670,0,0,'FR','FRA',250,'PM','Saint-Pierre-et-Miquelon','Saint Pierre and Miquelon',72,'static_countries'),(671,0,0,'FR','FRA',250,'TF','Terres australes françaises','French Southern Territories',72,'static_countries'),(672,0,0,'FR','FRA',250,'WF','Wallis-et-Futuna','Wallis and Futuna',72,'static_countries'),(673,0,0,'PL','POL',616,'DS','dolno?l?skie','',170,'static_countries'),(674,0,0,'PL','POL',616,'KP','kujawsko-pomorskie','',170,'static_countries'),(675,0,0,'PL','POL',616,'LU','lubelskie','',170,'static_countries'),(676,0,0,'PL','POL',616,'LB','lubuskie','',170,'static_countries'),(677,0,0,'PL','POL',616,'LD','?ódzkie','',170,'static_countries'),(678,0,0,'PL','POL',616,'MA','ma?opolskie','',170,'static_countries'),(679,0,0,'PL','POL',616,'MZ','mazowieckie','',170,'static_countries'),(680,0,0,'PL','POL',616,'OP','opolskie','',170,'static_countries'),(681,0,0,'PL','POL',616,'PK','podkarpackie','',170,'static_countries'),(682,0,0,'PL','POL',616,'PD','podlaskie','',170,'static_countries'),(683,0,0,'PL','POL',616,'PM','pomorskie','',170,'static_countries'),(684,0,0,'PL','POL',616,'SL','?l?skie','',170,'static_countries'),(685,0,0,'PL','POL',616,'SK','?wi?tokrzyskie','',170,'static_countries'),(686,0,0,'PL','POL',616,'WN','warmi?sko-mazurskie','',170,'static_countries'),(687,0,0,'PL','POL',616,'WP','wielkopolskie','',170,'static_countries'),(688,0,0,'PL','POL',616,'ZP','zachodniopomorskie','',170,'static_countries'),(689,0,0,'HR','HRV',191,'21','Grad Zagreb','City of Zagreb',93,'static_countries'),(690,0,0,'HR','HRV',191,'07','Bjelovarsko-bilogorska županija','Bjelovar-Bilogora',93,'static_countries'),(691,0,0,'HR','HRV',191,'12','Brodsko-posavska županija','Brod-Posavina',93,'static_countries'),(692,0,0,'HR','HRV',191,'19','Dubrova?ko-neretvanska županija','Dubrovnik-Neretva',93,'static_countries'),(693,0,0,'HR','HRV',191,'18','Istarska županija','Istria',93,'static_countries'),(694,0,0,'HR','HRV',191,'04','Karlova?ka županija','Karlovac',93,'static_countries'),(695,0,0,'HR','HRV',191,'06','Koprivni?ko-križeva?ka županija','Koprivnica-Križevci',93,'static_countries'),(696,0,0,'HR','HRV',191,'02','Krapinsko-zagorska županija','Krapina-Zagorje',93,'static_countries'),(697,0,0,'HR','HRV',191,'09','Li?ko-senjska županija','Lika-Senj',93,'static_countries'),(698,0,0,'HR','HRV',191,'20','Me?imurska županija','Me?imurje',93,'static_countries'),(699,0,0,'HR','HRV',191,'14','Osje?ko-baranjska županija','Osijek-Baranja',93,'static_countries'),(700,0,0,'HR','HRV',191,'11','Požeško-slavonska županija','Požega-Slavonia',93,'static_countries'),(701,0,0,'HR','HRV',191,'08','Primorsko-goranska županija','Primorje-Gorski Kotar',93,'static_countries'),(702,0,0,'HR','HRV',191,'03','Sisa?ko-moslava?ka županija','Sisak-Moslavina',93,'static_countries'),(703,0,0,'HR','HRV',191,'17','Splitsko-dalmatinska županija','Split-Dalmatia',93,'static_countries'),(704,0,0,'HR','HRV',191,'15','Šibensko-kninska županija','Šibenik-Knin',93,'static_countries'),(705,0,0,'HR','HRV',191,'05','Varaždinska županija','Varaždin',93,'static_countries'),(706,0,0,'HR','HRV',191,'10','Viroviti?ko-podravska županija','Virovitica-Podravina',93,'static_countries'),(707,0,0,'HR','HRV',191,'16','Vukovarsko-srijemska županija','Vukovar-Syrmia',93,'static_countries'),(708,0,0,'HR','HRV',191,'13','Zadarska županija','Zadar',93,'static_countries'),(709,0,0,'HR','HRV',191,'01','Zagreba?ka županija','Zagreb',93,'static_countries');
/*!40000 ALTER TABLE `static_country_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_currencies`
--

DROP TABLE IF EXISTS `static_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_currencies` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `cu_iso_3` char(3) NOT NULL DEFAULT '',
  `cu_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `cu_name_en` varchar(50) NOT NULL DEFAULT '',
  `cu_symbol_left` varchar(12) NOT NULL DEFAULT '',
  `cu_symbol_right` varchar(12) NOT NULL DEFAULT '',
  `cu_thousands_point` char(1) NOT NULL DEFAULT '',
  `cu_decimal_point` char(1) NOT NULL DEFAULT '',
  `cu_decimal_digits` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cu_sub_name_en` varchar(20) NOT NULL DEFAULT '',
  `cu_sub_divisor` int(11) NOT NULL DEFAULT '1',
  `cu_sub_symbol_left` varchar(12) NOT NULL DEFAULT '',
  `cu_sub_symbol_right` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_currencies`
--

LOCK TABLES `static_currencies` WRITE;
/*!40000 ALTER TABLE `static_currencies` DISABLE KEYS */;
INSERT INTO `static_currencies` VALUES (2,0,0,'AED',784,'United Arab Emirates dirham','Dhs.','','.',',',2,'fils',100,'',''),(4,0,0,'ALL',8,'Albanian Lek','L','','.',',',2,'qindarka',100,'',''),(5,0,0,'AMD',51,'Armenian Dram','Dram','','.',',',2,'luma',100,'',''),(6,0,0,'ANG',532,'Netherlands Antillean gulden','NAƒ','','.',',',2,'cent',100,'',''),(7,0,0,'AOA',973,'Angolan Kwanza','Kz','','.',',',2,'centavo',100,'',''),(8,0,0,'ARS',32,'Argentine Peso','$','','.',',',2,'centavo',100,'',''),(9,0,0,'AUD',36,'Australian Dollar','$A','','.',',',2,'cent',100,'',''),(10,0,0,'AWG',533,'Aruban Guilder','Af.','','.',',',2,'cent',100,'',''),(11,0,0,'AZN',944,'Azerbaijani Manat','','','.',',',2,'q?pik',100,'',''),(12,0,0,'BAM',977,'Bosnia-Herzegovina Convertible Mark','KM','','.',',',2,'feninga',100,'',''),(13,0,0,'BBD',52,'Barbados Dollar','Bds$','','.',',',2,'cent',100,'',''),(14,0,0,'BDT',50,'Bangladeshi taka','Tk','','.',',',2,'paisa',100,'',''),(16,0,0,'BGN',975,'Bulgarian Lev','lv','','.',',',2,'stotinka',100,'',''),(17,0,0,'BHD',48,'Bahraini Dinar','BD','','.',',',3,'fils',1000,'',''),(18,0,0,'BIF',108,'Burundi Franc','FBu','','.','',2,'centime',100,'',''),(19,0,0,'BMD',60,'Bermuda Dollar','BM$','','.',',',2,'cent',100,'',''),(20,0,0,'BND',96,'Brunei Dollar','B$','','.',',',2,'sen',100,'',''),(21,0,0,'BOB',68,'Boliviano','Bs','','.',',',2,'centavo',100,'',''),(23,0,0,'BRL',986,'Brazilian Real','R$','','.',',',2,'centavo',100,'',''),(24,0,0,'BSD',44,'Bahamian Dollar','$','','.',',',2,'cent',100,'',''),(25,0,0,'BTN',64,'Bhutanese Ngultrum','Nu','','.',',',2,'chetrum',100,'',''),(26,0,0,'BWP',72,'Botswana pula','P','','.',',',2,'thebe',100,'',''),(27,0,0,'BYR',974,'Belarussian Ruble','Br','','.',',',2,'kapiejka',100,'',''),(28,0,0,'BZD',84,'Belize Dollar','BZ','','.',',',2,'cent',100,'',''),(29,0,0,'CAD',124,'Canadian Dollar','$','','.',',',2,'cent',100,'','¢'),(30,0,0,'CDF',976,'Congolese franc','FC','','.',',',2,'centime',100,'',''),(31,0,0,'CHF',756,'Swiss franc','SFr.','','\'','.',2,'centime',100,'',''),(33,0,0,'CLP',152,'Chilean Peso','$','','.','',0,'',1,'',''),(34,0,0,'CNY',156,'Chinese Yuan Renminbi','?','','.',',',2,'fen',100,'',''),(35,0,0,'COP',170,'Colombian Peso','$','','.',',',2,'centavo',100,'',''),(36,0,0,'CRC',188,'Costa Rican colón','?','','.',',',2,'centimo',100,'',''),(37,0,0,'CUP',192,'Cuban peso','Cub$','','.',',',2,'centavo',100,'',''),(38,0,0,'CVE',132,'Cape Verde Escudo','CVEsc.','','.',',',2,'centavo',100,'',''),(39,0,1,'CYP',196,'Cypriot pound','C£','','.',',',2,'cent',100,'',''),(40,0,0,'CZK',203,'Czech koruna','','K?','.',',',2,'halé?',100,'',''),(41,0,0,'DJF',262,'Djibouti franc','FD','','.','',0,'',1,'',''),(42,0,0,'DKK',208,'Danish krone','kr.','','.',',',2,'Øre',100,'',''),(43,0,0,'DOP',214,'Dominican peso','RD$','','.',',',2,'centavo',100,'',''),(44,0,0,'DZD',12,'Algerian Dinar','DA','','.',',',2,'centime',100,'',''),(45,0,0,'EEK',233,'Estonian kroon','','ekr','.',',',2,'sent',100,'',''),(46,0,0,'EGP',818,'Egyptian pound','LE','','.',',',2,'piastre',100,'',''),(47,0,0,'ERN',232,'Eritrean nakfa','Nfa','','.',',',2,'cent',100,'',''),(48,0,0,'ETB',230,'Ethiopian birr','Br','','.',',',2,'santim',100,'',''),(49,0,0,'EUR',978,'Euro','€','','.',',',2,'cent',100,'¢',''),(50,0,0,'FJD',242,'Fijian dollar','FJ$','','.',',',2,'cent',100,'',''),(51,0,0,'FKP',238,'Falkland Islands pound','Fl£','','.',',',2,'penny',100,'',''),(52,0,0,'GBP',826,'Pound sterling','£','',',','.',2,'penny',100,'','p'),(53,0,0,'GEL',981,'Georgian lari','','lari','.',',',2,'tetri',100,'',''),(54,0,1,'GHC',288,'Ghanaian cedi','','','.',',',2,'pesewa',100,'',''),(55,0,0,'GIP',292,'Gibraltar pound','£','','.',',',2,'penny',100,'',''),(56,0,0,'GMD',270,'Gambian dalasi','D','','.',',',2,'butut',100,'',''),(57,0,0,'GNF',324,'Guinea Franc','GF','','.','',0,'',1,'',''),(58,0,0,'GTQ',320,'Guatemalan quetzal','Q.','','.',',',2,'centavo',100,'',''),(59,0,0,'GWP',624,'Guinea-Bissau Peso','','','.',',',2,'',100,'',''),(60,0,0,'GYD',328,'Guyana Dollar','G$','','.',',',2,'Cent',100,'',''),(61,0,0,'HKD',344,'Hong Kong dollar','HK$','','.',',',2,'cent',100,'',''),(62,0,0,'HNL',340,'Honduran lempira','L','','.',',',2,'centavo',100,'',''),(63,0,0,'HRK',191,'Croatian kuna','kn','','.',',',2,'lipa',100,'',''),(64,0,0,'HTG',332,'Haitian gourde','Gde.','','.',',',2,'centime',100,'',''),(65,0,0,'HUF',348,'Hungarian forint','','Ft','.',',',2,'fillér',100,'',''),(66,0,0,'IDR',360,'Indonesian rupiah','Rp.','','.',',',2,'sen',100,'',''),(67,0,0,'ILS',376,'New Israeli Sheqel','','NIS','.',',',2,'agora',100,'',''),(68,0,0,'INR',356,'Indian rupee','Rs','','.',',',2,'paisha',100,'',''),(69,0,0,'IQD',368,'Iraqi dinar','ID','','.',',',3,'fils',1000,'',''),(70,0,0,'IRR',364,'Iranian rial','Rls','','.',',',2,'dinar',100,'',''),(71,0,0,'ISK',352,'Icelandic króna','','ikr','.',',',2,'aurar',100,'',''),(72,0,0,'JMD',388,'Jamaican dollar','J$','','.',',',2,'cent',100,'',''),(73,0,0,'JOD',400,'Jordanian dinar','JD','','.',',',2,'piastre',100,'',''),(74,0,0,'JPY',392,'Japanese yen','¥','','.','',2,'sen',100,'',''),(75,0,0,'KES',404,'Kenyan shilling','Kshs.','','.',',',2,'cent',100,'',''),(76,0,0,'KGS',417,'Kyrgyzstani som','K.S.','','.',',',2,'tyiyn',100,'',''),(77,0,0,'KHR',116,'Cambodian riel','CR','','.',',',2,'sen',100,'',''),(78,0,0,'KMF',174,'Comorian Franc','CF','','.','',0,'',1,'',''),(79,0,0,'KPW',408,'North Korean won','?n','','.',',',2,'chon',100,'',''),(80,0,0,'KRW',410,'South Corean won','?','','.','',2,'jeon',100,'',''),(81,0,0,'KWD',414,'Kuwaiti dinar','KD','','.',',',3,'fils',1000,'',''),(82,0,0,'KYD',136,'Cayman Islands Dollar','$','','.',',',2,'cent',100,'',''),(83,0,0,'KZT',398,'Kazakhstani tenge','T','','.',',',2,'tiyin',100,'',''),(84,0,0,'LAK',418,'Lao kip','?','','.',',',2,'at',100,'',''),(85,0,0,'LBP',422,'Lebanese pound','','LL','.',',',2,'piastre',100,'',''),(86,0,0,'LKR',144,'Sri Lankan rupee','Re','','.',',',2,'cent',100,'',''),(87,0,0,'LRD',430,'Liberian dollar','Lib$','','.',',',2,'cent',100,'',''),(88,0,0,'LSL',426,'Lesotho loti','M','','.',',',2,'sente',100,'',''),(89,0,0,'LTL',440,'Lithuanian litas','','Lt','.',',',2,'centas',100,'',''),(90,0,0,'LVL',428,'Latvian lats','Ls','','.',',',2,'santim',100,'',''),(91,0,0,'LYD',434,'Libyan dinar','LD.','','.',',',3,'dirham',1000,'',''),(92,0,0,'MAD',504,'Moroccan dirham','Dh','','.',',',2,'centime',100,'',''),(93,0,0,'MDL',498,'Moldovan leu','','','.',',',2,'ban',100,'',''),(95,0,0,'MKD',807,'Macedonian denar','Den','','.',',',2,'deni',100,'',''),(96,0,0,'MMK',104,'Myanmar kyat','K','','.',',',2,'pya',100,'',''),(97,0,0,'MNT',496,'Mongolian tugrug','?','','.',',',2,'mongo',100,'',''),(98,0,0,'MOP',446,'Macanese pataca','Pat.','','.',',',2,'avo',100,'',''),(99,0,0,'MRO',478,'Mauritanian ouguiya','UM','','.',',',2,'khoum',100,'',''),(100,0,1,'MTL',470,'Maltese lira','Lm','','.',',',2,'cent',100,'',''),(101,0,0,'MUR',480,'Mauritian rupee','Rs','','.',',',2,'cent',100,'',''),(102,0,0,'MVR',462,'Maldivian rufiyaa','Rf','','.',',',2,'laari',100,'',''),(103,0,0,'MWK',454,'Malawian kwacha','MK','','.',',',2,'tambala',100,'',''),(104,0,0,'MXN',484,'Mexican peso','$','','.',',',2,'centavo',100,'',''),(106,0,0,'MYR',458,'Malaysian ringgit','RM','','.',',',2,'sen',100,'',''),(107,0,1,'MZM',508,'Mozambican metical','','Mt','.',',',2,'centavo',100,'',''),(108,0,0,'NAD',516,'Namibian dollar','N$','','.',',',2,'cent',100,'',''),(109,0,0,'NGN',566,'Nigerian naira','?','','.',',',2,'kobo',100,'',''),(110,0,0,'NIO',558,'Nicaraguan córdoba','C$','','.',',',2,'centavo',100,'',''),(111,0,0,'NOK',578,'Norvegian krone','kr','','.',',',2,'øre',100,'',''),(112,0,0,'NPR',524,'Nepalese rupee','Rs.','','.',',',2,'paisa',100,'',''),(113,0,0,'NZD',554,'New Zealand dollar','$','',',','.',2,'cent',100,'',''),(114,0,0,'OMR',512,'Omani rial','OR','','.',',',3,'baiza',1000,'',''),(115,0,0,'PAB',590,'Panamanian balboa','B','','.',',',2,'centésimo',100,'',''),(116,0,0,'PEN',604,'Peruvian nuevo sol','Sl.','','.',',',2,'centimo',100,'',''),(117,0,0,'PGK',598,'Papua New Guinean kina','K','','.',',',2,'toea',100,'',''),(118,0,0,'PHP',608,'Philippine peso','P','','.',',',2,'centavo',100,'',''),(119,0,0,'PKR',586,'Pakistani rupee','Rs.','','.',',',2,'paisa',100,'',''),(120,0,0,'PLN',985,'Polish z?oty','','z?','.',',',2,'grosz',100,'',''),(121,0,0,'PYG',600,'Paraguayan guaraní','G','','.','',2,'centimo',100,'',''),(122,0,0,'QAR',634,'Qatari riyal','QR','','.',',',2,'dirham',100,'',''),(123,0,1,'ROL',642,'Romanian leu','','l','.',',',2,'ban',100,'',''),(124,0,0,'RUB',643,'Russian ruble','','R','.',',',2,'kopek',100,'',''),(126,0,0,'RWF',646,'Rwandan franc','frw','','.','',0,'centime',1,'',''),(127,0,0,'SAR',682,'Saudi riyal','SR','','.',',',2,'hallalah',100,'',''),(128,0,0,'SBD',90,'Solomon Islands dollar','SI$','','.',',',2,'cent',100,'',''),(129,0,0,'SCR',690,'Seychelles rupee','SR','','.',',',2,'cent',100,'',''),(130,0,0,'SDG',938,'Sudanese pound','£','','.',',',2,'piastre',100,'',''),(131,0,0,'SEK',752,'Swedish krona','','kr','.',',',2,'öre',100,'',''),(132,0,0,'SGD',702,'Singapore dollar','$','','.',',',2,'cent',100,'',''),(133,0,0,'SHP',654,'Saint Helena pound','£','','.',',',2,'penny',100,'',''),(134,0,1,'SIT',705,'Slovenian tolar','SIT','','.',',',2,'stotin',100,'',''),(135,0,1,'SKK',703,'Slovak koruna','','Sk','.',',',2,'halier',100,'','h'),(136,0,0,'SLL',694,'Sierra Leonean leone','Le','','.',',',2,'cent',100,'',''),(137,0,0,'SOS',706,'Somali shilling','So.','','.',',',2,'centesimo',100,'',''),(139,0,0,'STD',678,'São Tomé and Príncipe dobra','Db','','.',',',2,'cêntimo',100,'',''),(140,0,0,'SVC',222,'Salvadoran colón','?','','.',',',2,'centavo',100,'',''),(141,0,0,'SYP',760,'Syrian pound','£S','','.',',',2,'piastre',100,'',''),(142,0,0,'SZL',748,'Swazi lilangeni','','','.',',',2,'cent',100,'',''),(143,0,0,'THB',764,'Baht','','Bt','.',',',2,'satang',100,'',''),(144,0,0,'TJS',972,'Tajikistani somoni','','','.',',',2,'diram',100,'',''),(145,0,1,'TMM',795,'Turkmenistani manat','','','.',',',2,'tenge',100,'',''),(146,0,0,'TND',788,'Tunisian dinar','TD','','.',',',3,'millime',1000,'',''),(147,0,0,'TOP',776,'Tongan pa\'anga','T$','','.',',',2,'seniti',100,'',''),(150,0,0,'TTD',780,'Trinidad and Tobago dollar','TT$','','.',',',2,'cent',100,'',''),(151,0,0,'TWD',901,'New Taiwan dollar','NT$','','.',',',2,'cent',100,'',''),(152,0,0,'TZS',834,'Tanzanian shilling','TSh','','.',',',2,'cent',100,'',''),(153,0,0,'UAH',980,'Ukrainian hryvnia','hrn','','.',',',2,'kopiyka',100,'',''),(154,0,0,'UGX',800,'Ugandan shilling','USh','','.',',',2,'cent',100,'',''),(155,0,0,'USD',840,'US dollar','$','',',','.',2,'cent',100,'','¢'),(156,0,0,'UYU',858,'Uruguayan peso','UR$','','.',',',2,'centésimo',100,'',''),(157,0,0,'UZS',860,'Uzbekistani som','U.S.','','.',',',2,'tiyin',100,'',''),(158,0,0,'VEF',937,'Bolivar','Bs.','','.',',',2,'céntimo',100,'',''),(159,0,0,'VND',704,'Vietnamese ??ng','','?','.',',',2,'xu',100,'',''),(160,0,0,'VUV',548,'Vatu','','VT','.','',0,'centime',1,'',''),(161,0,0,'WST',882,'Samoan tala','WS$','','.',',',2,'sene',100,'',''),(162,0,0,'XAF',950,'CFA Franc BEAC','CFAF','','.','',0,'',1,'',''),(163,0,0,'XCD',951,'East Caribbean dollar','EC$','','.',',',2,'cent',100,'',''),(164,0,0,'XOF',952,'CFA Franc BCEAO','CFAF','','.','',0,'',1,'',''),(165,0,0,'XPF',953,'CFP Franc','CFPF','','.','',0,'',1,'',''),(166,0,0,'YER',886,'Yemeni rial','RI','','.',',',2,'fils',100,'',''),(168,0,0,'ZAR',710,'South African rand','R','','.',',',2,'cent',100,'',''),(169,0,0,'ZMW',967,'Zambian kwacha','K','','.',',',2,'ngwee',100,'',''),(170,0,1,'ZWD',716,'Zimbabwean dollar','$','','.',',',2,'cent',100,'',''),(171,0,0,'AFN',971,'Afghan afghani','Af','','.',',',2,'pul',100,'',''),(172,0,0,'RSD',941,'Serbian dinar','','','.',',',2,'para',100,'',''),(173,0,0,'MGA',969,'Malagasy ariary','','','.',',',1,'iraimbilanja',5,'',''),(174,0,0,'SRD',968,'Suriname dollar','$','','.',',',2,'cent',100,'',''),(175,0,0,'TRY',949,'Turkish lira','?','','.',',',2,'kuru?',100,'',''),(176,0,0,'SSP',728,'South Sudanese pound','£','','.',',',2,'piastre',100,'',''),(177,0,0,'GHS',936,'Ghanaian cedi','GH?','','.',',',2,'pesewa',100,'','Gp'),(178,0,0,'MZN',943,'Mozambican metical','MT','','.',',',2,'centavo',100,'',''),(179,0,0,'RON',946,'Romanian new leu','','l','.',',',2,'ban',100,'',''),(180,0,0,'TMT',934,'Turkmenistani manat','T','','.',',',2,'tenge',100,'','');
/*!40000 ALTER TABLE `static_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_languages`
--

DROP TABLE IF EXISTS `static_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_languages` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `lg_iso_2` char(2) NOT NULL DEFAULT '',
  `lg_name_local` varchar(99) NOT NULL DEFAULT '',
  `lg_name_en` varchar(50) NOT NULL DEFAULT '',
  `lg_typo3` char(2) NOT NULL DEFAULT '',
  `lg_country_iso_2` char(2) NOT NULL DEFAULT '',
  `lg_collate_locale` varchar(5) NOT NULL DEFAULT '',
  `lg_sacred` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lg_constructed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_languages`
--

LOCK TABLES `static_languages` WRITE;
/*!40000 ALTER TABLE `static_languages` DISABLE KEYS */;
INSERT INTO `static_languages` VALUES (1,0,0,'AB','????? ??????','Abkhazian','','','',0,0),(2,0,0,'AA','Afaraf','Afar','','','',0,0),(3,0,0,'AF','Afrikaans','Afrikaans','','','',0,0),(4,0,0,'SQ','Gjuha shqipe','Albanian','sq','','sq',0,0),(5,0,0,'AM','????','Amharic','','','',0,0),(6,0,0,'AR','???????','Arabic','ar','','ar_SA',0,0),(7,0,0,'HY','???????','Armenian','','','',0,0),(8,0,0,'AS','???????','Assamese','','','',0,0),(9,0,0,'AY','Aymar aru','Aymara','','','',0,0),(10,0,0,'AZ','Az?rbaycan dili','Azerbaijani','','','',0,0),(11,0,0,'BA','???????','Bashkir','','','',0,0),(12,0,0,'EU','Euskara','Basque','eu','','eu_ES',0,0),(13,0,0,'BN','?????','Bengali','','','',0,0),(14,0,0,'DZ','?????','Dzongkha','','','',0,0),(15,0,0,'BH','???????','Bihari','','','',0,0),(16,0,0,'BI','Bislama','Bislama','','','',0,0),(17,0,0,'BR','Brezhoneg','Breton','','','',0,0),(18,0,0,'BG','?????????','Bulgarian','bg','','bg_BG',0,0),(19,0,0,'MY','??????????','Burmese','my','','my_MM',0,0),(20,0,0,'BE','??????????','Belarusian','','','',0,0),(21,0,0,'KM','?????????','Khmer','km','','km',0,0),(22,0,0,'CA','Català','Catalan','ca','','ca_ES',0,0),(23,0,0,'ZA','Sawcuengh','Zhuang','','','',0,0),(24,0,0,'ZH','??','Chinese (Traditional)','hk','HK','zh_HK',0,0),(25,0,0,'CO','Corsu','Corsican','','','',0,0),(26,0,0,'HR','Hrvatski','Croatian','hr','','hr_HR',0,0),(27,0,0,'CS','?eština','Czech','cz','','cs_CZ',0,0),(28,0,0,'DA','Dansk','Danish','dk','','da_DK',0,0),(29,0,0,'NL','Nederlands','Dutch','nl','','nl_NL',0,0),(30,0,0,'EN','English','English','','','en_GB',0,0),(31,0,0,'EO','Esperanto','Esperanto','eo','','',0,1),(32,0,0,'ET','Eesti','Estonian','et','','et_EE',0,0),(33,0,0,'FO','Føroyskt','Faeroese','fo','','fo_FO',0,0),(34,0,0,'FA','?????','Persian','fa','','fa_IR',0,0),(35,0,0,'FJ','Na Vosa Vakaviti','Fijian','','','',0,0),(36,0,0,'FI','Suomi','Finnish','fi','','fi_FI',0,0),(37,0,0,'FR','Français','French','fr','','fr_FR',0,0),(38,0,0,'FY','Frysk','Frisian','','','',0,0),(39,0,0,'GL','Galego','Galician','ga','','gl_ES',0,0),(40,0,0,'GD','Gàidhlig','Scottish Gaelic','','','',0,0),(41,0,0,'GV','Gaelg','Manx','','','',0,0),(42,0,0,'KA','???????','Georgian','ge','','ka',0,0),(43,0,0,'DE','Deutsch','German','de','','de_DE',0,0),(44,0,0,'EL','????????','Greek','gr','','el_GR',0,0),(45,0,0,'KL','Kalaallisut','Greenlandic','gl','','kl_DK',0,0),(46,0,0,'GN','Avañe\'?','Guaraní','','','',0,0),(47,0,0,'GU','???????','Gujarati','','','',0,0),(48,0,0,'HA','Hausa','Hausa','','','',0,0),(49,0,0,'HE','?????','Hebrew','he','','he_IL',0,0),(50,0,0,'HI','??????','Hindi','hi','','hi_IN',0,0),(51,0,0,'HU','Magyar','Hungarian','hu','','hu_HU',0,0),(52,0,0,'IS','Íslenska','Icelandic','is','','is_IS',0,0),(53,0,0,'ID','Bahasa Indonesia','Indonesian','','','',0,0),(54,0,0,'IA','Interlingua','Interlingua','','','',0,1),(55,0,0,'IE','Interlingue','Interlingue','','','',0,1),(56,0,0,'IU','??????','Inuktitut','','','',0,0),(57,0,0,'IK','Iñupiak','Inupiaq','','','',0,0),(58,0,0,'GA','Gaeilge','Irish','','','',0,0),(59,0,0,'IT','Italiano','Italian','it','','it_IT',0,0),(60,0,0,'JA','???','Japanese','jp','','ja_JP',0,0),(62,0,0,'KN','?????','Kannada','','','',0,0),(63,0,0,'KS','?????','Kashmiri','','','',0,0),(64,0,0,'KK','????? ????','Kazakh','','','',0,0),(65,0,0,'RW','Kinyarwanda','Kinyarwanda','','','',0,0),(66,0,0,'KY','?????? ????','Kirghiz','','','',0,0),(67,0,0,'RN','kiRundi','Kirundi','','','',0,0),(68,0,0,'KO','???','Korean','kr','','ko_KR',0,0),(69,0,0,'KU','Kurdî','Kurdish','','','',0,0),(70,0,0,'LO','???????','Lao','','','',0,0),(71,0,0,'LA','Lingua latina','Latin','','','',1,0),(72,0,0,'LV','Latviešu','Latvian','lv','','lv_LV',0,0),(73,0,0,'LN','Lingála','Lingala','','','',0,0),(74,0,0,'LT','Lietuvi?','Lithuanian','lt','','lt_LT',0,0),(75,0,0,'MK','??????????','Macedonian','','','',0,0),(76,0,0,'MG','Merina','Malagasy','','','',0,0),(77,0,0,'MS','Bahasa Melayu','Malay','','','',0,0),(78,0,0,'ML','??????','Malayalam','','','',0,0),(79,0,0,'MT','Malti','Maltese','','','mt_MT',0,0),(80,0,0,'MI','M?ori','M?ori','','','',0,0),(81,0,0,'MR','?????','Marathi','','','',0,0),(82,0,0,'MO','????????????','Moldavian','','','',0,0),(83,0,0,'MN','??????','Mongolian','','','',0,0),(84,0,0,'NA','Ekakair? Naoero','Nauru','','','',0,0),(85,0,0,'NE','??????','Nepali','','','',0,0),(86,0,0,'NO','Norsk','Norwegian','no','','no_NO',0,0),(87,0,0,'OC','Occitan','Occitan','','','',0,0),(88,0,0,'OR','?????','Oriya','','','',0,0),(89,0,0,'OM','Afaan Oromoo','Oromo','','','',0,0),(90,0,0,'PS','???','Pashto','','','',0,0),(91,0,0,'PL','Polski','Polish','pl','','pl_PL',0,0),(92,0,0,'PT','Português','Portuguese','pt','','pt_PT',0,0),(93,0,0,'PA','?????? / ??????','Punjabi','','','',0,0),(94,0,0,'QU','Runa Simi','Quechua','','','',0,0),(95,0,0,'RM','Rumantsch','Rhaeto-Romance','','','',0,0),(96,0,0,'RO','Român?','Romanian','ro','','ro_RO',0,0),(97,0,0,'RU','???????','Russian','ru','','ru_RU',0,0),(98,0,0,'SM','Gagana fa?a Samoa','Samoan','','','',0,0),(99,0,0,'SG','Sängö','Sango','','','',0,0),(100,0,0,'SA','?????????','Sanskrit','','','',1,0),(101,0,0,'SR','?????? / Srpski','Serbian','sr','','sr_YU',0,0),(103,0,0,'ST','seSotho','Sesotho','','','',0,0),(104,0,0,'TN','Setswana','Setswana','','','',0,0),(105,0,0,'SN','chiShona','Shona','','','',0,0),(106,0,0,'SD','????? ?????','Sindhi','','','',0,0),(107,0,0,'SI','?????','Sinhala','','','',0,0),(108,0,0,'SS','siSwati','Swati','','','',0,0),(109,0,0,'SK','Sloven?ina','Slovak','sk','','sk_SK',0,0),(110,0,0,'SL','Slovenš?ina','Slovenian','si','','sl_SI',0,0),(111,0,0,'SO','af Soomaali','Somali','','','',0,0),(112,0,0,'ES','Español','Spanish','es','','es_ES',0,0),(113,0,0,'SU','Basa Sunda','Sundanese','','','',0,0),(114,0,0,'SW','Kiswahili','Swahili','','','',0,0),(115,0,0,'SV','Svenska','Swedish','se','','sv_SE',0,0),(116,0,0,'TL','Tagalog','Tagalog','','','',0,0),(117,0,0,'TG','?????? / ??????','Tajik','','','',0,0),(118,0,0,'TA','?????','Tamil','','','',0,0),(119,0,0,'TT','??????? / tatarça / ??????','Tatar','','','',0,0),(120,0,0,'TE','??????','Telugu','','','',0,0),(121,0,0,'TH','???????','Thai','th','','th_TH',0,0),(122,0,0,'BO','???????','Tibetan','','','',0,0),(123,0,0,'TI','????','Tigrinya','','','',0,0),(124,0,0,'TO','faka-Tonga','Tongan','','','',0,0),(125,0,0,'TS','Tsonga','Tsonga','','','',0,0),(126,0,0,'TR','Türkçe','Turkish','tr','','tr_TR',0,0),(127,0,0,'TK','Türkmen dili','Turkmen','','','',0,0),(128,0,0,'TW','Twi','Twi','','','',0,0),(129,0,0,'UG','????????','Uyghur','','','',0,0),(130,0,0,'UK','??????????','Ukrainian','ua','','uk_UA',0,0),(131,0,0,'UR','????','Urdu','','','',0,0),(132,0,0,'UZ','????? / O\'zbek','Uzbek','','','',0,0),(133,0,0,'VI','Ti?ng Vi?t','Vietnamese','vn','','vi_VN',0,0),(134,0,0,'VO','Volapük','Volapük','','','',0,1),(135,0,0,'CY','Cymraeg','Welsh','','','',0,0),(136,0,0,'WO','Wolof','Wolof','','','',0,0),(137,0,0,'XH','isiXhosa','Xhosa','','','',0,0),(138,0,0,'YI','??????','Yiddish','','','',0,0),(139,0,0,'YO','Yorùbá','Yoruba','','','',0,0),(140,0,0,'ZU','isiZulu','Zulu','','','',0,0),(141,0,0,'BS','Bosanski','Bosnian','ba','','bs_BA',0,0),(142,0,0,'AE','Avestan','Avestan','','','',1,0),(143,0,0,'AK','Akan','Akan','','','',0,0),(144,0,0,'AN','Aragonés','Aragonese','','','',0,0),(145,0,0,'AV','???????? ????','Avar','','','',0,0),(146,0,0,'BM','Bamanankan','Bambara','','','',0,0),(147,0,0,'CE','???????','Chechen','','','',0,0),(148,0,0,'CH','Chamoru','Chamorro','','','',0,0),(149,0,0,'CR','?????','Cree','','','',0,0),(150,0,0,'CU','??????????????????? ?????','Church Slavonic','','','',1,0),(151,0,0,'CV','????? ?????','Chuvash','','','',0,0),(152,0,0,'DV','??????','Dhivehi','','','',0,0),(153,0,0,'EE','???gb?','Ewe','','','',0,0),(154,0,0,'FF','Fulfulde / Pulaar','Fula','','','',0,0),(155,0,0,'HO','Hiri motu','Hiri motu','','','',0,0),(156,0,0,'HT','Krèyol ayisyen','Haïtian Creole','','','',0,0),(157,0,0,'HZ','otsiHerero','Herero','','','',0,0),(158,0,0,'IG','Igbo','Igbo','','','',0,0),(159,0,0,'II','??','Yi','','','',0,0),(160,0,0,'IO','Ido','Ido','','','',0,1),(161,0,0,'JV','Basa Jawa','Javanese','','','',0,0),(162,0,0,'KG','Kikongo','Kongo','','','',0,0),(163,0,0,'KI','G?k?y?','Kikuyu','','','',0,0),(164,0,0,'KJ','Kuanyama','Kuanyama','','','',0,0),(165,0,0,'KR','Kanuri','Kanuri','','','',0,0),(166,0,0,'KV','???? ???','Komi','','','',0,0),(167,0,0,'KW','Kernewek','Cornish','','','',0,0),(168,0,0,'LB','Lëtzebuergesch','Luxembourgish','','','',0,0),(169,0,0,'LG','Luganda','Luganda','','','',0,0),(170,0,0,'LI','Limburgs','Limburgish','','','',0,0),(171,0,0,'LU','Luba-Katanga','Luba-Katanga','','','',0,0),(172,0,0,'MH','Kajin M?aje?','Marshallese','','','',0,0),(173,0,0,'NB','Norsk bokmål','Norwegian Bokmål','','','',0,0),(174,0,0,'ND','isiNdebele','North Ndebele','','','',0,0),(175,0,0,'NG','Owambo','Ndonga','','','',0,0),(176,0,0,'NN','Norsk nynorsk','Norwegian Nynorsk','','','',0,0),(177,0,0,'NR','Ndébélé','South Ndebele','','','',0,0),(178,0,0,'NV','Dinék?eh?í','Navajo','','','',0,0),(179,0,0,'NY','chiChe?a','Chichewa','','','',0,0),(180,0,0,'OJ','????????','Ojibwa','','','',0,0),(181,0,0,'OS','???? æ????','Ossetic','','','',0,0),(182,0,0,'PI','P?li','Pali','','','',1,0),(183,0,0,'SC','Sardu','Sardinian','','','',0,0),(184,0,0,'SE',' Sámegiella','Northern Sami','','','',0,0),(186,0,0,'TY','Reo Tahiti','Tahitian','','','',0,0),(187,0,0,'VE','tshiVen?a','Venda','','','',0,0),(188,0,0,'WA','Walon','Walloon','','','',0,0),(189,0,0,'PT','Português brasileiro','Brazilian Portuguese','br','BR','pt_BR',0,0),(190,0,0,'ZH','??','Chinese (Simplified)','ch','CN','zh_CN',0,0),(191,0,0,'FR','Français canadien','Canadian French','qc','CA','fr_CA',0,0),(192,0,0,'TL','Filipino','Filipino','','PH','fil',0,0),(193,0,0,'SR','Crnogorski jezik','Montenegrin','','ME','sr_ME',0,0);
/*!40000 ALTER TABLE `static_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_territories`
--

DROP TABLE IF EXISTS `static_territories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static_territories` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `tr_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `tr_parent_territory_uid` int(11) NOT NULL DEFAULT '0',
  `tr_parent_iso_nr` int(11) unsigned NOT NULL DEFAULT '0',
  `tr_name_en` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_territories`
--

LOCK TABLES `static_territories` WRITE;
/*!40000 ALTER TABLE `static_territories` DISABLE KEYS */;
INSERT INTO `static_territories` VALUES (1,0,0,2,0,0,'Africa'),(2,0,0,9,0,0,'Oceania'),(3,0,0,19,0,0,'Americas'),(4,0,0,142,0,0,'Asia'),(5,0,0,150,0,0,'Europe'),(6,0,0,30,4,142,'Eastern Asia'),(7,0,0,35,4,142,'South-eastern Asia'),(8,0,0,143,4,142,'Central Asia'),(9,0,0,145,4,142,'Western Asia'),(10,0,0,39,5,150,'Southern Europe'),(11,0,0,151,5,150,'Eastern Europe'),(12,0,0,154,5,150,'Northern Europe'),(13,0,0,155,5,150,'Western Europe'),(16,0,0,5,31,419,'South America'),(17,0,0,13,31,419,'Central America'),(18,0,0,21,3,19,'Northern America'),(19,0,0,29,31,419,'Caribbean'),(20,0,0,11,1,2,'Western Africa'),(21,0,0,14,1,2,'Eastern Africa'),(22,0,0,15,1,2,'Northern Africa'),(23,0,0,17,1,2,'Middle Africa'),(24,0,0,18,1,2,'Southern Africa'),(25,0,0,53,2,9,'Australia and New Zealand'),(26,0,0,54,2,9,'Melanesia'),(27,0,0,57,2,9,'Micronesian Region'),(28,0,0,61,2,9,'Polynesia'),(30,0,0,34,4,142,'Southern Asia'),(31,0,0,419,3,19,'Latin America and the Caribbean');
/*!40000 ALTER TABLE `static_territories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) NOT NULL DEFAULT '',
  `url` text,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sc_group` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `title` tinytext NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablenames` (`uid_foreign`,`tablenames`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `fe_group` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(32) NOT NULL DEFAULT 'static',
  `table_name` tinytext,
  `items` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `domainName` varchar(80) NOT NULL DEFAULT '',
  `redirectTo` varchar(255) NOT NULL DEFAULT '',
  `redirectHttpStatusCode` int(4) unsigned NOT NULL DEFAULT '301',
  `sorting` int(10) unsigned NOT NULL DEFAULT '0',
  `prepend_params` int(10) NOT NULL DEFAULT '0',
  `forced` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `getSysDomain` (`redirectTo`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `last_indexed` int(11) NOT NULL DEFAULT '0',
  `missing` tinyint(4) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT '0',
  `identifier` text,
  `identifier_hash` char(40) NOT NULL DEFAULT '',
  `folder_hash` char(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext,
  `sha1` char(40) NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creation_date` int(11) NOT NULL DEFAULT '0',
  `modification_date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1431677930,0,0,0,'2',0,'/typo3conf/ext/theme_bootstrap/Resources/Public/Images/logo.png','0abb7a09c996df98709b3b82f98adfe1dbb28fa0','1077972a69fa641ad21781e99278444eb119ac85','png','image/png','logo.png','1b5cca8d1a0becd7f801a3fe3c7387b08893313e',161249,1431675308,1431618567);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumtext,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `description` text,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `folder` text NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `file` int(11) NOT NULL DEFAULT '0',
  `title` tinytext,
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `alternative` text,
  `categories` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1431677930,1431677929,1,0,0,'',0,0,0,'',0,0,0,0,0,0,1,NULL,1100,889,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `storage` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext,
  `configuration` text,
  `configurationsha1` char(40) NOT NULL DEFAULT '',
  `originalfilesha1` char(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` char(10) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`,`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(199))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1431677930,1431677930,0,1,'/typo3temp/_processed_/csm_logo_a562695e9d.png','csm_logo_a562695e9d.png','a:11:{s:5:\"width\";s:2:\"40\";s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','19262af25203cb8fc27d51b2204f17814b9e38a7','1b5cca8d1a0becd7f801a3fe3c7387b08893313e','Image.CropScaleMask','a562695e9d',40,33),(2,1431677931,1431677931,0,1,'/typo3temp/_processed_/csm_logo_405066c711.png','csm_logo_405066c711.png','a:11:{s:5:\"width\";s:3:\"110\";s:6:\"height\";N;s:13:\"fileExtension\";N;s:8:\"maxWidth\";i:0;s:9:\"maxHeight\";i:0;s:8:\"minWidth\";i:0;s:9:\"minHeight\";i:0;s:7:\"noScale\";N;s:20:\"additionalParameters\";N;s:5:\"frame\";i:0;s:4:\"crop\";N;}','7ae2800e908f92907f9eb0345602d3c29ebe12e2','1b5cca8d1a0becd7f801a3fe3c7387b08893313e','Image.CropScaleMask','405066c711',110,89);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `uid_local` int(11) NOT NULL DEFAULT '0',
  `uid_foreign` int(11) NOT NULL DEFAULT '0',
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT '0',
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext,
  `description` text,
  `alternative` tinytext,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `downloadname` tinytext,
  `crop` varchar(4000) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `driver` tinytext,
  `configuration` text,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `is_browsable` tinyint(4) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) NOT NULL DEFAULT '0',
  `is_writable` tinyint(4) NOT NULL DEFAULT '0',
  `is_online` tinyint(4) NOT NULL DEFAULT '1',
  `processingfolder` tinytext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1431677157,1431677157,0,0,'fileadmin/ (auto-created)','This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(120) NOT NULL DEFAULT '',
  `base` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `read_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_log_uid` int(11) NOT NULL DEFAULT '0',
  `history_data` mediumtext,
  `fieldlist` text,
  `recuid` int(11) NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `history_files` mediumtext,
  `snapshot` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `recordident_1` (`tablename`,`recuid`),
  KEY `recordident_2` (`tablename`,`tstamp`),
  KEY `sys_log_uid` (`sys_log_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT '0',
  `record_pid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `action` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `recuid` int(11) unsigned NOT NULL DEFAULT '0',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT '0',
  `error` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `details` text NOT NULL,
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `details_nr` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text,
  `event_pid` int(11) NOT NULL DEFAULT '-1',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `NEWid` varchar(20) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` float NOT NULL DEFAULT '0',
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message` text,
  `data` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`,`uid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text,
  `personal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_preview`
--

DROP TABLE IF EXISTS `sys_preview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_preview` (
  `keyword` varchar(32) NOT NULL DEFAULT '',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `config` text,
  PRIMARY KEY (`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_preview`
--

LOCK TABLES `sys_preview` WRITE;
/*!40000 ALTER TABLE `sys_preview` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_preview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT '0',
  `field` varchar(40) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `workspace` int(11) NOT NULL DEFAULT '0',
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT '0',
  `ref_string` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`),
  KEY `lookup_uid` (`ref_table`,`ref_uid`),
  KEY `lookup_string` (`ref_string`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` blob,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'core','formSessionToken:1','s:64:\"7c50a35ab684d0942b44dfb5681b067e5746623fc18f193546f63128122b1aa1\";'),(2,'extensionDataImport','typo3conf/ext/static_info_tables/ext_tables_static+adt.sql','i:1;'),(3,'extensionDataImport','typo3conf/ext/yaml_parser/ext_tables_static+adt.sql','i:1;'),(4,'extensionDataImport','typo3conf/ext/dyncss/ext_tables_static+adt.sql','i:1;'),(5,'extensionDataImport','typo3conf/ext/dyncss_less/ext_tables_static+adt.sql','i:1;'),(6,'extensionDataImport','typo3conf/ext/gridelements/ext_tables_static+adt.sql','i:1;'),(7,'extensionDataImport','typo3conf/ext/themes/ext_tables_static+adt.sql','i:1;'),(8,'extensionDataImport','typo3conf/ext/themes_gridelements/ext_tables_static+adt.sql','i:1;'),(9,'extensionDataImport','typo3conf/ext/theme_bootstrap/ext_tables_static+adt.sql','i:1;');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `sitetitle` varchar(255) NOT NULL DEFAULT '',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `root` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clear` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `include_static_file` text,
  `constants` text,
  `config` text,
  `nextLevel` varchar(5) NOT NULL DEFAULT '',
  `description` text,
  `basedOn` tinytext,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeStaticAfterBasedOn` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `static_file_mode` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `tx_themes_skin` tinytext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,0,0,0,'',0,0,0,0,0,1431677748,256,1431677746,1,'TYPO3 Themes test','',0,0,0,1,0,'EXT:css_styled_content/static/,EXT:gridelements/Configuration/TypoScript/','','','','','',0,0,0,0,'theme_bootstrap');
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) unsigned NOT NULL DEFAULT '0',
  `crdate` int(11) unsigned NOT NULL DEFAULT '0',
  `cruser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext,
  `image` text,
  `imagewidth` mediumint(11) unsigned NOT NULL DEFAULT '0',
  `imageorient` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imagecols` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `imageborder` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `media` text,
  `layout` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `cols` int(11) unsigned NOT NULL DEFAULT '0',
  `records` text,
  `pages` tinytext,
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `colPos` smallint(6) NOT NULL DEFAULT '0',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `menu_type` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '0',
  `select_key` varchar(80) NOT NULL DEFAULT '',
  `sectionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `linkToTop` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `file_collections` text,
  `filelink_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `filelink_sorting` tinytext NOT NULL,
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `recursive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `imageheight` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rte_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT '0',
  `pi_flexform` mediumtext,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `l18n_parent` int(11) NOT NULL DEFAULT '0',
  `l18n_diffsource` mediumblob,
  `selected_categories` text,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `header_position` varchar(6) NOT NULL DEFAULT '',
  `image_compression` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_effects` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image_frames` int(11) unsigned NOT NULL DEFAULT '0',
  `image_noRows` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `section_frame` int(11) unsigned NOT NULL DEFAULT '0',
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT '0',
  `table_bgColor` int(11) unsigned NOT NULL DEFAULT '0',
  `table_border` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellpadding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `table_cellspacing` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `categories` int(11) NOT NULL DEFAULT '0',
  `backupColPos` smallint(6) NOT NULL DEFAULT '-2',
  `tx_gridelements_backend_layout` varchar(255) NOT NULL DEFAULT '',
  `tx_gridelements_children` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_container` int(11) NOT NULL DEFAULT '0',
  `tx_gridelements_columns` int(11) NOT NULL DEFAULT '0',
  `tx_themes_responsive` varchar(1024) NOT NULL DEFAULT '',
  `tx_themes_behaviour` varchar(1024) NOT NULL DEFAULT '',
  `tx_themes_variants` varchar(1024) NOT NULL DEFAULT '',
  `tx_themes_enforceequalcolumnheight` varchar(1024) NOT NULL DEFAULT '',
  `tx_themes_columnsettings` varchar(1024) NOT NULL DEFAULT '',
  `tx_themes_buttoncontent` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `gridelements` (`tx_gridelements_container`,`tx_gridelements_columns`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,1,0,0,0,'',0,0,0,0,0,0,1431677827,1431677827,1,0,256,'header','TYPO3 Themes test',NULL,NULL,0,0,2,0,NULL,'0',0,0,NULL,NULL,0,0,3,'','','',0,'2','0','','',1,0,NULL,0,'','',0,0,0,0,0,0,NULL,'',0,'',0,'a:23:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'','',0,0,0,0,0,0,0,0,0,0,0,0,-2,'',0,0,0,'','','','','',0),(2,1,0,0,0,'',0,0,0,0,0,0,1431677901,1431677901,1,0,128,'text','','<span style=\"font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify; \">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>',NULL,0,0,2,0,NULL,'0',0,0,NULL,NULL,0,0,0,'','','',0,'0','0','','',1,0,NULL,0,'','',0,0,0,0,0,0,NULL,'',0,'',0,'a:24:{s:5:\"CType\";N;s:6:\"colPos\";N;s:16:\"sys_language_uid\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:11:\"rte_enabled\";N;s:6:\"layout\";N;s:11:\"spaceBefore\";N;s:10:\"spaceAfter\";N;s:13:\"section_frame\";N;s:18:\"tx_themes_variants\";N;s:20:\"tx_themes_responsive\";N;s:19:\"tx_themes_behaviour\";N;s:6:\"hidden\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:25:\"tx_gridelements_container\";N;}',NULL,'','',0,0,0,0,0,0,0,0,0,0,0,0,-2,'',0,0,0,'','','','','',0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) unsigned NOT NULL DEFAULT '1',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `downloadcounter` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `state` int(4) NOT NULL DEFAULT '0',
  `review_state` int(4) NOT NULL DEFAULT '0',
  `category` int(4) NOT NULL DEFAULT '0',
  `last_updated` int(11) unsigned NOT NULL DEFAULT '0',
  `serialized_dependencies` mediumtext,
  `author_name` varchar(150) NOT NULL DEFAULT '',
  `author_email` varchar(150) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext,
  `authorcompany` varchar(150) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT '0',
  `current_version` int(3) NOT NULL DEFAULT '0',
  `lastreviewedversion` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`),
  KEY `index_currentversions` (`current_version`,`review_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext,
  `wsdl_url` varchar(100) NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) NOT NULL DEFAULT '',
  `last_update` int(11) unsigned NOT NULL DEFAULT '0',
  `extension_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,0,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','http://typo3.org/wsdl/tx_ter_wsdl.php','http://repositories.typo3.org/mirrors.xml.gz',1346191200,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_gridelements_backend_layout`
--

DROP TABLE IF EXISTS `tx_gridelements_backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_gridelements_backend_layout` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `frame` int(11) NOT NULL DEFAULT '0',
  `description` text,
  `horizontal` tinyint(4) NOT NULL DEFAULT '0',
  `top_level_layout` tinyint(4) NOT NULL DEFAULT '0',
  `config` text,
  `pi_flexform_ds` mediumtext,
  `pi_flexform_ds_file` text,
  `icon` text,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_gridelements_backend_layout`
--

LOCK TABLES `tx_gridelements_backend_layout` WRITE;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_gridelements_backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` tinyint(3) NOT NULL DEFAULT '0',
  `item_uid` int(11) NOT NULL DEFAULT '0',
  `preset_data` blob,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rsaauth_keys`
--

DROP TABLE IF EXISTS `tx_rsaauth_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rsaauth_keys` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `key_value` text,
  PRIMARY KEY (`uid`),
  KEY `crdate` (`crdate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rsaauth_keys`
--

LOCK TABLES `tx_rsaauth_keys` WRITE;
/*!40000 ALTER TABLE `tx_rsaauth_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rsaauth_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_rtehtmlarea_acronym`
--

DROP TABLE IF EXISTS `tx_rtehtmlarea_acronym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_rtehtmlarea_acronym` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `sorting` int(11) unsigned NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `term` varchar(255) NOT NULL DEFAULT '',
  `acronym` varchar(255) NOT NULL DEFAULT '',
  `static_lang_isocode` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_rtehtmlarea_acronym`
--

LOCK TABLES `tx_rtehtmlarea_acronym` WRITE;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_rtehtmlarea_acronym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_themes_buttoncontent`
--

DROP TABLE IF EXISTS `tx_themes_buttoncontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_themes_buttoncontent` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `tstamp` int(11) NOT NULL DEFAULT '0',
  `crdate` int(11) NOT NULL DEFAULT '0',
  `cruser_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT '0',
  `t3ver_id` int(11) NOT NULL DEFAULT '0',
  `t3ver_wsid` int(11) NOT NULL DEFAULT '0',
  `t3ver_label` varchar(30) NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT '0',
  `t3ver_stage` int(11) NOT NULL DEFAULT '0',
  `t3ver_count` int(11) NOT NULL DEFAULT '0',
  `t3ver_tstamp` int(11) NOT NULL DEFAULT '0',
  `t3ver_move_id` int(11) NOT NULL DEFAULT '0',
  `t3_origuid` int(11) NOT NULL DEFAULT '0',
  `sys_language_uid` int(11) NOT NULL DEFAULT '0',
  `l10n_parent` int(11) NOT NULL DEFAULT '0',
  `l10n_diffsource` mediumblob NOT NULL,
  `sorting` int(10) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `hidden` tinyint(4) NOT NULL DEFAULT '0',
  `starttime` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `fe_group` varchar(100) NOT NULL DEFAULT '0',
  `linktext` varchar(1024) NOT NULL DEFAULT '',
  `linktarget` varchar(1024) NOT NULL DEFAULT '',
  `linktitle` varchar(1024) NOT NULL DEFAULT '',
  `icon` varchar(100) NOT NULL DEFAULT '0',
  `tt_content` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_themes_buttoncontent`
--

LOCK TABLES `tx_themes_buttoncontent` WRITE;
/*!40000 ALTER TABLE `tx_themes_buttoncontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_themes_buttoncontent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-15  8:21:41
