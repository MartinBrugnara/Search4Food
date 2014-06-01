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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `first_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fb_extid` varchar(100) DEFAULT NULL,
  `trustful` smallint(6) DEFAULT '0',
  `loc_city` varchar(45) DEFAULT NULL,
  `loc_country` varchar(45) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (105,'carlottapor@gmaill.it','F','1992-01-01','2014-05-06 07:18:15','1206588662',4,'Trento','Italia','Carlotta Porcelli'),(106,'martin.brugnara@gmail.com','M','1992-01-01','2014-05-06 07:18:20',NULL,0,'Trento','Italia','Martin Brugnara'),(108,'andrea.brun@unitn.it','M','1990-01-01','2014-05-06 07:18:24',NULL,4,'Trento','Italia','Andrea Brun'),(109,'lorenzo.angeli@studenti.unitn.it','M','1990-01-01','2014-05-06 07:18:24',NULL,2,'Trento','Italia','Lorenzo Angeli'),(110,'stefano.tavonatti@unitn.it','M','1990-01-01','2014-05-06 07:18:26',NULL,3,'Trento','Italia','Stefano Tavonatti'),(113,'marco.perini@unitn.it','M','1990-01-01','2014-05-06 07:18:31',NULL,1,'Trento','Italia','Marco Perini'),(116,'andrea.delle93@gmail.com','M','1990-01-01','2014-05-06 07:18:36',NULL,0,'Trento','Italia','Andrea Dellera'),(117,'ubuntuser93@gmail.com','M','1990-01-01','2014-05-06 07:18:37',NULL,1,'Trento','Italia','Ubutntu User'),(119,'luca.zecchini@unitn.it','M','1990-01-01','2014-05-06 07:18:38',NULL,0,'Trento','Italia','Luca Zecchini'),(120,'mikyben93@live.it','M','1990-01-01','2014-05-06 07:18:39','100000545333232',1,'Trento','Italia','Michele Ben'),(121,'marika.gasperin@unitn.it','F','1990-01-01','2014-05-06 07:18:40',NULL,1,'Trento','Italia','Marika Gasperin'),(122,'davide.bonte@gmail.com','M','1990-01-01','2014-05-06 07:18:40','100000302660470',3,'Trento','Italia','Davide Bontempelli'),(123,'martino.secchi@unitn.it','M','1990-01-01','2014-05-06 07:18:40',NULL,2,'Trento','Italia','Martino Secchi'),(126,'dando.93@hotmail.it','M','1990-01-01','2014-05-06 07:18:59',NULL,4,'Trento','Italia','Davide Do'),(128,'giulia-caldini@hotmail.com','F','1990-01-01','2014-05-06 07:19:02',NULL,1,'Trento','Italia','Giulia Caldini'),(132,'michele.bof@unitn.it','M','1990-01-01','2014-05-06 07:19:17',NULL,1,'Trento','Italia','Michele Bof'),(133,'matteo.grossele@unitn.it','M','1990-01-01','2014-05-06 07:19:19',NULL,3,'Trento','Italia','Matteo Grossele'),(134,'cristiana.bucella@studenti.unitn.it','F','1990-01-01','2014-05-06 07:19:21',NULL,3,'Trento','Italia','Cristiana Bucella'),(135,'fabiano.zenatti@studenti.unitn.it','M','1990-01-01','2014-05-06 07:19:23','100005828051828',3,'Trento','Italia','Fabiano Zenatti'),(136,'badila.bogdan@hotmail.it','M','1990-01-01','2014-05-06 07:19:25',NULL,1,'Trento','Italia','Bogdan Badila'),(137,'mirco.stablum@unitn.it','M','1990-01-01','2014-05-06 07:19:29',NULL,1,'Trento','Italia','Mirko Stablum'),(138,'tamara.mancini@hotmail.it','F','1990-01-01','2014-05-06 07:19:31','1327242071',1,'Trento','Italia','Tamara Mancini'),(141,'davide.lotto@studenti.unitn.it','M','1990-01-01','2014-05-06 07:19:39','100002489241455',0,'Trento','Italia','Davide Lotto'),(142,'elisabetta.genetti@gmail.com','F','1990-01-01','2014-05-06 07:19:40',NULL,1,'Trento','Italia','Elisabetta Genetti'),(143,'tpoletti@live.it','F','1990-01-01','2014-05-06 07:19:44',NULL,3,'Trento','Italia','Taira Poletti'),(144,'gaiettac.92@hotmail.it','F','1990-01-01','2014-05-06 07:19:46',NULL,3,'Trento','Italia','Gaia Colandrea'),(145,'matteogabburo.unitn@gmail.com','M','1990-01-01','2014-05-06 07:19:46',NULL,1,'Trento','Italia','Matteo Gabburo'),(157,'samuel.valentini@unitn.it','M','1990-01-01','2014-05-06 07:22:14','100000809696463',3,'Trento','Italia','Samuel Valenti'),(159,'dallatorregiulio@gmail.com','M','1990-01-01','2014-05-06 07:23:11','1533567047',3,'Trento','Italia','Giulio Dalla Torre'),(166,'alex.semykin21@gmail.com','M','1990-01-01','2014-05-06 07:25:38',NULL,2,'Trento','Italia','Alex Semykin'),(167,'oxa.fat@gmail.com','F','1990-01-01','2014-05-06 07:26:35','1474575053',2,'Trento','Italia','Fatbardha Hoxha'),(170,'giuliapenasa92@gmail.com','F','1990-01-01','2014-05-06 07:26:42','1607232735',4,'Trento','Italia','Giulia Penasa'),(193,'andrea.cologna@unitn.it','M','1990-01-01','2014-05-06 07:34:06','100000167264445',2,'Trento','Italia','Andrea Cologna'),(199,'matteo.velludini@unitn.it','M','1990-01-01','2014-05-06 07:38:40',NULL,1,'Trento','Italia','Matteo Velludini'),(203,'mattia.valentini@unitn.it','M','1990-01-01','2014-05-06 07:40:50','100000896176858',2,'Trento','Italia','Mattia Valentini'),(205,'nadiapreghenella@gmail.com','F','1990-01-01','2014-05-06 07:43:20','1421422644',2,'Trento','Italia','Nadia Preghenella'),(206,'alessandro.branz-1@unitn.it','M','1990-01-01','2014-05-06 07:44:00',NULL,3,'Trento','Italia','Alessandro Branz'),(208,'alexdebiasio@gmail.com','M','1990-01-01','2014-05-06 07:44:25',NULL,2,'Trento','Italia','Alex De Biasio');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:37
