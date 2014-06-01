CREATE DATABASE  IF NOT EXISTS `db_sweng030` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_sweng030`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: didattica.science.unitn.it    Database: db_sweng030
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.2

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
-- Table structure for table `cluster_places`
--

DROP TABLE IF EXISTS `cluster_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster_places` (
  `places_place_id` bigint(20) NOT NULL,
  `cluster_cluster_id` int(11) NOT NULL,
  `purpose_purpose_id` int(11) NOT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`places_place_id`,`cluster_cluster_id`,`purpose_purpose_id`),
  KEY `fk_places_has_cluster_cluster1_idx` (`cluster_cluster_id`),
  KEY `fk_places_has_cluster_places1_idx` (`places_place_id`),
  KEY `fk_cluster_places_purpose1_idx` (`purpose_purpose_id`),
  CONSTRAINT `fk_places_has_cluster_places1` FOREIGN KEY (`places_place_id`) REFERENCES `places` (`place_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_places_has_cluster_cluster1` FOREIGN KEY (`cluster_cluster_id`) REFERENCES `cluster` (`cluster_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cluster_places_purpose1` FOREIGN KEY (`purpose_purpose_id`) REFERENCES `purpose` (`purpose_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster_places`
--

LOCK TABLES `cluster_places` WRITE;
/*!40000 ALTER TABLE `cluster_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `cluster_places` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:48
