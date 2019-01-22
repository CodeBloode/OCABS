-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: codebloode
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6

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
-- Table structure for table `counsellor_auth`
--

DROP TABLE IF EXISTS `counsellor_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counsellor_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counsellor_auth`
--

LOCK TABLES `counsellor_auth` WRITE;
/*!40000 ALTER TABLE `counsellor_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `counsellor_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dean_auth`
--

DROP TABLE IF EXISTS `dean_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dean_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dean_auth`
--

LOCK TABLES `dean_auth` WRITE;
/*!40000 ALTER TABLE `dean_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `dean_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_auth`
--

DROP TABLE IF EXISTS `student_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_auth`
--

LOCK TABLES `student_auth` WRITE;
/*!40000 ALTER TABLE `student_auth` DISABLE KEYS */;
INSERT INTO `student_auth` VALUES (1,'Elvis','Mutende','SP13/00820/15','foYaWQggcZ+/xx7c5R8ru/26Ksp1q4eTUPyogzGRKVQ=','GPMFwIXG6bWGPr24h25l28ZAVDwvxe','2019-01-18 10:39:11');
/*!40000 ALTER TABLE `student_auth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-22 10:45:35
