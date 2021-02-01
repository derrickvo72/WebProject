-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: courseonline
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,6),(2,7),(2,9);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorizes`
--

DROP TABLE IF EXISTS `categorizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorizes` (
  `category_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`category_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorizes`
--

LOCK TABLES `categorizes` WRITE;
/*!40000 ALTER TABLE `categorizes` DISABLE KEYS */;
INSERT INTO `categorizes` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(2,8),(2,9);
/*!40000 ALTER TABLE `categorizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` longtext,
  `category_info` longtext,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Window','Window'),(2,'Web','Web'),(3,'Design','Design'),(4,'Office','Office');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `rating` int DEFAULT NULL,
  `comment` longtext,
  PRIMARY KEY (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_name` longtext,
  `course_fullinfo` longtext,
  `course_lessinfo` mediumtext,
  `course_rate` float DEFAULT NULL,
  `course_lession` int DEFAULT NULL,
  `img` text,
  `created_at` text,
  `updated_at` text,
  `course_link` longtext,
  `course_price` float DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `deactive` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  FULLTEXT KEY `course_name` (`course_name`,`course_fullinfo`,`course_lessinfo`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Lập trình window cơ bản','Khóa học lập trình window cơ bản','Window cơ bản',5,20,'1.png','2021-01-25',NULL,'https://www.facebook.com/',20,1,3,0),(2,'Lap trinh window niubi','Konh\r\n                                        ','Window cÆ¡ báº£n',5,30,'2.jpg','2021-01-25','31-01-2021 22:45:52','https://www.facebook.com/',20,1,4,0),(3,'Lập trình window siêu tốc','Khóa học lập trình window siêu tốc','Window siêu tốc',4.5,20,'3.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,1,3,0),(4,'Lập trình window cho người mới bắt đầu','Khóa học lập trình window cho người mới bắt đầu','Window cơ bản',4,20,'4.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,1,4,0),(5,'Lập trình web cơ bản','Khóa học lập trình web cơ bản','Web cơ bản',4,20,'5.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,2,4,0),(6,'Nhập môn css, html5','Khóa học css, html5 cơ bản','Web cơ bản',5,20,'6.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,2,4,0),(7,'Lập trình web với java servlet','Khóa học lập trình web với java servlet','Web java servlet cơ bản',5,30,'7.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,2,4,0),(8,'Lập trình web nâng cao','Khóa học lập trình web nâng cao','Web nâng cao',3,30,'8.jpg','2021-01-25',NULL,'https://www.facebook.com/',20,2,4,0),(9,'Lập trình web với reactjs cơ bản','Khóa học lập trình web với reactjs cơ bản','Web react js cơ bản',5,25,'9.png','2021-01-25',NULL,'https://www.facebook.com/',20,2,4,0),(16,'Khoc hoc Test ','123456','Testing',4,30,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,1,3,0),(17,'Khoc hoc Test ',NULL,NULL,5,20,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,2,3,0),(18,'Khoc hoc Test ','123456','Testing',4.5,25,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,1,3,0),(19,'Khoc hoc Test ','123456','Testing',5,30,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,1,3,0),(20,'Khoc hoc Test ','123456','Testing',4,25,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,1,4,0),(21,'Khoc hoc Test ','123','Testing',4,30,NULL,'2021-01-25',NULL,'https://www.facebook.com/',15,1,3,0),(30,'sdfsd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(32,'asdasd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(33,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0),(34,'123','Ã¡dsadsa','123',NULL,NULL,'0.','31-01-2021 21:15:38',NULL,NULL,123,1,4,0),(36,'123','asd','123',NULL,NULL,'','31-01-2021 21:36:06',NULL,NULL,1,1,4,0),(37,'Winform basic','Winform basic','Winform basic',NULL,NULL,'37.png','01-02-2021 09:15:29',NULL,NULL,2,1,4,0),(38,'Power Point Basic','','Power Point Basic',NULL,NULL,'38.jpg','01-02-2021 09:18:37',NULL,NULL,12,4,4,0),(39,'Power Point Basic','','Power Point Basic',NULL,NULL,'39.png','01-02-2021 09:18:40',NULL,NULL,12,4,4,0),(40,'Power Point A-Z','Power Point A-Z','Power Point A-Z',NULL,NULL,'40.jfif','01-02-2021 09:19:28',NULL,NULL,0,4,4,0),(41,'Word level 3','Word level 3','Word level 3',NULL,NULL,'41.jpg','01-02-2021 09:20:00',NULL,NULL,0,4,4,0),(42,'Access basic','Access basic','Access basic',NULL,NULL,'42.jpg','01-02-2021 09:21:13',NULL,NULL,5,4,4,0),(43,'Excel basic','Excel basic','Excel basic',NULL,NULL,'43.jpg','01-02-2021 09:21:33',NULL,NULL,0,4,4,0),(44,'PTS A-Z','PTS A-Z','PTS A-Z',NULL,NULL,'44.jpg','01-02-2021 09:23:07',NULL,NULL,7,1,5,0),(45,' Advanced courses Word',' Advanced courses Word',' Advanced courses Word',NULL,NULL,'45.jpg','01-02-2021 09:24:26',NULL,NULL,14,1,5,0),(46,'Xd basic','Xd basic','Xd basic',NULL,NULL,'46.jpg','01-02-2021 09:25:00',NULL,NULL,19,1,5,0),(47,'Adobe basic','Adobe basic','Adobe basic',NULL,NULL,'47.jpg','01-02-2021 09:25:31',NULL,NULL,0,1,5,0),(48,'Illustration A-Z','Illustration A-Z','Illustration A-Z',NULL,NULL,'48.jpg','01-02-2021 09:27:04',NULL,NULL,0,1,5,0),(49,'Indesign basic','Indesign basic','Indesign basic',NULL,NULL,'49.jpg','01-02-2021 09:27:40',NULL,NULL,0,1,5,0),(50,'React Js A-Z','React Js A-Z','React Js A-Z',NULL,NULL,'50.jpg','01-02-2021 09:28:51',NULL,NULL,5,1,5,0),(51,'Java for work','Java for work','Java for work',NULL,NULL,'51.jpg','01-02-2021 09:29:21',NULL,NULL,20,1,5,0),(52,'Java Script basic','Java Script basic','Java Script basic',NULL,NULL,'52.jpg','01-02-2021 09:29:56',NULL,NULL,7,1,5,0),(53,'Master php','Master php','Master php',NULL,NULL,'53.jpg','01-02-2021 09:30:30',NULL,NULL,0,1,5,0),(54,'JAVA 0-MASTER','JAVA 0-MASTER','JAVA 0-MASTER',NULL,NULL,'54.png','01-02-2021 09:31:50',NULL,NULL,9,1,5,0),(55,'Angular in 4 week','Angular in 4 week','Angular in 4 week',NULL,NULL,'55.png','01-02-2021 09:32:29',NULL,NULL,9,1,5,0),(56,'HTML/CSS basic','HTML/CSS basic','HTML/CSS basic',NULL,NULL,'56.jpg','01-02-2021 09:33:13',NULL,NULL,20,1,5,0),(57,'Indesign 0-Master','Indesign 0-Master','Indesign 0-Master',NULL,NULL,'57.jpg','01-02-2021 09:34:08',NULL,NULL,3,3,5,0),(58,'Advanced PTS','Advanced PTS','Advanced PTS',NULL,NULL,'58.jpg','01-02-2021 09:34:52',NULL,NULL,10,3,5,0),(59,' Illustration level 100',' Illustration level 100',' Illustration level 100',NULL,NULL,'59.png','01-02-2021 09:35:30',NULL,NULL,0,3,5,0),(60,'Adobe Master','Adobe Master','Adobe Master',NULL,NULL,'60.png','01-02-2021 09:36:02',NULL,NULL,17,3,5,0),(61,'CoreIdDraw deep learn','CoreIdDraw deep learn','CoreIdDraw deep learn',NULL,NULL,'61.jpg','01-02-2021 09:36:37',NULL,NULL,12,3,5,0),(62,'Design siu manh','Design siu manh','Design siu manh',NULL,NULL,'62.jpg','01-02-2021 09:49:56',NULL,NULL,10,3,4,0);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessions`
--

DROP TABLE IF EXISTS `lessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessions` (
  `lession_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `lession_link` longtext,
  PRIMARY KEY (`lession_id`,`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessions`
--

LOCK TABLES `lessions` WRITE;
/*!40000 ALTER TABLE `lessions` DISABLE KEYS */;
INSERT INTO `lessions` VALUES (4,22,'123456'),(5,22,'123456'),(6,0,'12'),(7,0,'123'),(13,2,'123456'),(14,2,'123456');
/*!40000 ALTER TABLE `lessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takes` (
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  `complete` float DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` longtext,
  `startdate` text,
  `ratingdate` text,
  PRIMARY KEY (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUES (2,1,NULL,NULL,'2021-01-27 03:26:36',NULL,NULL),(2,2,NULL,NULL,NULL,NULL,NULL),(2,3,NULL,NULL,NULL,NULL,NULL),(2,4,NULL,NULL,NULL,NULL,NULL),(2,5,NULL,NULL,NULL,NULL,NULL),(2,7,NULL,5,'hay qua di',NULL,'01-02-2021 10:23:42'),(2,8,NULL,1,'Chan qua',NULL,'28-01-2021 03:33:39'),(3,3,NULL,NULL,NULL,NULL,NULL),(3,5,NULL,NULL,NULL,NULL,NULL),(3,6,NULL,5,'',NULL,'29-01-2021 02:43:33'),(3,7,NULL,NULL,'2021-01-28 03:26:36',NULL,NULL),(3,8,NULL,5,NULL,NULL,NULL),(3,9,NULL,5,'',NULL,'29-01-2021 02:20:05'),(7,7,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teaches` (
  `user_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaches`
--

LOCK TABLES `teaches` WRITE;
/*!40000 ALTER TABLE `teaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `teaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_username` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_fullname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user_bday` text,
  `user_gender` varchar(1) DEFAULT NULL,
  `user_phone` varchar(45) DEFAULT NULL,
  `user_email` longtext,
  `user_address` longtext,
  `user_wallet` int DEFAULT NULL,
  `img` tinytext,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (-1,'student3','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS','No company','2000-03-12','M','337621351','sagdjascvakbf@abscsd','An Phu - Thuan An - Binh Duong, An Phu - Thuan An - Binh Duong',NULL,NULL,0),(1,'admin1','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1),(2,'student1','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS','No company','06-01-2021','M','337621351','','An Phu - Thuan An - Binh Duong, An Phu - Thuan An - Binh Duong',NULL,'2.jpg',0),(3,'student2','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS','Vo Phu Duc','2000-01-01','M','0123456789','18110101@gmail.com','Quan 9',NULL,NULL,0),(4,'teacher1','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS','Bui Phuc Lam','11-01-2021','M','01234567890','18110141@gmail.com','Binh Duong',NULL,'4.jpg',1),(5,'teacher2','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS','Vo Phu Duc','16-02-2021','M','0123456789','18110101@gmail.com','Quan 9',NULL,'5.',1),(7,'student4','$2a$12$xzWXnMKdyIqkP8oEGZFGwOx24kxNG7ZSdfK1XauI.mxPyPKrwLZv2',NULL,NULL,NULL,NULL,'sagdjascvakbf@abscsd',NULL,NULL,NULL,0),(9,'student5','$2a$12$WI.6q.KzHALEfr09jOqlv.QRPNUU15BaIKamay1XaYc9HSkbV0fMG',NULL,NULL,NULL,NULL,'student1@xn--dasf-4na',NULL,NULL,NULL,0),(10,'student6','$2a$12$o.9/0yf5KVV5ZBNdYetWvOhpFv3fUMCIkjIeRwGw06454P6PfTYta',NULL,NULL,NULL,NULL,'student1@xn--dasf-4na',NULL,NULL,NULL,0),(11,'student8','$2a$12$s35Pu2fhkb7ftlC6oRkJzeJwYYKvBLszxj55zzoHa525paM3DJM02',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0),(12,'student9','$2a$12$EHUJ7AKo/rQXHwMExn18fe9YfzKXZwUAfRAmBWLbEw918SihPF/2W',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0),(13,'','$2a$12$K6Pi0haQ0S2q9zUeMO.21eDrRnlBAnF4qpMP8z0/J054pLDG4owbK',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,0),(14,'','$2a$12$NCpZCgkTpjRPJGO7q5sD3uEIBcYhN34F1A9sDPsQeD27.b1mZwNXq',NULL,NULL,NULL,NULL,'builam66@gmail.com',NULL,NULL,NULL,0),(15,'','$2a$12$PdCVAni8S8fM.3gqtCb.QeqLWuaHl8B8tzbixPF2t0gYoSaeD37nu',NULL,NULL,NULL,NULL,'builam66@gmail.com',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01 10:28:50
