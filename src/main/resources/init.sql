CREATE DATABASE  IF NOT EXISTS `fmc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `fmc`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: fmc
-- ------------------------------------------------------
-- Server version	5.6.15

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
-- Table structure for table `account_role`
--

DROP TABLE IF EXISTS `account_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `creater` int(11) DEFAULT NULL,
  `lastmod` date DEFAULT NULL,
  `modifyer` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_role`
--

LOCK TABLES `account_role` WRITE;
/*!40000 ALTER TABLE `account_role` DISABLE KEYS */;
INSERT INTO `account_role` VALUES (1,1,'2015-04-12',NULL,'2015-04-12',NULL,4,'A');
/*!40000 ALTER TABLE `account_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `creater` int(11) DEFAULT NULL,
  `lastmod` date DEFAULT NULL,
  `modifyer` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,'2015-03-25',NULL,'2015-03-25',NULL,4,4,'A'),(2,'2015-03-25',NULL,'2015-03-25',NULL,5,4,'A'),(3,'2015-03-25',NULL,'2015-03-25',NULL,6,4,'A'),(4,'2015-03-25',NULL,'2015-03-25',NULL,7,4,'A'),(5,'2015-03-25',NULL,'2015-03-25',NULL,8,4,'A'),(6,'2015-03-25',NULL,'2015-03-25',NULL,9,4,'A'),(7,'2015-03-25',NULL,'2015-03-25',NULL,10,4,'A'),(8,'2015-03-25',NULL,'2015-03-25',NULL,11,4,'A'),(9,'2015-03-25',NULL,'2015-03-25',NULL,12,4,'A'),(10,'2015-03-25',NULL,'2015-03-25',NULL,13,4,'A'),(11,'2015-03-25',NULL,'2015-03-25',NULL,14,4,'A'),(12,'2015-03-25',NULL,'2015-03-25',NULL,15,4,'A'),(13,'2015-03-25',NULL,'2015-03-25',NULL,16,4,'A'),(14,'2015-03-25',NULL,'2015-03-25',NULL,17,4,'A'),(15,'2015-03-25',NULL,'2015-03-25',NULL,18,4,'A'),(16,'2015-03-25',NULL,'2015-03-25',NULL,19,4,'A'),(17,'2015-03-25',NULL,'2015-03-25',NULL,20,4,'A'),(18,'2015-03-25',NULL,'2015-03-25',NULL,21,4,'A'),(19,'2015-03-25',NULL,'2015-03-25',NULL,22,4,'A'),(20,'2015-03-25',NULL,'2015-03-25',NULL,23,4,'A'),(21,'2015-03-25',NULL,'2015-03-25',NULL,24,4,'A'),(22,'2015-03-25',NULL,'2015-03-25',NULL,25,4,'A'),(23,'2015-03-25',NULL,'2015-03-25',NULL,26,4,'A'),(24,'2015-03-25',NULL,'2015-03-25',NULL,27,4,'A'),(25,'2015-03-25',NULL,'2015-03-25',NULL,28,4,'A'),(26,'2015-03-25',NULL,'2015-03-25',NULL,29,4,'A'),(27,'2015-03-25',NULL,'2015-03-25',NULL,30,4,'A'),(28,'2015-03-25',NULL,'2015-03-25',NULL,31,4,'A'),(29,'2015-03-25',NULL,'2015-03-25',NULL,32,4,'A'),(30,'2015-03-25',NULL,'2015-03-25',NULL,33,4,'A'),(31,'2015-03-25',NULL,'2015-03-25',NULL,34,4,'A'),(32,'2015-03-25',NULL,'2015-03-25',NULL,35,4,'A'),(33,'2015-03-25',NULL,'2015-03-25',NULL,36,4,'A'),(34,'2015-03-25',NULL,'2015-03-25',NULL,37,4,'A'),(35,'2015-03-25',NULL,'2015-03-25',NULL,38,4,'A'),(36,'2015-03-25',NULL,'2015-03-25',NULL,39,4,'A'),(37,'2015-03-25',NULL,'2015-03-25',NULL,40,4,'A'),(38,'2015-03-25',NULL,'2015-03-25',NULL,41,4,'A'),(39,'2015-03-25',NULL,'2015-03-25',NULL,42,4,'A'),(40,'2015-03-25',NULL,'2015-03-25',NULL,43,4,'A'),(41,'2015-03-25',NULL,'2015-03-25',NULL,44,4,'A'),(42,'2015-03-25',NULL,'2015-03-25',NULL,45,4,'A'),(43,'2015-03-25',NULL,'2015-03-25',NULL,46,4,'A'),(44,'2015-03-25',NULL,'2015-03-25',NULL,47,4,'A'),(45,'2015-03-25',NULL,'2015-03-25',NULL,48,4,'A'),(46,'2015-03-25',NULL,'2015-03-25',NULL,49,4,'A'),(47,'2015-03-25',NULL,'2015-03-25',NULL,50,4,'A'),(48,'2015-03-25',NULL,'2015-03-25',NULL,51,4,'A'),(49,'2015-03-25',NULL,'2015-03-25',NULL,52,4,'A'),(50,'2015-03-25',NULL,'2015-03-25',NULL,53,4,'A'),(51,'2015-03-25',NULL,'2015-03-25',NULL,54,4,'A'),(52,'2015-03-25',NULL,'2015-03-25',NULL,55,4,'A'),(53,'2015-03-25',NULL,'2015-03-25',NULL,56,4,'A'),(54,'2015-03-25',NULL,'2015-03-25',NULL,57,4,'A'),(55,'2015-03-25',NULL,'2015-03-25',NULL,58,4,'A'),(56,'2015-03-25',NULL,'2015-03-25',NULL,59,4,'A'),(57,'2015-03-25',NULL,'2015-03-25',NULL,60,4,'A'),(58,'2015-03-25',NULL,'2015-03-25',NULL,61,4,'A'),(59,'2015-03-25',NULL,'2015-03-25',NULL,62,4,'A'),(60,'2015-03-25',NULL,'2015-03-25',NULL,63,4,'A'),(61,'2015-03-25',NULL,'2015-03-25',NULL,64,4,'A'),(62,'2015-03-25',NULL,'2015-03-25',NULL,65,4,'A'),(63,'2015-03-25',NULL,'2015-03-25',NULL,66,4,'A'),(64,'2015-03-25',NULL,'2015-03-25',NULL,67,4,'A'),(65,'2015-03-25',NULL,'2015-03-25',NULL,68,4,'A'),(66,'2015-03-25',NULL,'2015-03-25',NULL,69,4,'A'),(67,'2015-03-25',NULL,'2015-03-25',NULL,70,4,'A'),(68,'2015-03-25',NULL,'2015-03-25',NULL,71,4,'A'),(69,'2015-03-25',NULL,'2015-03-25',NULL,72,4,'A'),(70,'2015-03-25',NULL,'2015-03-25',NULL,73,4,'A'),(71,'2015-03-25',NULL,'2015-03-25',NULL,74,4,'A'),(72,'2015-03-25',NULL,'2015-03-25',NULL,75,4,'A'),(73,'2015-03-25',NULL,'2015-03-25',NULL,76,4,'A'),(74,'2015-03-25',NULL,'2015-03-25',NULL,77,4,'A'),(75,'2015-03-25',NULL,'2015-03-25',NULL,78,4,'A'),(76,'2015-03-25',NULL,'2015-03-25',NULL,79,4,'A'),(77,'2015-03-25',NULL,'2015-03-25',NULL,80,4,'A'),(78,'2015-03-25',NULL,'2015-03-25',NULL,81,4,'A'),(79,'2015-03-25',NULL,'2015-03-25',NULL,82,4,'A'),(80,'2015-03-25',NULL,'2015-03-25',NULL,83,4,'A'),(81,'2015-03-25',NULL,'2015-03-25',NULL,84,4,'A'),(82,'2015-03-25',NULL,'2015-03-25',NULL,85,4,'A'),(83,'2015-03-25',NULL,'2015-03-25',NULL,86,4,'A'),(84,'2015-03-25',NULL,'2015-03-25',NULL,87,4,'A'),(85,'2015-03-25',NULL,'2015-03-25',NULL,88,4,'A'),(86,'2015-03-25',NULL,'2015-03-25',NULL,89,4,'A'),(87,'2015-03-25',NULL,'2015-03-25',NULL,90,4,'A'),(88,'2015-03-25',NULL,'2015-03-25',NULL,91,4,'A'),(89,'2015-03-25',NULL,'2015-03-25',NULL,92,4,'A'),(90,'2015-03-25',NULL,'2015-03-25',NULL,93,4,'A'),(91,'2015-03-25',NULL,'2015-03-25',NULL,94,4,'A'),(92,'2015-03-25',NULL,'2015-03-25',NULL,95,4,'A'),(93,'2015-03-25',NULL,'2015-03-25',NULL,96,4,'A'),(94,'2015-03-25',NULL,'2015-03-25',NULL,97,4,'A'),(95,'2015-03-25',NULL,'2015-03-25',NULL,98,4,'A'),(96,'2015-03-25',NULL,'2015-03-25',NULL,99,4,'A'),(97,'2015-03-25',NULL,'2015-03-25',NULL,100,4,'A'),(98,'2015-03-25',NULL,'2015-03-25',NULL,101,4,'A'),(99,'2015-03-25',NULL,'2015-03-25',NULL,102,4,'A'),(100,'2015-03-25',NULL,'2015-03-25',NULL,103,4,'A'),(101,'2015-03-25',NULL,'2015-03-25',NULL,104,4,'A'),(102,'2015-03-25',NULL,'2015-03-25',NULL,105,4,'A'),(103,'2015-03-25',NULL,'2015-03-25',NULL,9,5,'A'),(104,'2015-03-25',NULL,'2015-03-25',NULL,10,5,'A'),(105,'2015-03-25',NULL,'2015-03-25',NULL,11,5,'A'),(106,'2015-03-25',NULL,'2015-03-25',NULL,12,5,'A'),(107,'2015-03-25',NULL,'2015-03-25',NULL,13,5,'A'),(108,'2015-03-25',NULL,'2015-03-25',NULL,14,5,'A'),(109,'2015-03-25',NULL,'2015-03-25',NULL,15,5,'A'),(110,'2015-03-25',NULL,'2015-03-25',NULL,16,5,'A'),(111,'2015-03-25',NULL,'2015-03-25',NULL,17,5,'A'),(112,'2015-03-25',NULL,'2015-03-25',NULL,54,5,'A'),(113,'2015-03-25',NULL,'2015-03-25',NULL,55,5,'A'),(114,'2015-03-25',NULL,'2015-03-25',NULL,56,5,'A'),(115,'2015-03-25',NULL,'2015-03-25',NULL,57,5,'A'),(116,'2015-03-25',NULL,'2015-03-25',NULL,58,5,'A'),(117,'2015-03-25',NULL,'2015-03-25',NULL,59,5,'A'),(118,'2015-03-25',NULL,'2015-03-25',NULL,60,5,'A'),(119,'2015-03-25',NULL,'2015-03-25',NULL,61,5,'A'),(120,'2015-03-25',NULL,'2015-03-25',NULL,62,5,'A'),(121,'2015-03-25',NULL,'2015-03-25',NULL,9,7,'A'),(122,'2015-03-25',NULL,'2015-03-25',NULL,10,7,'A'),(123,'2015-03-25',NULL,'2015-03-25',NULL,11,7,'A'),(124,'2015-03-25',NULL,'2015-03-25',NULL,12,7,'A'),(125,'2015-03-25',NULL,'2015-03-25',NULL,13,7,'A'),(126,'2015-03-25',NULL,'2015-03-25',NULL,14,7,'A'),(127,'2015-03-25',NULL,'2015-03-25',NULL,15,7,'A'),(128,'2015-03-25',NULL,'2015-03-25',NULL,16,7,'A'),(129,'2015-03-25',NULL,'2015-03-25',NULL,17,7,'A'),(130,'2015-03-25',NULL,'2015-03-25',NULL,63,7,'A'),(131,'2015-03-25',NULL,'2015-03-25',NULL,64,7,'A'),(132,'2015-03-25',NULL,'2015-03-25',NULL,65,7,'A'),(133,'2015-03-25',NULL,'2015-03-25',NULL,66,7,'A'),(134,'2015-03-25',NULL,'2015-03-25',NULL,67,7,'A'),(135,'2015-03-25',NULL,'2015-03-25',NULL,9,8,'A'),(136,'2015-03-25',NULL,'2015-03-25',NULL,10,8,'A'),(137,'2015-03-25',NULL,'2015-03-25',NULL,11,8,'A'),(138,'2015-03-25',NULL,'2015-03-25',NULL,12,8,'A'),(139,'2015-03-25',NULL,'2015-03-25',NULL,13,8,'A'),(140,'2015-03-25',NULL,'2015-03-25',NULL,14,8,'A'),(141,'2015-03-25',NULL,'2015-03-25',NULL,15,8,'A'),(142,'2015-03-25',NULL,'2015-03-25',NULL,16,8,'A'),(143,'2015-03-25',NULL,'2015-03-25',NULL,17,8,'A'),(144,'2015-03-25',NULL,'2015-03-25',NULL,68,8,'A'),(145,'2015-03-25',NULL,'2015-03-25',NULL,69,8,'A'),(146,'2015-03-25',NULL,'2015-03-25',NULL,70,8,'A'),(147,'2015-03-25',NULL,'2015-03-25',NULL,71,8,'A'),(148,'2015-03-25',NULL,'2015-03-25',NULL,72,8,'A'),(149,'2015-03-25',NULL,'2015-03-25',NULL,9,9,'A'),(150,'2015-03-25',NULL,'2015-03-25',NULL,10,9,'A'),(151,'2015-03-25',NULL,'2015-03-25',NULL,11,9,'A'),(152,'2015-03-25',NULL,'2015-03-25',NULL,12,9,'A'),(153,'2015-03-25',NULL,'2015-03-25',NULL,13,9,'A'),(154,'2015-03-25',NULL,'2015-03-25',NULL,14,9,'A'),(155,'2015-03-25',NULL,'2015-03-25',NULL,15,9,'A'),(156,'2015-03-25',NULL,'2015-03-25',NULL,16,9,'A'),(157,'2015-03-25',NULL,'2015-03-25',NULL,17,9,'A'),(158,'2015-03-25',NULL,'2015-03-25',NULL,73,9,'A'),(159,'2015-03-25',NULL,'2015-03-25',NULL,74,9,'A'),(160,'2015-03-25',NULL,'2015-03-25',NULL,75,9,'A'),(161,'2015-03-25',NULL,'2015-03-25',NULL,76,9,'A'),(162,'2015-03-25',NULL,'2015-03-25',NULL,77,9,'A'),(163,'2015-03-25',NULL,'2015-03-25',NULL,78,9,'A'),(164,'2015-03-25',NULL,'2015-03-25',NULL,79,9,'A'),(165,'2015-03-25',NULL,'2015-03-25',NULL,80,9,'A'),(166,'2015-03-25',NULL,'2015-03-25',NULL,81,9,'A'),(167,'2015-03-25',NULL,'2015-03-25',NULL,4,2,'A'),(168,'2015-03-25',NULL,'2015-03-25',NULL,5,2,'A'),(169,'2015-03-25',NULL,'2015-03-25',NULL,6,2,'A'),(170,'2015-03-25',NULL,'2015-03-25',NULL,7,2,'A'),(171,'2015-03-25',NULL,'2015-03-25',NULL,8,2,'A'),(172,'2015-03-25',NULL,'2015-03-25',NULL,9,2,'A'),(173,'2015-03-25',NULL,'2015-03-25',NULL,10,2,'A'),(174,'2015-03-25',NULL,'2015-03-25',NULL,11,2,'A'),(175,'2015-03-25',NULL,'2015-03-25',NULL,12,2,'A'),(176,'2015-03-25',NULL,'2015-03-25',NULL,13,2,'A'),(177,'2015-03-25',NULL,'2015-03-25',NULL,14,2,'A'),(178,'2015-03-25',NULL,'2015-03-25',NULL,15,2,'A'),(179,'2015-03-25',NULL,'2015-03-25',NULL,16,2,'A'),(180,'2015-03-25',NULL,'2015-03-25',NULL,17,2,'A'),(181,'2015-03-25',NULL,'2015-03-25',NULL,18,2,'A'),(182,'2015-03-25',NULL,'2015-03-25',NULL,19,2,'A'),(183,'2015-03-25',NULL,'2015-03-25',NULL,20,2,'A'),(184,'2015-03-25',NULL,'2015-03-25',NULL,4,3,'A'),(185,'2015-03-25',NULL,'2015-03-25',NULL,5,3,'A'),(186,'2015-03-25',NULL,'2015-03-25',NULL,6,3,'A'),(187,'2015-03-25',NULL,'2015-03-25',NULL,7,3,'A'),(188,'2015-03-25',NULL,'2015-03-25',NULL,8,3,'A'),(189,'2015-03-25',NULL,'2015-03-25',NULL,9,3,'A'),(190,'2015-03-25',NULL,'2015-03-25',NULL,10,3,'A'),(191,'2015-03-25',NULL,'2015-03-25',NULL,11,3,'A'),(192,'2015-03-25',NULL,'2015-03-25',NULL,12,3,'A'),(193,'2015-03-25',NULL,'2015-03-25',NULL,13,3,'A'),(194,'2015-03-25',NULL,'2015-03-25',NULL,14,3,'A'),(195,'2015-03-25',NULL,'2015-03-25',NULL,15,3,'A'),(196,'2015-03-25',NULL,'2015-03-25',NULL,16,3,'A'),(197,'2015-03-25',NULL,'2015-03-25',NULL,17,3,'A'),(198,'2015-03-25',NULL,'2015-03-25',NULL,21,3,'A'),(199,'2015-03-25',NULL,'2015-03-25',NULL,22,3,'A'),(200,'2015-03-25',NULL,'2015-03-25',NULL,23,3,'A'),(201,'2015-03-25',NULL,'2015-03-25',NULL,24,3,'A'),(202,'2015-03-25',NULL,'2015-03-25',NULL,25,3,'A'),(203,'2015-03-25',NULL,'2015-03-25',NULL,26,3,'A'),(204,'2015-03-25',NULL,'2015-03-25',NULL,27,3,'A'),(205,'2015-03-25',NULL,'2015-03-25',NULL,28,3,'A'),(206,'2015-03-25',NULL,'2015-03-25',NULL,29,3,'A'),(207,'2015-03-25',NULL,'2015-03-25',NULL,30,3,'A'),(208,'2015-03-25',NULL,'2015-03-25',NULL,31,3,'A'),(209,'2015-03-25',NULL,'2015-03-25',NULL,32,3,'A'),(210,'2015-03-25',NULL,'2015-03-25',NULL,33,3,'A'),(211,'2015-03-25',NULL,'2015-03-25',NULL,34,3,'A'),(212,'2015-03-25',NULL,'2015-03-25',NULL,35,3,'A'),(213,'2015-03-25',NULL,'2015-03-25',NULL,36,3,'A'),(214,'2015-03-25',NULL,'2015-03-25',NULL,37,3,'A'),(215,'2015-03-25',NULL,'2015-03-25',NULL,9,1,'A'),(216,'2015-03-25',NULL,'2015-03-25',NULL,10,1,'A'),(217,'2015-03-25',NULL,'2015-03-25',NULL,11,1,'A'),(218,'2015-03-25',NULL,'2015-03-25',NULL,12,1,'A'),(219,'2015-03-25',NULL,'2015-03-25',NULL,13,1,'A'),(220,'2015-03-25',NULL,'2015-03-25',NULL,14,1,'A'),(221,'2015-03-25',NULL,'2015-03-25',NULL,15,1,'A'),(222,'2015-03-25',NULL,'2015-03-25',NULL,16,1,'A'),(223,'2015-03-25',NULL,'2015-03-25',NULL,17,1,'A'),(224,'2015-03-25',NULL,'2015-03-25',NULL,38,1,'A'),(225,'2015-03-25',NULL,'2015-03-25',NULL,39,1,'A'),(226,'2015-03-25',NULL,'2015-03-25',NULL,40,1,'A'),(227,'2015-03-25',NULL,'2015-03-25',NULL,41,1,'A'),(228,'2015-03-25',NULL,'2015-03-25',NULL,42,1,'A'),(229,'2015-03-25',NULL,'2015-03-25',NULL,43,1,'A'),(230,'2015-03-25',NULL,'2015-03-25',NULL,44,1,'A'),(231,'2015-03-25',NULL,'2015-03-25',NULL,45,1,'A'),(232,'2015-03-25',NULL,'2015-03-25',NULL,46,1,'A'),(233,'2015-03-25',NULL,'2015-03-25',NULL,9,12,'A'),(234,'2015-03-25',NULL,'2015-03-25',NULL,10,12,'A'),(235,'2015-03-25',NULL,'2015-03-25',NULL,11,12,'A'),(236,'2015-03-25',NULL,'2015-03-25',NULL,12,12,'A'),(237,'2015-03-25',NULL,'2015-03-25',NULL,13,12,'A'),(238,'2015-03-25',NULL,'2015-03-25',NULL,14,12,'A'),(239,'2015-03-25',NULL,'2015-03-25',NULL,15,12,'A'),(240,'2015-03-25',NULL,'2015-03-25',NULL,16,12,'A'),(241,'2015-03-25',NULL,'2015-03-25',NULL,17,12,'A'),(242,'2015-03-25',NULL,'2015-03-25',NULL,94,12,'A'),(243,'2015-03-25',NULL,'2015-03-25',NULL,95,12,'A'),(244,'2015-03-25',NULL,'2015-03-25',NULL,96,12,'A'),(245,'2015-03-25',NULL,'2015-03-25',NULL,97,12,'A'),(246,'2015-03-25',NULL,'2015-03-25',NULL,98,12,'A'),(247,'2015-03-25',NULL,'2015-03-25',NULL,9,11,'A'),(248,'2015-03-25',NULL,'2015-03-25',NULL,10,11,'A'),(249,'2015-03-25',NULL,'2015-03-25',NULL,11,11,'A'),(250,'2015-03-25',NULL,'2015-03-25',NULL,12,11,'A'),(251,'2015-03-25',NULL,'2015-03-25',NULL,13,11,'A'),(252,'2015-03-25',NULL,'2015-03-25',NULL,14,11,'A'),(253,'2015-03-25',NULL,'2015-03-25',NULL,15,11,'A'),(254,'2015-03-25',NULL,'2015-03-25',NULL,16,11,'A'),(255,'2015-03-25',NULL,'2015-03-25',NULL,17,11,'A'),(256,'2015-03-25',NULL,'2015-03-25',NULL,91,11,'A'),(257,'2015-03-25',NULL,'2015-03-25',NULL,92,11,'A'),(258,'2015-03-25',NULL,'2015-03-25',NULL,93,11,'A'),(259,'2015-03-25',NULL,'2015-03-25',NULL,9,10,'A'),(260,'2015-03-25',NULL,'2015-03-25',NULL,10,10,'A'),(261,'2015-03-25',NULL,'2015-03-25',NULL,11,10,'A'),(262,'2015-03-25',NULL,'2015-03-25',NULL,12,10,'A'),(263,'2015-03-25',NULL,'2015-03-25',NULL,13,10,'A'),(264,'2015-03-25',NULL,'2015-03-25',NULL,14,10,'A'),(265,'2015-03-25',NULL,'2015-03-25',NULL,15,10,'A'),(266,'2015-03-25',NULL,'2015-03-25',NULL,16,10,'A'),(267,'2015-03-25',NULL,'2015-03-25',NULL,17,10,'A'),(268,'2015-03-25',NULL,'2015-03-25',NULL,82,10,'A'),(269,'2015-03-25',NULL,'2015-03-25',NULL,83,10,'A'),(270,'2015-03-25',NULL,'2015-03-25',NULL,84,10,'A'),(271,'2015-03-25',NULL,'2015-03-25',NULL,85,10,'A'),(272,'2015-03-25',NULL,'2015-03-25',NULL,86,10,'A'),(273,'2015-03-25',NULL,'2015-03-25',NULL,87,10,'A'),(274,'2015-03-25',NULL,'2015-03-25',NULL,88,10,'A'),(275,'2015-03-25',NULL,'2015-03-25',NULL,89,10,'A'),(276,'2015-03-25',NULL,'2015-03-25',NULL,90,10,'A'),(277,'2015-03-25',NULL,'2015-03-25',NULL,9,6,'A'),(278,'2015-03-25',NULL,'2015-03-25',NULL,10,6,'A'),(279,'2015-03-25',NULL,'2015-03-25',NULL,11,6,'A'),(280,'2015-03-25',NULL,'2015-03-25',NULL,12,6,'A'),(281,'2015-03-25',NULL,'2015-03-25',NULL,13,6,'A'),(282,'2015-03-25',NULL,'2015-03-25',NULL,14,6,'A'),(283,'2015-03-25',NULL,'2015-03-25',NULL,15,6,'A'),(284,'2015-03-25',NULL,'2015-03-25',NULL,16,6,'A'),(285,'2015-03-25',NULL,'2015-03-25',NULL,17,6,'A'),(286,'2015-03-25',NULL,'2015-03-25',NULL,47,6,'A'),(287,'2015-03-25',NULL,'2015-03-25',NULL,48,6,'A'),(288,'2015-03-25',NULL,'2015-03-25',NULL,49,6,'A'),(289,'2015-03-25',NULL,'2015-03-25',NULL,50,6,'A'),(290,'2015-03-25',NULL,'2015-03-25',NULL,51,6,'A'),(291,'2015-03-25',NULL,'2015-03-25',NULL,52,6,'A'),(292,'2015-03-25',NULL,'2015-03-25',NULL,53,6,'A'),(293,'2015-04-13',NULL,'2015-04-13',NULL,9,13,'A'),(294,'2015-04-13',NULL,'2015-04-13',NULL,10,13,'A'),(295,'2015-04-13',NULL,'2015-04-13',NULL,11,13,'A'),(296,'2015-04-13',NULL,'2015-04-13',NULL,12,13,'A'),(297,'2015-04-13',NULL,'2015-04-13',NULL,13,13,'A'),(298,'2015-04-13',NULL,'2015-04-13',NULL,14,13,'A'),(299,'2015-04-13',NULL,'2015-04-13',NULL,15,13,'A'),(300,'2015-04-13',NULL,'2015-04-13',NULL,16,13,'A'),(301,'2015-04-13',NULL,'2015-04-13',NULL,17,13,'A');
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(250) NOT NULL DEFAULT '0' COMMENT '用户类型，EMPLOYEE, CUSTOMER, ADMIN',
  `user_password` varchar(250) NOT NULL COMMENT '用户密码，加密后存储。',
  `user_name` varchar(250) NOT NULL COMMENT '用户登录账号名。',
  `user_role` varchar(250) NOT NULL COMMENT '用户角色，如果user_type是CUMTOMER或ADMIN，则user_role是CUSTOMER或ADMIN. 否则，代表在公司的角色。这个角色涉及权限。包括 SHICHANGZHUANYUAN,  SHICHANGZHUGUAN, CAIGOUZHUGUAN, SHEJIZHUGUAN, CAIWUZHUGUAN, SHENGCHANZHUGUAN, ZHIJIANZHUGUAN, WULIUZHUGUAN',
  `nick_name` varchar(250) NOT NULL COMMENT '用户姓名，冗余字段。对应customer_name和employee_name',
  `big_avatar` varchar(250) DEFAULT NULL COMMENT '大头像',
  `small_avatar` varchar(250) DEFAULT NULL COMMENT '小头像',
  `password_cookie_value` varchar(250) DEFAULT NULL,
  `password_cookie_time` datetime DEFAULT NULL,
  `user_cookie_time` datetime DEFAULT NULL,
  `user_cookie_value` varchar(250) DEFAULT NULL,
  `reset_link_fail_time` datetime DEFAULT NULL,
  `validate_code` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,1,'ADMIN','21232f297a57a5a743894a0e4a801fc3','admin','ADMIN','管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `creater` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `lastmod` date DEFAULT NULL,
  `modifyer` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `sort` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'2015-03-17',NULL,'设计部','2015-03-25',NULL,'designManager','1','A'),(2,'2015-03-17',NULL,'市场主管','2015-03-25',NULL,'marketManager','1','A'),(3,'2015-03-25',NULL,'市场专员','2015-03-25',NULL,'marketStaff','1','A'),(4,'2015-03-25',NULL,'管理员','2015-03-25',NULL,'ADMIN','1','A'),(5,'2015-03-25',NULL,'采购部','2015-03-25',NULL,'purchaseManager','1','A'),(6,'2015-03-25',NULL,'工艺部','2015-03-25',NULL,'workCraftMangager','1','A'),(7,'2015-03-25',NULL,'生产部','2015-03-25',NULL,'produceManager','1','A'),(8,'2015-03-25',NULL,'毛衣制作部','2015-03-25',NULL,'SweaterMakeManager','1','A'),(9,'2015-03-25',NULL,'财务部','2015-03-25',NULL,'financeManager','1','A'),(10,'2015-03-25',NULL,'物流部','2015-03-25',NULL,'logisticsManager','1','A'),(11,'2015-03-25',NULL,'质检部','2015-03-25',NULL,'qualityManager','1','A'),(12,'2015-03-25',NULL,'人事部','2015-03-25',NULL,'humanManager','1','A'),(13,'2015-04-13',NULL,'客户','2015-04-13',NULL,'CUSTOMER','1','A');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `PERMISSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CREATED` date DEFAULT NULL,
  `CREATER` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ICONCLS` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ISUSED` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `MODIFYER` int(11) DEFAULT NULL,
  `MYID` varchar(55) COLLATE utf8_bin DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PID` int(11) DEFAULT NULL,
  `PNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `STATE` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `URL` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`PERMISSION_ID`),
  UNIQUE KEY `PERMISSION_ID` (`PERMISSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (4,'2015-03-20',NULL,'客户管理',NULL,'Y','2015-03-20',NULL,'ROLE_customer','客户管理',NULL,NULL,1,'open','A','F','/customer'),(5,'2015-03-20',NULL,'新建客户',NULL,'Y','2015-03-20',NULL,'addCustomerDetail','新建客户',4,'客户管理',1,'open','A','F','/account/addCustomerDetail.do'),(6,'2015-03-20',NULL,'新建客户',NULL,'Y','2015-03-20',NULL,'Search','新建客户',5,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(7,'2015-03-20',NULL,'查看客户',NULL,'Y','2015-03-20',NULL,'customerList','查看客户',4,'客户管理',2,'open','A','F','/account/customerList.do'),(8,'2015-03-20',NULL,'查看客户',NULL,'Y','2015-03-20',NULL,'Search','查看客户',7,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(9,'2015-03-20',NULL,'订单管理',NULL,'Y','2015-03-20',NULL,'ROLE_order','订单管理',NULL,NULL,1,'open','A','F','/order'),(10,'2015-03-20',NULL,'查看所有订单',NULL,'Y','2015-03-20',NULL,'orderList','查看所有订单',9,'订单管理',1,'open','A','F','/order/orderList.do'),(11,'2015-03-20',NULL,'查看所有订单',NULL,'Y','2015-03-20',NULL,'Search','查看所有订单',10,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(12,'2015-03-20',NULL,'已经完成订单',NULL,'Y','2015-03-20',NULL,'orderListDone','已经完成订单',9,'订单管理',2,'open','A','F','/order/orderListDone.do'),(13,'2015-03-20',NULL,'已经完成订单',NULL,'Y','2015-03-20',NULL,'Search','已经完成订单',12,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(14,'2015-03-20',NULL,'被终止订单',NULL,'Y','2015-03-20',NULL,'endList','被终止订单',9,'订单管理',3,'open','A','F','/order/endList.do'),(15,'2015-03-20',NULL,'被终止订单',NULL,'Y','2015-03-20',NULL,'Search','被终止订单',14,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(16,'2015-03-20',NULL,'修改订单',NULL,'','2015-03-20',NULL,'modifyOrderList','修改订单',9,'订单管理',4,'open','A','F','/account/modifyOrderList.do'),(17,'2015-03-20',NULL,'修改订单',NULL,'Y','2015-03-20',NULL,'Search','修改订单',16,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(18,'2015-03-20',NULL,'市场主管',NULL,'Y','2015-03-20',NULL,'ROLE_IS_MARKET_MANAGER_OR_ADMIN','市场主管',NULL,NULL,1,'open','A','F','/market'),(19,'2015-03-20',NULL,'审核报价',NULL,'Y','2015-03-20',NULL,'verifyQuoteLis','审核报价',18,'市场主管',1,'open','A','F','/market/verifyQuoteList.do'),(20,'2015-03-20',NULL,'审核报价',NULL,'Y','2015-03-20',NULL,'Search','审核报价',19,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(21,'2015-03-20',NULL,'市场部',NULL,'Y','2015-03-20',NULL,'ROLE_IS_MARKET_STAFF_OR_ADMIN','市场部',NULL,NULL,1,'open','A','F','/market'),(22,'2015-03-20',NULL,'客户下单',NULL,'Y','2015-03-20',NULL,'addOrderList','客户下单',21,'市场部',1,'open','A','F','/market/addOrderList.do'),(23,'2015-03-20',NULL,'客户下单',NULL,'Y','2015-03-20',NULL,'Search','客户下单',22,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(24,'2015-03-20',NULL,'修改询单',NULL,'Y','2015-03-20',NULL,'modifyOrderList','修改询单',21,'市场部',2,'open','A','F','/market/modifyOrderList.do'),(25,'2015-03-20',NULL,'修改询单',NULL,'Y','2015-03-20',NULL,'Search','修改询单',24,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(26,'2015-03-20',NULL,'合并报价',NULL,'Y','2015-03-20',NULL,'mergeQuoteList','合并报价',21,'市场部',3,'open','A','F','/market/mergeQuoteList.do'),(27,'2015-03-20',NULL,'合并报价',NULL,'Y','2015-03-20',NULL,'Search','合并报价',26,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(28,'2015-03-20',NULL,'报价商定',NULL,'','2015-03-20',NULL,'confirmQuoteList.','报价商定',21,'市场部',4,'open','A','F','/market/confirmQuoteList.do'),(29,'2015-03-20',NULL,'报价商定',NULL,'Y','2015-03-20',NULL,'Search','报价商定',28,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(30,'2015-03-20',NULL,'修改报价',NULL,'','2015-03-20',NULL,'modifyQuoteList','修改报价',21,'市场部',5,'open','A','F','/market/modifyQuoteList.do'),(31,'2015-03-20',NULL,'修改报价',NULL,'Y','2015-03-20',NULL,'Search','修改报价',30,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(32,'2015-03-20',NULL,'确认大货加工单并签订合同',NULL,'Y','2015-03-20',NULL,'confirmProduceOrderList','确认大货加工单并签订合同',21,'市场部',6,'open','A','F','/market/confirmProduceOrderList.do'),(33,'2015-03-20',NULL,'确认大货加工单并签订合同',NULL,'Y','2015-03-20',NULL,'Search','确认大货加工单并签订合同',32,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(34,'2015-03-20',NULL,'催尾款',NULL,'Y','2015-03-20',NULL,'getPushRestOrderList','催尾款',21,'市场部',7,'open','A','F','/market/getPushRestOrderList.do'),(35,'2015-03-20',NULL,'催尾款',NULL,'Y','2015-03-20',NULL,'Search','催尾款',34,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(36,'2015-03-20',NULL,'修改大货合同',NULL,'','2015-03-20',NULL,'modifyProductList','修改大货合同',21,'市场部',8,'open','A','F','/market/modifyProductList.do'),(37,'2015-03-20',NULL,'修改大货合同',NULL,'Y','2015-03-20',NULL,'Search','修改大货合同',36,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(38,'2015-03-20',NULL,'设计部',NULL,'Y','2015-03-20',NULL,'ROLE_design','设计部',NULL,NULL,1,'open','A','F','/design'),(39,'2015-03-20',NULL,'设计验证',NULL,'Y','2015-03-20',NULL,'verifyDesignList','设计验证',38,'设计部',1,'open','A','F','/design/verifyDesignList.do'),(40,'2015-03-20',NULL,'设计验证',NULL,'Y','2015-03-20',NULL,'Search','设计验证',39,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(41,'2015-03-20',NULL,'样衣版型录入及生产',NULL,'Y','2015-03-20',NULL,'uploadDegisn','样衣版型录入及生产',38,'设计部',2,'open','A','F','/design/getUploadDesignList.do'),(42,'2015-03-20',NULL,'样衣版型录入及生产',NULL,'Y','2015-03-20',NULL,'Search','样衣版型录入及生产',41,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(43,'2015-03-20',NULL,'排版切片',NULL,'Y','2015-03-20',NULL,'getTypeSettingSlice','排版切片',38,'设计部',3,'open','A','F','/design/getTypeSettingSliceList.do'),(44,'2015-03-20',NULL,'排版切片',NULL,'Y','2015-03-20',NULL,'Search','排版切片',43,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(45,'2015-03-20',NULL,'确认版型',NULL,'Y','2015-03-20',NULL,'getConfirmCad','确认版型',38,'设计部',4,'open','A','F','/design/getConfirmCadList.do'),(46,'2015-03-20',NULL,'确认版型',NULL,'Y','2015-03-20',NULL,'Search','确认版型',45,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(47,'2015-03-20',NULL,'工艺部',NULL,'Y','2015-03-20',NULL,'ROLE_design','工艺部',NULL,NULL,1,'open','A','F','/design'),(48,'2015-03-20',NULL,'设计工艺验证',NULL,'Y','2015-03-20',NULL,'computeDesignCost','设计工艺验证',47,'工艺部',1,'open','A','F','/design/computeDesignCostList.do'),(49,'2015-03-20',NULL,'设计工艺验证',NULL,'Y','2015-03-20',NULL,'Search','设计工艺验证',48,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(50,'2015-03-20',NULL,'样衣工艺制作',NULL,'Y','2015-03-20',NULL,'getNeedCraftSample','样衣工艺制作',47,'工艺部',2,'open','A','F','/design/getNeedCraftSampleList.do'),(51,'2015-03-20',NULL,'样衣工艺制作',NULL,'Y','2015-03-20',NULL,'Search','样衣工艺制作',50,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(52,'2015-03-20',NULL,'大货工艺制作',NULL,'Y','2015-03-20',NULL,'getNeedCraftProduct','大货工艺制作',47,'工艺部',3,'open','A','F','/design/getNeedCraftProductList.do'),(53,'2015-03-20',NULL,'大货工艺制作',NULL,'Y','2015-03-20',NULL,'Search','大货工艺制作',52,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(54,'2015-03-20',NULL,'采购部',NULL,'Y','2015-03-20',NULL,'ROLE_buy','采购部',NULL,NULL,1,'open','A','F','/buy'),(55,'2015-03-20',NULL,'采购成本验证并核算',NULL,'Y','2015-03-20',NULL,'computePurchaseCost','采购成本验证并核算',54,'采购部',1,'open','A','F','/buy/computePurchaseCostList.do'),(56,'2015-03-20',NULL,'采购成本验证并核算',NULL,'Y','2015-03-20',NULL,'Search','采购成本验证并核算',55,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(57,'2015-03-20',NULL,'样衣采购',NULL,'Y','2015-03-20',NULL,'purchaseSampleMaterial','样衣采购',54,'采购部',2,'open','A','F','/buy/purchaseSampleMaterialList.do'),(58,'2015-03-20',NULL,'样衣采购',NULL,'Y','2015-03-20',NULL,'Search','样衣采购',57,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(59,'2015-03-20',NULL,'大货面料采购确认',NULL,'Y','2015-03-20',NULL,'purchaseMaterial','大货面料采购确认',54,'采购部',3,'open','A','F','/buy/purchaseMaterialList.do'),(60,'2015-03-20',NULL,'大货面料采购确认',NULL,'Y','2015-03-20',NULL,'Search','大货面料采购确认',59,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(61,'2015-03-20',NULL,'毛衣面料采购',NULL,'','2015-03-20',NULL,'purchaseSweaterMaterial','毛衣面料采购',54,'采购部',4,'open','A','F','/buy/purchaseSweaterMaterialList.do'),(62,'2015-03-20',NULL,'毛衣面料采购',NULL,'Y','2015-03-20',NULL,'Search','毛衣面料采购',61,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(63,'2015-03-20',NULL,'生产部',NULL,'Y','2015-03-20',NULL,'ROLE_produce','生产部',NULL,NULL,1,'open','A','F','/produce'),(64,'2015-03-20',NULL,'生产成本验证并核算',NULL,'Y','2015-03-20',NULL,'computeProduceCost','生产成本验证并核算',63,'生产部',1,'open','A','F','/produce/computeProduceCostList.do'),(65,'2015-03-20',NULL,'生产成本验证并核算',NULL,'Y','2015-03-20',NULL,'Search','生产成本验证并核算',64,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(66,'2015-03-20',NULL,'大货批量生产',NULL,'Y','2015-03-20',NULL,'produce','大货批量生产',63,'生产部',2,'open','A','F','/produce/produceList.do'),(67,'2015-03-20',NULL,'大货批量生产',NULL,'Y','2015-03-20',NULL,'Search','大货批量生产',66,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(68,'2015-03-20',NULL,'毛衣制作部',NULL,'Y','2015-03-20',NULL,'ROLE_sweater','毛衣制作部',NULL,NULL,1,'open','A','F','/sweater'),(69,'2015-03-20',NULL,'样衣确认和工艺制作',NULL,'Y','2015-03-20',NULL,'sweaterSampleAndCraft','样衣确认和工艺制作',68,'毛衣制作部',1,'open','A','F','/sweater/sweaterSampleAndCraftList.do'),(70,'2015-03-20',NULL,'样衣确认和工艺制作',NULL,'Y','2015-03-20',NULL,'Search','样衣确认和工艺制作',69,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(71,'2015-03-20',NULL,'毛衣外发',NULL,'Y','2015-03-20',NULL,'sendSweater','毛衣外发',68,'毛衣制作部',2,'open','A','F','/sweater/sendSweaterList.do'),(72,'2015-03-20',NULL,'毛衣外发',NULL,'Y','2015-03-20',NULL,'Search','毛衣外发',71,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(73,'2015-03-20',NULL,' 财务部',NULL,'Y','2015-03-20',NULL,'ROLE_finance',' 财务部',NULL,NULL,1,'open','A','F','/finance'),(74,'2015-03-20',NULL,'样衣费确认',NULL,'Y','2015-03-20',NULL,'confirmSampleMoney','样衣费确认',73,' 财务部',1,'open','A','F','/finance/confirmSampleMoneyList.do'),(75,'2015-03-20',NULL,'样衣费确认',NULL,'Y','2015-03-20',NULL,'Search','样衣费确认',74,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(76,'2015-03-20',NULL,'首定金确认',NULL,'Y','2015-03-20',NULL,'confirmDeposit','首定金确认',73,' 财务部',2,'open','A','F','/finance/confirmDepositList.do'),(77,'2015-03-20',NULL,'首定金确认',NULL,'Y','2015-03-20',NULL,'Search','首定金确认',76,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(78,'2015-03-20',NULL,'退还定金',NULL,'Y','2015-03-20',NULL,'returnDeposit','退还定金',73,' 财务部',3,'open','A','F','/finance/returnDepositList.do'),(79,'2015-03-20',NULL,'退还定金',NULL,'Y','2015-03-20',NULL,'Search','退还定金',78,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(80,'2015-03-20',NULL,'尾款金确认',NULL,'Y','2015-03-20',NULL,'confirmFinalPayment','尾款金确认',73,' 财务部',4,'open','A','F','/finance/confirmFinalPaymentList.do'),(81,'2015-03-20',NULL,'尾款金确认',NULL,'Y','2015-03-20',NULL,'Search','尾款金确认',80,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(82,'2015-03-20',NULL,'物流部',NULL,'Y','2015-03-20',NULL,'ROLE_logistics','物流部',NULL,NULL,1,'open','A','F','/logistics'),(83,'2015-03-20',NULL,'样衣收取',NULL,'Y','2015-03-20',NULL,'receiveSample','样衣收取',82,'物流部',1,'open','A','F','/logistics/receiveSampleList.do'),(84,'2015-03-20',NULL,'样衣收取',NULL,'Y','2015-03-20',NULL,'Search','样衣收取',83,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(85,'2015-03-20',NULL,'样衣发货',NULL,'Y','2015-03-20',NULL,'sendSample','样衣发货',82,'物流部',2,'open','A','F','/logistics/sendSampleList'),(86,'2015-03-20',NULL,'样衣发货',NULL,'Y','2015-03-20',NULL,'Search','样衣发货',85,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(87,'2015-03-20',NULL,'产品入库',NULL,'Y','2015-03-20',NULL,'warehouse','产品入库',82,'物流部',3,'open','A','F','/logistics/warehouseList.do'),(88,'2015-03-20',NULL,'产品入库',NULL,'Y','2015-03-20',NULL,'Search','产品入库',87,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(89,'2015-03-20',NULL,'产品发货',NULL,'Y','2015-03-20',NULL,'sendClothes','产品发货',82,'物流部',4,'open','A','F','/logistics/sendClothesList.do'),(90,'2015-03-20',NULL,'产品发货',NULL,'Y','2015-03-20',NULL,'Search','产品发货',89,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(91,'2015-03-20',NULL,'质检部',NULL,'Y','2015-03-20',NULL,'ROLE_quality','质检部',NULL,NULL,1,'open','A','F','/quality'),(92,'2015-03-20',NULL,'质量检查',NULL,'Y','2015-03-20',NULL,'checkQuality','质量检查',91,'质检部',1,'open','A','F','/quality/checkQualityList.do'),(93,'2015-03-20',NULL,'质量检查',NULL,'Y','2015-03-20',NULL,'Search','质量检查',92,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(94,'2015-03-20',NULL,'人事部',NULL,'Y','2015-03-20',NULL,'ROLE_employee','人事部',NULL,NULL,1,'open','A','F','/account'),(95,'2015-03-20',NULL,'添加员工',NULL,'Y','2015-03-20',NULL,'addEmployeeDetail','添加员工',94,'人事部',1,'open','A','F','/account/addEmployeeDetail.do'),(96,'2015-03-20',NULL,'添加员工',NULL,'Y','2015-03-20',NULL,'Search','添加员工',95,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(97,'2015-03-20',NULL,'查看员工',NULL,'Y','2015-03-20',NULL,'employee','查看员工',94,'人事部',2,'open','A','F','/account/employeeList.do'),(98,'2015-03-20',NULL,'查看员工',NULL,'Y','2015-03-20',NULL,'Search','查看员工',97,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(99,'2015-03-20',NULL,'系统管理',NULL,'Y','2015-03-20',NULL,'ROLE_system','系统管理',NULL,NULL,1,'open','A','F','/system'),(100,'2015-03-20',NULL,'模组资料',NULL,'Y','2015-03-20',NULL,'moduleMessages','模组资料',99,'系统管理',1,'open','A','F','/system/moduleMessages.do'),(101,'2015-03-20',NULL,'模组资料',NULL,'Y','2015-03-20',NULL,'Search','模组资料',100,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(102,'2015-03-20',NULL,'权限设置',NULL,'Y','2015-03-20',NULL,'rolePrivilege','权限设置',99,'系统管理',2,'open','A','F','/system/rolePrivilege.do'),(103,'2015-03-20',NULL,'权限设置',NULL,'Y','2015-03-20',NULL,'Search','权限设置',102,NULL,1,NULL,'A',NULL,'javascript:void(0);'),(104,'2015-03-20',NULL,'角色分配',NULL,'Y','2015-03-20',NULL,'roleAss','角色分配',99,'系统管理',3,'open','A','F','/system/roleAss.do'),(105,'2015-03-20',NULL,'角色分配',NULL,'Y','2015-03-20',NULL,'Search','角色分配',104,NULL,1,NULL,'A',NULL,'javascript:void(0);');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-13 16:57:31
