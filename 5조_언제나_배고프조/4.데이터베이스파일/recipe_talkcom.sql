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
-- Table structure for table `talkcom`
--

DROP TABLE IF EXISTS `talkcom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talkcom` (
  `talkComCode` varchar(25) NOT NULL COMMENT '토크댓글코드',
  `talkCom` text NOT NULL COMMENT '토크댓글',
  `talkComDate` date DEFAULT NULL COMMENT '토크댓글작성일자',
  `talkCode` varchar(25) NOT NULL COMMENT '토크식별코드',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  PRIMARY KEY (`talkComCode`),
  KEY `FK_talk_TO_talkCom` (`talkCode`),
  KEY `FK_user_TO_talkCom` (`userId`),
  CONSTRAINT `FK_talk_TO_talkCom` FOREIGN KEY (`talkCode`) REFERENCES `talk` (`talkCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_talkCom` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='토크 댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talkcom`
--

LOCK TABLES `talkcom` WRITE;
/*!40000 ALTER TABLE `talkcom` DISABLE KEYS */;
INSERT INTO `talkcom` VALUES ('TC-000001','너무 맛있겠네요','2020-05-15','T-000001','zleda9@naver.com'),('TC-000002','커피와도 잘 어울리겠어요','2020-05-22','T-000004','zleda9@naver.com'),('TC-000003','저도 오늘저녁에 만들어볼래요','2020-07-21','T-000007','zleda9@naver.com'),('TC-000004','우아 저도 해보고싶어요','2020-07-21','T-000007','zleda9@naver.com'),('TC-000005','소세지 어떠세요~~','2020-05-24','T-000003','zleda9@naver.com'),('TC-000006','볶음우동어떠세용','2020-05-24','T-000003','zleda9@naver.com'),('TC-000007','우아 여기가 어딘가요?','2020-05-11','T-000010','zleda9@naver.com'),('TC-000008','저도 한입주세용','2020-05-20','T-000002','zleda9@naver.com'),('TC-000009','다른요리도 기대할게용','2020-05-21','T-000002','zleda9@naver.com'),('TC-000010','5일차 요리는 어디있죠!!','2020-06-21','T-000005','mmm@gmail.com'),('TC-000011','우아 카페같아요','2020-06-08','T-000013','gksk@naver.com'),('TC-000012','너무 멋져요','2020-06-08','T-000013','super5zo@gmail.com'),('TC-000013','반가워요','2020-05-28','T-000014','super5zo@gmail.com'),('TC-000014','요즘 소풍철이라 딱이겠네요','2020-06-08','T-000016','enf@naver.com'),('TC-000015','저도 이번주에 놀러나갈때 이 레시피로 만들어가려고용!','2020-06-08','T-000016','gksk@naver.com'),('TC-000016','너무 맛있을거같네요','2020-06-08','T-000019','enf@naver.com'),('TC-000017','우와,,,','2020-05-11','T-000015','spt@gmail.com'),('TC-000018','소품까지 너무 완벽하네여','2020-05-11','T-000015','gksk@naver.com'),('TC-000019','대단하세요!!','2020-05-11','T-000011','spt@gmail.com'),('TC-000020','쉐프님이세여??','2020-05-11','T-000011','spt@gmail.com'),('TC-21','ㅇㄴㅇㅎㅎㅎ안녕','2020-07-06','T-000039','zleda9@naver.com'),('TC-22','아\n','2020-07-06','T-000081','zleda9@naver.com'),('TC-23','안녕하세요','2020-07-07','T-000033','yujin@naver.com');
/*!40000 ALTER TABLE `talkcom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-08 19:42:31
