-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `idtipo_documento` int(11) DEFAULT NULL,
  `documento` varchar(30) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `idmunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `idtipo_documento` (`idtipo_documento`),
  KEY `idmunicipio` (`idmunicipio`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1,'111111111','BRIGITE','FUEL',1),(2,1,'222222222','SANDRA','GUALGUAN',1),(3,2,'333333333','YEIMI','ARGOTI',1),(4,2,'444444444','ANDRES','BARRERA',1),(5,2,'555555555','HECTOR','MADROÑERO',2),(6,2,'666666666','RICHARD','BASTIDAS',2),(7,2,'777777777','GINA','VEGA',2),(8,2,'888888888','GINELA','ORTIZ',2),(9,2,'999999999','JAIRO','LUNA',3),(10,2,'101010101','WILSON','GOMEZ',3),(11,2,'121212121','LUIS','AGUIRRE',3),(12,2,'131313131','LUIS','ORDOÑEZ',3),(13,2,'141414141','YENNI','CHAVES',4),(14,2,'151515151','JAVIER','HERNANDEZ',4),(15,2,'161616161','MONICA','HERNANDEZ',4),(16,2,'171717171','ALEXANDRA','JURADO',4),(17,2,'181818181','LUBIER','VEGA',5),(18,2,'191919191','FABIO','DIAZ',5),(19,2,'202020202','ALBERTO','ANDAMIO',5),(20,2,'212121212','POLONIO','COLON',5),(21,2,'232323232','ALICIA','TABARES',6),(22,2,'242424242','JUAN','ALARCON',6),(23,2,'252525252','PATRICIA','CORONEL',6),(24,2,'262626262','JUAN','TABARES',6),(25,3,'272727272','MARCELO','ZAPATA',7),(26,4,'282828282','MICHAEL','SMITH',8),(27,3,'272727272','RAMON','BENCENO',7),(28,4,'282828282','JESICA','SIMPSON',8);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 20:35:01
