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
-- Table structure for table `rcpcom`
--

DROP TABLE IF EXISTS `rcpcom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rcpcom` (
  `rcpComCode` varchar(25) NOT NULL COMMENT '레시피댓글코드',
  `rcpCom` text NOT NULL COMMENT '레시피댓글',
  `rcpComDate` date DEFAULT NULL COMMENT '레시피댓글작성일자',
  `rcpCode` varchar(25) NOT NULL COMMENT '레시피식별코드',
  `userId` varchar(50) NOT NULL COMMENT '아이디',
  PRIMARY KEY (`rcpComCode`),
  KEY `FK_rcp_TO_rcpCom` (`rcpCode`),
  KEY `FK_user_TO_rcpCom` (`userId`),
  CONSTRAINT `FK_rcp_TO_rcpCom` FOREIGN KEY (`rcpCode`) REFERENCES `rcp` (`rcpCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_user_TO_rcpCom` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='레시피댓글';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rcpcom`
--

LOCK TABLES `rcpcom` WRITE;
/*!40000 ALTER TABLE `rcpcom` DISABLE KEYS */;
INSERT INTO `rcpcom` VALUES ('RT-0000001','너무 맛있어보여요','2020-06-25','R-000002','zleda9@naver.com'),('RT-0000002','보기만해도 군침이 돌아요','2020-07-30','R-000005','zleda9@naver.com'),('RT-0000003','양파는 어느정도 크기로 썰었나요?','2020-06-02','R-000006','zleda9@naver.com'),('RT-0000004','야식요리로 확정!','2020-05-03','R-000007','zleda9@naver.com'),('RT-0000006','닭강정님 최고에요!','2020-04-15','R-000003','zleda9@naver.com'),('RT-0000007','아이들도 좋아할것 같아요','2020-06-21','R-000007','zleda9@naver.com'),('RT-0000008','부인한테 해주고 싶은 요리에요!','2020-05-13','R-000005','zleda9@naver.com'),('RT-0000009','이번 피크닉에 이 요리로 싸갈래용','2020-05-16','R-000010','spt@gmail.com'),('RT-0000010','너무 맛나겠다~','2020-06-16','R-000001','mmm@gmail.com'),('RT-0000011','정말 초간단 다이어트 요리 네요','2020-06-23','R-000011','gksk@naver.com'),('RT-0000012','어머 너무 맛있겠다','2020-09-04','R-000020','abc@naver.com'),('RT-0000013','손님 접대용으로 최고!!','2020-05-15','R-000019','susu@naver.com'),('RT-0000014','다이어트하기 딱 좋은 음식이네요','2020-06-12','R-000011','zeezee@naver.com'),('RT-0000015','애기도시락으로 해줬는데 또 해달라며 참 좋아하네요','2020-08-08','R-000016','mmm@gmail.com'),('RT-0000016','간식으로 딱이네요','2020-08-08','R-000011','abc@naver.com'),('RT-0000017','무스케이크라니! 너무 맛있어보여요','2020-09-21','R-000020','spt@gmail.com'),('RT-0000018','부리또 너무 맛있어요','2020-09-21','R-000017','zeezee@naver.com'),('RT-0000020','문어소세지 너무 귀여워요!','2020-09-19','R-000018','suminsea@naver.com');
/*!40000 ALTER TABLE `rcpcom` ENABLE KEYS */;
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
