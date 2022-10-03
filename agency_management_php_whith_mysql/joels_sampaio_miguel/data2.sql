CREATE DATABASE  IF NOT EXISTS `agencia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agencia`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: agencia
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `agente`
--

DROP TABLE IF EXISTS `agente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agente` (
  `idagente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `nif` int NOT NULL,
  `datainicioagencia` date DEFAULT NULL,
  `datafimagencia` date DEFAULT NULL,
  `nacionalidade` varchar(45) NOT NULL,
  `codpais` varchar(45) NOT NULL,
  `telemovel` int NOT NULL,
  PRIMARY KEY (`idagente`),
  UNIQUE KEY `idagente_UNIQUE` (`idagente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agente`
--

LOCK TABLES `agente` WRITE;
/*!40000 ALTER TABLE `agente` DISABLE KEYS */;
INSERT INTO `agente` VALUES (11,'fred',23,9999990,'2015-02-04',NULL,'ingles','uk',910000000),(12,'john',23,9999990,'2015-02-04',NULL,'ingles','uk',910000000),(13,'jant',23,9999990,'2015-02-04',NULL,'ingles','uk',910000000),(14,'will',23,9999990,'2015-02-04',NULL,'ingles','uk',910000000),(15,'tea',23,9999990,'2015-02-04',NULL,'ingles','uk',910000000);
/*!40000 ALTER TABLE `agente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotografo`
--

DROP TABLE IF EXISTS `fotografo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotografo` (
  `idfotografo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `nacionalidade` varchar(45) DEFAULT NULL,
  `codpais` varchar(45) NOT NULL,
  `telemovel` int NOT NULL,
  `nif` varchar(45) NOT NULL,
  `morada` varchar(45) NOT NULL,
  `datainicioagencia` date DEFAULT NULL,
  `datafimagencia` date DEFAULT NULL,
  PRIMARY KEY (`idfotografo`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotografo`
--

LOCK TABLES `fotografo` WRITE;
/*!40000 ALTER TABLE `fotografo` DISABLE KEYS */;
INSERT INTO `fotografo` VALUES (10,'kerry',23,'ingles','uk',910000000,'9999990','','2015-02-04',NULL),(11,'james',23,'ingles','uk',910000000,'9999990','','2015-02-04',NULL),(12,'angela',23,'ingles','uk',910000000,'9999990','','2015-02-04',NULL),(13,'lisa',23,'ingles','uk',910000000,'9999990','','2015-02-04',NULL),(14,'jennie',23,'ingles','uk',910000000,'9999990','','2015-02-04',NULL);
/*!40000 ALTER TABLE `fotografo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fotografo_trabalho`
--

DROP TABLE IF EXISTS `fotografo_trabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fotografo_trabalho` (
  `idfotografo` int NOT NULL,
  `idtrabalho` int NOT NULL,
  `datainicio` date DEFAULT NULL,
  `datafim` date DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idfotografo`,`idtrabalho`),
  KEY `fk_fotgrafo_trabalho_dados_trabalho1_idx` (`idtrabalho`),
  CONSTRAINT `fk_fotgrafo_trabalho_dados_trabalho1` FOREIGN KEY (`idtrabalho`) REFERENCES `trabalho` (`idtrabalho`),
  CONSTRAINT `fk_fotgrafo_trabalho_fotografo1` FOREIGN KEY (`idfotografo`) REFERENCES `fotografo` (`idfotografo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotografo_trabalho`
--

LOCK TABLES `fotografo_trabalho` WRITE;
/*!40000 ALTER TABLE `fotografo_trabalho` DISABLE KEYS */;
INSERT INTO `fotografo_trabalho` VALUES (10,13,'2022-01-02','2022-01-02',NULL);
/*!40000 ALTER TABLE `fotografo_trabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico`
--

DROP TABLE IF EXISTS `historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico` (
  `idhistorico` int NOT NULL AUTO_INCREMENT,
  `quadril_anterior` float NOT NULL,
  `busto anterior` float NOT NULL,
  `cintura_anterior` float NOT NULL,
  `quadril_atual` float NOT NULL,
  `busto_atual` float NOT NULL,
  `idmodelo` int NOT NULL,
  PRIMARY KEY (`idhistorico`),
  KEY `fk_historico_modelo1_idx` (`idmodelo`),
  CONSTRAINT `fk_historico_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico`
--

LOCK TABLES `historico` WRITE;
/*!40000 ALTER TABLE `historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `idmedia` int NOT NULL AUTO_INCREMENT,
  `datamedia` date DEFAULT NULL,
  `resolucao` varchar(45) DEFAULT NULL,
  `idtrabalho` int NOT NULL,
  `metadados` varchar(45) NOT NULL,
  `idfotografo` int NOT NULL,
  PRIMARY KEY (`idmedia`),
  KEY `fk_fotografias_trabalho1_idx` (`idtrabalho`),
  KEY `fk_media_fotografo1_idx` (`idfotografo`),
  CONSTRAINT `fk_fotografias_trabalho1` FOREIGN KEY (`idtrabalho`) REFERENCES `trabalho` (`idtrabalho`),
  CONSTRAINT `fk_media_fotografo1` FOREIGN KEY (`idfotografo`) REFERENCES `fotografo` (`idfotografo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'2022-01-02','hd',10,'bareiro',10);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `idmodelo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `nacionalidade` varchar(45) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `idade` int NOT NULL,
  `morada` varchar(45) NOT NULL,
  `quadril` float DEFAULT NULL,
  `busto` float DEFAULT NULL,
  `cintura` float DEFAULT NULL,
  `altura` float NOT NULL,
  `nif` varchar(45) NOT NULL,
  `codpais` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `datainicioagencia` date NOT NULL,
  `datafimagencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmodelo`),
  UNIQUE KEY `idmodelo_UNIQUE` (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
INSERT INTO `modelo` VALUES (13,'LUANA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL),(14,'FILIPA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL),(15,'GABRIELA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL),(16,'TINA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL),(17,'GUIDA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL),(18,'LUANA','PT','FEMENINO',21,'RUA',35,25,35,183,'999999999','PORT','9111111111','2010-02-23',NULL);
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_media`
--

DROP TABLE IF EXISTS `modelo_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_media` (
  `idmodelo` int NOT NULL,
  `idfotografias` int NOT NULL,
  `comentaria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmodelo`,`idfotografias`),
  KEY `fk_modelo_media_media1_idx` (`idfotografias`),
  CONSTRAINT `fk_modelo_media_media1` FOREIGN KEY (`idfotografias`) REFERENCES `media` (`idmedia`),
  CONSTRAINT `fk_modelo_media_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_media`
--

LOCK TABLES `modelo_media` WRITE;
/*!40000 ALTER TABLE `modelo_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelo_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_trabalho`
--

DROP TABLE IF EXISTS `modelo_trabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_trabalho` (
  `idmodelo` int NOT NULL,
  `idtrabalho` int NOT NULL,
  `datainiciotrabalho` date DEFAULT NULL,
  `datafimtrabalho` date DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmodelo`,`idtrabalho`),
  KEY `fk_model_trabalho_dados_trabalho1_idx` (`idtrabalho`),
  CONSTRAINT `fk_model_trabalho_dados_trabalho1` FOREIGN KEY (`idtrabalho`) REFERENCES `trabalho` (`idtrabalho`),
  CONSTRAINT `fk_model_trabalho_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_trabalho`
--

LOCK TABLES `modelo_trabalho` WRITE;
/*!40000 ALTER TABLE `modelo_trabalho` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelo_trabalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `representacao`
--

DROP TABLE IF EXISTS `representacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `representacao` (
  `idrepresentacao` int NOT NULL AUTO_INCREMENT,
  `datainiciorepresentacao` date DEFAULT NULL,
  `datafimrepresentacao` date DEFAULT NULL,
  `motivofimrepresentacao` varchar(45) DEFAULT NULL,
  `idmodelo` int NOT NULL,
  `idagente` int NOT NULL,
  PRIMARY KEY (`idrepresentacao`,`idmodelo`,`idagente`),
  KEY `fk_representacao_modelo1_idx` (`idmodelo`),
  KEY `fk_representacao_agente1_idx` (`idagente`),
  CONSTRAINT `fk_representacao_agente1` FOREIGN KEY (`idagente`) REFERENCES `agente` (`idagente`),
  CONSTRAINT `fk_representacao_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `representacao`
--

LOCK TABLES `representacao` WRITE;
/*!40000 ALTER TABLE `representacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `representacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabalho`
--

DROP TABLE IF EXISTS `trabalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabalho` (
  `idtrabalho` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) NOT NULL,
  `datainiciotrabalho` date DEFAULT NULL,
  `datafimtrabalho` date DEFAULT NULL,
  `localizaçao` varchar(45) NOT NULL,
  PRIMARY KEY (`idtrabalho`),
  UNIQUE KEY `idtrabalho_UNIQUE` (`idtrabalho`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabalho`
--

LOCK TABLES `trabalho` WRITE;
/*!40000 ALTER TABLE `trabalho` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabalho` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 16:38:48
