-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: amyvoting
-- ------------------------------------------------------
-- Server version	5.7.26-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `voter` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  `mothername` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,'Sara Islam','Md.Anisur Rahman','Farjana haque','Dhaka','12-10-1950',777,'female','voter4.jpg','Dhaka'),(2,'Rayhan Mahmud','Abdul Korim','jananara ','Khulna','12-10-1985',4567,'Male','voter3.jpg','Khulna'),(5,'Reba islam','Jahagir','jahanara','Khulna','23-12-1988',998877,'Female','voter4.jpg','Khulna'),(6,'Jakir hossain','Korim','nure ','dhaka','12-10-1986',123456,'Male','voter3.jpg','Dinajpur'),(7,'Monir Hossain','monin ','bilkis','Dinajpur','23-5-1999',56789,'Male','voter2.jpg','Khulna'),(8,'Dil Naznin','Delower','monoara','dhaka','12-10-1986',1234,'Female','voter4.jpg','Dhaka'),(9,'Alex','jon','jeci','dhaka','10-08-1990',123,'Female','votar.jpg','Dhaka'),(10,'MR.Tanvir','tanzim','monira','Dinajpur','10-08-1990',12300,'Male','voter2.jpg','Khulna'),(11,'Shaarif Islam','korim','monira','Dinajpur','23-5-1999',997700,'Male','voter4.jpg','Khulna'),(12,'Farjana','abc','abc','Dinajpur','12-10-1986',77777,'Female','votar.jpg','Khulna'),(13,'seam','anjb','df','Dinajpur','12-10-1986',8888,'Male','voter3.jpg','Dinajpur'),(14,'Samim','asb','rtt','Dinajpur','23-5-1999',9921,'Male','voter2.jpg','Dhaka'),(15,'moon','maan','munia','dhaka','25 nov 1994',7878,'female','voter2.jpg','Dhaka'),(16,'munna','maan','munia','dhaka','25 nov 1994',6666,'female','voter2.jpg','Dhaka'),(17,'munnai','maan','munia','dhaka','25 nov 1994',6667,'female','voter2.jpg','Khulna');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-01 13:25:18
