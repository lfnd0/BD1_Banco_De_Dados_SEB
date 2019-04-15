CREATE DATABASE  IF NOT EXISTS `seb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `seb`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: seb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrador` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` varchar(15) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'José Ricardo de Souza Filho','12-06-1982','es1','es1');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aluno` (
  `matricula_aluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` varchar(15) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matricula_aluno`),
  UNIQUE KEY `matricula_aluno` (`matricula_aluno`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Arthur Farias','01-03-2005','arthur','123'),(2,'Breno Oliveira','03-12-2004','breno','123'),(3,'David Couto','21-07-2005','david','123'),(4,'Eliana Góis','29-10-2003','eliana','123'),(6,'Fábio Araújo','30-08-2005','fabio','123'),(7,'Maryana Tavares','31-06-2006','maryana','123'),(8,'Felipe Silvestre','13-05-2004','felipe','123'),(9,'André Guimarães','17-01-2005','andre','123'),(10,'Sophia Dritch','18-09-2006','sophia','123'),(11,'Gabriela','12-01-1992',NULL,NULL);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_cursa_disciplina`
--

DROP TABLE IF EXISTS `aluno_cursa_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aluno_cursa_disciplina` (
  `matricula_alunoFK` int(10) unsigned NOT NULL,
  `codigo_disciplinaFK` int(10) unsigned NOT NULL,
  PRIMARY KEY (`matricula_alunoFK`,`codigo_disciplinaFK`),
  KEY `codigo_disciplinaFK` (`codigo_disciplinaFK`),
  CONSTRAINT `aluno_cursa_disciplina_ibfk_1` FOREIGN KEY (`matricula_alunoFK`) REFERENCES `aluno` (`matricula_aluno`) ON DELETE CASCADE,
  CONSTRAINT `aluno_cursa_disciplina_ibfk_2` FOREIGN KEY (`codigo_disciplinaFK`) REFERENCES `disciplina` (`codigo_disciplina`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_cursa_disciplina`
--

LOCK TABLES `aluno_cursa_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_cursa_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_cursa_disciplina` VALUES (1,1),(2,1),(3,1),(4,1),(6,1),(7,1),(8,1),(9,1),(10,1),(1,2),(2,2),(3,2),(4,2),(6,2),(7,2),(8,2),(9,2),(10,2),(1,4),(2,4),(3,4),(4,4),(6,4),(7,4),(8,4),(9,4),(10,4),(1,5),(2,5),(3,5),(4,5),(6,5),(7,5),(8,5),(9,5),(10,5),(1,6),(2,6),(3,6),(4,6),(6,6),(7,6),(8,6),(9,6),(10,6),(1,7),(2,7),(3,7),(4,7),(6,7),(7,7),(8,7),(9,7),(10,7);
/*!40000 ALTER TABLE `aluno_cursa_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_tem_nota_disciplina`
--

DROP TABLE IF EXISTS `aluno_tem_nota_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `aluno_tem_nota_disciplina` (
  `matricula_alunoFK` int(10) unsigned NOT NULL,
  `id_notaFK` int(10) unsigned NOT NULL,
  `codigo_disciplinaFK` int(10) unsigned NOT NULL,
  PRIMARY KEY (`matricula_alunoFK`,`id_notaFK`,`codigo_disciplinaFK`),
  KEY `id_notaFK` (`id_notaFK`),
  KEY `codigo_disciplinaFK` (`codigo_disciplinaFK`),
  CONSTRAINT `aluno_tem_nota_disciplina_ibfk_1` FOREIGN KEY (`matricula_alunoFK`) REFERENCES `aluno` (`matricula_aluno`) ON DELETE CASCADE,
  CONSTRAINT `aluno_tem_nota_disciplina_ibfk_2` FOREIGN KEY (`id_notaFK`) REFERENCES `nota` (`id`) ON DELETE CASCADE,
  CONSTRAINT `aluno_tem_nota_disciplina_ibfk_3` FOREIGN KEY (`codigo_disciplinaFK`) REFERENCES `disciplina` (`codigo_disciplina`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_tem_nota_disciplina`
--

LOCK TABLES `aluno_tem_nota_disciplina` WRITE;
/*!40000 ALTER TABLE `aluno_tem_nota_disciplina` DISABLE KEYS */;
INSERT INTO `aluno_tem_nota_disciplina` VALUES (1,1,1),(1,2,2),(1,4,4),(1,5,5),(1,6,6),(1,7,7),(2,8,1),(2,9,2),(2,11,4),(2,12,5),(2,13,6),(2,14,7),(3,15,1),(3,16,2),(3,18,4),(3,19,5),(3,20,6),(3,21,7),(4,22,1),(4,23,2),(4,25,4),(4,26,5),(4,27,6),(4,28,7),(6,36,1),(6,37,2),(6,39,4),(6,40,5),(6,41,6),(6,42,7),(7,43,1),(7,44,2),(7,46,4),(7,47,5),(7,48,6),(7,49,7),(8,50,1),(9,61,5),(9,62,6),(9,63,7),(10,64,1),(10,65,2),(10,67,4),(10,68,5),(10,69,6),(10,70,7);
/*!40000 ALTER TABLE `aluno_tem_nota_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disciplina` (
  `codigo_disciplina` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matricula_professorFK` int(10) unsigned NOT NULL,
  `nome` varchar(45) NOT NULL,
  `carga_horaria` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo_disciplina`),
  UNIQUE KEY `codigo_disciplina` (`codigo_disciplina`),
  KEY `matricula_professorFK` (`matricula_professorFK`),
  CONSTRAINT `disciplina_ibfk_1` FOREIGN KEY (`matricula_professorFK`) REFERENCES `professor` (`matricula_professor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,1,'Língua portuguesa','80'),(2,2,'Matemática','80'),(4,4,'História','60'),(5,5,'Geografia','60'),(6,6,'Língua inglesa','40'),(7,7,'Informártica básica','40');
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nota` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bimestre1` double DEFAULT NULL,
  `bimestre2` double DEFAULT NULL,
  `bimestre3` double DEFAULT NULL,
  `bimestre4` double DEFAULT NULL,
  `reavaliacao1` double DEFAULT NULL,
  `reavaliacao2` double DEFAULT NULL,
  `matricula_professorFK` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `matricula_professorFK` (`matricula_professorFK`),
  CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`matricula_professorFK`) REFERENCES `professor` (`matricula_professor`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,10,10,10,10,0,0,1),(2,10,10,10,10,0,0,1),(3,10,10,10,10,0,0,1),(4,10,10,10,10,0,0,1),(5,10,10,10,10,0,0,1),(6,10,10,10,10,0,0,1),(7,10,10,10,10,0,0,1),(8,10,10,10,10,0,0,1),(9,10,10,10,10,0,0,1),(10,10,10,10,10,0,0,1),(11,10,10,10,10,0,0,2),(12,10,10,10,10,0,0,2),(13,10,10,10,10,0,0,2),(14,10,10,10,10,0,0,2),(15,10,10,10,10,0,0,2),(16,10,10,10,10,0,0,2),(17,10,10,10,10,0,0,2),(18,10,10,10,10,0,0,2),(19,10,10,10,10,0,0,2),(20,10,10,10,10,0,0,2),(21,10,10,10,10,0,0,3),(22,10,10,10,10,0,0,3),(23,10,10,10,10,0,0,3),(24,10,10,10,10,0,0,3),(25,10,10,10,10,0,0,3),(26,10,10,10,10,0,0,3),(27,10,10,10,10,0,0,3),(28,10,10,10,10,0,0,3),(29,10,10,10,10,0,0,3),(30,10,10,10,10,0,0,3),(31,10,10,10,10,0,0,4),(32,10,10,10,10,0,0,4),(33,10,10,10,10,0,0,4),(34,10,10,10,10,0,0,4),(35,10,10,10,10,0,0,4),(36,10,10,10,10,0,0,4),(37,10,10,10,10,0,0,4),(38,10,10,10,10,0,0,4),(39,10,10,10,10,0,0,4),(40,10,10,10,10,0,0,4),(41,10,10,10,10,0,0,5),(42,10,10,10,10,0,0,5),(43,10,10,10,10,0,0,5),(44,10,10,10,10,0,0,5),(45,10,10,10,10,0,0,5),(46,10,10,10,10,0,0,5),(47,10,10,10,10,0,0,5),(48,10,10,10,10,0,0,5),(49,10,10,10,10,0,0,5),(50,10,10,10,10,0,0,5),(61,10,10,10,10,0,0,7),(62,10,10,10,10,0,0,7),(63,10,10,10,10,0,0,7),(64,10,10,10,10,0,0,7),(65,10,10,10,10,0,0,7),(66,10,10,10,10,0,0,7),(67,10,10,10,10,0,0,7),(68,10,10,10,10,0,0,7),(69,10,10,10,10,0,0,7),(70,10,10,10,10,0,0,7);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `professor` (
  `matricula_professor` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `data_nascimento` varchar(15) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`matricula_professor`),
  UNIQUE KEY `matricula_professor` (`matricula_professor`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'Marlene Alves','31-10-1982','marlene','123'),(2,'José Wilson','01-04-1986','jose','123'),(3,'Fabrício Ghof','14-09-1980','fabricio','123'),(5,'Joaquim Borges','21-05-1984','joaquim','123'),(6,'Samara Díaz','02-03-1988','samara','123'),(7,'Ramon Velásquez','07-09-1985','ramon','123');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-15 20:16:15
