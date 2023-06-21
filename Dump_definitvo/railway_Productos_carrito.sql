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
-- Table structure for table `Productos_carrito`
--

DROP TABLE IF EXISTS `Productos_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos_carrito` (
  `id_producto` int NOT NULL,
  `id_carrito` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_producto`,`id_carrito`),
  KEY `id_carrito` (`id_carrito`),
  CONSTRAINT `Productos_carrito_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id_producto`),
  CONSTRAINT `Productos_carrito_ibfk_2` FOREIGN KEY (`id_carrito`) REFERENCES `Carrito_compras` (`id_carrito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos_carrito`
--

LOCK TABLES `Productos_carrito` WRITE;
/*!40000 ALTER TABLE `Productos_carrito` DISABLE KEYS */;
INSERT INTO `Productos_carrito` VALUES (1,7,1),(2,7,1),(2,15,2),(4,15,2),(5,7,1),(6,15,2),(23,3,1),(23,7,1),(23,15,2),(24,4,4),(24,7,1),(24,8,3),(25,5,3),(25,8,3),(25,9,2),(26,9,2),(26,10,4),(27,2,1),(27,12,3),(28,1,4),(28,7,1),(29,2,2),(29,8,2),(30,3,3),(30,9,1),(31,2,3),(31,14,1),(32,1,2),(32,15,2),(33,2,2),(33,6,2);
/*!40000 ALTER TABLE `Productos_carrito` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:59:47
