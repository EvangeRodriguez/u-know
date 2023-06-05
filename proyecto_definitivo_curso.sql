CREATE DATABASE  IF NOT EXISTS `proyecto_definitivo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `proyecto_definitivo`;
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
INSERT INTO `curso` VALUES (1,'introducciona HTML',46,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(2,'introducciona CSS',5,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(3,'introducciona JavaScript',6,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(4,'¿Cómo hacer tu primera pagina web?',4,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(5,'Diseño de tu pagina web',3,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(6,'Promesas de JavaScript',2,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(7,'Testing JavaScript',1,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(8,'introducciona HTML',45,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(9,'introducciona CSS',11,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(10,'introducciona JavaScript',12,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(11,'¿Cómo hacer tu primera pagina web?',10,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(12,'Diseño de tu pagina web',9,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(13,'Promesas de JavaScript',8,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(14,'Testing JavaScript',7,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(15,'introducciona HTML',43,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(16,'introducciona CSS',17,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(17,'introducciona JavaScript',18,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(18,'¿Cómo hacer tu primera pagina web?',16,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(19,'Diseño de tu pagina web',15,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(20,'Promesas de JavaScript',14,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(21,'Testing JavaScript',13,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(22,'introducciona HTML',44,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(23,'introducciona CSS',23,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(24,'introducciona JavaScript',24,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(25,'¿Cómo hacer tu primera pagina web?',22,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(26,'Diseño de tu pagina web',21,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(27,'Promesas de JavaScript',20,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(28,'Testing JavaScript',19,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(29,'introducciona HTML',49,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(30,'introducciona CSS',29,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(31,'introducciona JavaScript',30,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(32,'¿Cómo hacer tu primera pagina web?',28,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(33,'Diseño de tu pagina web',27,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(34,'Promesas de JavaScript',26,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(35,'Testing JavaScript',25,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(36,'introducciona HTML',50,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(37,'introducciona CSS',36,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(38,'introducciona JavaScript',31,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(39,'¿Cómo hacer tu primera pagina web?',35,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(40,'Diseño de tu pagina web',34,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(41,'Promesas de JavaScript',33,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(42,'Testing JavaScript',32,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(43,'introducciona HTML',51,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(44,'introducciona CSS',42,'Breve introduccional lenguaje CSS',100,10,1,2,'Contenido'),(45,'introducciona JavaScript',37,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(46,'¿Cómo hacer tu primera pagina web?',41,'Paso a paso de la creación de tu pagina web',100,10,2,1,'Contenido'),(47,'Diseño de tu pagina web',40,'Paso a paso del diseño  tu página',100,10,2,2,'Contenido'),(48,'Promesas de JavaScript',39,'¿Qué son y para que sirven?',100,10,3,3,'Contenido'),(49,'Testing JavaScript',38,'Cómo realizar testing avanzados',100,10,3,3,'Contenido'),(50,'introducciona HTML',52,'Breve introduccional lenguaje HTML',100,10,1,1,'Contenido'),(51,'introducciona JavaScript',47,'Breve introduccional lenguaje JavaScript',100,10,1,3,'Contenido'),(52,'Testing JavaScript',48,'Cómo realizar testing avanzados',100,10,3,3,'Contenido');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-05 13:31:39
