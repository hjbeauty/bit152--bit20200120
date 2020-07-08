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
-- Table structure for table `talklike`
--

DROP TABLE IF EXISTS `talklike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talklike` (
  `talkCode` varchar(25) NOT NULL COMMENT '토크식별코드',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  `likeDate` date DEFAULT NULL COMMENT '좋아요작성일자',
  PRIMARY KEY (`talkCode`,`userId`),
  KEY `FK_user_TO_talkLike` (`userId`),
  CONSTRAINT `FK_talk_TO_talkLike` FOREIGN KEY (`talkCode`) REFERENCES `talk` (`talkCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_talkLike` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='토크좋아요';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talklike`
--

LOCK TABLES `talklike` WRITE;
/*!40000 ALTER TABLE `talklike` DISABLE KEYS */;
INSERT INTO `talklike` VALUES ('T-000001','gksk@naver.com','2020-05-15'),('T-000001','tpt@gmail.com','2020-05-15'),('T-000002','gksk@naver.com','2020-05-23'),('T-000002','kkk@naver.com','2020-05-22'),('T-000006','mmm@gmail.com','2020-06-23'),('T-000007','gksk@naver.com','2020-04-11'),('T-000009','tpt@gmail.com','2020-07-19'),('T-000010','kkk@naver.com','2020-05-11'),('T-000011','gksk@naver.com','2020-06-08'),('T-000012','tpt@gmail.com','2020-06-28'),('T-000013','gksk@naver.com','2020-06-08'),('T-000014','kkk@naver.com','2020-07-09'),('T-000015','kkk@naver.com','2020-07-09'),('T-000016','tpt@gmail.com','2020-06-08'),('T-000017','gksk@naver.com','2020-07-16'),('T-000018','mmm@gmail.com','2020-07-19'),('T-000019','tpt@gmail.com','2020-06-08'),('T-000020','mmm@gmail.com','2020-06-08');
/*!40000 ALTER TABLE `talklike` ENABLE KEYS */;
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
