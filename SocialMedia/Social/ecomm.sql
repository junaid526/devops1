-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomm
-- ------------------------------------------------------
-- Server version	5.6.26-log

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
-- Table structure for table `addprod`
--

DROP TABLE IF EXISTS `addprod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addprod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prodname` varchar(20) DEFAULT NULL,
  `brandname` varchar(20) DEFAULT NULL,
  `Price` varchar(20) DEFAULT NULL,
  `warranty` varchar(20) DEFAULT NULL,
  `filename` varchar(20) DEFAULT NULL,
  `path` varchar(90) DEFAULT NULL,
  `Ecommercename` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addprod`
--

LOCK TABLES `addprod` WRITE;
/*!40000 ALTER TABLE `addprod` DISABLE KEYS */;
INSERT INTO `addprod` VALUES (1,'samsung galxy','samsung','20000','1year',NULL,NULL,NULL),(2,'laptop','dell','10000','1year',NULL,NULL,NULL);
/*!40000 ALTER TABLE `addprod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `send_request`
--

DROP TABLE IF EXISTS `send_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `send_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dob` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `from_name` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `send_request`
--

LOCK TABLES `send_request` WRITE;
/*!40000 ALTER TABLE `send_request` DISABLE KEYS */;
INSERT INTO `send_request` VALUES (1,'9/3/45','Activated','1','2','FEMALE');
/*!40000 ALTER TABLE `send_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendrecom`
--

DROP TABLE IF EXISTS `sendrecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sendrecom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productname` varchar(30) DEFAULT NULL,
  `brandname` varchar(30) DEFAULT NULL,
  `Price` varchar(30) DEFAULT NULL,
  `warranty` varchar(30) DEFAULT NULL,
  `from_name` varchar(40) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendrecom`
--

LOCK TABLES `sendrecom` WRITE;
/*!40000 ALTER TABLE `sendrecom` DISABLE KEYS */;
INSERT INTO `sendrecom` VALUES (1,'samsung galxy','samsung','20000','1year','1','Activated'),(2,'samsung galxy','samsung','20000','1year','1','Activated'),(3,'samsung galxy','samsung','20000','1year','1','Activated'),(4,'samsung galxy','samsung','20000','1year','1','Activated');
/*!40000 ALTER TABLE `sendrecom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uregis`
--

DROP TABLE IF EXISTS `uregis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uregis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Password` varchar(20) DEFAULT NULL,
  `CPassword` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Mobile` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uregis`
--

LOCK TABLES `uregis` WRITE;
/*!40000 ALTER TABLE `uregis` DISABLE KEYS */;
INSERT INTO `uregis` VALUES (1,'1','1','4/6/94','chennai','career@gmail.com','9977668855','Waiting','FEMALE','1'),(2,'2','2','9/3/45','xc','io@gmail.com','044 42148758','Waiting','FEMALE','2'),(3,'user','user','9/3/45','cmbt','nan@gmail.com','9977668855','Waiting','FEMALE','user');
/*!40000 ALTER TABLE `uregis` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-18 14:01:59
