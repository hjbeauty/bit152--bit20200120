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
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `rcpTagCode` varchar(25) NOT NULL COMMENT '레시피식별코드',
  `tag` varchar(25) NOT NULL COMMENT '태그',
  PRIMARY KEY (`rcpTagCode`,`tag`),
  CONSTRAINT `FK_rcp_TO_tag` FOREIGN KEY (`rcpTagCode`) REFERENCES `rcp` (`rcpCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='태그';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES ('R-000001','#간편#고양이'),('R-000001','간편'),('R-000001','반찬'),('R-000002','다이어터'),('R-000002','저칼로리'),('R-000003','든든한요리'),('R-000003','따뜻한 요리'),('R-000004','간단'),('R-000004','간식'),('R-000005','닭요리'),('R-000005','든든한 한끼'),('R-000005','요리추천'),('R-000006','간편요리'),('R-000006','아이들간식'),('R-000006','초간단'),('R-000007','감자요리'),('R-000007','야식'),('R-000007','초간단'),('R-000009','간단요리'),('R-000009','두부요리'),('R-000009','손님접대'),('R-000010','간편요리'),('R-000010','소풍'),('R-000011','다이어트'),('R-000012','곤약'),('R-000013','겉바속초'),('R-000013','바삭'),('R-000015','새우'),('R-000016','간식'),('R-000017','간식'),('R-000018','도시락'),('R-000019','초간단'),('R-000020','집들이');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
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
