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
-- Table structure for table `Usuarios`
--

DROP TABLE IF EXISTS `Usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo_electrónico` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `cedula` varchar(50) NOT NULL,
  `genero` varchar(100) DEFAULT NULL,
  `edad` int NOT NULL,
  `datos_pago` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuarios`
--

LOCK TABLES `Usuarios` WRITE;
/*!40000 ALTER TABLE `Usuarios` DISABLE KEYS */;
INSERT INTO `Usuarios` VALUES (1,'Juan Perez','juanperez@example.com','juan123','1234567890','Mas',25,'Visa, **** **** **** 1234'),(2,'Maria Rodriguez','mariarodriguez@example.com','maria456','0987654321','Fem',25,'Mastercard, **** **** **** 5678'),(3,'Roberto Torres','robertotorres@example.com','roberto789','1357908642','Mas',29,'American Express, **** **** **** 9012'),(4,'Laura Gomez','lauragomez@example.com','laura123','2468013579','Fem',20,'PayPal, lauragomez@example.com'),(5,'Carlos Hernandez','carloshernandez@example.com','carlos456','9753102468','Mas',65,'Visa, **** **** **** 3456'),(6,'Ana Fernandez','anafernandez@example.com','ana789','8642097531','Fem',26,'Mastercard, **** **** **** 6789'),(7,'Daniel Torres','danieltorres@example.com','daniel123','1235798642','Mas',21,'American Express, **** **** **** 0123'),(8,'Marta Garcia','martagarcia@example.com','marta456','2468135790','Fem',35,'PayPal, martagarcia@example.com'),(9,'Pedro Rodriguez','pedrorodriguez@example.com','pedro789','9753102468','Mas',25,'Visa, **** **** **** 7890'),(10,'Sofia Gonzalez','sofiagonzalez@example.com','sofia123','8642097531','Fem',25,'Mastercard, **** **** **** 1234'),(11,'Julia Perez','juliaperez@example.com','julia456','1357908642','Fem',25,'American Express, **** **** **** 5678'),(12,'Mario Castro','mariocastro@example.com','mario789','2468013579','Mas',52,'PayPal, mariocastro@example.com'),(13,'Luisa Ramirez','luisaramirez@example.com','luisa123','9753102468','Fem',32,'Visa, **** **** **** 9012'),(14,'David Garcia','davidgarcia@example.com','david456','8642097531','Mas',45,'Mastercard, **** **** **** 3456'),(15,'Juan Perez','juanperez@example.com','juan123','1234567890','Mas',25,'Visa, **** **** **** 1234'),(16,'Maria Rodriguez','mariarodriguez@example.com','maria456','0987654321','Fem',25,'Mastercard, **** **** **** 5678'),(17,'Roberto Torres','robertotorres@example.com','roberto789','1357908642','Mas',29,'American Express, **** **** **** 9012'),(18,'Laura Gomez','lauragomez@example.com','laura123','2468013579','Fem',20,'PayPal, lauragomez@example.com'),(19,'Carlos Hernandez','carloshernandez@example.com','carlos456','9753102468','Mas',65,'Visa, **** **** **** 3456'),(20,'Ana Fernandez','anafernandez@example.com','ana789','8642097531','Fem',26,'Mastercard, **** **** **** 6789'),(21,'Daniel Torres','danieltorres@example.com','daniel123','1235798642','Mas',21,'American Express, **** **** **** 0123'),(22,'Marta Garcia','martagarcia@example.com','marta456','2468135790','Fem',35,'PayPal, martagarcia@example.com'),(23,'Pedro Rodriguez','pedrorodriguez@example.com','pedro789','9753102468','Mas',25,'Visa, **** **** **** 7890'),(24,'Sofia Gonzalez','sofiagonzalez@example.com','sofia123','8642097531','Fem',25,'Mastercard, **** **** **** 1234'),(25,'Julia Perez','juliaperez@example.com','julia456','1357908642','Fem',25,'American Express, **** **** **** 5678'),(26,'Mario Castro','mariocastro@example.com','mario789','2468013579','Mas',52,'PayPal, mariocastro@example.com'),(27,'Luisa Ramirez','luisaramirez@example.com','luisa123','9753102468','Fem',32,'Visa, **** **** **** 9012'),(28,'Juan Perez','juanperez@example.com','juan123','1234567890','Mas',25,'Visa, **** **** **** 1234'),(29,'Maria Rodriguez','mariarodriguez@example.com','maria456','0987654321','Fem',25,'Mastercard, **** **** **** 5678'),(30,'Roberto Torres','robertotorres@example.com','roberto789','1357908642','Mas',29,'American Express, **** **** **** 9012'),(31,'Laura Gomez','lauragomez@example.com','laura123','2468013579','Fem',20,'PayPal, lauragomez@example.com'),(32,'Carlos Hernandez','carloshernandez@example.com','carlos456','9753102468','Mas',65,'Visa, **** **** **** 3456'),(33,'Ana Fernandez','anafernandez@example.com','ana789','8642097531','Fem',26,'Mastercard, **** **** **** 6789'),(34,'Daniel Torres','danieltorres@example.com','daniel123','1235798642','Mas',21,'American Express, **** **** **** 0123'),(35,'Marta Garcia','martagarcia@example.com','marta456','2468135790','Fem',35,'PayPal, martagarcia@example.com'),(36,'Pedro Rodriguez','pedrorodriguez@example.com','pedro789','9753102468','Mas',25,'Visa, **** **** **** 7890'),(37,'Sofia Gonzalez','sofiagonzalez@example.com','sofia123','8642097531','Fem',25,'Mastercard, **** **** **** 1234'),(38,'Julia Perez','juliaperez@example.com','julia456','1357908642','Fem',25,'American Express, **** **** **** 5678'),(39,'Mario Castro','mariocastro@example.com','mario789','2468013579','Mas',52,'PayPal, mariocastro@example.com'),(40,'Luisa Ramirez','luisaramirez@example.com','luisa123','9753102468','Fem',32,'Visa, **** **** **** 9012'),(41,'David Garcia','davidgarcia@example.com','david456','8642097531','Mas',45,'Mastercard, **** **** **** 3456'),(42,'Juan Perez','juanperez@example.com','juan123','1234567890','Mas',25,'Visa, **** **** **** 1234'),(43,'Maria Rodriguez','mariarodriguez@example.com','maria456','0987654321','Fem',25,'Mastercard, **** **** **** 5678'),(44,'Roberto Torres','robertotorres@example.com','roberto789','1357908642','Mas',29,'American Express, **** **** **** 9012'),(45,'Laura Gomez','lauragomez@example.com','laura123','2468013579','Fem',20,'PayPal, lauragomez@example.com'),(46,'Carlos Hernandez','carloshernandez@example.com','carlos456','9753102468','Mas',65,'Visa, **** **** **** 3456'),(47,'Ana Fernandez','anafernandez@example.com','ana789','8642097531','Fem',26,'Mastercard, **** **** **** 6789'),(48,'Daniel Torres','danieltorres@example.com','daniel123','1235798642','Mas',21,'American Express, **** **** **** 0123'),(49,'Marta Garcia','martagarcia@example.com','marta456','2468135790','Fem',35,'PayPal, martagarcia@example.com'),(50,'Pedro Rodriguez','pedrorodriguez@example.com','pedro789','9753102468','Mas',25,'Visa, **** **** **** 7890'),(51,'Sofia Gonzalez','sofiagonzalez@example.com','sofia123','8642097531','Fem',25,'Mastercard, **** **** **** 1234'),(52,'Julia Perez','juliaperez@example.com','julia456','1357908642','Fem',25,'American Express, **** **** **** 5678'),(53,'Mario Castro','mariocastro@example.com','mario789','2468013579','Mas',52,'PayPal, mariocastro@example.com'),(54,'Luisa Ramirez','luisaramirez@example.com','luisa123','9753102468','Fem',32,'Visa, **** **** **** 9012'),(55,'Juan Perez','juanperez@example.com','juan123','1234567890','Mas',25,'Visa, **** **** **** 1234'),(56,'Maria Rodriguez','mariarodriguez@example.com','maria456','0987654321','Fem',25,'Mastercard, **** **** **** 5678'),(57,'Roberto Torres','robertotorres@example.com','roberto789','1357908642','Mas',29,'American Express, **** **** **** 9012'),(58,'Laura Gomez','lauragomez@example.com','laura123','2468013579','Fem',20,'PayPal, lauragomez@example.com'),(59,'Carlos Hernandez','carloshernandez@example.com','carlos456','9753102468','Mas',65,'Visa, **** **** **** 3456'),(60,'Ana Fernandez','anafernandez@example.com','ana789','8642097531','Fem',26,'Mastercard, **** **** **** 6789'),(61,'Daniel Torres','danieltorres@example.com','daniel123','1235798642','Mas',21,'American Express, **** **** **** 0123'),(62,'Marta Garcia','martagarcia@example.com','marta456','2468135790','Fem',35,'PayPal, martagarcia@example.com'),(63,'Pedro Rodriguez','pedrorodriguez@example.com','pedro789','9753102468','Mas',25,'Visa, **** **** **** 7890'),(64,'Sofia Gonzalez','sofiagonzalez@example.com','sofia123','8642097531','Fem',25,'Mastercard, **** **** **** 1234'),(65,'Julia Perez','juliaperez@example.com','julia456','1357908642','Fem',25,'American Express, **** **** **** 5678'),(66,'Mario Castro','mariocastro@example.com','mario789','2468013579','Mas',52,'PayPal, mariocastro@example.com'),(67,'Luisa Ramirez','luisaramirez@example.com','luisa123','9753102468','Fem',32,'Visa, **** **** **** 9012'),(68,'David Garcia','davidgarcia@example.com','david456','8642097531','Mas',45,'Mastercard, **** **** **** 3456');
/*!40000 ALTER TABLE `Usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 23:59:43
