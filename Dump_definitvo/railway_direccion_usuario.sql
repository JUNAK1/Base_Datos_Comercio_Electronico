-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: containers-us-west-122.railway.app    Database: railway
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
-- Table structure for table `direccion_usuario`
--

DROP TABLE IF EXISTS `direccion_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion_usuario` (
  `id_direccion` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `id_ciudad` int NOT NULL,
  `direccion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_direccion`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_ciudad` (`id_ciudad`),
  CONSTRAINT `direccion_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios` (`id_usuario`),
  CONSTRAINT `direccion_usuario_ibfk_2` FOREIGN KEY (`id_ciudad`) REFERENCES `Ciudad` (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_usuario`
--

LOCK TABLES `direccion_usuario` WRITE;
/*!40000 ALTER TABLE `direccion_usuario` DISABLE KEYS */;
INSERT INTO `direccion_usuario` VALUES (1,1,1,'Calle 123 #456'),(2,1,2,'Avenida XYZ #789'),(3,2,3,'Carrera ABC #101'),(4,2,4,'Diagonal LMN #202'),(5,3,5,'Transversal OPQ #303'),(6,3,6,'Calle 456 #707'),(7,4,7,'Avenida UVW #404'),(8,4,8,'Diagonal XYZ #505'),(9,5,9,'Carrera 789 #606'),(10,5,10,'Transversal DEF #707'),(11,6,11,'Calle 234 #808'),(12,6,12,'Avenida GHI #909'),(13,7,13,'Diagonal JKL #1010'),(14,7,14,'Carrera MNO #1111'),(15,8,15,'Transversal PQRS #1212'),(16,8,16,'Avenida TUV #1313'),(17,9,17,'Diagonal WXY #1414'),(18,9,18,'Calle ZAB #1515'),(19,10,19,'Carrera CDE #1616'),(20,10,13,'Calle 321 #654'),(21,12,16,'Carrera XYZ #123'),(22,15,23,'Avenida ABC #456'),(23,20,33,'Transversal LMN #789'),(24,25,41,'Diagonal OPQ #101'),(25,27,29,'Calle 456 #707'),(26,31,12,'Avenida UVW #404'),(27,35,19,'Diagonal XYZ #505'),(28,40,28,'Carrera 789 #606'),(29,44,41,'Calle 111 #222'),(30,46,15,'Avenida 555 #666'),(31,50,27,'Carrera 888 #999'),(32,52,36,'Transversal 777 #888'),(33,55,44,'Calle 222 #333'),(34,58,48,'Avenida 999 #888'),(35,60,11,'Diagonal 777 #666'),(36,13,20,'Carrera 333 #222'),(37,17,24,'Transversal 555 #444'),(38,21,37,'Calle 888 #777');
/*!40000 ALTER TABLE `direccion_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:59:22
