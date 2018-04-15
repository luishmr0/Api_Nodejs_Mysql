CREATE DATABASE  IF NOT EXISTS `cajachica` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cajachica`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cajachica
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `desc_area` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `l_activo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'area1','0'),(2,'area2','0');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clase` (
  `id_clase` int(11) NOT NULL AUTO_INCREMENT,
  `desc_clase` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_clase`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,'clase1'),(2,'clase2');
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concepto`
--

DROP TABLE IF EXISTS `concepto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `concepto` (
  `id_concepto` int(11) NOT NULL AUTO_INCREMENT,
  `concepto_gasto` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_concepto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concepto`
--

LOCK TABLES `concepto` WRITE;
/*!40000 ALTER TABLE `concepto` DISABLE KEYS */;
INSERT INTO `concepto` VALUES (1,'MOVILIDAD'),(2,'BIEN'),(3,'SERVICIO');
/*!40000 ALTER TABLE `concepto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta`
--

DROP TABLE IF EXISTS `meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta` (
  `id_meta` int(11) NOT NULL AUTO_INCREMENT,
  `desc_meta` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `l_activo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_meta`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta`
--

LOCK TABLES `meta` WRITE;
/*!40000 ALTER TABLE `meta` DISABLE KEYS */;
INSERT INTO `meta` VALUES (5,'meta1','A'),(6,'meta2','D');
/*!40000 ALTER TABLE `meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `id_partida` int(11) NOT NULL AUTO_INCREMENT,
  `desc_partida` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_partida`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
INSERT INTO `partida` VALUES (1,'partida1'),(2,'partida2');
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programa` (
  `id_programa` int(11) NOT NULL AUTO_INCREMENT,
  `desc_programa` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_programa` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_programa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (1,'ODAJUD','A'),(2,'JUSTICIA EN LA COMUNIDAD','A'),(3,'LABORAL','A'),(4,'ADMINISTRACION','A');
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL AUTO_INCREMENT,
  `desc_proveedor` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ruc` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'proveedor 1','32105469852'),(2,'proveedor 2','40005469853'),(3,'proveedor 3','98756452136');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rendicion`
--

DROP TABLE IF EXISTS `rendicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rendicion` (
  `id_rendicion` int(11) NOT NULL AUTO_INCREMENT,
  `presupuesto` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_rendicion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rendicion`
--

LOCK TABLES `rendicion` WRITE;
/*!40000 ALTER TABLE `rendicion` DISABLE KEYS */;
INSERT INTO `rendicion` VALUES (1,'OPERACION','2018-04-12',0.00),(2,'INVERSION','2018-04-13',0.00),(3,'INVERSION','2018-04-13',0.00),(4,'INVERSION','2018-04-13',0.00),(5,'Operacion','2018-04-11',0.00),(6,'Inversion','2018-04-11',0.00),(7,'Operacion','2018-04-12',0.00),(8,'Inversion','2018-04-12',0.00),(9,'Operacion','2018-04-12',0.00),(10,'Operacion','2018-04-12',0.00);
/*!40000 ALTER TABLE `rendicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reporte` (
  `id_reporte` int(11) NOT NULL AUTO_INCREMENT,
  `rendicion_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `clase_id` int(11) NOT NULL,
  `numero` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `dni_ruc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `detalle_gasto` text COLLATE utf8_spanish2_ci NOT NULL,
  `concepto_id` int(11) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `partida_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `meta_id` int(11) NOT NULL,
  PRIMARY KEY (`id_reporte`),
  KEY `meta_id` (`meta_id`),
  KEY `programa_id` (`programa_id`),
  KEY `partidas_id` (`partida_id`),
  KEY `prove_id` (`proveedor_id`),
  KEY `clase_id` (`clase_id`),
  KEY `arealaboral_id` (`area_id`),
  KEY `clase_id_2` (`clase_id`),
  KEY `clase_id_3` (`clase_id`),
  KEY `programa_id_2` (`programa_id`),
  KEY `partida_id` (`partida_id`),
  KEY `clase_id_4` (`clase_id`),
  KEY `concepto_id` (`concepto_id`),
  KEY `rendicion_id` (`rendicion_id`),
  CONSTRAINT `reporte_ibfk_10` FOREIGN KEY (`clase_id`) REFERENCES `clase` (`id_clase`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_11` FOREIGN KEY (`concepto_id`) REFERENCES `concepto` (`id_concepto`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_12` FOREIGN KEY (`rendicion_id`) REFERENCES `rendicion` (`id_rendicion`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`meta_id`) REFERENCES `meta` (`id_meta`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_6` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id_programa`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_7` FOREIGN KEY (`partida_id`) REFERENCES `partida` (`id_partida`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_8` FOREIGN KEY (`area_id`) REFERENCES `area` (`id_area`) ON UPDATE CASCADE,
  CONSTRAINT `reporte_ibfk_9` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedor` (`id_proveedor`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (1,3,'2018-04-11',2,'123','2133212132',1,'csmlllllllllllllllllllllllllllllllllllllllll',2,1321231.00,1,2,2,5),(3,1,'2018-04-11',1,'123','2133212132',2,'holaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',2,1321231.00,1,2,2,5),(9,1,'2018-04-11',2,'123','2133212132',2,'sxasdasasd',2,1321231.00,1,2,2,5),(11,1,'2018-04-11',2,'12','2133212132',2,'sxasdasasd',2,1321231.00,1,2,2,5),(17,1,'2018-04-11',2,'12','2133212132',2,'sxasdasasd',2,1321231.00,1,2,2,5),(19,2,'2018-04-11',2,'12','2133212132',2,'sxasdasasd',2,1321231.00,1,2,2,5),(25,1,'2018-04-11',2,'123','1123123123',2,'12321312',1,123.00,1,3,2,5),(26,3,'2018-04-13',2,'324234342','534345453',2,'23wewewewrerwerwewerrwewerwer',2,345546.00,2,3,2,6),(27,4,'2018-04-13',2,'12312','1231321321',2,'12333333333333333333333333333333',3,123213.00,2,2,2,6),(28,5,'2018-04-11',2,'12','2133212132',2,'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',2,1321231.00,1,2,2,5),(29,6,'2018-04-03',2,'213123','1231231231',2,'assssssssssssssassssssssssssssssssssss',2,123.00,2,2,2,6),(30,7,'2018-04-06',2,'2','1231233434',2,'asdddddddddddddddddddasasas',2,12312321.00,2,3,2,6),(31,7,'2018-04-02',2,'123123123','123123123',1,'21123212121213321321233212121122121212121',2,1232131.00,1,2,1,5),(32,6,'2018-04-13',2,'12312','12213321',2,'213dassdasddasasdsdasas',2,12312.00,2,3,2,6),(33,1,'2018-04-13',2,'12132213','21321123',2,'asdasddaasas sda asdasd',2,12321.00,1,2,1,5);
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `apellido` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `privilegio` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` char(1) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'usap01','698422','user01','apelli1','caja','A'),(2,'user02','213123213','namex2','aplex6','admin','D'),(3,'user','123','Luis','Marin','caja','A'),(4,'user3','6666','name1','apel','admin','A'),(5,'user1','123','Luis','Marin','caja','D'),(6,'123','123','Administrador','JOla','admin','A');
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

-- Dump completed on 2018-04-15 18:32:45
