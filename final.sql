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
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comentario` varchar(255) NOT NULL,
  `usuario` int NOT NULL,
  `curso` int NOT NULL,
  `fecha` datetime GENERATED ALWAYS AS (10) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha_UNIQUE` (`fecha`),
  KEY `id_usuario_idx` (`usuario`),
  KEY `curso_idx` (`curso`),
  CONSTRAINT `curso` FOREIGN KEY (`curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `usuario` FOREIGN KEY (`usuario`) REFERENCES `uknow5`.`usuario` (`Id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `título` varchar(45) NOT NULL,
  `autor` int NOT NULL,
  `resumen` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `puntuacion` int NOT NULL,
  `temática` int NOT NULL,
  `dificultad` int NOT NULL,
  `contenido` varchar(45) NOT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `dificultad_idx` (`dificultad`),
  KEY `tematica_idx` (`temática`),
  CONSTRAINT `dificultad` FOREIGN KEY (`dificultad`) REFERENCES `dificultad` (`id_dificultad`),
  CONSTRAINT `tematica` FOREIGN KEY (`temática`) REFERENCES `temática` (`id_tematica`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'introducciona HTML',46,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(2,'introducciona CSS',5,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(3,'introducciona JavaScript',6,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(4,'¿Cómo hacer tu primera pagina web?',4,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(5,'Diseño de tu pagina web',3,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(6,'Promesas de JavaScript',2,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(7,'Testing JavaScript',1,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(8,'introducciona HTML',45,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(9,'introducciona CSS',11,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(10,'introducciona JavaScript',12,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(11,'¿Cómo hacer tu primera pagina web?',10,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(12,'Diseño de tu pagina web',9,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(13,'Promesas de JavaScript',8,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(14,'Testing JavaScript',7,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(15,'introducciona HTML',43,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(16,'introducciona CSS',17,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(17,'introducciona JavaScript',18,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(18,'¿Cómo hacer tu primera pagina web?',16,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(19,'Diseño de tu pagina web',15,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(20,'Promesas de JavaScript',14,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(21,'Testing JavaScript',13,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(22,'introducciona HTML',44,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(23,'introducciona CSS',23,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(24,'introducciona JavaScript',24,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(25,'¿Cómo hacer tu primera pagina web?',22,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(26,'Diseño de tu pagina web',21,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(27,'Promesas de JavaScript',20,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(28,'Testing JavaScript',19,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(29,'introducciona HTML',49,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(30,'introducciona CSS',29,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(31,'introducciona JavaScript',30,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(32,'¿Cómo hacer tu primera pagina web?',28,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(33,'Diseño de tu pagina web',27,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(34,'Promesas de JavaScript',26,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(35,'Testing JavaScript',25,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(36,'introducciona HTML',50,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(37,'introducciona CSS',36,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(38,'introducciona JavaScript',31,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(39,'¿Cómo hacer tu primera pagina web?',35,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(40,'Diseño de tu pagina web',34,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(41,'Promesas de JavaScript',33,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(42,'Testing JavaScript',32,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(43,'introducciona HTML',51,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(44,'introducciona CSS',42,'Breve introduccional lenguaje CSS',100,10,2,2,'Contenido'),(45,'introducciona JavaScript',37,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(46,'¿Cómo hacer tu primera pagina web?',41,'Paso a paso de la creación de tu pagina web',100,10,1,1,'Contenido'),(47,'Diseño de tu pagina web',40,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(48,'Promesas de JavaScript',39,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(49,'Testing JavaScript',38,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(50,'introducciona HTML',52,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(51,'introducciona JavaScript',47,'Breve introduccional lenguaje JavaScript',100,10,3,3,'Contenido'),(52,'Testing JavaScript',48,'Cómo realizar testing avanzados',100,10,3,3,'Contenido');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dificultad`
--

DROP TABLE IF EXISTS `dificultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dificultad` (
  `id_dificultad` int NOT NULL AUTO_INCREMENT,
  `dificultad` varchar(15) NOT NULL,
  PRIMARY KEY (`id_dificultad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dificultad`
--

LOCK TABLES `dificultad` WRITE;
/*!40000 ALTER TABLE `dificultad` DISABLE KEYS */;
INSERT INTO `dificultad` VALUES (1,'Baja '),(2,'Media '),(3,'Alta');
/*!40000 ALTER TABLE `dificultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `comprado` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Comprado '),(2,'Iniciado '),(3,'Completado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuacion`
--

DROP TABLE IF EXISTS `puntuacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntuacion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `puntuacion` int NOT NULL,
  `usuario` int NOT NULL,
  `curso` int NOT NULL,
  `fecha` datetime GENERATED ALWAYS AS (10) VIRTUAL,
  PRIMARY KEY (`id`),
  KEY `id_usuario_idx` (`usuario`),
  KEY `curso_idx` (`curso`),
  CONSTRAINT `curso0` FOREIGN KEY (`curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `usuario0` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuacion`
--

LOCK TABLES `puntuacion` WRITE;
/*!40000 ALTER TABLE `puntuacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntuacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temática`
--

DROP TABLE IF EXISTS `temática`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temática` (
  `id_tematica` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(24) NOT NULL,
  PRIMARY KEY (`id_tematica`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temática`
--

LOCK TABLES `temática` WRITE;
/*!40000 ALTER TABLE `temática` DISABLE KEYS */;
INSERT INTO `temática` VALUES (1,'HTML'),(2,'CSS'),(3,'JavaScript');
/*!40000 ALTER TABLE `temática` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `usuario_curso`
--

DROP TABLE IF EXISTS `usuario_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_curso` (
  `usuario_id_usuario` int NOT NULL,
  `curso_id_curso` int NOT NULL,
  KEY `fk_usuario_has_curso1_curso1_idx` (`curso_id_curso`),
  KEY `fk_usuario_has_curso1_usuario1_idx` (`usuario_id_usuario`),
  CONSTRAINT `fk_usuario_has_curso1_curso1` FOREIGN KEY (`curso_id_curso`) REFERENCES `curso` (`id_curso`),
  CONSTRAINT `fk_usuario_has_curso1_usuario1` FOREIGN KEY (`usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_curso`
--

LOCK TABLES `usuario_curso` WRITE;
/*!40000 ALTER TABLE `usuario_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_estado_curso`
--

DROP TABLE IF EXISTS `usuario_estado_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_estado_curso` (
  `id_usuario` int NOT NULL,
  `id_curso` int NOT NULL,
  `id_estado` int NOT NULL,
  KEY `id_usuario_idx` (`id_usuario`),
  KEY `id_curso_idx` (`id_curso`),
  KEY `id_estado_idx` (`id_estado`),
  CONSTRAINT `id_curso` FOREIGN KEY (`id_curso`) REFERENCES `uknow5`.`curso` (`Id_curso`),
  CONSTRAINT `id_estado` FOREIGN KEY (`id_estado`) REFERENCES `uknow5`.`estado` (`id_estado`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_estado_curso`
--

LOCK TABLES `usuario_estado_curso` WRITE;
/*!40000 ALTER TABLE `usuario_estado_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_estado_curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-06 15:50:51
