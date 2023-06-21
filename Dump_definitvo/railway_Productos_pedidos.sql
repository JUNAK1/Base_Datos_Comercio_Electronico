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
-- Table structure for table `Productos_pedidos`
--

DROP TABLE IF EXISTS `Productos_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Productos_pedidos` (
  `id_producto` int NOT NULL,
  `id_pedido` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_producto`,`id_pedido`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `Productos_pedidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id_producto`),
  CONSTRAINT `Productos_pedidos_ibfk_2` FOREIGN KEY (`id_pedido`) REFERENCES `Pedidos` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Productos_pedidos`
--

LOCK TABLES `Productos_pedidos` WRITE;
/*!40000 ALTER TABLE `Productos_pedidos` DISABLE KEYS */;
INSERT INTO `Productos_pedidos` VALUES (23,2,3,389158.00),(23,12,1,4563369.00),(24,2,2,3949369.00),(24,7,4,5756739.00),(25,3,1,7935587.00),(25,8,2,4707716.00),(25,13,3,8131820.00),(26,3,4,8835950.00),(26,8,3,2084291.00),(26,13,2,1013605.00),(27,4,2,7215156.00),(27,9,3,6634961.00),(27,14,1,2529336.00),(28,4,3,1141798.00),(28,9,1,6520987.00),(28,14,4,2779536.00),(29,5,3,2734722.00),(29,10,2,5035002.00),(29,15,2,7970844.00),(30,5,1,7049212.00),(30,10,3,2333527.00),(30,15,2,7620002.00),(31,1,2,4699426.00),(31,6,2,337124.00),(31,11,1,4687347.00),(32,1,1,4725361.00),(32,6,2,564764.00),(32,11,2,5747739.00),(33,7,1,644400.00),(33,12,2,3078787.00);
/*!40000 ALTER TABLE `Productos_pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:59:39
