-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: vocera_game
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `token` varchar(255) NOT NULL,
  `server_score` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_score` int NOT NULL,
  `winner` varchar(255) NOT NULL,
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES ('debcjoicvt',1,'GAME_OVER',3,'USER'),('fopxlbzeuo',0,'READY',0,'NOT_DECIDED'),('gxstzadmbp',0,'IN_PROGRESS',1,'NOT_DECIDED'),('jqmetvhhss',3,'GAME_OVER',0,'SERVER'),('lkzutxepfe',0,'GAME_OVER',3,'USER'),('mwtocenixv',0,'READY',0,'NOT_DECIDED'),('ongakyuosy',3,'GAME_OVER',0,'SERVER'),('ugnjuddezg',0,'GAME_OVER',3,'USER'),('uihjlphcby',3,'GAME_OVER',0,'SERVER');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_step`
--

DROP TABLE IF EXISTS `game_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_step` (
  `id` bigint NOT NULL,
  `server` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `winner` varchar(255) NOT NULL,
  `token_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmp5fl0qq8bw7g2m8bmvhw8p8j` (`token_id`),
  CONSTRAINT `FKmp5fl0qq8bw7g2m8bmvhw8p8j` FOREIGN KEY (`token_id`) REFERENCES `game` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_step`
--

LOCK TABLES `game_step` WRITE;
/*!40000 ALTER TABLE `game_step` DISABLE KEYS */;
INSERT INTO `game_step` VALUES (4,'ROCK','ROCK','TIE','ugnjuddezg'),(5,'SCISSORS','ROCK','USER','ugnjuddezg'),(6,'SCISSORS','ROCK','USER','ugnjuddezg'),(7,'SCISSORS','ROCK','USER','ugnjuddezg'),(8,'PAPER','ROCK','SERVER','uihjlphcby'),(9,'PAPER','ROCK','SERVER','uihjlphcby'),(10,'SCISSORS','PAPER','SERVER','uihjlphcby'),(11,'ROCK','ROCK','TIE','debcjoicvt'),(12,'ROCK','PAPER','USER','debcjoicvt'),(13,'SCISSORS','PAPER','SERVER','debcjoicvt'),(14,'SCISSORS','SCISSORS','TIE','debcjoicvt'),(15,'ROCK','ROCK','TIE','debcjoicvt'),(16,'ROCK','ROCK','TIE','debcjoicvt'),(17,'SCISSORS','ROCK','USER','debcjoicvt'),(18,'ROCK','ROCK','TIE','debcjoicvt'),(19,'PAPER','PAPER','TIE','debcjoicvt'),(20,'ROCK','PAPER','USER','debcjoicvt'),(21,'PAPER','ROCK','SERVER','ongakyuosy'),(22,'SCISSORS','PAPER','SERVER','ongakyuosy'),(23,'ROCK','SCISSORS','SERVER','ongakyuosy'),(24,'SCISSORS','ROCK','USER','gxstzadmbp'),(25,'SCISSORS','ROCK','USER','lkzutxepfe'),(26,'SCISSORS','ROCK','USER','lkzutxepfe'),(27,'SCISSORS','ROCK','USER','lkzutxepfe'),(28,'PAPER','ROCK','SERVER','jqmetvhhss'),(29,'PAPER','ROCK','SERVER','jqmetvhhss'),(30,'PAPER','ROCK','SERVER','jqmetvhhss');
/*!40000 ALTER TABLE `game_step` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (31);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-09 18:11:45
