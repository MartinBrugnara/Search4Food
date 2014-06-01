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
