-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: homework1
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(20) NOT NULL COMMENT 'Производитель',
  `model` varchar(20) NOT NULL COMMENT 'Модель',
  `size_screen` decimal(2,1) NOT NULL COMMENT 'Размер экрана в дюймах',
  `battery_capacity` int NOT NULL COMMENT 'Емкость аккумулятора, в мА-ч',
  `memory` int NOT NULL DEFAULT '16' COMMENT 'Объем памяти телефона',
  `color` varchar(20) NOT NULL COMMENT 'Цвет',
  `price` int NOT NULL DEFAULT '0' COMMENT 'Цена',
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_UNIQUE` (`model`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (1,'Samsung','Galaxy S 20FE',6.5,4500,128,'blue',36900),(2,'Samsung','Galaxy S 21FE',6.4,4500,256,'white',44240),(3,'Samsung','Galaxy S 22',6.1,3700,128,'green',43480),(4,'Samsung','Galaxy A 33 5G',6.4,5000,128,'black',19489),(5,'Samsung','Galaxy A 73 5G',6.7,5000,256,'gray',37489),(6,'Samsung','Galaxy A 53 5G',6.5,5000,256,'white',28990),(7,'Samsung','Galaxy Z Flip 4',6.7,3300,128,'purple',97092),(8,'Samsung','Galaxy Z Fold 4',7.6,4400,256,'black',103709),(9,'Apple','Iphone 13',6.1,3240,128,'blue',52680),(10,'Apple','Iphone 13 mini',5.4,2406,256,'red',51110),(11,'Apple','Iphone 13 Pro',6.1,3095,1000,'green',81288),(12,'Apple','Iphone 13 Pro Max',6.7,4325,512,'green',96190),(13,'Apple','Iphone 14',6.1,3095,128,'white',58890),(14,'Apple','Iphone 14 Plus',6.7,4325,512,'purple',81690),(15,'Apple','Iphone 14 Pro',6.1,4500,512,'black',121869),(16,'Apple','Iphone 14 Pro Max',6.7,4500,128,'gold',98246),(17,'Honor','10 Lite',6.2,3400,64,'black',10468),(18,'Huawei','P50 Pro',6.6,4360,256,'gold',58490),(19,'Sony','Xperia 1 IV',6.5,5000,256,'purple',57749),(20,'Nokia','106',1.8,800,16,'black',1198),(21,'Honor','70 5G',6.7,4800,128,'black',34090),(22,'Huawei','Nova Y70',6.8,6000,128,'blue',12990),(23,'Sony','Xperia 10 IV',6.0,5000,128,'black',23519),(24,'Xiaomi','12T Pro',6.7,5000,256,'blue',57990),(25,'Xiaomi','Redmi Note 11S',6.4,5000,64,'black',16890),(26,'DOODGE','S98 Pro',6.3,6000,256,'black',33990),(27,'BQ','6430L Aurora',6.4,4000,64,'black',8329),(28,'Meizu','Pro 7',5.2,3000,64,'black',8400);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 23:41:38
