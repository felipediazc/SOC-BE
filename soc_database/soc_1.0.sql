-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: soc
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `soc`
--

/*!40000 DROP DATABASE IF EXISTS `soc`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `soc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `soc`;

--
-- Table structure for table `soc_anualinvoicerange`
--

DROP TABLE IF EXISTS `soc_anualinvoicerange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_anualinvoicerange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_currency`
--

DROP TABLE IF EXISTS `soc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `symbol` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_hearaboutus`
--

DROP TABLE IF EXISTS `soc_hearaboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_hearaboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_industry`
--

DROP TABLE IF EXISTS `soc_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_keys`
--

DROP TABLE IF EXISTS `soc_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_keys` (
  `keystr` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastused` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`keystr`,`userid`),
  KEY `user_fk` (`userid`),
  CONSTRAINT `user_fk` FOREIGN KEY (`userid`) REFERENCES `soc_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_projects`
--

DROP TABLE IF EXISTS `soc_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sponsor` varchar(200) NOT NULL,
  `userid` int(11) NOT NULL,
  `craeationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `users_fk` (`userid`),
  CONSTRAINT `users_fk` FOREIGN KEY (`userid`) REFERENCES `soc_users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_projecttargets`
--

DROP TABLE IF EXISTS `soc_projecttargets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_projecttargets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectid` int(11) NOT NULL,
  `targetid` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `value` varchar(200) NOT NULL,
  `unitmeasure` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_fk_idx` (`projectid`),
  KEY `target_fk_idx` (`targetid`),
  CONSTRAINT `project_fk` FOREIGN KEY (`projectid`) REFERENCES `soc_projects` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `target_fk` FOREIGN KEY (`targetid`) REFERENCES `soc_targets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_region`
--

DROP TABLE IF EXISTS `soc_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_targets`
--

DROP TABLE IF EXISTS `soc_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_users`
--

DROP TABLE IF EXISTS `soc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(60) NOT NULL,
  `password` varchar(45) NOT NULL,
  `soc_userscol` varchar(45) DEFAULT NULL,
  `hearaboutusid` int(11) NOT NULL,
  `other` varchar(45) DEFAULT NULL,
  `workersid` int(11) NOT NULL,
  `anualinvoiceid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `industryid` int(11) NOT NULL,
  `regionid` int(11) NOT NULL,
  `walkthrough` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `hearaboutus_fk_idx` (`hearaboutusid`),
  KEY `workers_fk_idx` (`workersid`),
  KEY `anualinvoice_fk_idx` (`anualinvoiceid`),
  KEY `currency_fk_idx` (`currencyid`),
  KEY `industry_fk_idx` (`industryid`),
  KEY `region_fk_idx` (`regionid`),
  CONSTRAINT `anualinvoice_fk` FOREIGN KEY (`anualinvoiceid`) REFERENCES `soc_anualinvoicerange` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `currency_fk` FOREIGN KEY (`currencyid`) REFERENCES `soc_currency` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hearaboutus_fk` FOREIGN KEY (`hearaboutusid`) REFERENCES `soc_hearaboutus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `industry_fk` FOREIGN KEY (`industryid`) REFERENCES `soc_industry` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `region_fk` FOREIGN KEY (`regionid`) REFERENCES `soc_region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `workers_fk` FOREIGN KEY (`workersid`) REFERENCES `soc_workersrange` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `soc_workersrange`
--

DROP TABLE IF EXISTS `soc_workersrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soc_workersrange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'soc'
--

--
-- Dumping routines for database 'soc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-26 16:31:37
