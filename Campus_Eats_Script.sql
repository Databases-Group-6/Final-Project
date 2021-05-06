Drop database Campus_Eats_Fall2020; 
Create database Campus_Eats_Fall2020;
Use Campus_Eats_Fall2020;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: niner_eats
-- ------------------------------------------------------
-- Server version	8.0.18
-- created by "mavericks" team:  
-- Dhananjay Arora, Akshay Babu, Sumit Kawale, Prashant Madaan
-- this database is only to be used for educational and class
-- purposes and can not be replicated or used for commercial purposes
-- or private interests without permission by the Mavericks team

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
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `delivery_time` datetime DEFAULT NULL,
  PRIMARY KEY (`delivery_id`),
  KEY `fk_delivery_driver_id` (`driver_id`),
  KEY `fk_delivery_vehicle_id` (`vehicle_id`),
  CONSTRAINT `fk_delivery_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_delivery_vehicle_id` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,3,8,'2004-04-15 15:15:01'),(2,6,17,'1986-03-09 13:02:10'),(3,8,4,'2007-03-27 04:20:50'),(4,4,4,'1990-11-27 07:17:36'),(5,4,7,'1985-05-17 20:06:35'),(6,5,15,'1987-07-21 03:13:27'),(7,7,1,'1984-12-20 02:07:33'),(8,6,16,'1987-10-24 02:17:47'),(9,6,10,'1973-08-23 08:51:27'),(10,4,8,'1984-07-05 15:41:52'),(11,3,12,'2005-08-13 13:46:19'),(12,4,12,'2000-06-10 15:12:36'),(13,3,4,'1997-03-15 11:26:07'),(14,2,7,'2002-11-02 13:09:13'),(15,3,16,'1981-12-08 18:29:25'),(16,7,16,'1996-08-06 00:30:01'),(17,5,20,'2006-09-06 06:36:54'),(18,5,19,'1992-08-13 02:49:56'),(19,8,12,'1993-07-28 11:48:09'),(20,5,6,'1990-01-04 11:00:09'),(21,5,3,'2000-12-13 17:38:36'),(22,4,13,'1990-03-19 22:51:00'),(23,5,9,'1972-02-19 02:26:18'),(24,7,7,'2017-03-20 16:51:08'),(25,8,13,'1974-01-01 11:14:14'),(26,2,13,'2019-01-15 05:59:35'),(27,1,3,'2007-04-20 19:22:11'),(28,6,18,'1982-06-13 10:39:10'),(29,7,6,'1996-02-24 19:28:29'),(30,8,9,'1975-02-18 15:58:47'),(31,4,17,'1994-05-20 07:20:50'),(32,2,1,'2012-05-15 03:14:38'),(33,5,6,'2003-04-13 15:05:16'),(34,4,15,'2013-03-20 03:42:18'),(35,7,16,'2016-11-14 07:19:17'),(36,1,2,'1978-05-30 23:37:54'),(37,5,10,'2012-04-12 12:47:41'),(38,8,19,'1976-11-28 20:32:04'),(39,4,6,'2014-06-13 10:12:35'),(40,6,3,'2014-10-26 06:51:03'),(41,2,4,'1977-10-01 00:42:32'),(42,3,10,'1999-09-16 09:29:48'),(43,5,4,'1997-10-10 15:57:51'),(44,5,19,'2002-05-07 05:34:59'),(45,5,15,'2004-05-06 01:40:09'),(46,7,9,'1987-08-29 11:10:25'),(47,1,9,'1999-05-04 20:14:44'),(48,8,1,'2013-05-18 02:51:44'),(49,4,20,'2000-11-18 05:13:35'),(50,1,10,'1974-04-01 19:29:04'),(51,3,3,'2009-01-01 08:06:39'),(52,7,6,'1983-06-24 13:57:13'),(53,5,7,'2001-06-27 04:51:36'),(54,1,8,'2010-06-22 15:40:38'),(55,8,8,'2005-08-13 20:44:05'),(56,7,4,'1997-11-15 04:34:41'),(57,4,11,'1980-08-20 18:58:41'),(58,1,12,'1999-11-10 05:16:48'),(59,5,1,'2007-05-23 12:18:57'),(60,4,20,'1997-12-01 11:07:06'),(61,4,12,'2012-04-22 10:09:20'),(62,4,12,'1980-12-23 17:00:24'),(63,2,17,'1974-03-09 13:17:06'),(64,2,14,'2006-05-23 00:09:16'),(65,6,5,'2015-12-04 02:40:23'),(66,5,8,'2013-10-06 09:32:26'),(67,4,16,'2007-10-19 19:02:18'),(68,8,6,'2004-07-18 07:16:52'),(69,8,13,'1994-09-18 22:12:40'),(70,6,15,'2001-07-24 11:56:32'),(71,5,11,'1997-05-08 08:13:38'),(72,2,17,'1991-07-22 02:45:00'),(73,5,11,'2007-01-29 00:46:12'),(74,7,18,'1972-10-08 02:30:28'),(75,2,11,'2012-08-08 06:06:23'),(76,5,20,'1992-03-03 17:59:04'),(77,3,11,'2002-06-01 09:30:41'),(78,2,17,'2004-12-20 16:44:08'),(79,5,1,'1976-04-03 09:33:28'),(80,8,12,'2015-05-07 06:51:40'),(81,1,11,'1982-05-17 00:05:21'),(82,5,11,'1997-03-05 05:33:31'),(83,2,17,'1983-07-04 04:40:47'),(84,3,1,'2014-07-13 06:03:16'),(85,7,15,'2005-11-22 09:50:13'),(86,3,6,'2016-01-24 01:19:46'),(87,7,14,'1970-04-25 22:44:54'),(88,8,15,'1981-11-19 06:22:17'),(89,5,5,'1982-12-27 11:00:06'),(90,5,11,'1972-06-18 13:59:01'),(91,4,4,'2008-06-17 01:54:35'),(92,6,13,'1993-04-09 05:12:19'),(93,1,12,'1996-12-24 00:24:04'),(94,1,5,'1999-09-03 23:23:03'),(95,1,7,'1982-04-08 01:10:43'),(96,5,12,'1996-11-17 03:22:08'),(97,7,4,'1976-02-29 10:04:08'),(98,2,10,'1980-05-01 04:18:43'),(99,3,4,'1983-10-04 13:03:38'),(100,6,2,'2011-06-16 17:20:37'),(101,4,2,NULL);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `license_number` varchar(75) DEFAULT NULL,
  `date_hired` date DEFAULT NULL,
  `rating` float DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `fk_D_student_id` (`student_id`),
  CONSTRAINT `fk_D_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,110,'fi3980','1989-01-18',4),(2,98,'js4003','2017-03-15',3),(3,104,'xt8429','2002-10-11',3),(4,43,'yv6392','2010-02-23',3),(5,75,'cf3679','1997-04-06',4),(6,68,'rx3942','1970-03-24',3),(7,143,'mf2647','2014-05-06',3),(8,96,'ia9372','2011-06-25',3);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `title` varchar(75) DEFAULT NULL,
  `degree_college` varchar(75) DEFAULT NULL,
  `highest_degree` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `fk_F_person_id` (`person_id`),
  CONSTRAINT `fk_F_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,8,'Assistant Professor','UF','PhD'),(2,11,'Professor','SJSU','Master'),(3,21,'Adjunct Professor','UNCC','Master'),(4,16,'Assistant Professor','UF','Bachelor'),(5,6,'Assistant Professor','Yale','Master'),(6,4,'Professor','CMU','PhD'),(7,15,'Assistant Professor','Duke','PhD'),(8,12,'Professor','NCSU','Master'),(9,10,'Adjunct Professor','Stanford','Bachelor'),(10,7,'Assistant Professor','Duke','PhD'),(11,14,'Assistant Professor','CMU','Bachelor'),(12,3,'Adjunct Professor','UNCC','Bachelor'),(13,1,'Assistant Professor','Harvard','Bachelor'),(14,22,'Assistant Professor','NCSU','PhD'),(15,9,'Assistant Professor','Harvard','Bachelor'),(16,25,'Adjunct Professor','Harvard','Bachelor'),(17,17,'Adjunct Professor','Stanford','Master'),(18,18,'Assistant Professor','UNCC','PhD'),(19,24,'Assistant Professor','CMU','Bachelor'),(20,23,'Adjunct Professor','Stanford','PhD'),(21,19,'Assistant Professor','CMU','PhD'),(22,20,'Professor','Stanford','PhD'),(23,13,'Adjunct Professor','NCSU','PhD'),(24,2,'Assistant Professor','Duke','Master'),(25,5,'Adjunct Professor','SJSU','Master'),(26,205,'Assistant Professor','UCLA','PhD');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(75) DEFAULT NULL,
  `location_address` varchar(75) DEFAULT NULL,
  `latitude` varchar(75) DEFAULT NULL,
  `longitude` varchar(75) DEFAULT NULL,
  `drop_off_point` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`location_id`),
  UNIQUE KEY `location_index_desc` (`location_id` DESC),
  KEY `idx_location_location_name` (`location_name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Suite 157','69612 Will Ferry\nEwellfort, KS 63168','-60.101046','101.481031','7893 Zita Mission Suite 949'),(2,'Apt. 080','711 Sammie Manor Apt. 863\nNorth Derek, NC 10578-4530','43.715801','3.213285','456 Lucio Common'),(3,'Suite 057','28742 Cole Forest Suite 483\nPort Jettiestad, RI 73714','89.842723','176.244614','145 Hal Skyway'),(4,'Apt. 443','356 Anderson Ridge Suite 742\nNorth Napoleon, VT 49903-3077','58.930520','109.869865','783 Travis Junction Apt. 728'),(5,'Suite 615','160 Skylar Union Apt. 740\nNew Elna, WY 49897-8734','79.842372','-61.397932','29350 Vandervort Estates'),(6,'Apt. 102','0552 Oran Forest Apt. 992\nMurazikview, NH 38317','-33.883942','-170.177924','1097 Wellington Valleys Apt. 395'),(7,'Apt. 309','6422 Nicolas Parkway Apt. 645\nPort Chadrick, FL 35738-8854','-64.515628','8.086937','408 Arely Streets Suite 405'),(8,'Apt. 210','7342 Lon Burgs Apt. 111\nGriffinborough, VT 64308','86.553283','-141.049418','5539 Mohammad Heights'),(9,'Suite 985','11269 Satterfield Knoll\nMauricehaven, WA 28902','5.180228','-52.389443','65717 Emmerich Walks'),(10,'Suite 343','147 Rempel Fork Apt. 940\nLake Delbert, LA 88131','44.909586','153.999345','658 Muhammad Land'),(11,'Suite 534','6402 Nienow Branch\nAriannatown, OK 28871-1749','-54.503176','-25.420009','27516 Elizabeth Road Suite 956'),(12,'Apt. 170','500 Boyle Gardens\nEast Amaliamouth, NY 48976','-54.104944','162.891267','67672 Frederik Skyway'),(13,'Suite 059','10112 Rau Station Apt. 761\nGarryland, AL 55900-5843','2.597478','-155.953323','7712 Maddison Centers Suite 850'),(14,'Suite 699','3808 Doyle Trail\nEast Silas, IA 37233-1658','30.753077','86.288575','136 O\'Connell Cape'),(15,'Apt. 286','20238 Altenwerth Loaf Suite 010\nDereckshire, VA 95393','-66.122207','-149.824885','77965 Destini Expressway Apt. 959'),(16,'Suite 691','9248 Bogisich Valleys\nTrompstad, NC 13748-3393','2.515638','177.753639','549 McClure Mission Apt. 918'),(17,'Apt. 332','204 Boyle Fort Apt. 653\nKautzerbury, LA 72319-3112','-68.893434','174.800381','11522 Haag Ferry Suite 031'),(18,'Apt. 158','63501 Funk Meadows\nUptonland, SD 60736-9385','28.507958','-75.256071','277 Mitchell Groves'),(19,'Suite 575','5924 Wuckert Meadow\nSouth Peggieview, GA 74295','-16.610616','-72.268415','43775 Narciso Plains'),(20,'Suite 268','345 Hermiston Streets\nPadbergton, MT 28143','65.738737','58.149015','3512 Carmela Cove Apt. 544'),(21,'Apt. 524','873 Percival Lights Suite 233\nAliviaview, GA 03965','67.141265','-173.513727','3838 Kirk Estates'),(22,'Apt. 190','66253 Reynolds Estate Suite 044\nSimonisside, WA 61688','5.838614','-111.040987','2610 Nolan Mill'),(23,'Suite 971','80612 Huel Shoal Suite 474\nGustavetown, NY 21745','38.930320','-13.117365','82341 Bernier Hills'),(24,'Suite 241','0276 Tamia Station Suite 735\nSolonfort, RI 12291-5788','7.830370','144.207856','4173 Theodora Plains'),(25,'Apt. 982','61231 Oda Loaf\nNew Nayeli, AK 82397','-12.199068','-17.852044','4485 Larissa Locks'),(26,'Apt. 366','3756 Terry Garden\nEast Lowellchester, AR 21100-1833','-18.154077','-82.234137','7989 Keira Fields'),(27,'Apt. 655','080 Darian Court\nSchuppemouth, NY 01757-0964','32.289014','-51.656823','6354 Chaya Inlet Apt. 859'),(28,'Suite 627','077 Jones Way\nSouth Mac, NH 34012','-77.441834','138.508983','8576 Mraz Route'),(29,'Apt. 067','532 Walsh Rest\nClementtown, KS 33449-1356','21.713872','64.510151','5524 Amina Meadow'),(30,'Apt. 435','62852 Josianne Mills\nEast Jeromeview, LA 82405','3.125229','-111.949983','21779 Nikolaus Common Apt. 851'),(31,'Apt. 862','3932 Alysha Station Suite 223\nLake Jakeland, WI 16933-0548','-4.658250','90.607759','352 Lehner Club'),(32,'Apt. 547','675 Giuseppe Divide\nNorth Angela, NY 08608','-72.446033','47.048924','7245 Lindgren Mount'),(33,'Suite 890','752 Cecilia Bypass Apt. 959\nSanfordhaven, WA 56971-1157','51.665170','77.806552','15710 Leon Viaduct'),(34,'Suite 328','7598 Klocko Oval Apt. 344\nDavionview, OH 58638','11.881816','73.668767','657 Annie Mission Apt. 557'),(35,'Suite 753','485 Grayce Oval\nWest Jarrett, IA 91623-1323','24.690149','66.045301','369 Schumm Lock Apt. 238'),(36,'Apt. 645','21545 Lind Avenue Apt. 382\nPredovicview, MI 29544','-74.927689','83.265896','091 Matilde Plains'),(37,'Suite 951','6198 Fay Wells\nGaylordstad, CT 61152','66.394980','-59.050144','83844 Colten Locks Apt. 489'),(38,'Suite 216','346 Schaefer Coves\nJadeland, MS 78153','-66.245838','-158.722669','5860 Herbert Mill Apt. 351'),(39,'Suite 468','784 Nickolas Prairie\nEmmanuelleberg, MO 24742','56.745502','-157.051267','333 Kassulke Stravenue Suite 365'),(40,'Apt. 687','7517 Leonard Viaduct Apt. 845\nBettiestad, MI 44408-9670','29.819380','-32.122210','1610 Hermina Harbor'),(41,'Apt. 130','50315 Frami Avenue\nLubowitztown, AR 11074','-84.989439','-80.878304','0930 Kessler Pines'),(42,'Apt. 621','46127 Rowe Meadows\nPort Kacey, OH 67514','42.828977','103.587679','27321 Jonas Lodge'),(43,'Apt. 339','13115 Goyette Hill Apt. 020\nNew Viviane, WI 82795-6389','-64.609637','91.929908','674 Axel Square Apt. 434'),(44,'Suite 091','64736 Michale Dam Suite 996\nVioletton, CT 07419-1266','2.426098','-55.634546','90325 Samson Manors'),(45,'Suite 606','8865 Weimann Meadows Apt. 986\nNew Darrin, ND 68683-4367','9.188521','150.453880','70401 Andres Cape'),(46,'Apt. 895','0651 Hoeger Route\nNew Madelineport, NJ 20757','-87.709982','76.089939','4599 Crona Wall'),(47,'Suite 874','48826 Jacobson Rue Apt. 189\nNew Javon, MT 26911','-21.845400','35.257482','827 Barrows Grove Suite 824'),(48,'Apt. 942','4926 Lupe Prairie Apt. 046\nBeckerville, ME 26965','-78.054954','-130.852481','832 Muller Valley'),(49,'Apt. 614','69415 Gerry Wall Suite 971\nBeattyfort, VT 50012-9205','72.283789','-108.170390','4022 Koelpin Fords Apt. 743'),(50,'Apt. 030','666 Heller Club Apt. 467\nBurleyshire, MD 54385-3107','-38.728546','-35.072223','0068 Tromp Centers'),(51,'Apt. 940','794 Hilbert Roads\nWilhelminemouth, DC 00100','-8.897519','88.848386','346 Janae Harbor Suite 458'),(52,'Apt. 634','65073 Aufderhar Mission Suite 778\nLoniestad, SD 78878-6419','23.408943','165.398873','36035 Barton Crest'),(53,'Apt. 782','746 Jalon Fort\nDariofort, MA 79648','-59.088037','-103.347456','321 Margarett Path'),(54,'Suite 426','8353 Alejandra Heights\nNorth Gardner, AR 00733-0393','-26.565917','115.692025','189 Blick Manors Apt. 066'),(55,'Apt. 709','62270 Katelynn Views\nTomborough, WV 24093-0247','-37.074660','76.206560','2245 Alexander Forest Apt. 581'),(56,'Suite 991','7814 Stanley Ramp\nNorth Alene, MA 01296-2354','46.302614','-25.734456','49283 Kamryn Point Suite 174'),(57,'Suite 960','65592 Liam Route\nLucymouth, VA 96459','-20.775978','121.809647','1714 Dena Ferry Suite 821'),(58,'Apt. 765','18848 Heaney Knoll Apt. 745\nLake Genoveva, FL 65517-3493','-82.197132','47.558329','5529 Rosamond Forges Suite 578'),(59,'Suite 078','7033 Yost Drive Apt. 553\nMekhiview, OK 48129-1227','-84.757382','-58.654951','3021 Baumbach Terrace Suite 512'),(60,'Apt. 554','8312 Elaina Stream\nOsborneview, ME 31318','-41.348220','-36.548238','9338 Chadd Landing'),(61,'Apt. 649','32904 Kunze Point\nWest Marlon, KS 96283','77.113732','173.740537','036 Rebeca Ports Suite 971'),(62,'Suite 285','2055 Reinger Isle Suite 643\nPort Gilbert, CO 29400','41.839736','140.371966','6591 Murazik Fields'),(63,'Suite 131','4927 Rowe Mountains Suite 840\nRomafort, OR 55775-5302','-12.717245','98.803269','0573 Jennie Centers Suite 444'),(64,'Suite 549','38523 Ebert Plains\nNorth Reesemouth, PA 81161','39.412911','-13.612642','847 Alexandrine Pine'),(65,'Suite 057','577 Bosco Green Apt. 208\nRubytown, CO 67492','74.904833','138.781453','715 Elena Prairie'),(66,'Apt. 224','2759 Emmalee Radial\nBogisichmouth, GA 93636-4262','80.350868','109.402133','32117 Larkin Glens Suite 120'),(67,'Suite 842','122 Frederick Plaza Suite 326\nLarkinfurt, LA 61011-0332','51.879563','139.262053','6672 O\'Reilly Station Apt. 304'),(68,'Suite 051','1579 Cyrus Square\nPort Raphaelle, SD 02230','54.628958','16.532622','60762 Lafayette Mount'),(69,'Suite 566','354 Konopelski Mission Suite 967\nNorth Waldo, NH 57787','55.835435','121.519774','37963 Eliseo Field Suite 782'),(70,'Suite 194','270 Wyman Burgs\nSchmidtborough, ID 31185','2.428639','18.915083','3011 Keagan Cliff'),(71,'Suite 400','7180 Devante Hills Suite 245\nSouth Rossie, ND 77848-7427','-31.676452','-171.620202','601 Adriana Forge'),(72,'Suite 170','5862 Leatha Orchard Suite 024\nReubenmouth, LA 38852','-48.152329','144.854379','57056 Lang Vista Suite 576'),(73,'Suite 972','775 Quinton Lane Apt. 482\nQuitzonfort, ID 32867-1172','5.775053','120.802147','01687 Russel Streets'),(74,'Apt. 814','344 Rylee Vista Apt. 872\nElvistown, CO 63706-4744','-67.390203','-38.347276','938 Abshire Mission'),(75,'Apt. 669','45232 Jast Shoals Apt. 768\nWest Nelsview, KY 81086-6074','-71.989135','168.958988','404 Ena Crest Suite 279'),(76,'Suite 564','576 Huels Burgs\nPort Fritz, OH 46070-9005','47.057137','115.145131','2263 Ella Lodge Apt. 429'),(77,'Suite 399','065 Stracke Mountain Suite 204\nWildermantown, MS 82948-2075','-53.323383','140.320853','4862 Stone Coves'),(78,'Apt. 094','91865 Letha Village Suite 621\nLangchester, ND 52116','-6.897948','-60.925732','833 Colten Shore'),(79,'Apt. 567','25427 Casimer Oval Apt. 791\nNorth Herta, TN 66396-2943','-33.475706','131.064403','395 Koepp Plain'),(80,'Suite 693','688 Hahn Centers\nPort Alphonsoview, RI 76712','-53.028515','19.837964','165 Mercedes Place Apt. 655'),(81,'Suite 509','658 Conor Port Apt. 489\nAbigaleview, IN 71308-0448','-76.085998','-54.565506','2862 Marty Throughway'),(82,'Apt. 678','6248 Frida Neck\nHarveyport, NJ 19092-3293','0.498058','39.425007','45787 Chaya Forks'),(83,'Apt. 539','19376 Name Neck Suite 362\nAntonioland, NV 49104-5101','-72.426565','-153.978776','60734 Kathlyn Rue Suite 096'),(84,'Suite 174','16736 Annabel Rapid Suite 989\nPort Halie, VT 56468','20.498983','-156.991411','0603 Ryan Glens'),(85,'Apt. 010','522 Waelchi Ramp\nSouth Polly, HI 61817-1149','-67.186395','95.299372','12273 Paucek Mount Suite 261'),(86,'Suite 873','20209 Mazie Glens Suite 966\nGwenview, KY 53849','-79.339662','-18.135492','9742 Nico Turnpike Apt. 716'),(87,'Apt. 198','8187 O\'Kon Loop Suite 540\nSouth Mikeborough, MT 08645-7217','81.564385','129.153519','667 Nyasia Stravenue Apt. 223'),(88,'Apt. 386','3824 Jerald Wells\nLednerchester, IL 34650','-62.141340','-50.218426','313 Toy Shore'),(89,'Apt. 627','9946 Evangeline Trail\nMitchellfurt, KS 78732','-45.361426','141.801986','48675 Mann Mission'),(90,'Apt. 408','359 Reichel Course\nPort Heathville, NV 22035-1749','-37.629458','142.868503','04507 Aisha Light'),(91,'Apt. 940','2841 Matilda Light\nNew Berneice, KY 93006-1067','44.019826','61.089192','7894 Wiegand Center'),(92,'Suite 523','09351 Dawn Isle\nPort Monty, IN 03900','5.537848','-47.637225','000 Gleichner Groves Suite 760'),(93,'Suite 515','9156 Earlene Drives\nFadelbury, VA 22109-1994','-58.840136','-151.166289','7213 Unique Curve Apt. 238'),(94,'Suite 390','3194 VonRueden Road Suite 638\nEast Tiana, NE 22875','64.883603','157.722086','843 Konopelski Gardens Apt. 507'),(95,'Suite 353','441 Steuber Landing Suite 981\nBayleehaven, DC 05649','28.826289','41.172158','853 Fritsch Street Suite 159'),(96,'Suite 901','94240 Tremblay Viaduct Suite 169\nNew Melody, AR 25552','55.711350','161.543504','9168 Lilly Ranch Apt. 651'),(97,'Apt. 441','26914 Johnston Via Suite 614\nGloverport, GA 39771','-26.328698','120.427582','2852 Marisol Meadows Suite 534'),(98,'Apt. 481','863 Nina Village\nSouth Vernonberg, WA 34268','-68.889173','84.854941','57866 Birdie Corners'),(99,'Apt. 412','50421 Heaney Unions\nNew Pasquale, AK 98565-2159','-35.314166','-155.680802','97642 Rempel Tunnel Suite 610'),(100,'Apt. 474','42828 Evangeline Square\nJacklynfort, AK 42024-2081','66.232111','91.681238','778 Cassandre Cliff');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- View structure for view `drivers_with_high_ratings`
--

USE `campus_eats_fall2020`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `drivers_with_high_ratings` AS
    SELECT 
        `rating`.`rating_id` AS `person_id`,
        `rating`.`rating` AS `person_name`,
        `rating`.`order_id` AS `person_email`,
        `driver_rating`.`driver_rating_id` AS `student_id`,
        `driver_rating`.`rating_id` AS `graduation_year`
    FROM
        (`rating`
        JOIN `driver_rating` ON ((`driver_rating`.`rating_id` = `rating`.`rating_id`)))
    WHERE
        (`rating`.`rating` >= 3)
	ORDER BY
		`driver_rating`.`driver_rating_id` AND `rating`.`rating_id`;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  `driver_rating_id` int(11) NOT NULL,
  `restaurant_rating_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  KEY `fk_O_driver_rating_id` (`driver_rating_id`),
  KEY `fk_O_restaurant_rating_id` (`restaurant_rating_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`),
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_O_driver_rating_id` FOREIGN KEY (`driver_rating_id`) REFERENCES `driver_rating` (`driver_rating_id`),
  CONSTRAINT `fk_O_restaurant_rating_id` FOREIGN KEY (`restaurant_rating_id`) REFERENCES `restaurant_rating` (`restaurant_rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`, `person_id`, `delivery_id`, `location_id`, `driver_id`, `restaurant_id`, `total_price`, `delivery_charge`, `driver_rating_id`, `restaurant_rating_id`) VALUES (1,1,1,1,1,1,15.63,6.63,1,1),(2,2,2,2,2,1,18.03,9.43,2,2),(3,3,3,3,3,1,11.91,7.42,3,3),(4,4,4,4,4,1,19.13,6.26,4,4),(5,5,5,5,5,1,13.76,6.24,5,5),(6,6,6,6,6,2,5.4,4.83,6,6),(7,7,7,7,7,2,14.05,8.57,7,7),(8,8,8,8,8,2,3.81,2.38,8,8),(9,9,9,9,1,2,17.1,6.72,9,9),(10,10,10,10,2,10,12.71,1.82,10,10),(11,11,11,11,3,3,3.9,7.26,11,11),(12,12,12,12,4,3,6.82,7.4,12,12),(13,13,13,13,5,3,4.73,7.43,13,13),(14,14,14,14,6,3,12.08,1.21,14,14),(15,15,15,15,7,3,3.83,4.77,15,15),(16,16,16,16,8,4,12.43,2.76,16,16),(17,17,17,17,1,4,6.61,4.85,17,17),(18,18,18,18,2,4,7.89,5.69,18,18),(19,19,19,19,3,4,16.54,4.88,19,19),(20,20,20,20,4,4,3.21,4.98,20,20);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- View structure for view `restaurants_with_lake`
--

USE `campus_eats_fall2020`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `restaurants_with_lake` AS
    SELECT 
        `restaurant`.`restaurant_id` AS `restaurant_id`,
        `restaurant`.`location` AS `restaurant_location`,
        `restaurant`.`restaurant_name` AS `restaurant_name`,
        `restaurant`.`schedule` AS `restaurant_schedule`
    FROM
        (`restaurant`)
    WHERE
        (`restaurant`.`location` like '%Lake%')
	ORDER BY `restaurant`.`location`;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `rating` int(1) DEFAULT NULL,
  PRIMARY KEY (`rating_id`),
  FOREIGN KEY `fk_Rt_order_id` (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--
LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`rating_id`,`order_id`,`rating`) VALUES (1,1,1),(2,2,3),(3,3,5),(4,4,5),(5,5,1),(6,6,2),(7,7,3),(8,8,5),(9,9,3),(10,10,4),(11,11,3),(12,12,4),(13,13,1),(14,14,3),(15,15,3),(16,16,2),(17,17,3),(18,18,5),(19,19,4),(20,20,1),(21,1,3),(22,2,2),(23,3,1),(24,4,5),(25,5,2),(26,6,4),(27,7,2),(28,8,3),(29,9,3),(30,10,1),(31,11,1),(32,12,2),(33,13,1),(34,14,4),(35,15,3),(36,16,2),(37,17,1),(38,18,4),(39,19,1),(40,20,3);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_rating`
--

DROP TABLE IF EXISTS `restaurant_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_rating` (
  `restaurant_rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`restaurant_rating_id`),
  FOREIGN KEY `fk_R_rating_id` (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_rating`
--
LOCK TABLES `restaurant_rating` WRITE;
/*!40000 ALTER TABLE `restaurant_rating` DISABLE KEYS */;
INSERT INTO `restaurant_rating` (`restaurant_rating_id`,`rating_id`) VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `restaurant_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_rating`
--

DROP TABLE IF EXISTS `driver_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_rating` (
  `driver_rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `rating_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`driver_rating_id`),
  FOREIGN KEY `fk_D_rating_id` (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_rating`
--
LOCK TABLES `driver_rating` WRITE;
/*!40000 ALTER TABLE `driver_rating` DISABLE KEYS */;
INSERT INTO `driver_rating` (`driver_rating_id`,`rating_id`) VALUES (1,21),(2,22),(3,23),(4,24),(5,25),(6,26),(7,27),(8,28),(9,29),(10,30),(11,31),(12,32),(13,33),(14,34),(15,35),(16,36),(17,37),(18,38),(19,39),(20,40);
/*!40000 ALTER TABLE `driver_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- View structure for view `drivers_with_high_ratings`
--

CREATE INDEX idx on `rating` (`rating_id`, `order_id`, `rating`);

USE `campus_eats_fall2020`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `drivers_with_high_ratings` AS
    SELECT 
        `rating`.`rating_id`,
        `rating`.`rating`,
        `rating`.`order_id`,
        `driver_rating`.`driver_rating_id`
    FROM
        (`rating`
        JOIN `driver_rating` ON ((`driver_rating`.`rating_id` = `rating`.`rating_id`)))
    WHERE
        (`rating`.`rating` >= 3)
	ORDER BY
		`driver_rating`.`driver_rating_id` AND `rating`.`rating_id`;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `total_price` float NOT NULL,
  `delivery_charge` float DEFAULT NULL,
  `driver_rating_id` int(11) NOT NULL,
  `restaurant_rating_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_O_person_id` (`person_id`),
  KEY `fk_O_delivery_id` (`delivery_id`),
  KEY `fk_O_location_id` (`location_id`),
  KEY `fk_O_driver_id` (`driver_id`),
  KEY `fk_O_restaurant_id` (`restaurant_id`),
  KEY `fk_O_driver_rating_id` (`driver_rating_id`),
  KEY `fk_O_restaurant_rating_id` (`restaurant_rating_id`),
  CONSTRAINT `fk_O_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`delivery_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_O_driver_id` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `fk_O_location_id` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_O_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `fk_O_restaurant_id` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`restaurant_id`),
  CONSTRAINT `fk_O_driver_rating_id` FOREIGN KEY (`driver_rating_id`) REFERENCES `driver_rating` (`driver_rating_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_O_restaurant_rating_id` FOREIGN KEY (`restaurant_rating_id`) REFERENCES `restaurant_rating` (`restaurant_rating_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`, `person_id`, `delivery_id`, `location_id`, `driver_id`, `restaurant_id`, `total_price`, `delivery_charge`, `driver_rating_id`, `restaurant_rating_id`) VALUES (1,1,1,1,1,1,15.63,6.63,1,1),(2,2,2,2,2,1,18.03,9.43,2,2),(3,3,3,3,3,1,11.91,7.42,3,3),(4,4,4,4,4,1,19.13,6.26,4,4),(5,5,5,5,5,1,13.76,6.24,5,5),(6,6,6,6,6,2,5.4,4.83,6,6),(7,7,7,7,7,2,14.05,8.57,7,7),(8,8,8,8,8,2,3.81,2.38,8,8),(9,9,9,9,1,2,17.1,6.72,9,9),(10,10,10,10,2,10,12.71,1.82,10,10),(11,11,11,11,3,3,3.9,7.26,11,11),(12,12,12,12,4,3,6.82,7.4,12,12),(13,13,13,13,5,3,4.73,7.43,13,13),(14,14,14,14,6,3,12.08,1.21,14,14),(15,15,15,15,7,3,3.83,4.77,15,15),(16,16,16,16,8,4,12.43,2.76,16,16),(17,17,17,17,1,4,6.61,4.85,17,17),(18,18,18,18,2,4,7.89,5.69,18,18),(19,19,19,19,3,4,16.54,4.88,19,19),(20,20,20,20,4,4,3.21,4.98,20,20);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(75) DEFAULT NULL,
  `is_admin` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`staff_id`),
  KEY `fk_S_person_id` (`person_id`),
  CONSTRAINT `fk_S_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`),
  CONSTRAINT `check_is_admin_y_n` CHECK ((`is_admin` in (_utf8mb4'Y',_utf8mb4'N')))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,27,'Janitor','Y'),(2,37,'Bus Driver','N'),(3,48,'Bus Driver','N'),(4,28,'Assistant Manager','N'),(5,31,'Receptionist','Y'),(6,38,'Assistant Manager','Y'),(7,26,'Bus Driver','N'),(8,49,'Logistic Manager','N'),(9,33,'Receptionist','Y'),(10,45,'Assistant Manager','Y'),(11,40,'Bus Driver','Y'),(12,29,'Logistic Manager','N'),(13,46,'Receptionist','N'),(14,41,'Logistic Manager','Y'),(15,32,'Logistic Manager','Y'),(16,47,'Janitor','N'),(17,50,'Logistic Manager','Y'),(18,30,'Janitor','Y'),(19,39,'Assistant Manager','Y'),(20,43,'Bus Driver','Y'),(21,35,'Bus Driver','Y'),(22,42,'Logistic Manager','Y'),(23,36,'Janitor','N'),(24,34,'Logistic Manager','Y'),(25,44,'Bus Driver','Y');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `graduation_year` int(4) DEFAULT NULL,
  `major` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_St_person_id` (`person_id`),
  CONSTRAINT `fk_St_person_id` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,101,1987,'Philosophy','Undergraduate'),(2,141,1986,'Accounts','Undergraduate'),(3,92,1978,'Electronics','Graduate'),(4,85,2008,'Computer Science','Graduate'),(5,66,1979,'Accounts','Graduate'),(6,164,2019,'Accounts','Graduate'),(7,110,1989,'Philosophy','Undergraduate'),(8,137,1987,'Accounts','Undergraduate'),(9,140,1975,'Data Science','Graduate'),(10,107,1985,'Data Science','Graduate'),(11,55,2017,'Electrical','Undergraduate'),(12,91,2006,'Electrical','Undergraduate'),(13,144,2008,'Cyber Security','Graduate'),(14,58,2005,'Mechanical','Graduate'),(15,191,2015,'Accounts','Undergraduate'),(16,190,2011,'Biotechnology','Undergraduate'),(17,60,1990,'Cyber Security','Undergraduate'),(18,59,1987,'Environmental','Undergraduate'),(19,114,1999,'Data Science','Graduate'),(20,185,1986,'Electrical','Graduate'),(21,61,2006,'Electrical','Undergraduate'),(22,117,1984,'Data Science','Undergraduate'),(23,73,2004,'Chemical','Graduate'),(24,170,1976,'Chemical','Undergraduate'),(25,146,1997,'Computer Science','Graduate'),(26,143,1977,'Chemical','Undergraduate'),(27,108,1995,'Mechanical','Undergraduate'),(28,198,2000,'Mechanical','Graduate'),(29,94,2013,'Accounts','Graduate'),(30,172,2005,'Philosophy','Graduate'),(31,68,1981,'Chemical','Graduate'),(32,111,1991,'Environmental','Undergraduate'),(33,165,1983,'Cyber Security','Undergraduate'),(34,155,1993,'Environmental','Graduate'),(35,163,2013,'Accounts','Undergraduate'),(36,71,2002,'Accounts','Undergraduate'),(37,194,2013,'Data Science','Graduate'),(38,125,1983,'Chemical','Undergraduate'),(39,126,1980,'Chemical','Graduate'),(40,168,2014,'Electrical','Undergraduate'),(41,106,2010,'Data Science','Graduate'),(42,112,1990,'Accounts','Graduate'),(43,93,1975,'Philosophy','Graduate'),(44,195,2016,'Mechanical','Undergraduate'),(45,69,1975,'Philosophy','Graduate'),(46,180,1972,'Accounts','Undergraduate'),(47,56,1990,'Computer Science','Undergraduate'),(48,57,1982,'Accounts','Graduate'),(49,193,2012,'Accounts','Graduate'),(50,100,1988,'Civil','Graduate'),(51,78,1999,'Mechanical','Graduate'),(52,63,1989,'Mechanical','Undergraduate'),(53,153,1978,'Philosophy','Undergraduate'),(54,65,1985,'Cyber Security','Graduate'),(55,118,2010,'Biotechnology','Graduate'),(56,169,1981,'Chemical','Undergraduate'),(57,184,1980,'Chemical','Graduate'),(58,51,2001,'Accounts','Graduate'),(59,130,1993,'Data Science','Graduate'),(60,80,2005,'Chemical','Graduate'),(61,134,1994,'Chemical','Graduate'),(62,142,1979,'Accounts','Graduate'),(63,97,1988,'Data Science','Graduate'),(64,148,1998,'Biotechnology','Undergraduate'),(65,166,1980,'Civil','Undergraduate'),(66,116,1970,'Accounts','Undergraduate'),(67,138,2014,'Chemical','Graduate'),(68,113,1997,'Data Science','Undergraduate'),(69,70,2006,'Mechanical','Graduate'),(70,173,1975,'Cyber Security','Graduate'),(71,182,1984,'Accounts','Undergraduate'),(72,160,1974,'Cyber Security','Undergraduate'),(73,128,1972,'Environmental','Undergraduate'),(74,99,2009,'Environmental','Graduate'),(75,147,1971,'Mechanical','Graduate'),(76,81,1994,'Cyber Security','Graduate'),(77,177,1999,'Electronics','Graduate'),(78,90,1978,'Computer Science','Graduate'),(79,158,1985,'Computer Science','Graduate'),(80,79,2004,'Environmental','Graduate'),(81,119,1989,'Biotechnology','Graduate'),(82,171,2019,'Electronics','Undergraduate'),(83,77,1989,'Electronics','Undergraduate'),(84,186,1973,'Mechanical','Undergraduate'),(85,105,2011,'Chemical','Undergraduate'),(86,149,1971,'Mechanical','Undergraduate'),(87,133,1978,'Mechanical','Undergraduate'),(88,174,2010,'Environmental','Graduate'),(89,95,1994,'Mechanical','Undergraduate'),(90,72,2019,'Environmental','Undergraduate'),(91,76,1978,'Data Science','Graduate'),(92,123,2008,'Philosophy','Undergraduate'),(93,188,1979,'Data Science','Graduate'),(94,132,2001,'Data Science','Graduate'),(95,183,1983,'Data Science','Graduate'),(96,179,1973,'Data Science','Graduate'),(97,129,2000,'Accounts','Graduate'),(98,115,2015,'Philosophy','Undergraduate'),(99,200,1986,'Electronics','Undergraduate'),(100,84,2009,'Cyber Security','Undergraduate'),(101,54,1984,'Chemical','Graduate'),(102,102,2000,'Biotechnology','Undergraduate'),(103,152,2003,'Data Science','Graduate'),(104,176,1985,'Cyber Security','Graduate'),(105,120,2019,'Environmental','Graduate'),(106,53,1992,'Chemical','Graduate'),(107,178,1971,'Cyber Security','Graduate'),(108,122,1998,'Electronics','Graduate'),(109,86,2011,'Electrical','Graduate'),(110,136,2016,'Electronics','Graduate'),(111,151,1981,'Chemical','Undergraduate'),(112,196,1992,'Philosophy','Undergraduate'),(113,161,1994,'Computer Science','Undergraduate'),(114,83,2004,'Biotechnology','Undergraduate'),(115,98,1985,'Civil','Graduate'),(116,139,1979,'Accounts','Undergraduate'),(117,181,1977,'Mechanical','Graduate'),(118,197,1973,'Accounts','Undergraduate'),(119,135,1998,'Electronics','Undergraduate'),(120,109,2002,'Cyber Security','Undergraduate'),(121,159,1976,'Chemical','Graduate'),(122,67,1971,'Chemical','Undergraduate'),(123,199,2019,'Computer Science','Graduate'),(124,64,1992,'Accounts','Undergraduate'),(125,74,2002,'Data Science','Graduate'),(126,175,1987,'Environmental','Undergraduate'),(127,157,2017,'Biotechnology','Undergraduate'),(128,62,1971,'Biotechnology','Undergraduate'),(129,103,1993,'Cyber Security','Graduate'),(130,131,1972,'Environmental','Graduate'),(131,87,1989,'Electrical','Undergraduate'),(132,150,1984,'Cyber Security','Graduate'),(133,75,1988,'Accounts','Graduate'),(134,82,2018,'Civil','Graduate'),(135,124,2016,'Computer Science','Undergraduate'),(136,88,1989,'Biotechnology','Undergraduate'),(137,167,1991,'Data Science','Undergraduate'),(138,127,2013,'Chemical','Undergraduate'),(139,89,1986,'Electronics','Undergraduate'),(140,189,1995,'Environmental','Graduate'),(141,192,1972,'Philosophy','Graduate'),(142,145,1981,'Computer Science','Graduate'),(143,156,1996,'Environmental','Undergraduate'),(144,162,1999,'Cyber Security','Undergraduate'),(145,154,2009,'Biotechnology','Undergraduate'),(146,104,2006,'Electronics','Graduate'),(147,96,1985,'Mechanical','Graduate'),(148,187,2002,'Cyber Security','Undergraduate'),(149,52,1995,'Cyber Security','Undergraduate'),(150,121,1994,'Mechanical','Graduate'),(151,204,2019,'graduate','Graduate');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_plate` varchar(75) DEFAULT NULL,
  `model` varchar(75) DEFAULT NULL,
  `make` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'4333','p','Mercedes'),(2,'8289','y','BMW'),(3,'1126','h','Bugatti'),(4,'7749','p','Audi'),(5,'2644','z','BMW'),(6,'9878','o','Kia'),(7,'4697','i','Kia'),(8,'9687','s','Mercedes'),(9,'3364','c','Hyundai'),(10,'8683','z','Toyota'),(11,'5436','i','Kia'),(12,'9357','e','Kia'),(13,'6519','z','Toyota'),(14,'3585','t','Hyundai'),(15,'2767','d','Bugatti'),(16,'4184','j','Mercedes'),(17,'6489','l','BMW'),(18,'4260','j','Audi'),(19,'6455','d','Mercedes'),(20,'7009','q','Toyota');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'niner_eats'
--

--
-- Dumping routines for database 'niner_eats'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_person` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_person`(in person_name varchar(300), in email varchar(150), cellno bigint (15), person_type varchar(10))
BEGIN
insert into person (person_name, person_email, cell) values(person_name, email, cellno);
if(person_type = 'student') then
insert into student (person_id, graduation_year, major, type) values 
((select person_id from person where cell = cellno), 2019, 'Computer Science', 'Graduate');
elseif(person_type = 'faculty') then
insert into faculty (person_id, title, degree_college, highest_degree) values 
((select person_id from person where cell = cellno), 'Assistant Professor', 'UCLA', 'PhD');
elseif(person_type = 'staff') then
insert into student (person_id, position, is_admin) values 
((select person_id from person where cell = cellno), 'Bus Driver', 'N');
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;

--
-- Stored procedure 'CalculateAvgRating'
--

USE `campus_eats_fall2020`;
DROP procedure IF EXISTS `CalculateAvgRating`;

DELIMITER $$
USE `campus_eats_fall2020`$$
CREATE DEFINER='root'@'localhost' PROCEDURE `CalculateAvgRating` (IN rating_id INT, OUT avg_rating FLOAT)
BEGIN
declare rating_sum INT;
declare avg_rating FLOAT;

SELECT Count(rating_id) as count, SUM(rating_id) as rating_sum
FROM rating;

if rating_sum != 0 THEN
	set avg_rating = rating_sum / count;
else 
	set avg_rating = rating_sum;
end if;

END$$

DELIMITER ;

-- /*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Stored procedure 'CalculateAvgRating'
--

USE `campus_eats_fall2020`;
DROP procedure IF EXISTS `CalculateAvgRating`;

DELIMITER $$
USE `campus_eats_fall2020`$$
CREATE DEFINER='root'@'localhost' PROCEDURE `CalculateAvgRating` (IN rating_id INT, OUT avg_rating FLOAT)
BEGIN
declare rating_sum INT;
declare avg_rating FLOAT;

SELECT Count(rating_id) as count, SUM(rating_id) as rating_sum
FROM rating;

if rating_sum != 0 THEN
	set avg_rating = rating_sum / count;
else 
	set avg_rating = rating_sum;
end if;

END$$

DELIMITER ;

--
-- Final view structure for view `person_join`
--

/*!50001 DROP VIEW IF EXISTS `person_join`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_join` AS select `person`.`person_id` AS `person_id`,`person`.`person_name` AS `person_name`,`person`.`person_email` AS `person_email`,`student`.`student_id` AS `student_id`,`student`.`graduation_year` AS `graduation_year` from (`person` join `student` on((`student`.`person_id` = `person`.`person_id`))) where (`student`.`major` = 'Computer Science') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `person_student`
--

/*!50001 DROP VIEW IF EXISTS `person_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
-- /*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `person_student` AS select `a`.`person_id` AS `person_id`,`a`.`person_name` AS `person_name`,`a`.`person_email` AS `person_email`,`a`.`cell` AS `cell` from `person` `a` where `a`.`person_id` in (select `student`.`person_id` from `student` where (`student`.`graduation_year` = 2019)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
-- /*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2019-12-02 21:16:05



/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
-- /*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_AFTER_INSERT` AFTER INSERT ON `order` FOR EACH ROW BEGIN
	insert into niner_eats.delivery (driver_id, vehicle_id) values(new.driver_id, 2);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
-- /*!50003 SET collation_connection  = @saved_col_connection */ ;
