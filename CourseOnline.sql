-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: courseonline
-- ------------------------------------------------------
-- Server version	8.0.22

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Lập trình window','Những khóa học lập trình window'),(2,'Lập trình web','Những khóa học lập trình web');
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
  `img` tinytext,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `course_link` longtext,
  `course_price` float DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Lập trình window cơ bản','Khóa học lập trình window cơ bản','Window cơ bản',5,20,'.png',NULL,NULL,NULL,20),(2,'Lập trình window nâng cao','Khóa học lập trình window nâng cao','Window nâng cao',5,30,'.png',NULL,NULL,NULL,20),(3,'Lập trình window siêu tốc','Khóa học lập trình window siêu tốc','Window siêu tốc',4.5,20,'.jpg',NULL,NULL,NULL,20),(4,'Lập trình window cho người mới bắt đầu','Khóa học lập trình window cho người mới bắt đầu','Window cơ bản',4,20,'.jpg',NULL,NULL,NULL,20),(5,'Lập trình web cơ bản','Khóa học lập trình web cơ bản','Web cơ bản',4,20,'.jpg',NULL,NULL,NULL,20),(6,'Nhập môn css, html5','Khóa học css, html5 cơ bản','Web cơ bản',4.5,20,'.jpg',NULL,NULL,NULL,20),(7,'Lập trình web với java servlet','Khóa học lập trình web với java servlet','Web java servlet cơ bản',5,30,'.jpg',NULL,NULL,NULL,20),(8,'Lập trình web nâng cao','Khóa học lập trình web nâng cao','Web nâng cao',5,30,'.jpg',NULL,NULL,NULL,20),(9,'Lập trình web với reactjs cơ bản','Khóa học lập trình web với reactjs cơ bản','Web react js cơ bản',5,25,'.png',NULL,NULL,NULL,20);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
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
  PRIMARY KEY (`user_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUES (2,1,NULL),(2,2,NULL),(2,3,NULL),(2,4,NULL),(2,5,NULL),(2,8,NULL),(3,3,NULL),(3,5,NULL),(3,6,NULL),(3,7,NULL),(3,8,NULL),(3,9,NULL);
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
  `user_bday` date DEFAULT NULL,
  `user_gender` varchar(1) DEFAULT NULL,
  `user_phone` varchar(45) DEFAULT NULL,
  `user_email` longtext,
  `user_address` longtext,
  `user_wallet` int DEFAULT NULL,
  `img` tinytext,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (-1,'student3','$2a$12$Dm5Pu9iN0QIFdBfKsQuEjuRAdBq.4WQBwwzWD3XITMtywweAHaDUS',NULL,NULL,NULL,NULL,'sagdjascvakbf@abscsd',NULL,NULL,NULL,0),(1,'admin1','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1),(2,'student1','123456','Bùi Phúc Lâm',NULL,'M','0123456789','18110141@gmail.com','Bình Dương',NULL,NULL,0),(3,'student2','123456','Võ Phú Đức',NULL,'M','0123456789','18110101@gmail.com','Quận 9',NULL,NULL,0),(4,'teacher1','123456','Bùi Phúc Lâm',NULL,'M','0123456789','18110141@gmail.com','Bình Dương',NULL,NULL,1),(5,'teacher2','123456','Võ Phú Đức',NULL,'M','0123456789','18110101@gmail.com','Quận 9',NULL,NULL,1),(7,'student4','$2a$12$xzWXnMKdyIqkP8oEGZFGwOx24kxNG7ZSdfK1XauI.mxPyPKrwLZv2',NULL,NULL,NULL,NULL,'sagdjascvakbf@abscsd',NULL,NULL,NULL,0);
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

-- Dump completed on 2021-01-24  5:16:42
