-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_definitivo
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `apellido y nombre` varchar(35) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `password` varchar(32) NOT NULL,
  `saldo` int NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(2,'Martino Fede ','fede@factoriaf5.com','1234',1000),(3,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(4,'Diaz Trini','trini@factoriaf5.com','1234',1000),(5,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(6,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(7,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(8,'Martino Fede ','fede@factoriaf5.com','1234',1000),(9,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(10,'Diaz Trini','trini@factoriaf5.com','1234',1000),(11,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(12,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(13,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(14,'Martino Fede ','fede@factoriaf5.com','1234',1000),(15,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(16,'Diaz Trini','trini@factoriaf5.com','1234',1000),(17,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(18,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(19,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(20,'Martino Fede ','fede@factoriaf5.com','1234',1000),(21,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(22,'Diaz Trini','trini@factoriaf5.com','1234',1000),(23,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(24,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(25,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(26,'Martino Fede ','fede@factoriaf5.com','1234',1000),(27,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(28,'Diaz Trini','trini@factoriaf5.com','1234',1000),(29,'TomÃ¡s Georgina','georgina@factoriaf5.com','1234',1000),(30,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(31,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(32,'Martino Fede ','fede@factoriaf5.com','1234',1000),(33,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(34,'Diaz Trini','trini@factoriaf5.com','1234',1000),(35,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(36,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(37,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(38,'Martino Fede ','fede@factoriaf5.com','1234',1000),(39,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(40,'Diaz Trini','trini@factoriaf5.com','1234',1000),(41,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(42,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(43,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(44,'Martino Fede ','fede@factoriaf5.com','1234',1000),(45,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(46,'Diaz Trini','trini@factoriaf5.com','1234',1000),(47,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(48,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(49,'Ortiz Juan ','juan@factoriaf5.com\n','1234',1000),(50,'Martino Fede ','fede@factoriaf5.com','1234',1000),(51,'Raduta Roxy','roxi@factoriaf5.com','1234',1000),(52,'Diaz Trini','trini@factoriaf5.com','1234',1000),(53,'Tomas Georgina','georgina@factoriaf5.com','1234',1000),(54,'Rodriguez Eva','eva@factoriaf5.com','1234',1000),(55,'Raúl ','faul@factoriaf5.co ','2548',1000);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06 16:06:13
