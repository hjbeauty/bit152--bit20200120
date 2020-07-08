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
-- Table structure for table `scrap`
--

DROP TABLE IF EXISTS `scrap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scrap` (
  `rcpCode` varchar(25) NOT NULL COMMENT '레시피식별코드',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  `scrapDate` date NOT NULL COMMENT '스크랩한작성일자',
  PRIMARY KEY (`rcpCode`,`userId`),
  KEY `FK_user_TO_scrap` (`userId`),
  CONSTRAINT `FK_rcp_TO_scrap` FOREIGN KEY (`rcpCode`) REFERENCES `rcp` (`rcpCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_scrap` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='스크랩레시피';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scrap`
--

LOCK TABLES `scrap` WRITE;
/*!40000 ALTER TABLE `scrap` DISABLE KEYS */;
INSERT INTO `scrap` VALUES ('R-000001','mmm@gmail.com','2020-07-10'),('R-000001','zleda9@naver.com','2020-07-02'),('R-000002','spt@gmail.com','2020-06-18'),('R-000002','zleda9@naver.com','2020-05-02'),('R-000003','kkk@naver.com','2020-06-11'),('R-000006','spt@gmail.com','2020-07-22'),('R-000006','zleda9@naver.com','2020-07-18'),('R-000009','abc@naver.com','2020-05-20'),('R-000010','zleda9@naver.com','2020-05-11'),('R-000011','zleda9@naver.com','2020-06-11'),('R-000012','zleda9@naver.com','2020-07-11'),('R-000013','suminsea@naver.com','2020-07-31'),('R-000015','uknowyuna@naver.com','2020-08-19'),('R-000016','susu@naver.com','2020-08-21'),('R-000017','a1a1@naver.com','2020-08-25'),('R-000018','uknowyuna@naver.com','2020-08-19'),('R-000019','susu@naver.com','2020-08-11'),('R-000020','a1a1@naver.com','2020-08-30'),('R-000021','zleda9@naver.com','2020-08-30');
/*!40000 ALTER TABLE `scrap` ENABLE KEYS */;
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
