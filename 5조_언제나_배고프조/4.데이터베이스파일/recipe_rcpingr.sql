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
-- Table structure for table `rcpingr`
--

DROP TABLE IF EXISTS `rcpingr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rcpingr` (
  `connectCode` varchar(25) NOT NULL COMMENT '레시피재료연결코드',
  `ingrCat` varchar(25) DEFAULT NULL COMMENT '재료 카테고리',
  `userIngr` varchar(20) DEFAULT NULL COMMENT '사용자지정재료',
  `ingrWeigh` varchar(25) DEFAULT NULL COMMENT '재료용량',
  `rcpingrCode` varchar(25) DEFAULT NULL COMMENT '레시피재료코드',
  `rcpCode` varchar(25) NOT NULL COMMENT '레시피식별코드',
  PRIMARY KEY (`connectCode`),
  KEY `FK_ingr_TO_rcpIngr` (`rcpingrCode`),
  KEY `FK_rcp_TO_rcpIngr` (`rcpCode`),
  CONSTRAINT `FK_ingr_TO_rcpIngr` FOREIGN KEY (`rcpingrCode`) REFERENCES `ingr` (`rcpingrCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_rcp_TO_rcpIngr` FOREIGN KEY (`rcpCode`) REFERENCES `rcp` (`rcpCode`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='레시피 재료';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rcpingr`
--

LOCK TABLES `rcpingr` WRITE;
/*!40000 ALTER TABLE `rcpingr` DISABLE KEYS */;
INSERT INTO `rcpingr` VALUES ('RM-0000819','재료','떡볶이떡','300g',NULL,'R-000084'),('RM-0000820','재료',NULL,'150g','M-0000483','R-000084'),('RM-0000821','재료',NULL,'2개','M-0000610','R-000084'),('RM-0000822','재료',NULL,'1/2개','M-0000602','R-000084'),('RM-0000823','재료',NULL,'약간','M-0000062','R-000084'),('RM-0000824','재료',NULL,'약간','M-0000911','R-000084'),('RM-0000825','쇠고기와 표고버섯 양념',NULL,'2큰술','M-0000804','R-000084'),('RM-0000826','쇠고기와 표고버섯 양념','설탕','1큰술',NULL,'R-000084'),('RM-0000827','쇠고기와 표고버섯 양념','다진마늘','1작은술',NULL,'R-000084'),('RM-0000828','쇠고기와 표고버섯 양념',NULL,'1큰술','M-0000062','R-000084'),('RM-0000829','쇠고기와 표고버섯 양념',NULL,'약간','M-0000633','R-000084'),('RM-0000830','떡 양념',NULL,'1큰술','M-0000804','R-000084'),('RM-0000831','떡 양념',NULL,'1큰술','M-0000536','R-000084'),('RM-0000832','떡 양념',NULL,'1큰술','M-0000062','R-000084'),('RM-0000833','재료','또띠아','1장',NULL,'R-000085'),('RM-0000834','재료',NULL,'1개','M-0000209','R-000085'),('RM-0000835','재료',NULL,'1/4개','M-0000520','R-000085'),('RM-0000836','재료','샐러리','4cm',NULL,'R-000085'),('RM-0000837','재료',NULL,'1/4개','M-0000619','R-000085'),('RM-0000838','재료',NULL,'1/4개','M-0000634','R-000085'),('RM-0000839','재료',NULL,'1개','M-0000616','R-000085'),('RM-0000840','양념','파프리카가루','1T',NULL,'R-000085'),('RM-0000841','양념','소금','조금',NULL,'R-000085'),('RM-0000842','양념',NULL,'조금','M-0000633','R-000085'),('RM-0000843','양념','레몬즙','1',NULL,'R-000085'),('RM-0000844','양념',NULL,'1','M-0000458','R-000085'),('RM-0000851','재료','애호박','1개',NULL,'R-000087'),('RM-0000852','재료','어묵','20g',NULL,'R-000087'),('RM-0000853','재료',NULL,'약간','M-0000538','R-000087'),('RM-0000854','재료',NULL,'약간','M-0000633','R-000087'),('RM-0000855','재료',NULL,'20g','M-0000236','R-000087'),('RM-0000856','재료','모짜렐라치즈','20g',NULL,'R-000087'),('RM-0000857','재료','소금','약간',NULL,'R-000087'),('RM-0000858','재료',NULL,'8~10개','M-0000304','R-000088'),('RM-0000859','재료',NULL,'1컵','M-0000661','R-000088'),('RM-0000860','재료','모짜렐라치즈','1컵',NULL,'R-000088'),('RM-0000861','재료',NULL,'300g','M-0000438','R-000089'),('RM-0000862','재료',NULL,'1/2','M-0000520','R-000089'),('RM-0000863','재료',NULL,'2쪽','M-0000263','R-000089'),('RM-0000864','재료',NULL,NULL,'M-0000538','R-000089'),('RM-0000865','재료',NULL,NULL,'M-0000047','R-000089'),('RM-0000866','재료','미니파프리카','2개',NULL,'R-000089'),('RM-0000867','재료',NULL,NULL,'M-0000420','R-000089'),('RM-0000868','재료',NULL,NULL,'M-0000462','R-000089'),('RM-0000869','재료','소금','조금',NULL,'R-000089'),('RM-0000870','재료',NULL,NULL,'M-0000633','R-000089'),('RM-0000871','재료',NULL,'210g','M-0000420','R-000090'),('RM-0000872','재료','소금','3g',NULL,'R-000090'),('RM-0000873','재료',NULL,'330g','M-0000365','R-000090'),('RM-0000874','재료',NULL,'5g','M-0000404','R-000090'),('RM-0000875','재료','설탕','150g',NULL,'R-000090'),('RM-0000876','재료','달걀','90g',NULL,'R-000090'),('RM-0000877','재료','아몬드가루','50g',NULL,'R-000090'),('RM-0000878','재료',NULL,'5장','M-0000426','R-000091'),('RM-0000879','재료',NULL,'4장','M-0000067','R-000091'),('RM-0000880','재료','즉석밥','1공기',NULL,'R-000091'),('RM-0000881','양념',NULL,'약간','M-0000062','R-000091'),('RM-0000882','양념',NULL,'약간','M-0000633','R-000091'),('RM-0000883','재료','달걀','2개',NULL,'R-000092'),('RM-0000884','재료','모짜렐라치즈','적당량',NULL,'R-000092'),('RM-0000885','재료','햄(옛날소시지)','15조각',NULL,'R-000093'),('RM-0000886','재료','땡초','1개',NULL,'R-000093'),('RM-0000887','재료',NULL,'1개','M-0000827','R-000093'),('RM-0000888','재료','다진파','약간',NULL,'R-000093'),('RM-0000889','재료','소금','약간',NULL,'R-000093'),('RM-0000890','재료','사각어묵','2장',NULL,'R-000094'),('RM-0000891','재료',NULL,'1개','M-0000089','R-000094'),('RM-0000892','재료',NULL,'4장','M-0000060','R-000094'),('RM-0000893','재료',NULL,'1장','M-0000819','R-000094'),('RM-0000894','재료',NULL,'9장','M-0000819','R-000095'),('RM-0000895','재료','키친타올','6칸',NULL,'R-000095'),('RM-0000896','양념',NULL,'1T','M-0000804','R-000095'),('RM-0000897','양념',NULL,'1/2T','M-0000062','R-000095'),('RM-0000898','양념',NULL,'1/3T','M-0000911','R-000095'),('RM-0000899','재료',NULL,'50g','M-0000108','R-000096'),('RM-0000900','재료','소금','1꼬집',NULL,'R-000096'),('RM-0000901','재료',NULL,'5큰술','M-0000536','R-000096'),('RM-0000902','재료','물','1/2종이컵',NULL,'R-000096'),('RM-0000903','재료',NULL,'2개','M-0000827','R-000097'),('RM-0000904','재료','소금','약간',NULL,'R-000097'),('RM-0000905','재료',NULL,'1개','M-0000602','R-000097'),('RM-0000906','재료',NULL,'200g','M-0000463','R-000098'),('RM-0000907','재료','모짜렐라치즈','1개',NULL,'R-000098'),('RM-0000908','재료',NULL,'6개','M-0000263','R-000098'),('RM-0000909','재료',NULL,'1T','M-0000538','R-000098'),('RM-0000910','재료','소금',NULL,NULL,'R-000098'),('RM-0000911','재료',NULL,'약간','M-0000633','R-000098'),('RM-0000912','양념',NULL,'1/2T','M-0000822','R-000098'),('RM-0000913','양념',NULL,'1/2T','M-0000892','R-000098'),('RM-0000914','양념',NULL,'1/2T','M-0000361','R-000098'),('RM-0000915','양념','설탕','1/2T',NULL,'R-000098'),('RM-0000916','양념','다진마늘','1t',NULL,'R-000098'),('RM-0000917','양념','물','1T',NULL,'R-000098'),('RM-0000918','양념',NULL,'1/2T','M-0000804','R-000098'),('RM-0000919','재료',NULL,'4개','M-0000808','R-000099'),('RM-0000920','재료',NULL,'넉넉히','M-0000826','R-000099'),('RM-0000921','재료',NULL,'조금','M-0000603','R-000099'),('RM-0000922','재료',NULL,'조금','M-0000420','R-000099'),('RM-0000923','재료',NULL,'넉넉히','M-0000060','R-000099'),('RM-0000924','재료','부추봉 어묵','5개',NULL,'R-000100'),('RM-0000925','재료','머스타드',NULL,NULL,'R-000100'),('RM-0000926','재료','케찹',NULL,NULL,'R-000100'),('RM-975','재료','소고기','6장',NULL,'R-000019'),('RM-976','재료','깻잎','6장',NULL,'R-000019'),('RM-977','재료','파프리카','1/3',NULL,'R-000019'),('RM-978','양념','간장','1T',NULL,'R-000019'),('RM-979','양념','물','1T',NULL,'R-000019'),('RM-980','양념','식초','1T',NULL,'R-000019');
/*!40000 ALTER TABLE `rcpingr` ENABLE KEYS */;
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
