<<<<<<< HEAD
-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: codebloode
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6
=======
-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2019 at 02:26 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
<<<<<<< HEAD
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
=======

--
-- Database: `codebloode`
--

-- --------------------------------------------------------
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Table structure for table `appointment`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `appId` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `eTime` time(6) NOT NULL,
  `counsNo` varchar(12) DEFAULT NULL,
  `regNo` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `foreign key` (`regNo`),
  CONSTRAINT `foreign key` FOREIGN KEY (`regNo`) REFERENCES `student` (`regNo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
=======
CREATE TABLE `appointment` (
  `appId` int(4) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL,
  `counsNo` varchar(12) DEFAULT NULL,
  `regNo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Dumping data for table `appointment`
--

<<<<<<< HEAD
LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,'0000-00-00','09:15:00.000000','00:00:00.000000','1',NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;
=======
INSERT INTO `appointment` (`appId`, `date`, `time`, `counsNo`, `regNo`) VALUES
(0, '0000-00-00', '09:15:00.000000', '1', NULL);

-- --------------------------------------------------------
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Table structure for table `counsellor`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `counsellor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
=======
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
CREATE TABLE `counsellor` (
  `counsNo` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(13) NOT NULL,
  `gender` char(1) NOT NULL,
<<<<<<< HEAD
  `password` varchar(75) NOT NULL,
  `salt` varchar(75) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`counsNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counsellor`
--

LOCK TABLES `counsellor` WRITE;
/*!40000 ALTER TABLE `counsellor` DISABLE KEYS */;
INSERT INTO `counsellor` VALUES ('counsellor1','Peter Keter','keter@gmail.com','0712131415','M','ytSc7X4leVhg+wa6tEdX7iNKTM95QfK0PGQ2SojIMSM=','4dM0svX1TGWmrBa8Hl4KrUzu386tBW','2019-02-18 13:36:11');
/*!40000 ALTER TABLE `counsellor` ENABLE KEYS */;
UNLOCK TABLES;
=======
  `password` varchar(15) NOT NULL,
  `salt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Table structure for table `dean`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `dean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
=======
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
CREATE TABLE `dean` (
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `uName` varchar(20) NOT NULL,
<<<<<<< HEAD
  `email` varchar(50) NOT NULL,
  `phoneNo` varchar(13) NOT NULL,
  `password` varchar(75) NOT NULL,
  `salt` varchar(75) NOT NULL,
  `day` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dean`
--

LOCK TABLES `dean` WRITE;
/*!40000 ALTER TABLE `dean` DISABLE KEYS */;
INSERT INTO `dean` VALUES ('Justine','Omwoyo','dean','deaneu@gmail.com','0712234567','RqZK9bA+tuWKRZovXLy9gUx2kgPEEtlZRnv5bYsGiHY=','OpwPXOMqs3qD3FAYKrFWuwl4oqLS1u','2019-02-18 13:28:44');
/*!40000 ALTER TABLE `dean` ENABLE KEYS */;
UNLOCK TABLES;
=======
  `password` varchar(75) NOT NULL,
  `salt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `couns_Id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`couns_Id`, `status`, `date`, `time`) VALUES
(2, 'available', '2019-02-02', '09:00:00'),
(2, 'available', '2019-02-02', '09:00:00'),
(3, 'available', '2019-02-02', '09:00:00'),
(3, 'available', '2019-02-02', '09:00:00');

-- --------------------------------------------------------
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Table structure for table `scheduling`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `scheduling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduling` (
  `scheduleId` int(11) NOT NULL AUTO_INCREMENT,
=======
CREATE TABLE `scheduling` (
  `scheduleId` int(4) NOT NULL,
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
  `counsNo` varchar(12) NOT NULL,
  `dateAway` date NOT NULL,
  `timeAway` time(6) NOT NULL,
  `dateBack` date NOT NULL,
  `timeBack` time(6) NOT NULL,
  `reason` varchar(150) NOT NULL,
<<<<<<< HEAD
  `approval` varchar(3) NOT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduling`
--

LOCK TABLES `scheduling` WRITE;
/*!40000 ALTER TABLE `scheduling` DISABLE KEYS */;
INSERT INTO `scheduling` VALUES (1,'counsellor1','2019-02-19','15:30:00.000000','2019-02-20','18:30:00.000000',' wedding','no');
/*!40000 ALTER TABLE `scheduling` ENABLE KEYS */;
UNLOCK TABLES;
=======
  `approval` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378

--
-- Table structure for table `student`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
=======
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
CREATE TABLE `student` (
  `regNo` varchar(15) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `phoneNo` varchar(13) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(75) NOT NULL,
<<<<<<< HEAD
  `salt` varchar(75) NOT NULL,
  `day` datetime NOT NULL,
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('K11/08100/18','James','Smith','0712131415','myem@gmail.com','0eif4p9mmuPtAhM3V1R9nOAbr49bmpGYAQy78CNURMw=','BJzRrmGsI5WlGxsB3HBQuoupRyqUIN','2019-02-18 12:55:46');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-18 13:52:38
=======
  `salt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appId`),
  ADD KEY `foreign key` (`regNo`);

--
-- Indexes for table `counsellor`
--
ALTER TABLE `counsellor`
  ADD PRIMARY KEY (`counsNo`);

--
-- Indexes for table `scheduling`
--
ALTER TABLE `scheduling`
  ADD PRIMARY KEY (`scheduleId`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regNo`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`regNo`) REFERENCES `student` (`regNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
>>>>>>> f62671d8b8910ce51639cd5790c9745a6c0be378
