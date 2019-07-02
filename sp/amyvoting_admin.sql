CREATE DATABASE  IF NOT EXISTS `amyvoting` ;
USE `amyvoting`;




DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
);




INSERT INTO `admin` VALUES (1,'shiuly','123'),(2,'shiuly','123'),(3,'shiuly','123'),(4,'parvin','123'),(5,'shiuly','123'),(6,'shiuly','123');



