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
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search` (
  `searchCode` varchar(25) NOT NULL COMMENT '검색기록코드',
  `searchDate` date NOT NULL COMMENT '검색일자',
  `searchCont` text NOT NULL COMMENT '검색어',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  PRIMARY KEY (`searchCode`),
  KEY `FK_user_TO_search` (`userId`),
  CONSTRAINT `FK_user_TO_search` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='검색기록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search`
--

LOCK TABLES `search` WRITE;
/*!40000 ALTER TABLE `search` DISABLE KEYS */;
INSERT INTO `search` VALUES ('RR-000000','2020-05-11','야식','abc@naver.com'),('RR-000001','2020-05-19','다이어트','ektjt@naver.com'),('RR-000002','2020-05-10','닭고기요리','enf@naver.com'),('RR-000003','2020-05-24','간단요리','enf@naver.com'),('RR-000004','2020-05-27','샌드위치','mmm@gmail.com'),('RR-000005','2020-06-13','편의점레시피','spt@gmail.com'),('RR-000006','2020-06-21','간단레시피','ektjt@naver.com'),('RR-000007','2020-07-01','간단','gksk@naver.com'),('RR-000008','2020-07-19','카레','spt@gmail.com'),('RR-000009','2020-07-10','떡볶이','tpt@gmail.com'),('RR-000010','2020-07-11','크림우동','mmm@gmail.com'),('RR-000011','2020-07-11','야식','chefxoxo@gmail.com'),('RR-000012','2020-08-11','디저트','hoho@gmail.com'),('RR-000013','2020-07-24','노오븐','a1a1@naver.com'),('RR-000014','2020-08-19','쿠키','prettylee@naver.com'),('RR-000015','2020-09-19','노오븐','chefxoxo@gmail.com'),('RR-000016','2020-09-09','케이크','prettylee@naver.com'),('RR-000017','2020-09-16','쿠키','chefxoxo@gmail.com'),('RR-000018','2020-09-24','간단','prettylee@naver.com'),('RR-000019','2020-09-08','집들이','hoho@gmail.com'),('RR-000020','2020-09-01','집들이','a1a1@naver.com');
/*!40000 ALTER TABLE `search` ENABLE KEYS */;
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
