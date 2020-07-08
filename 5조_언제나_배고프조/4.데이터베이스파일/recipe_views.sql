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
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `views` (
  `rcpViewCode` varchar(25) NOT NULL COMMENT '레시피조회코드',
  `viewDate` date NOT NULL COMMENT '조회작성일자',
  `rcpCode` varchar(25) NOT NULL COMMENT '레시피식별코드',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  PRIMARY KEY (`rcpViewCode`),
  KEY `FK_rcp_TO_views` (`rcpCode`),
  KEY `FK_user_TO_views` (`userId`),
  CONSTRAINT `FK_rcp_TO_views` FOREIGN KEY (`rcpCode`) REFERENCES `rcp` (`rcpCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_views` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='레시피조회';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES ('R-0101','2020-12-21','R-000003','1114pppp@naver.com'),('RL-009','2020-09-09','R-000007','1120@naver.com'),('RL-1','2020-01-10','R-000001','dkbdng@naver.com'),('RL-10','2020-01-03','R-000001','1117@naver.com'),('RL-11','2020-02-03','R-000001','1118pppp@naver.com'),('RL-12','2020-03-03','R-000001','1119pppp@naver.com'),('RL-13','2020-04-04','R-000001','1120@naver.com'),('RL-14','2020-05-05','R-000001','1122@naver.com'),('RL-15','2020-06-06','R-000001','1123@naver.com'),('RL-16','2020-07-07','R-000001','1124@naver.com'),('RL-17','2020-01-03','R-000001','1125@naver.com'),('RL-18','2020-02-08','R-000001','1126@naver.com'),('RL-19','2020-07-09','R-000001','1127@naver.com'),('RL-2','2020-02-01','R-000001','dob4ki@gmail.com'),('RL-20','2020-03-06','R-000001','1128@naver.com'),('RL-21','2020-04-08','R-000001','1130@naver.com'),('RL-22','2020-05-06','R-000001','1iljsaifj@naver.com'),('RL-23','2020-06-07','R-000001','1lk2jslf@naver.com'),('RL-24','2020-07-09','R-000001','1o2ijsal@gmail.com'),('RL-25','2020-01-08','R-000001','a1a1@naver.com'),('RL-26','2020-06-06','R-000001','abc@naver.com'),('RL-27','2020-02-09','R-000001','aibamasaki@yahoo.jp'),('RL-28','2020-01-06','R-000001','akmu@naver.com'),('RL-29','2020-01-06','R-000001','alkaii2@naver.com'),('RL-3','2020-03-08','R-000001','dovoker2@naver.com'),('RL-30','2020-01-06','R-000001','alkddak@naver.com'),('RL-31','2020-07-06','R-000001','april44@gmail.com'),('RL-32','2020-06-02','R-000001','asdf34@daum.net'),('RL-33','2020-08-10','R-000002','1116pppp@naver.com'),('RL-34','2020-07-07','R-000003','zleda9249@gmail.com'),('RL-35','2020-08-08','R-000009','zleda9249@gmail.com'),('RL-5','2020-05-10','R-000001','1112pppp@naver.com'),('RL-6','2020-06-10','R-000001','1113pppp@naver.com'),('RL-7','2020-07-20','R-000001','1114pppp@naver.com'),('RL-8','2020-08-10','R-000001','1115pppp@naver.com'),('RL-9','2020-01-20','R-000001','1116pppp@naver.com');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
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
