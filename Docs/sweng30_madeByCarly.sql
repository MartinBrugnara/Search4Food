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
-- Table structure for table `cluster`
--

DROP TABLE IF EXISTS `cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster` (
  `cluster_id` int(11) NOT NULL,
  `creation_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cluster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cluster`
--

LOCK TABLES `cluster` WRITE;
/*!40000 ALTER TABLE `cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `cluster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:49
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
-- Table structure for table `friendship`
--

DROP TABLE IF EXISTS `friendship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friendship` (
  `user_a_id` bigint(20) NOT NULL,
  `user_b_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_a_id`,`user_b_id`),
  KEY `fk_users_has_users_users2_idx` (`user_b_id`),
  KEY `fk_users_has_users_users1_idx` (`user_a_id`),
  CONSTRAINT `fk_users_has_users_users1` FOREIGN KEY (`user_a_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_users_users2` FOREIGN KEY (`user_b_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friendship`
--

LOCK TABLES `friendship` WRITE;
/*!40000 ALTER TABLE `friendship` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:54
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
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `place_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `picture` varchar(2000) DEFAULT NULL,
  `loc_street` varchar(500) DEFAULT NULL,
  `loc_city` varchar(150) DEFAULT NULL,
  `loc_state` varchar(150) DEFAULT NULL,
  `loc_country` varchar(100) DEFAULT NULL,
  `loc_latitude` decimal(13,10) DEFAULT NULL,
  `loc_longitude` decimal(13,10) DEFAULT NULL,
  PRIMARY KEY (`place_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES (1,'Osteria a Le Due Spade','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani. ','http://www.leduespade.com/newsite/images/ristorante_photogallery/images/1.png','Via Don Arcangelo Rizzi 11','Trento','TN','Italia',46.0670323000,11.1201933000),(2,'Happy Hour','Bar, locale notturno, apertitivi con noccioline fresche. ','http://www.comune.trento.it/var/comunetn/storage/images/citta/servizi/dove-mangiare/happy-hour/happy-hour4/6237539-1-ita-IT/HAPPY-HOUR_imagelargeoverlay.jpg','Via Perini 57','Trento','TN','Italia',46.0691025067,11.1247399851),(3,'Al Gusto','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','https://dl.dropboxusercontent.com/u/17268001/restaurants_Trento_images/al_gusto.png','Via Milano 80','Trento','TN','Italia',46.0612147984,11.1283335008),(4,'Duo Ristorante Tapas Bar','Ristorante cucina messicana, fagioli freschi.','http://www.nuok.it/wp-content/uploads/2012/10/Sala-tn-duo-592x396.jpg','Via Torre Vanga 14','Trento','TN','Italia',46.0699802295,11.1191915005),(5,'Osteria Vineria San Martino','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/osteria-san-martino-20110216-112137.jpg','Via San Martino 42','Trento','TN','Italia',46.0731840993,11.1253396003),(6,'Pizzeria Da Albert','La miglior pizzeria della città, ingredienti a km 0, vasta offerta.','http://img1.2spaghi.it/ristoranti/img/big/pizzeria-da-albert-20110214-130443.jpg','Via Bernardino Bomporto 2','Trento','TN','Italia',46.0651246989,11.1175156018),(7,'Antica Trattoria Due Mori','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-antica-trattoria-due-mori-20090617-214711.jpg','Via San Marco 11','Trento','TN','Italia',46.0702069124,11.1250468728),(8,'Plan','Bar, locale notturno, apertitivi con noccioline fresche. ','http://img1.2spaghi.it/ristoranti/img/big/plan-taste-of-mountain-20111115-075318.jpg','Largo Giosue Carducci 38','Trento','TN','Italia',46.0683630703,11.1248346535),(9,'Scrigno del Duomo','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/scrigno-del-duomo-20110209-133354.jpg','Piazza Duomo 29','Trento','TN','Italia',46.0673013424,11.1210262153),(10,'Loto','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/loto-20110221-095453.jpg','Via Gocciadoro 62','Trento','TN','Italia',46.0559984173,11.1316297995),(11,'Niky\'s Restaurant','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/niky-s-cafe-20110310-084831.jpg','Via San Pio X 29','Trento','TN','Italia',46.0560423004,11.1202095979),(12,'Patelli','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-patelli-20110209-133101.jpg','Via Dietro le Mura A 1/5','Trento','TN','Italia',46.0654276997,11.1231445998),(13,'Olympic Restaurant','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/olympic-restaurant-20110701-112632.jpg','Via R. da Sanseverino 125','Trento','TN','Italia',46.0505507633,11.1119955999),(14,'Ai Tre Garofani','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/antica-trattoria-3-garofani-20110209-132215.jpg','Via Mazzini 33','Trento','TN','Italia',46.0657512064,11.1230112700),(15,'Antico Pozzo','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-antico-pozzo-20110214-103948.jpg','Via Giannantonio Manci 45','Trento','TN','Italia',46.0698775985,11.1232723977),(16,'Welcome India','Ristorante di cucina Indiana. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/welcome-india-20110215-121223.jpg','Corso Buonarroti 56','Trento','TN','Italia',46.0720895878,11.1173629726),(17,'Rosa D\'Oro','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://www.comune.trento.it/var/comunetn/storage/images/citta/servizi/dove-mangiare/rosa-d-oro/5944485-4-ita-IT/ROSA-D-ORO_medium.jpg','Piazza S. M. Maggiore 21','Trento','TN','Italia',46.0683994890,11.1197932845),(18,'Cafe\' de la Paix','Bar, locale notturno, apertitivi con noccioline fresche. ','http://www.trentoblog.it/wp-content/uploads/lapaix-logo.jpg','Passaggio teatro osele 6/8','Trento','TN','Italia',46.0685678397,11.1215445731),(19,'Osteria il Cappello','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/osteria-il-cappello-20110221-095351.jpg','Piazzetta Bruno Lunelli 5','Trento','TN','Italia',46.0691037788,11.1247203086),(20,'Forsterbrau Trento','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-pizzeria-birreria-forst-20110221-094716.jpg','Via Oss Mazzurana 38','Trento','TN','Italia',46.0689234757,11.1225477821),(21,'Trattoria Orso Grigio','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-orso-grigio-20110211-131440.jpg','Via degli Orti 19','Trento','TN','Italia',46.0655533762,11.1223139690),(22,'La Cantinota','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/la-cantinota-20110210-144940.jpg','Via San Marco 22','Trento','TN','Italia',46.0700862149,11.1249568564),(23,'Il Monello','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/05/0c/50/9a/getlstd-property-photo.jpg','Via Mazzini 11','Trento','TN','Italia',46.0658854602,11.1227492045),(24,'Il Libertino','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/03/bd/56/3b/il-libertino.jpg','Piazza Piedicastello 4','Trento','TN','Italia',46.0711127480,11.1129726679),(25,'Trattoria Piedicastello','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/trattoria-piedicastello-20110214-131332.jpg','Piazza Piedicastello 12','Trento','TN','Italia',46.0708150156,11.1121680052),(26,'Al Vo','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-al-vo-20110210-145513.jpg','Vicolo del Vo 11','Trento','TN','Italia',46.0707954114,11.1240767827),(27,'Uva & Menta','BLA di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-e-pizzeria-uva-e-menta-20110209-133444.jpg','Via Dietro le Mura A 53','Trento','TN','Italia',46.0654895675,11.1246358557),(28,'Antica Trattoria Al Volt','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/04/43/2e/96/ingresso.jpg','Via S. Croce 16','Trento','TN','Italia',46.0645144430,11.1232313578),(29,'Pizza Pazza','La miglior pizzeria della città, ingredienti a km 0, vasta offerta.','http://cityfan.repubblica.it/sites/default/files/styles/large/public/gallery/2012/07/20/photo_15196.gif?itok=Phqp3ifZ','Via Brescia 8','Trento','TN','Italia',46.0705411090,11.1109641701),(30,'Everest','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/hotel-ristorante-everest-20110210-102418.jpg','Corso Alpini 14','Trento','TN','Italia',46.0785586516,11.1183664278),(31,'Ai Vicoli','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://www.aivicoli.it/img/biglietto.png','Piazza Santa Teresa Verzeri 1','Trento','TN','Italia',46.0692303192,11.1191949580),(32,'Sushi Zen','Ristorante di cucina Japponese. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://www.ristorantesushizen.com/polopoly_fs/1.9289130.1341219702!/httpImage/img.JPG','Via Malpaga 14','Trento','TN','Italia',46.0688144641,11.1231503153),(33,'Doc','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/02/6f/a7/df/esterno-ristorante-doc.jpg','Via Milano 148','Trento','TN','Italia',46.0636103783,11.1310026603),(34,'Petrarca','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/pizzeria-ristorante-petrarca-20110214-101918.jpg','Via Petrarca 4','Trento','TN','Italia',46.0747684714,11.1238363688),(35,'Il Simposio','Bar, locale notturno, apertitivi con noccioline fresche. ','http://img1.2spaghi.it/ristoranti/img/big/il-simposio-20110211-142825.jpg','Via Rosmini 19','Trento','TN','Italia',46.0679677988,11.1188899563),(36,'Nuova Asia','Ristorante di cucina Asiatica. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/sapori-d-asia-20110211-145249.jpg','Via Prepositura 15','Trento','TN','Italia',46.0691300057,11.1186344706),(37,'Osteria Da Guido','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/osteria-da-guido-20111115-105803.jpg','Via Livio Marchetti 9','Trento','TN','Italia',46.0695106872,11.1266711861),(38,'Clesio','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://www.fedegroup.it/wp-content/uploads/2012/09/FOTO-CLESIO-DICEMBRE-2013-SITO-2-940x350-52.jpg','Via Alfieri 1','Trento','TN','Italia',46.0709574672,11.1223013228),(39,'Rebuffo','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://www.rebuffo.eu/homepagefacciata.jpg','Via alle Coste 12/a','Trento','TN','Italia',46.0780268344,11.1318344017),(40,'Aquila D\'Oro','Bar, locale notturno, apertitivi con noccioline fresche. ','http://disi.unitn.it/~dandrea/Prolamat/images/hotels/aquila.gif','Via Belenzani 76','Trento','TN','Italia',46.0679687438,11.1212680384),(41,'Saporoso','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/02/71/0e/21/filename-img-00018-jpg.jpg','Via dei Mille 1','Trento','TN','Italia',46.0629621676,11.1275587563),(42,'Cueva Maya','Ristorante di cucina Messicana. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/cueva-maya-20090810-224507.jpg','Piazza Duomo 22','Trento','TN','Italia',46.0670289232,11.1209546443),(43,'Tetley\'s Pub','La miglior pizzeria della città, ingredienti a km 0, vasta offerta.','http://www.360gradi.info/public/images/inserzioni/66135/ZOOM/012_Tetley-s-pub-Trento.jpg','Via degli Orti 1','Trento','TN','Italia',46.0657716810,11.1212374392),(44,'Alla Mostra','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/05/1e/4e/00/menu.jpg','Piazza della Mostra 13','Trento','TN','Italia',46.0711259555,11.1258067447),(45,'Pedavena','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/birreria-pedavena-20091217-120508.jpg','Via Santa Croce 15','Trento','TN','Italia',46.0648084582,11.1234106048),(46,'Tre Portoni','La miglior pizzeria della città, ingredienti a km 0, vasta offerta.','http://img1.2spaghi.it/ristoranti/img/big/pizzeria-ristorante-tre-portoni-20110801-133539.jpg','Via Madruzzo 76','Trento','TN','Italia',46.0636726334,11.1230853503),(47,'Alla Grotta','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/pizzeria-ristorante-alla-grotta-20110210-145120.jpg','Vicolo San Marco 6','Trento','TN','Italia',46.0698005253,11.1254235712),(48,'Steak-house Anfiteatro','La miglior steak-house della città, ingredienti a km 0, vasta offerta.','http://img1.2spaghi.it/ristoranti/img/big/ristorante-pizzeria-anfiteatro-20110221-094206.jpg','Piazzetta anfiteatro 10','Trento','TN','Italia',46.0692348188,11.1254772154),(49,'Al Castello','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://img1.2spaghi.it/ristoranti/img/big/pizzeria-al-castello-20110210-102031.jpg','Via Clesio 10','Trento','TN','Italia',46.0701531403,11.1270342011),(50,'Trattoria Al Tino','Ristorante di cucina locale. Usiamo ingredienti a km 0 e biologici. Ampia selta di piatti vegetariani.','http://media-cdn.tripadvisor.com/media/photo-s/02/75/56/c2/trattoria-al-tino.jpg','Via SS. Trinita 10','Trento','TN','Italia',46.0662788747,11.1229929660);
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:39
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
-- Table structure for table `places_tag`
--

DROP TABLE IF EXISTS `places_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_tag` (
  `place_id` bigint(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`place_id`,`tag_id`),
  KEY `fk_places_has_tag_tag1_idx` (`tag_id`),
  KEY `fk_places_has_tag_places1_idx` (`place_id`),
  CONSTRAINT `fk_places_has_tag_places1` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_places_has_tag_tag1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_tag`
--

LOCK TABLES `places_tag` WRITE;
/*!40000 ALTER TABLE `places_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `places_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:35
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
-- Table structure for table `purpose`
--

DROP TABLE IF EXISTS `purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purpose` (
  `purpose_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`purpose_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose`
--

LOCK TABLES `purpose` WRITE;
/*!40000 ALTER TABLE `purpose` DISABLE KEYS */;
INSERT INTO `purpose` VALUES (10000,'Touristic',NULL),(10001,'Romantic Dinner',NULL),(10002,'Friends meeting',NULL),(10003,'Lunch Break',NULL),(10004,'Work meeting',NULL);
/*!40000 ALTER TABLE `purpose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:52
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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `place_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `purpose_id` int(11) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(1000) DEFAULT NULL,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`place_id`,`user_id`,`purpose_id`),
  KEY `rating_user_idx` (`user_id`),
  KEY `rating_place_idx` (`place_id`),
  KEY `purpose_fk_idx` (`purpose_id`),
  CONSTRAINT `places_fk` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `purpose_fk` FOREIGN KEY (`purpose_id`) REFERENCES `purpose` (`purpose_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,105,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:58'),(1,105,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:35:01'),(1,116,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:20:13'),(1,116,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:55'),(1,116,10003,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:23:57'),(1,122,10004,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:25'),(3,116,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:12'),(3,116,10002,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:23:11'),(3,116,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:04'),(3,117,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:42:50'),(3,122,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:27:07'),(3,122,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:34:19'),(4,116,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:26'),(4,116,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:07'),(4,116,10002,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:48'),(4,116,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:23'),(4,122,10000,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:32'),(5,105,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-26 09:54:57'),(5,116,10000,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:16'),(5,116,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:21:50'),(5,116,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:46'),(5,116,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:17'),(5,117,10002,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:41:43'),(6,105,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:32'),(6,105,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:33:58'),(6,106,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:19:12'),(6,108,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:20:00'),(6,109,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:20:48'),(6,109,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:03'),(7,106,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:19:45'),(7,116,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:35'),(7,116,10002,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:23:16'),(7,116,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:09'),(7,117,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:46:43'),(7,122,10002,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:33:42'),(8,109,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:44:39'),(8,205,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:44:29'),(8,205,10002,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:00:59'),(8,205,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:04:18'),(8,205,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:55:37'),(8,206,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:56'),(9,193,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:41:22'),(9,193,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:43:18'),(9,199,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:41:10'),(9,199,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:45:31'),(9,199,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:13'),(9,199,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:49:03'),(10,110,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:27:28'),(10,113,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:23:09'),(10,128,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:30:07'),(10,157,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:47'),(10,157,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:56'),(10,157,10004,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:34'),(11,142,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:52'),(11,142,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:04'),(11,142,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:07'),(11,143,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:14'),(11,143,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:49'),(11,143,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:57'),(12,208,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:58:12'),(13,199,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:54'),(13,203,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:57:41'),(13,203,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:59:03'),(13,203,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:00:26'),(13,203,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:54:58'),(13,205,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:53:40'),(14,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:27'),(14,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:51:40'),(14,208,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:52:44'),(14,208,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:43'),(14,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:54'),(14,208,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:53'),(15,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:57'),(15,206,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:51:51'),(15,208,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:47:25'),(15,208,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:52:15'),(15,208,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:55:23'),(15,208,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:55'),(16,205,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:52'),(16,205,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:56:36'),(16,205,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:59:55'),(16,205,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:04:19'),(16,206,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:44:40'),(16,206,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:31'),(17,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:40'),(17,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:51:43'),(17,208,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:47:21'),(17,208,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:52:12'),(17,208,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:19'),(17,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:57:36'),(18,113,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:21:45'),(18,113,10001,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:38:24'),(18,113,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:42:11'),(18,113,10004,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:45:25'),(18,126,10004,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:59'),(19,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:09'),(19,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:27'),(19,208,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:46:49'),(19,208,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:51:57'),(19,208,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:40'),(19,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:44'),(20,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:51:52'),(20,206,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:32'),(20,208,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:32'),(20,208,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:51:34'),(20,208,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:59'),(20,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:57:26'),(21,120,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:30'),(21,121,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:26'),(21,121,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:43'),(21,121,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:05'),(21,121,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:03'),(21,122,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:42'),(22,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:52'),(22,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:34'),(22,208,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:52:04'),(22,208,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:55'),(22,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:57:20'),(22,208,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:00'),(23,105,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:25:04'),(23,105,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:33'),(23,105,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:34:21'),(23,105,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:33'),(23,106,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:05'),(23,108,10000,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:50'),(24,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:48:45'),(24,206,10003,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:28'),(24,208,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:46:48'),(24,208,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:38'),(24,208,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:55:33'),(24,208,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:59'),(25,105,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:03'),(25,105,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:07'),(25,105,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:35:34'),(25,105,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:34'),(25,106,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:10'),(25,108,10004,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:15'),(26,134,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:55'),(26,137,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:27:53'),(26,138,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:25:27'),(26,138,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:29:24'),(26,141,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:07'),(26,141,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:05'),(27,193,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:41:26'),(27,193,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:42:57'),(27,199,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:40:12'),(27,199,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:45:32'),(27,199,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:22'),(27,199,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:48:35'),(28,206,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:47:19'),(28,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:51:33'),(28,206,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:01'),(28,208,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:52:09'),(28,208,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:55:38'),(28,208,10004,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:50'),(29,105,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:25'),(29,105,10001,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:58'),(29,105,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:50'),(29,105,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:34:24'),(29,106,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:03'),(29,108,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:17'),(30,105,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:23:24'),(30,105,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:33'),(30,105,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:35:25'),(30,105,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:17'),(30,106,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:42'),(30,108,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:22:29'),(31,105,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:16'),(31,105,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:35:57'),(31,105,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:18'),(31,105,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:34'),(31,106,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:21:59'),(31,108,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:13'),(32,122,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:20'),(32,122,10003,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:32:05'),(32,126,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:58'),(32,126,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:57'),(32,126,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:27:26'),(32,126,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:05'),(33,119,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:18'),(33,128,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:24:23'),(33,159,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:27:55'),(33,159,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:30:33'),(33,159,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:35:16'),(33,159,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:43:48'),(34,119,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:22'),(34,119,10001,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:27'),(34,119,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:25'),(34,119,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:48'),(34,159,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:33:09'),(34,159,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:43:01'),(35,143,10003,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:30:28'),(35,144,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:25'),(35,144,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:27'),(35,144,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:43'),(35,144,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:29:53'),(35,145,10000,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:37'),(36,137,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:39:49'),(36,138,10001,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:25:35'),(36,138,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:21'),(36,138,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:30:15'),(36,138,10004,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:27'),(36,141,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:04'),(37,170,10000,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:27:21'),(37,170,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:46:10'),(37,170,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:50:45'),(37,170,10004,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:55:44'),(37,193,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:35:30'),(37,199,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:32:33'),(38,193,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:39:36'),(38,193,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:41:04'),(38,193,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:43:39'),(38,199,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:41:40'),(38,199,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:45:49'),(38,199,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:28'),(39,132,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:03'),(39,132,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:27'),(39,132,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:30:04'),(39,132,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:32:29'),(39,133,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:35'),(39,133,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:31'),(40,120,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:21:26'),(40,120,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:25:55'),(40,120,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:41'),(40,123,10004,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:27:03'),(40,145,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:34'),(40,145,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:30'),(41,110,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:27:25'),(41,128,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:37'),(41,157,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:38'),(41,157,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:45'),(41,157,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:49'),(41,157,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:17'),(42,167,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:32:06'),(42,167,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:34:05'),(42,167,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:26'),(42,170,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:30:32'),(42,170,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:43:34'),(42,170,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:50:17'),(43,167,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:33:52'),(43,167,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:32:00'),(43,170,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:45'),(43,170,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:50:30'),(43,170,10003,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:53:01'),(43,170,10004,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:44:36'),(44,144,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:35'),(44,144,10002,2,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:14'),(44,144,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:30:51'),(44,145,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:25:05'),(44,145,10001,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:49'),(44,145,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:22'),(45,119,10003,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:30:55'),(45,119,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:34'),(45,166,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:28:15'),(45,166,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:36:51'),(45,166,10002,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:43:40'),(45,166,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:47:04'),(46,203,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 08:00:08'),(46,205,10000,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:46:38'),(46,205,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:01:09'),(46,205,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 08:04:00'),(46,205,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:58:35'),(46,206,10004,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:45:18'),(47,206,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:47:55'),(47,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:00'),(47,206,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:29'),(47,208,10000,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:48:04'),(47,208,10001,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:51:53'),(47,208,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:54:13'),(48,133,10002,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:29:38'),(48,133,10003,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:31:26'),(48,134,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:20:01'),(48,134,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:23:00'),(48,134,10002,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:24:26'),(48,134,10003,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:26:36'),(49,120,10000,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:22:40'),(49,120,10001,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:25:50'),(49,120,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:26:51'),(49,120,10004,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:20'),(49,123,10000,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:27:04'),(49,145,10002,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:28:24'),(50,206,10002,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:49:02'),(50,206,10004,1,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:52:30'),(50,208,10001,5,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:51:26'),(50,208,10002,3,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:55:12'),(50,208,10003,4,'Luogo incantevole, camerieri simpaticissimi e puntuali. Le portate sono abbondanti. Davvero consigliatissimo.','2014-05-06 07:56:52'),(50,208,10004,0,'Luogo orribile, le porate sono minime e cibo troppo salato. Sconsigliato!','2014-05-06 07:47:36');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:33
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
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'Restaurant','service'),(2,'Take-away','service'),(3,'Mexican','cousine'),(4,'Spanish','cousine');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:51
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
-- Table structure for table `users_cluster`
--

DROP TABLE IF EXISTS `users_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_cluster` (
  `user_id` bigint(20) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`cluster_id`),
  KEY `fk_users_has_cluster_cluster1_idx` (`cluster_id`),
  KEY `fk_users_has_cluster_users1_idx` (`user_id`),
  CONSTRAINT `fk_users_has_cluster_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_has_cluster_cluster1` FOREIGN KEY (`cluster_id`) REFERENCES `cluster` (`cluster_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_cluster`
--

LOCK TABLES `users_cluster` WRITE;
/*!40000 ALTER TABLE `users_cluster` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_cluster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-01 19:19:46
