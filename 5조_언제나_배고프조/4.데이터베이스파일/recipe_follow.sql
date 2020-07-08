-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: recipe
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  `followChef` varchar(50) NOT NULL COMMENT '팔로우쉐프',
  PRIMARY KEY (`userId`,`followChef`),
  KEY `FK_user_TO_follow2` (`followChef`),
  CONSTRAINT `FK_user_TO_follow` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_follow2` FOREIGN KEY (`followChef`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='팔로우';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES ('ektjt@naver.com','abc@naver.com'),('abc@naver.com','ektjt@naver.com'),('a1a1@naver.com','hani@naver.com'),('uknowyuna@naver.com','hani@naver.com'),('zeezee@naver.com','hoho@gmail.com'),('zleda9@naver.com','january11@naver.com'),('mmm@gmail.com','jjj@naver.com'),('tpt@gmail.com','jjj@naver.com'),('ektjt@naver.com','kkk@naver.com'),('jjj@naver.com','kkk@naver.com'),('spt@gmail.com','kkk@naver.com'),('tpt@gmail.com','kkk@naver.com'),('jjj@naver.com','mmm@gmail.com'),('a1a1@naver.com','prettylee@naver.com'),('hani@naver.com','prettylee@naver.com'),('kkk@naver.com','spt@gmail.com'),('hani@naver.com','susu@naver.com'),('zleda9@naver.com','susu@naver.com'),('ektjt@naver.com','tpt@gmail.com'),('zleda9@naver.com','tpt@gmail.com'),('zleda9@naver.com','uknowyuna@naver.com'),('zleda9@naver.com','zeezee@naver.com'),('zleda9@naver.com','zleda9@naver.com');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 19:42:30
