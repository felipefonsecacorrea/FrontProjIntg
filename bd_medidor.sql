CREATE DATABASE  IF NOT EXISTS `bd_medidor` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_medidor`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_medidor
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tb_re  0    +,0 vc gistro`
--

DROP TABLE IF EXISTS `tb_re  0    +,0 vc gistro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_re  0    +,0 vc gistro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temperatura` decimal(10,2) DEFAULT NULL,
  `pressao` decimal(10,2) DEFAULT NULL,
  `altitude` decimal(10,2) DEFAULT NULL,
  `umidade` decimal(10,2) DEFAULT NULL,
  `co2` decimal(10,2) DEFAULT NULL,
  `poeira` decimal(10,2) DEFAULT NULL,
  `tempo_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_re  0    +,0 vc gistro`
--

LOCK TABLES `tb_re  0    +,0 vc gistro` WRITE;
/*!40000 ALTER TABLE `tb_re  0    +,0 vc gistro` DISABLE KEYS */;
INSERT INTO `tb_re  0    +,0 vc gistro` VALUES (1,21.12,93304.72,745.33,55.00,NULL,0.00,'2024-10-29 21:40:23'),(2,21.12,93304.72,745.33,55.00,NULL,0.00,'2024-10-29 21:40:23'),(3,21.17,93309.83,744.87,55.00,NULL,0.00,'2024-10-29 21:40:53'),(4,21.17,93309.83,744.87,55.00,NULL,0.00,'2024-10-29 21:40:53'),(5,21.05,93310.91,744.78,55.00,NULL,0.00,'2024-10-29 21:41:23'),(6,21.05,93310.91,744.78,55.00,NULL,0.00,'2024-10-29 21:41:23'),(7,21.06,93309.65,744.89,55.00,NULL,0.00,'2024-10-29 21:41:53'),(8,21.06,93309.65,744.89,55.00,NULL,0.00,'2024-10-29 21:41:53'),(9,21.16,93312.11,744.67,56.00,NULL,0.00,'2024-10-29 21:42:23'),(10,21.16,93312.11,744.67,56.00,NULL,0.00,'2024-10-29 21:42:23'),(11,21.20,93311.70,744.68,57.00,NULL,0.00,'2024-10-29 21:42:53'),(12,21.20,93311.70,744.68,57.00,NULL,0.00,'2024-10-29 21:42:53'),(13,21.29,93312.86,744.61,57.00,NULL,0.00,'2024-10-29 21:43:23'),(14,21.29,93312.86,744.61,57.00,NULL,0.00,'2024-10-29 21:43:23'),(15,21.36,93315.17,744.40,57.00,NULL,0.00,'2024-10-29 21:43:53'),(16,21.36,93315.17,744.40,57.00,NULL,0.00,'2024-10-29 21:43:53'),(17,21.35,93314.08,744.50,58.00,NULL,0.00,'2024-10-29 21:44:23'),(18,21.35,93314.08,744.50,58.00,NULL,0.00,'2024-10-29 21:44:23'),(19,21.40,93309.05,744.94,58.00,NULL,0.00,'2024-10-29 21:44:53'),(20,21.40,93309.05,744.94,58.00,NULL,0.00,'2024-10-29 21:44:53'),(21,21.40,93313.14,744.58,58.00,NULL,0.00,'2024-10-29 21:45:23'),(22,21.40,93313.14,744.58,58.00,NULL,0.00,'2024-10-29 21:45:23'),(23,21.40,93312.79,744.61,58.00,NULL,0.00,'2024-10-29 21:45:52'),(24,21.40,93312.79,744.61,58.00,NULL,0.00,'2024-10-29 21:45:52'),(25,21.42,93312.00,744.68,59.00,NULL,0.00,'2024-10-29 21:46:23'),(26,21.42,93312.00,744.68,59.00,NULL,0.00,'2024-10-29 21:46:23'),(27,21.49,93309.04,744.94,59.00,NULL,0.00,'2024-10-29 21:46:53'),(28,21.49,93309.04,744.94,59.00,NULL,0.00,'2024-10-29 21:46:53'),(29,21.45,93314.61,744.45,59.00,NULL,0.00,'2024-10-29 21:47:23'),(30,21.45,93314.61,744.45,59.00,NULL,0.00,'2024-10-29 21:47:23'),(31,21.48,93316.64,744.27,60.00,NULL,0.00,'2024-10-29 21:47:53'),(32,21.48,93316.64,744.27,60.00,NULL,0.00,'2024-10-29 21:47:53'),(33,21.54,93314.78,744.43,60.00,NULL,0.00,'2024-10-29 21:48:23'),(34,21.54,93314.78,744.43,60.00,NULL,0.00,'2024-10-29 21:48:23'),(35,21.54,93312.95,744.60,60.00,NULL,0.00,'2024-10-29 21:48:53'),(36,21.54,93312.95,744.60,60.00,NULL,0.00,'2024-10-29 21:48:53'),(37,21.59,93317.24,744.22,60.00,NULL,0.00,'2024-10-29 21:49:23'),(38,21.59,93317.24,744.22,60.00,NULL,0.00,'2024-10-29 21:49:23'),(39,21.60,93317.27,744.21,60.00,NULL,0.00,'2024-10-29 21:49:53'),(40,21.60,93317.27,744.21,60.00,NULL,0.00,'2024-10-29 21:49:53'),(41,21.44,93319.02,744.06,59.00,NULL,0.00,'2024-10-29 21:50:23'),(42,21.44,93319.02,744.06,59.00,NULL,0.00,'2024-10-29 21:50:23'),(43,21.38,93318.11,744.14,59.00,NULL,0.00,'2024-10-29 21:50:53'),(44,21.38,93318.11,744.14,59.00,NULL,0.00,'2024-10-29 21:50:53'),(45,21.36,93320.92,743.89,59.00,NULL,0.00,'2024-10-29 21:51:23'),(46,21.36,93320.92,743.89,59.00,NULL,0.00,'2024-10-29 21:51:23'),(47,21.39,93320.53,743.92,59.00,NULL,0.00,'2024-10-29 21:51:53'),(48,21.39,93320.53,743.92,59.00,NULL,0.00,'2024-10-29 21:51:53'),(49,21.36,93318.28,744.12,59.00,NULL,0.00,'2024-10-29 21:52:23'),(50,21.36,93318.28,744.12,59.00,NULL,0.00,'2024-10-29 21:52:23'),(51,21.32,93321.94,743.80,58.00,NULL,0.00,'2024-10-29 21:52:53'),(52,21.32,93321.94,743.80,58.00,NULL,0.00,'2024-10-29 21:52:53'),(53,21.30,93320.84,743.90,58.00,NULL,0.00,'2024-10-29 21:53:23'),(54,21.30,93320.84,743.90,58.00,NULL,0.00,'2024-10-29 21:53:23'),(55,21.25,93322.11,743.78,58.00,NULL,0.00,'2024-10-29 21:53:53'),(56,21.25,93322.11,743.78,58.00,NULL,0.00,'2024-10-29 21:53:53'),(57,21.25,93324.80,743.54,58.00,NULL,0.00,'2024-10-29 21:54:23'),(58,21.25,93324.80,743.54,58.00,NULL,0.00,'2024-10-29 21:54:23'),(59,21.15,93319.74,743.99,58.00,NULL,0.00,'2024-10-29 21:54:53'),(60,21.15,93319.74,743.99,58.00,NULL,0.00,'2024-10-29 21:54:53'),(61,21.13,93318.36,744.12,58.00,NULL,0.00,'2024-10-29 21:55:23'),(62,21.13,93318.36,744.12,58.00,NULL,0.00,'2024-10-29 21:55:23'),(63,21.07,93321.08,743.87,58.00,NULL,0.00,'2024-10-29 21:55:53'),(64,21.07,93321.08,743.87,58.00,NULL,0.00,'2024-10-29 21:55:53'),(65,21.33,93318.52,744.10,59.00,NULL,0.00,'2024-10-29 21:56:23'),(66,21.33,93318.52,744.10,59.00,NULL,0.00,'2024-10-29 21:56:23'),(67,21.48,93318.47,744.11,59.00,NULL,0.00,'2024-10-29 21:56:53'),(68,21.48,93318.47,744.11,59.00,NULL,0.00,'2024-10-29 21:56:53'),(69,21.58,93320.70,743.91,59.00,NULL,0.00,'2024-10-29 21:57:24'),(70,21.58,93320.70,743.91,59.00,NULL,0.00,'2024-10-29 21:57:24'),(71,21.67,93321.06,743.88,59.00,NULL,0.00,'2024-10-29 21:57:54'),(72,21.67,93321.06,743.88,59.00,NULL,0.00,'2024-10-29 21:57:54'),(73,21.73,93324.38,743.58,58.00,NULL,0.00,'2024-10-29 21:58:24'),(74,21.73,93324.38,743.58,58.00,NULL,0.00,'2024-10-29 21:58:24'),(75,21.78,93318.69,744.09,58.00,NULL,0.00,'2024-10-29 21:58:54'),(76,21.78,93318.69,744.09,58.00,NULL,0.00,'2024-10-29 21:58:54'),(77,21.85,93317.69,744.18,58.00,NULL,0.00,'2024-10-29 21:59:24'),(78,21.85,93317.69,744.18,58.00,NULL,0.00,'2024-10-29 21:59:24'),(79,21.90,93317.83,744.16,58.00,NULL,0.00,'2024-10-29 21:59:54'),(80,21.90,93317.83,744.16,58.00,NULL,0.00,'2024-10-29 21:59:54'),(81,21.95,93312.71,744.62,58.00,NULL,0.00,'2024-10-29 22:00:24'),(82,21.95,93312.71,744.62,58.00,NULL,0.00,'2024-10-29 22:00:24'),(83,22.00,93315.42,744.38,58.00,NULL,0.00,'2024-10-29 22:00:54'),(84,22.00,93315.42,744.38,58.00,NULL,0.00,'2024-10-29 22:00:54'),(85,22.04,93314.06,744.50,58.00,NULL,0.00,'2024-10-29 22:01:24'),(86,22.04,93314.06,744.50,58.00,NULL,0.00,'2024-10-29 22:01:24'),(87,22.08,93314.27,744.48,58.00,NULL,0.00,'2024-10-29 22:01:54'),(88,22.08,93314.27,744.48,58.00,NULL,0.00,'2024-10-29 22:01:54'),(89,22.13,93315.14,744.40,57.00,NULL,0.00,'2024-10-29 22:02:24'),(90,22.13,93315.14,744.40,57.00,NULL,0.00,'2024-10-29 22:02:24'),(91,22.17,93314.55,744.46,57.00,NULL,0.00,'2024-10-29 22:02:54'),(92,22.17,93314.55,744.46,57.00,NULL,0.00,'2024-10-29 22:02:54'),(93,22.20,93312.90,744.60,57.00,NULL,0.00,'2024-10-29 22:03:24'),(94,22.20,93312.90,744.60,57.00,NULL,0.00,'2024-10-29 22:03:24'),(95,22.24,93311.90,744.69,57.00,NULL,0.00,'2024-10-29 22:03:54'),(96,22.24,93311.90,744.69,57.00,NULL,0.00,'2024-10-29 22:03:54'),(97,22.27,93311.25,744.75,57.00,NULL,0.00,'2024-10-29 22:04:24'),(98,22.27,93311.25,744.75,57.00,NULL,0.00,'2024-10-29 22:04:24'),(99,22.30,93309.38,744.91,57.00,NULL,0.00,'2024-10-29 22:04:54'),(100,22.30,93309.38,744.91,57.00,NULL,0.00,'2024-10-29 22:04:54'),(101,22.33,93308.66,744.98,57.00,NULL,0.00,'2024-10-29 22:05:24'),(102,22.33,93308.66,744.98,57.00,NULL,0.00,'2024-10-29 22:05:24'),(103,23.90,93291.50,746.50,51.00,NULL,0.00,'2024-10-31 20:26:25'),(104,23.95,93291.13,746.54,51.00,NULL,0.00,'2024-10-31 20:26:55'),(105,23.99,93291.14,746.54,51.00,NULL,0.00,'2024-10-31 20:27:25'),(106,24.02,93290.19,746.62,52.00,NULL,0.00,'2024-10-31 20:27:55'),(107,24.04,93288.57,746.76,52.00,NULL,0.00,'2024-10-31 20:28:25'),(108,24.08,93288.95,746.73,52.00,NULL,0.00,'2024-10-31 20:28:55'),(109,24.12,93293.34,746.34,52.00,NULL,0.00,'2024-10-31 20:29:25'),(110,24.14,93287.59,746.85,51.00,NULL,0.00,'2024-10-31 20:29:55'),(111,24.16,93290.41,746.60,51.00,NULL,0.00,'2024-10-31 20:30:25'),(112,24.19,93294.40,746.25,51.00,NULL,0.00,'2024-10-31 20:30:56'),(113,24.21,93293.44,746.33,51.00,NULL,0.00,'2024-10-31 20:31:26'),(114,24.23,93291.64,746.49,52.00,NULL,0.00,'2024-10-31 20:31:56'),(115,24.23,93294.95,746.20,52.00,NULL,0.00,'2024-10-31 20:32:26'),(116,24.27,93292.84,746.38,52.00,NULL,0.00,'2024-10-31 20:32:56'),(117,24.29,93294.27,746.26,52.00,NULL,0.00,'2024-10-31 20:33:26'),(118,24.32,93290.23,746.62,52.00,NULL,0.00,'2024-10-31 20:33:56'),(119,24.34,93287.63,746.85,52.00,NULL,0.00,'2024-10-31 20:34:26'),(120,24.36,93289.13,746.72,51.00,NULL,0.00,'2024-10-31 20:34:56'),(121,23.34,93285.52,747.04,56.00,NULL,0.00,'2024-10-31 21:15:27'),(122,23.42,93289.53,746.68,55.00,NULL,0.00,'2024-10-31 21:15:57'),(123,23.52,93287.72,746.84,55.00,NULL,0.00,'2024-10-31 21:16:27'),(124,23.58,93293.50,746.33,56.00,NULL,0.00,'2024-10-31 21:16:57'),(125,23.66,93291.75,746.48,56.00,NULL,0.00,'2024-10-31 21:17:27'),(126,23.73,93294.05,746.28,55.00,NULL,0.00,'2024-10-31 21:17:57'),(127,23.79,93293.70,746.31,55.00,NULL,0.00,'2024-10-31 21:18:27'),(128,23.84,93296.11,746.09,55.00,NULL,0.00,'2024-10-31 21:18:57'),(129,23.89,93300.13,745.74,54.00,NULL,0.00,'2024-10-31 21:19:27'),(130,23.94,93303.33,745.45,54.00,NULL,0.00,'2024-10-31 21:19:57'),(131,23.96,93304.20,745.37,54.00,NULL,0.00,'2024-10-31 21:20:27');
/*!40000 ALTER TABLE `tb_re  0    +,0 vc gistro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_registro`
--

DROP TABLE IF EXISTS `tb_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_registro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `temperatura` decimal(10,2) DEFAULT NULL,
  `pressao` decimal(10,2) DEFAULT NULL,
  `altitude` decimal(10,2) DEFAULT NULL,
  `umidade` decimal(10,2) DEFAULT NULL,
  `co2` decimal(10,2) DEFAULT NULL,
  `poeira` decimal(10,2) DEFAULT NULL,
  `tempo_registro` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_registro`
--

LOCK TABLES `tb_registro` WRITE;
/*!40000 ALTER TABLE `tb_registro` DISABLE KEYS */;
INSERT INTO `tb_registro` VALUES (1,22.70,93224.57,752.46,57.00,NULL,0.00,'2024-10-29 19:25:40'),(2,22.70,93224.57,752.46,57.00,NULL,0.00,'2024-10-29 19:25:40'),(3,22.74,93228.99,752.06,57.00,NULL,0.00,'2024-10-29 19:26:10'),(4,22.74,93228.99,752.06,57.00,NULL,0.00,'2024-10-29 19:26:10'),(5,22.60,93230.55,751.92,57.00,NULL,0.00,'2024-10-29 19:26:40'),(6,22.60,93230.55,751.92,57.00,NULL,0.00,'2024-10-29 19:26:40'),(7,22.58,93230.70,751.84,57.00,NULL,0.00,'2024-10-29 19:27:10'),(8,22.58,93230.70,751.84,57.00,NULL,0.00,'2024-10-29 19:27:10'),(9,22.63,93233.56,751.66,57.00,NULL,0.00,'2024-10-29 19:27:40'),(10,22.63,93233.56,751.66,57.00,NULL,0.00,'2024-10-29 19:27:40'),(11,22.66,93232.06,751.79,57.00,NULL,0.00,'2024-10-29 19:28:11'),(12,22.66,93232.06,751.79,57.00,NULL,0.00,'2024-10-29 19:28:11'),(13,22.71,93230.84,751.90,57.00,NULL,0.00,'2024-10-29 19:28:41'),(14,22.71,93230.84,751.90,57.00,NULL,0.00,'2024-10-29 19:28:41'),(15,22.75,93228.41,752.11,57.00,NULL,0.00,'2024-10-29 19:29:10'),(16,22.75,93228.41,752.11,57.00,NULL,0.00,'2024-10-29 19:29:10'),(17,22.59,93228.13,752.14,57.00,NULL,0.00,'2024-10-29 19:29:40'),(18,22.59,93228.13,752.14,57.00,NULL,0.00,'2024-10-29 19:29:40'),(19,22.61,93228.47,752.11,56.00,NULL,0.00,'2024-10-29 19:30:11'),(20,22.61,93228.47,752.11,56.00,NULL,0.00,'2024-10-29 19:30:11'),(21,22.69,93226.11,752.32,56.00,NULL,0.00,'2024-10-29 19:30:41'),(22,22.69,93226.11,752.32,56.00,NULL,0.00,'2024-10-29 19:30:41'),(23,22.59,93226.03,752.33,56.00,NULL,0.00,'2024-10-29 19:31:11'),(24,22.59,93226.03,752.33,56.00,NULL,0.00,'2024-10-29 19:31:11'),(25,22.58,93226.13,752.32,56.00,NULL,0.00,'2024-10-29 19:31:41'),(26,22.58,93226.13,752.32,56.00,NULL,0.00,'2024-10-29 19:31:41'),(27,22.69,93227.53,752.19,56.00,NULL,0.00,'2024-10-29 19:32:11'),(28,22.69,93227.53,752.19,56.00,NULL,0.00,'2024-10-29 19:32:11'),(29,22.65,93231.12,751.87,56.00,NULL,0.00,'2024-10-29 19:32:41'),(30,22.65,93231.12,751.87,56.00,NULL,0.00,'2024-10-29 19:32:41'),(31,22.59,93231.78,751.81,56.00,NULL,0.00,'2024-10-29 19:33:11'),(32,22.59,93231.78,751.81,56.00,NULL,0.00,'2024-10-29 19:33:11'),(33,22.60,93231.20,751.87,55.00,NULL,0.00,'2024-10-29 19:33:41'),(34,22.60,93231.20,751.87,55.00,NULL,0.00,'2024-10-29 19:33:41'),(35,22.52,93233.29,751.68,55.00,NULL,0.00,'2024-10-29 19:34:11'),(36,22.52,93233.29,751.68,55.00,NULL,0.00,'2024-10-29 19:34:11'),(37,22.55,93236.81,751.37,55.00,NULL,0.00,'2024-10-29 19:35:11'),(38,22.55,93236.81,751.37,55.00,NULL,0.00,'2024-10-29 19:35:11'),(39,22.49,93238.85,751.19,55.00,NULL,0.00,'2024-10-29 19:35:41'),(40,22.49,93238.85,751.19,55.00,NULL,0.00,'2024-10-29 19:35:41'),(41,22.55,93238.61,751.21,55.00,NULL,0.00,'2024-10-29 19:36:11'),(42,22.55,93238.61,751.21,55.00,NULL,0.00,'2024-10-29 19:36:11'),(43,22.38,93233.64,751.65,54.00,NULL,0.00,'2024-10-29 19:36:41'),(44,22.38,93233.64,751.65,54.00,NULL,0.00,'2024-10-29 19:36:41'),(45,22.41,93235.20,751.51,55.00,NULL,0.00,'2024-10-29 19:37:11'),(46,22.41,93235.20,751.51,55.00,NULL,0.00,'2024-10-29 19:37:11'),(47,22.47,93230.87,751.90,54.00,NULL,0.00,'2024-10-29 19:37:41'),(48,22.47,93230.87,751.90,54.00,NULL,0.00,'2024-10-29 19:37:41'),(49,22.41,93235.06,751.52,54.00,NULL,0.00,'2024-10-29 19:38:11'),(50,22.41,93235.06,751.52,54.00,NULL,0.00,'2024-10-29 19:38:11'),(51,22.37,93234.22,751.60,54.00,NULL,0.00,'2024-10-29 19:38:41'),(52,22.37,93234.22,751.60,54.00,NULL,0.00,'2024-10-29 19:38:41'),(53,22.50,93236.36,751.41,54.00,NULL,0.00,'2024-10-29 19:39:11'),(54,22.50,93236.36,751.41,54.00,NULL,0.00,'2024-10-29 19:39:11'),(55,22.51,93233.81,751.63,54.00,NULL,0.00,'2024-10-29 19:39:41'),(56,22.51,93233.81,751.63,54.00,NULL,0.00,'2024-10-29 19:39:41'),(57,22.40,93238.23,751.24,54.00,NULL,0.00,'2024-10-29 19:40:11'),(58,22.40,93238.23,751.24,54.00,NULL,0.00,'2024-10-29 19:40:11'),(59,22.44,93236.32,751.41,54.00,NULL,0.00,'2024-10-29 19:40:41'),(60,22.44,93236.32,751.41,54.00,NULL,0.00,'2024-10-29 19:40:41');
/*!40000 ALTER TABLE `tb_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_medidor'
--

--
-- Dumping routines for database 'bd_medidor'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 21:36:33