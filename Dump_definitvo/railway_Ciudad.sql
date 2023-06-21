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
-- Table structure for table `Ciudad`
--

DROP TABLE IF EXISTS `Ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ciudad` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `region` varchar(500) NOT NULL,
  `departamento` varchar(500) NOT NULL,
  `ciudad` varchar(500) NOT NULL,
  PRIMARY KEY (`id_ciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ciudad`
--

LOCK TABLES `Ciudad` WRITE;
/*!40000 ALTER TABLE `Ciudad` DISABLE KEYS */;
INSERT INTO `Ciudad` VALUES (1,'Región Caribe','Atlántico','Barranquilla'),(2,'Región Andina','Bogotá D.C.','Bogotá'),(3,'Región Andina','Antioquia','Medellín'),(4,'Región Andina','Valle del Cauca','Cali'),(5,'Región Andina','Risaralda','Pereira'),(6,'Región Orinoquía','Meta','Villavicencio'),(7,'Región Pacífico','Nariño','Pasto'),(8,'Región Caribe','Magdalena','Santa Marta'),(9,'Región Andina','Cundinamarca','Chía'),(10,'Región Pacífico','Valle del Cauca','Buenaventura'),(11,'Región Andina','Boyacá','Tunja'),(12,'Región Pacífico','Chocó','Quibdó'),(13,'Región Caribe','Córdoba','Montería'),(14,'Región Caribe','Bolívar','Cartagena'),(15,'Región Andina','Caldas','Manizales'),(16,'Región Andina','Quindío','Armenia'),(17,'Región Andina','Santander','Bucaramanga'),(18,'Región Caribe','La Guajira','Riohacha'),(19,'Región Caribe','Sucre','Sincelejo'),(20,'Región Caribe','Atlántico','Soledad'),(21,'Región Andina','Caldas','Pácora'),(22,'Región Andina','Tolima','Ibagué'),(23,'Región Andina','Cundinamarca','Zipaquirá'),(24,'Región Andina','Boyacá','Duitama'),(25,'Región Caribe','Magdalena','Ciénaga'),(26,'Región Andina','Huila','Neiva'),(27,'Región Andina','Norte de Santander','Cúcuta'),(28,'Región Andina','Cauca','Popayán'),(29,'Región Caribe','Córdoba','Ciénaga de Oro'),(30,'Región Andina','Cundinamarca','Fusagasugá'),(31,'Región Andina','Antioquia','Itagüí'),(32,'Región Orinoquía','Meta','Acacias'),(33,'Región Caribe','Sucre','Tolú'),(34,'Región Andina','Caldas','Chinchiná'),(35,'Región Andina','Santander','Floridablanca'),(36,'Región Pacífico','Valle del Cauca','Cali'),(37,'Región Caribe','Bolívar','Arjona'),(38,'Región Andina','Cundinamarca','Mosquera'),(39,'Región Andina','Boyacá','Paipa'),(40,'Región Andina','Nariño','Ipiales'),(41,'Región Orinoquía','Meta','Puerto Gaitán'),(42,'Región Andina','Cundinamarca','Girardot'),(43,'Región Andina','Cauca','Santander de Quilichao'),(44,'Región Andina','Antioquia','Envigado'),(45,'Región Orinoquía','Arauca','Arauca'),(46,'Región Caribe','La Guajira','Maicao'),(47,'Región Andina','Santander','Piedecuesta'),(48,'Región Caribe','Magdalena','Fundación');
/*!40000 ALTER TABLE `Ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:59:26
