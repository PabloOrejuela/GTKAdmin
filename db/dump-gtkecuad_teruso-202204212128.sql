-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gtkecuad_teruso
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accesos`
--

DROP TABLE IF EXISTS `accesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accesos` (
  `idacceso` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT current_timestamp(),
  `pin` char(6) DEFAULT NULL,
  `expira` varchar(15) DEFAULT NULL,
  `idsocio` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idacceso`),
  KEY `fk_accesos_socios` (`idsocio`),
  CONSTRAINT `fk_accesos_socios` FOREIGN KEY (`idsocio`) REFERENCES `socios` (`idsocio`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesos`
--

LOCK TABLES `accesos` WRITE;
/*!40000 ALTER TABLE `accesos` DISABLE KEYS */;
INSERT INTO `accesos` VALUES (1,'2022-04-01 20:34:06','976695','1648845546',2),(2,'2022-04-01 20:34:30','942291','1648845570',2),(3,'2022-04-01 20:40:46','191016','1648845946',2),(4,'2022-04-01 20:46:38','673063','1648846298',2),(5,'2022-04-03 02:28:22','123690','1648953202',2);
/*!40000 ALTER TABLE `accesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `idagenda` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `lugar` varchar(120) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idagenda`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banco` (
  `idbanco` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `banco` varchar(80) NOT NULL,
  PRIMARY KEY (`idbanco`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'AMAZONAS'),(2,'AUSTRO'),(3,'BANCO CAPITAL'),(4,'BANCO CENTRAL'),(5,'BANCO D MIRO SA'),(6,'BANCO PARA LA ASISTENCIA COMUNITARIA FINCA S.A.'),(7,'BANCO PROCREDIT'),(8,'BANECUADOR B.P.'),(9,'BOLIVARIANO'),(10,'CITIBANK'),(11,'COMERCIAL DE MANABI'),(12,'COOP  DE AHORRO Y CREDITO LA MERCED LTDA'),(13,'COOP A Y C CADECOG GONZANAMA'),(14,'COOP A Y C ESPERANZA Y PROGRESO DEL VALLE'),(15,'COOP A Y C PROFUTURO LTDA'),(16,'COOP A Y C UNION EL EJIDO'),(17,'COOP A Y C VILCABAMBA CACVIL'),(18,'COOP AH Y CR ANDINA LTDA'),(19,'COOP AH Y CR COCA LTDA'),(20,'COOP AH Y CR CREDIAMIGO'),(21,'Coop Ah y Cr de la Pequena Empresa de Loja CACPE L'),(22,'COOP AH Y CR EDUCADORES DE PASTAZA LTDA'),(23,'COOP AH Y CR POLICIA NACIONAL'),(24,'COOP AH Y CR SAN ANTONIO LTDA.'),(25,'Coop Ah y Credito Ambato Ltda'),(26,'COOP AH Y CRJUAN PIO MORA LTDA'),(27,'COOP AHO Y CRED EDUCADORES DE CHIMBORAZO'),(28,'COOP AHO Y CREDITO  MANUEL GODOY'),(29,'COOP AHO Y CREDITO DESARROLLO PUEBLOS'),(30,'COOP AHO Y CREDITO SAN JOSE'),(31,'COOP AHO Y CREDITO SANTA ROSA'),(32,'COOP AHORRO Y CREDI MUJERES UNIDAS TANTANAKUSHKA W'),(33,'COOP AHORRO Y CREDITO SAN GABRIEL LTDA'),(34,'COOP AHORRO Y CREDITO SAN ISIDRO LTDA'),(35,'COOP DE A Y C FUTURO LAMANENSE'),(36,'COOP DE A Y C SAN JUAN DE COTOGCHOA'),(37,'COOP DE A Y C SANTA ANA DE NAYON'),(38,'COOP DE A Y CR CORPORACION CENTRO LTDA'),(39,'COOP DE A. Y C. ANTORCHA LTDA'),(40,'COOP DE AH Y CR AGRICOLA JUNIN LTDA'),(41,'COOP DE AH Y CR CONSTRUCCION COMERCIO Y PRODUCCION'),(42,'COOP DE AH Y CR DE SERV PUBLIC MINISTERIO EDUC Y C'),(43,'COOP DE AH Y CR ERCO LTDA.'),(44,'COOP DE AH Y CR GUACHAPALA LTDA'),(45,'COOP DE AH Y CR NUEVA ESPERANZA'),(46,'COOP DE AHO Y CRED SAN MIGUEL DE LOS BANCOS'),(47,'COOP DE AHORRO Y CREDITO DE LA PEQUENA EMPRESA DE '),(48,'COOP DE AHORRO Y CREDITO PROVIDA'),(49,'COOP DE AHORRO Y CREDITO SANTA ISABEL LTDA'),(50,'COOP. 29 DE OCTUBRE'),(51,'COOP. A Y C DE LA PEQ. EMP. CACPE ZAMORA LTDA.'),(52,'COOP. AH Y CR NUEVOS HORIZONTES EL ORO LTDA'),(53,'COOP. AHO Y CRED ALIANZA MINAS LTDA.'),(54,'COOP. AHO Y CREDITO 23 DE JULIO'),(55,'COOP. AHO Y CREDITO EL SAGRARIO'),(56,'COOP. AHO Y CREDITO JARDIN AZUAYO'),(57,'COOP. AHO Y CREDITO NACIONAL'),(58,'COOP. AHO Y CREDITO SAN FRANCISCO'),(59,'COOP. AHO Y CREDITO SANTA ANA'),(60,'COOP. AHORRO Y CREDITO 15 DE ABRIL LTDA'),(61,'COOP. AHORRO Y CREDITO AGRARIA MUSHUK KAWSAY LTDA.'),(62,'COOP. AHORRO Y CREDITO CARIAMANGA LTDA.'),(63,'COOP. AHORRO Y CREDITO COOPROGRESO'),(64,'COOP. AHORRO Y CREDITO DE LA PEQUENA EMPRESA GUALA'),(65,'COOP. AHORRO Y CREDITO FUNDESARROLLO'),(66,'COOP. AHORRO Y CREDITO JUAN DE SALINAS LTDA.'),(67,'COOP. AHORRO Y CREDITO MALCHINGUI LTDA.'),(68,'COOP. AHORRO Y CREDITO MANANTIAL DE ORO LTDA.'),(69,'COOP. AHORRO Y CREDITO MI TIERRA'),(70,'COOP. AHORRO Y CREDITO NUEVA JERUSALEN'),(71,'COOP. AHORRO Y CREDITO PUELLARO LTDA'),(72,'COOP. AHORRO Y CREDITO SEMILLA DEL PROGRESO LTDA.'),(73,'COOP. AHORRO Y CREDITO TENA LTDA.'),(74,'COOP. ALIANZA DEL VALLE LTDA.'),(75,'COOP. ANDALUCIA'),(76,'COOP. ATUNTAQUI'),(77,'COOP. CACPECO'),(78,'COOP. CALCETA LTDA.'),(79,'COOP. CHONE LTDA.'),(80,'COOP. COMERCIO LTDA PORTOVIEJO'),(81,'COOP. COTOCOLLAO'),(82,'COOP. DE A Y C GUAMOTE LTDA'),(83,'COOP. DE A Y C. LUZ DEL VALLE'),(84,'COOP. DE A. Y C. 13 DE ABRIL LTDA'),(85,'COOP. DE A. Y C. 16 DE JUNIO'),(86,'COOP. DE A. Y C. 20 DE FEBRERO LTDA.'),(87,'COOP. DE A. Y C. 23 DE MAYO LTDA.'),(88,'COOP. DE A. Y C. ABDON CALDERON LTDA.'),(89,'COOP. DE A. Y C. CAMARA DE COMERCIO SANTO DOMINGO'),(90,'COOP. DE A. Y C. CHIBULEO LTDA.'),(91,'COOP. DE A. Y C. COOPAC AUSTRO LTDA -MIESS'),(92,'COOP. DE A. Y C. CREDISOCIO'),(93,'COOP. DE A. Y C. ESCENCIA INDIGENA LTDA.'),(94,'COOP. DE A. Y C. LUCHA CAMPESINA LTDA.'),(95,'COOP. DE A. Y C. MAQUITA CUSHUNCHIC LTDA.'),(96,'COOP. DE AH Y CR 1 DE JULIO'),(97,'COOP. DE AH Y CR CACEC LTDA. COTOPAXI'),(98,'COOP. DE AH Y CR CACPE CELICA'),(99,'COOP. DE AH Y CR CAMARA DE COMERCIO RIOBAMBA'),(100,'COOP. DE AH Y CR FOCLA'),(101,'COOP. DE AH Y CR FORTALEZA'),(102,'COOP. DE AH Y CR FORTUNA - MIES'),(103,'COOP. DE AH Y CR INDIGENA SAC LTDA'),(104,'COOP. DE AH Y CR LA INMACULADA DE SAN PLACIDO LTDA'),(105,'COOP. DE AH Y CR MAGISTERIO MANABITA LIMITADA'),(106,'COOP. DE AH Y CR MASCOOP'),(107,'COOP. DE AH Y CR ONCE DE JUNIO'),(108,'COOP. DE AH Y CR SANTA LUCIA LTDA'),(109,'COOP. DE AH Y CR TEXTIL 14 DE MARZO'),(110,'COOP. DE AHORRO Y CREDITO 4 DE OCTUBRE LTDA.'),(111,'COOP. DE AHORRO Y CREDITO DE LA PEQ. EMP. CACPE YA'),(112,'COOP. DE AHORRO Y CREDITO HUAICANA LTDA'),(113,'COOP. DE AHORRO Y CREDITO LOS ANDES LATINOS LTDA.'),(114,'COOP. DE AHORRO Y CREDITO MUSHUC RUNA LTDA.'),(115,'COOP. DE AHORRO Y CREDITO NUEVA HUANCAVILCA LTDA.'),(116,'COOP. DE AHORRO Y CREDITO PEDRO MONCAYO LTDA.'),(117,'COOP. DE AHORRO Y CREDITO PILAHUIN TIO LTDA.'),(118,'COOP. DE AHORRO Y CREDITO SAN FRANCISCO DE ASIS LT'),(119,'COOP. DE AHORRO Y CREDITO SAN MIGUEL DE PALLATANGA'),(120,'COOP. DE AHORRO Y CREDITO SR. DE GIRON'),(121,'COOP. GUARANDA'),(122,'COOP. JUVENTUD ECUATORIANA PROGRESISTA LTDA.'),(123,'COOP. LA DOLOROSA'),(124,'COOP. OSCUS'),(125,'COOP. PABLO MUNOZ VEGA'),(126,'COOP. PEQ. EMPRESA DE PASTAZA'),(127,'COOP. PREVISION AHORRO Y DESARROLLO'),(128,'COOP. RIOBAMBA'),(129,'COOP. TULCAN'),(130,'COOP.DE AHORRO Y CREDITO HUAYCO PUNGO LTDA.'),(131,'COOP.DE AHORRO Y CREDITO MICROEMPRESARIAL SUCRE'),(132,'COOPE AHO Y CRED PADRE JULIAN LORENTE LTDA'),(133,'COOPE.CAMARA DE COMERCIO DE AMBATO'),(134,'COOPERATIVA 9 DE OCTUBRE LTDA'),(135,'COOPERATIVA CACPE BIBLIAN LTDA'),(136,'COOPERATIVA DE AHORO Y CREDITO VISION DE LOS ANDES'),(137,'COOPERATIVA DE AHORRO Y CREDITO ARTESANOS LTDA'),(138,'COOPERATIVA DE AHORRO Y CREDITO CREA LTDA -MIES'),(139,'COOPERATIVA DE AHORRO Y CREDITO FERNANDO DAQUILEMA'),(140,'COOPERATIVA DE AHORRO Y CREDITO LA BENEFICA LTDA'),(141,'COOPERATIVA DE AHORRO Y CREDITO LAS LAGUNAS-MIESS'),(142,'COOPERATIVA DE AHORRO Y CREDITO MINGA LTDA'),(143,'COOPERATIVA DE AHORRO Y CREDITO MULTIEMPRESARIAL L'),(144,'COOPERATIVA DE AHORRO Y CREDITO PILAHUIN'),(145,'COOPERATIVA DE AHORRO Y CREDITO PUCARA LTDA'),(146,'COOPERATIVA DE AHORRO Y CREDITO SANTA ANITA LTDA'),(147,'CORPORACION FINANCIERA'),(148,'DEL LITORAL'),(149,'DELBANK S.A.'),(150,'DINERS CLUB'),(151,'DINERS/VISA INTERDIN/DISCOVER - Transferencias EnL'),(152,'ECUATORIANO DE LA VIVIENDA'),(153,'FINANCIERA FINANCOOP'),(154,'GUAYAQUIL'),(155,'INTERNACIONAL'),(156,'LOJA'),(157,'MACHALA'),(158,'MUTUALISTA AMBATO'),(159,'MUTUALISTA AZUAY'),(160,'MUTUALISTA IMBABURA'),(161,'MUTUALISTA PICHINCHA'),(162,'BANCO DEL PACIFICO'),(163,'BANCO PICHINCHA '),(164,'PRODUBANCO'),(165,'RUMINAHUI'),(166,'SOLIDARIO');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('oi4gav9md79l4n58q9c7b7ud267350q3','::1',1648843198,'__ci_last_regenerate|i:1648843198;'),('188l9p0fbujmgn4j6g6oaiqaq4dt6eg3','::1',1648843542,'__ci_last_regenerate|i:1648843542;'),('nggu4r9t7fhoh1jdc453r4r8m8qbjk8t','::1',1648843899,'__ci_last_regenerate|i:1648843899;'),('ldkfnhfguqkdvc4gbjlgkad9efqvff28','::1',1648844221,'__ci_last_regenerate|i:1648844221;'),('1has0qft5tebvhrs41c4nl19t2i5unqf','::1',1648844585,'__ci_last_regenerate|i:1648844585;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:32:\"888abec6dc2926ee4b684274532750bb\";rol|s:1:\"1\";id|s:1:\"2\";is_logged_in|b:1;'),('ll3ocgnt9ilpqqru8qk5459papul1mks','::1',1648844898,'__ci_last_regenerate|i:1648844898;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:32:\"888abec6dc2926ee4b684274532750bb\";rol|s:1:\"1\";id|s:1:\"2\";is_logged_in|b:1;'),('g0ht3563bps1a5fjmut5i3d2be28035s','::1',1648845231,'__ci_last_regenerate|i:1648845231;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:32:\"888abec6dc2926ee4b684274532750bb\";rol|s:1:\"1\";id|s:1:\"2\";is_logged_in|b:1;'),('6bma1oqsr7q90ouou3u9oqn934vo32dq','::1',1648845533,'__ci_last_regenerate|i:1648845533;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:32:\"888abec6dc2926ee4b684274532750bb\";rol|s:1:\"1\";id|s:1:\"2\";is_logged_in|b:1;'),('g17en0d30m6qefiim44e4oue55c1124o','::1',1648845986,'__ci_last_regenerate|i:1648845986;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:32:\"888abec6dc2926ee4b684274532750bb\";rol|s:1:\"1\";id|s:1:\"2\";is_logged_in|b:1;'),('trvk2tov2rjdqg9d58ioahg8hhpgnvro','::1',1648846326,'__ci_last_regenerate|i:1648846326;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8e709nrvhmhfnc1lsks26eju4lkkbttg','::1',1648846651,'__ci_last_regenerate|i:1648846651;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('0l1b6fsrr2l2bg6fspn2qc8fdcts1uhk','::1',1648848604,'__ci_last_regenerate|i:1648848604;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('e58h4puihngroiidbdnbk58t61eulhoj','::1',1648848946,'__ci_last_regenerate|i:1648848946;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('49ln2p1uig7vto4e7pl44r337fiobm67','::1',1648849268,'__ci_last_regenerate|i:1648849268;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('hu98vstt3itl45r2l9k2e8fhhtejo0gu','::1',1648849593,'__ci_last_regenerate|i:1648849593;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('pruvovshs7amvene9jl8ggc9dqc8f6of','::1',1648849920,'__ci_last_regenerate|i:1648849920;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5nb96991oo724h8g02dqt7v10tlbeaj7','::1',1648850256,'__ci_last_regenerate|i:1648850256;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lmp5jtj5fc1j3iqfoibho8006lqie1h6','::1',1648850593,'__ci_last_regenerate|i:1648850593;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('e8krg11j3nqgqmr5bn3jecbmetf256fj','::1',1648850924,'__ci_last_regenerate|i:1648850924;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('391a2646qvq18mv8o2bp9krn3eliu584','::1',1648851234,'__ci_last_regenerate|i:1648851234;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('kiu476gcasl47tlk7e00g9sqs1rf56gp','::1',1648851613,'__ci_last_regenerate|i:1648851613;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('49emjo4pra6l83dmke2cjgt5pnnkqp3a','::1',1648851956,'__ci_last_regenerate|i:1648851956;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('f5dflsat56p07iikvbjemipnr5bqdovm','::1',1648852273,'__ci_last_regenerate|i:1648852273;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bphqp3i5mvgf03ubld89pn3i20ea2jg6','::1',1648852574,'__ci_last_regenerate|i:1648852574;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8c3ilssm57668bkoetph00vju1q706mc','::1',1648852885,'__ci_last_regenerate|i:1648852885;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('a00dnaqeegm4m8cmlll2oncu6mckf4s2','::1',1648853230,'__ci_last_regenerate|i:1648853230;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('imhpantke2o339a3e8feve34ff69gblp','::1',1648853847,'__ci_last_regenerate|i:1648853847;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('it4hfe62ki2k700cev3bf2il4r30e650','::1',1648854636,'__ci_last_regenerate|i:1648854636;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('p4m2dg76tocd5qgf4rl4m6v3sprhudg4','::1',1648855009,'__ci_last_regenerate|i:1648855009;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2if6k4v755blmhav52q2107njfn4460l','::1',1648855427,'__ci_last_regenerate|i:1648855427;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('kdl0sds1ch14qjuln23dmooo7ivecq8g','::1',1648856095,'__ci_last_regenerate|i:1648856095;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ihuti0u13mv2lrekua7om9i98h67u97a','::1',1648856901,'__ci_last_regenerate|i:1648856901;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lto9mdb3g2iigp94ljsc7js1hlk30gcu','::1',1648857226,'__ci_last_regenerate|i:1648857226;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('454m46j5jl4ei390hci8pivt80tdct7h','::1',1648857549,'__ci_last_regenerate|i:1648857549;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ckqtgauudjkjivsk5nsgr6h9uqrhduo2','::1',1648864728,'__ci_last_regenerate|i:1648864728;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('n6fi1l0c6f8fmbapd93tpa28b38e6aa1','::1',1648865037,'__ci_last_regenerate|i:1648865037;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6qj25nfr9lifdpctujtgfg7bc0oilelq','::1',1648865477,'__ci_last_regenerate|i:1648865477;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('sfaenn0v02516ju7p7jt8hc3a6n7ojnm','::1',1648865935,'__ci_last_regenerate|i:1648865935;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('1iogk2e97bdjotgb6qn8gfdn6a2mr8n1','::1',1648866298,'__ci_last_regenerate|i:1648866298;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7ilp3f8tqh9qb1kjrgu8fvhcgpulq7ju','::1',1648866666,'__ci_last_regenerate|i:1648866666;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('fvf0m2h9s4drvc7r2rmebju6lj8tmtdn','::1',1648866985,'__ci_last_regenerate|i:1648866985;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('fj06trgubhbu0se73hm4pvcls5305jdr','::1',1648868220,'__ci_last_regenerate|i:1648868220;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('cpjl5fdk6159kbd92dp4bbr2vdego741','::1',1648868524,'__ci_last_regenerate|i:1648868524;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('vakmfp1n6k36pb2pk6a9ppugffhmjv2m','::1',1648868841,'__ci_last_regenerate|i:1648868841;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('3ssqes3at4niolf3p6el8iabaiikrkqs','::1',1648870143,'__ci_last_regenerate|i:1648870143;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bo8e73udaktoav4vs5nbvd4qgrm2jrg3','::1',1648870360,'__ci_last_regenerate|i:1648870213;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('katelpjqfvped63u0vj1uqprjo983o8e','::1',1648946717,'__ci_last_regenerate|i:1648946717;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('rrt5dv7vc05iv7gmb63bphbkkot57dbq','::1',1648947125,'__ci_last_regenerate|i:1648947125;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('q1cg9nmucevbe0rn21lo1vsgbrd0vn1g','::1',1648947445,'__ci_last_regenerate|i:1648947445;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('harrubm9b05ns46fovfk1q663827ku6n','::1',1648947772,'__ci_last_regenerate|i:1648947772;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('phso8d3q4jf9g7i5dmq3ilhsc3pktufd','::1',1648948132,'__ci_last_regenerate|i:1648948132;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5k0dabmijge07rgl47gspemnekkbmfj3','::1',1648949189,'__ci_last_regenerate|i:1648949189;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('em8cjl30bgb6fhqj5spgma9vq0aumq0g','::1',1648949564,'__ci_last_regenerate|i:1648949564;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('jjav69pk4ttnf4r06o6ll92kjcgfirc1','::1',1648952470,'__ci_last_regenerate|i:1648952470;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('b86jg8oec4vljk7c6metl14qbv1ltpno','::1',1648952880,'__ci_last_regenerate|i:1648952880;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('gm45baic9hefdi6v35j8c1edaalfm2i9','::1',1648953953,'__ci_last_regenerate|i:1648953953;'),('8c3b38pjth7bhqh8sg340qlicjgijn5k','::1',1648954549,'__ci_last_regenerate|i:1648954549;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6bjiacvoegnsqtkh63aqsepg3v0r31du','::1',1648954875,'__ci_last_regenerate|i:1648954875;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('f51ttnl4begrllifc4c1pkql8agd9o9e','::1',1648955237,'__ci_last_regenerate|i:1648955237;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5ba8j1h0mahd41nsjn89ohbso8i4cg88','::1',1648955888,'__ci_last_regenerate|i:1648955888;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8ahq80dbofsmno4n539pb95gafdugfuj','::1',1648956223,'__ci_last_regenerate|i:1648956223;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('o2eg039t3lh9qaaf3hmakq4ea9l0a5im','::1',1648959191,'__ci_last_regenerate|i:1648959191;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('qaveos0h9cqn2b1lltfde7dhs0pu4j2e','::1',1648959516,'__ci_last_regenerate|i:1648959516;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('o5no1bploqhd3e58ul8eef7f95crotou','::1',1648959818,'__ci_last_regenerate|i:1648959818;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('vc7lerg0iugv27qsnve0qaimckashu3j','::1',1648960130,'__ci_last_regenerate|i:1648960130;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('885hf1kk0opqumpvl0h5qf38qmg7ftb9','::1',1648960433,'__ci_last_regenerate|i:1648960433;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('rg6t224mbufto07tnc62gap3gbmlvnoj','::1',1648961064,'__ci_last_regenerate|i:1648961064;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('70b5cvj52fhqt8u7h3s1gfsg18stbj75','::1',1648961390,'__ci_last_regenerate|i:1648961390;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('uelb8i3u61jg0innvpjfc8ue3300bhfm','::1',1648961879,'__ci_last_regenerate|i:1648961879;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('arsivfp06057muvn9uc2b93ar78ksbmd','::1',1648962425,'__ci_last_regenerate|i:1648962425;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7o1ed4i2mltfnk7a1r7na11h40nbl85b','::1',1648962777,'__ci_last_regenerate|i:1648962777;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('3mue987diggtphnb78m81b2408v8bdtu','::1',1648963082,'__ci_last_regenerate|i:1648963082;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('0ffkuv6mnjhpluumbmc8uvokkm4e8fag','::1',1648963419,'__ci_last_regenerate|i:1648963419;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lpu65vnohk66s3jhouo7ak02pm4tiuls','::1',1648963865,'__ci_last_regenerate|i:1648963865;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6m7687cbcpjtn0sdpm274t0s76hej062','::1',1648964175,'__ci_last_regenerate|i:1648964175;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('1r9ssccorfv8clj5su96hhp42k07el10','::1',1648964309,'__ci_last_regenerate|i:1648964175;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bkmj940gt630fjrggq3m0nrkrf6rrdea','::1',1649026175,'__ci_last_regenerate|i:1649026175;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('chrr28ecperv8bg4lin2o6dulvtc2kr5','::1',1649026589,'__ci_last_regenerate|i:1649026589;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bc8jfo8eij1c109ro2ev6u0bg8uh77nm','::1',1649027008,'__ci_last_regenerate|i:1649027008;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('brjki5egi08q0i1ijn660s514es1su8e','::1',1649027376,'__ci_last_regenerate|i:1649027376;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7pel0ij38q79gmhk8to2ph3f6q859325','::1',1649027679,'__ci_last_regenerate|i:1649027679;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ar1g95v1hgioo9ac6l4gcca0316vpk8g','::1',1649027992,'__ci_last_regenerate|i:1649027992;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('cc4olh4m2vdf5cqjh4v3r2hcijc792vs','::1',1649028315,'__ci_last_regenerate|i:1649028315;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('3cnknu53dfckq8mm1ds9eko4gjg9qfg0','::1',1649028618,'__ci_last_regenerate|i:1649028618;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('r90l986t7vk54hjvb9fihbvj4646m3km','::1',1649028946,'__ci_last_regenerate|i:1649028946;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8bnn5kae7c8u4443ashqnk6hni1iouah','::1',1649029276,'__ci_last_regenerate|i:1649029276;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('oflvjci24mdvkasc1rdgtbqaahlg7lam','::1',1649120134,'__ci_last_regenerate|i:1649120134;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('3mbf76ueof2itg1jafof6cgg352nrdiu','::1',1649120637,'__ci_last_regenerate|i:1649120637;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('sknps014vnuo8romrhn93ug8cnf0hbai','::1',1649120957,'__ci_last_regenerate|i:1649120957;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('o2bijl50gg88cuflf7pccb7nq2qdd8e6','::1',1649121271,'__ci_last_regenerate|i:1649121271;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8ftbna3eav575gq37rj8s5or9gfrue1h','::1',1649121650,'__ci_last_regenerate|i:1649121650;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('rd3ofrfj0u7feeoqkkide33fffi9m1o5','::1',1649122043,'__ci_last_regenerate|i:1649122043;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('k8c8ebjg5i1sleq415emmrd467af8q56','::1',1649122046,'__ci_last_regenerate|i:1649122043;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('frae1orr37ctb88tl0q1hpnrljl9ooq6','::1',1649178587,'__ci_last_regenerate|i:1649178587;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('m5vsh0pnim0m3pn51abu5os7visq52nm','::1',1649179051,'__ci_last_regenerate|i:1649179051;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('j1nspstsi162r9pbhfl3ppfvvi8hpk11','::1',1649179051,'__ci_last_regenerate|i:1649179051;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8ef27lk0creu075kbdddukua7oiv958q','::1',1649199414,'__ci_last_regenerate|i:1649199414;'),('7adg8kjm6uidauf8i2kjmfoj62mk5jhu','::1',1649199717,'__ci_last_regenerate|i:1649199717;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('eq76uqfka1cdpbn9sn7u6ejd09i5iai6','::1',1649203181,'__ci_last_regenerate|i:1649203181;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('97d9vkac8k2fg8uptgm9gihejo46sqi2','::1',1649203719,'__ci_last_regenerate|i:1649203719;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('e3vc3e600mblgfgl4n4i4v07bsr925ei','::1',1649204231,'__ci_last_regenerate|i:1649204231;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('i39d0c95ll8n6ab41629pkpf7cdb441r','::1',1649204883,'__ci_last_regenerate|i:1649204883;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8iuqafhp99jlu5cseuqmfe5n4hqdoqtg','::1',1649207407,'__ci_last_regenerate|i:1649207407;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('hh6lq8jrgd6juducgl94pcbu2vafh77k','::1',1649207713,'__ci_last_regenerate|i:1649207713;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5usnh71bbv7k039igrapt15kts5s3p6h','::1',1649208031,'__ci_last_regenerate|i:1649208031;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('nn8tqmgs1l5emosuj6a1s5erphtmtgmf','::1',1649212306,'__ci_last_regenerate|i:1649212306;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('tr0s422nija6vtvdmr3uu9sn9u8ffnmv','::1',1649212317,'__ci_last_regenerate|i:1649212306;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('e0bgahk9ve36ocl114qdfsln7d8r0g1f','::1',1649271913,'__ci_last_regenerate|i:1649271913;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('o6evt0f0p6s3mfuh53q78p8hoarpqdjd','::1',1649276372,'__ci_last_regenerate|i:1649276372;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lkirebinhgf04e8m1j9hlq703q6fc72g','::1',1649277282,'__ci_last_regenerate|i:1649277282;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2scalao90ms7cqii70ob5a3ti0upkdff','::1',1649277647,'__ci_last_regenerate|i:1649277647;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ikbp2q64jjl1mjpaubip4c93mcrmchbo','::1',1649278252,'__ci_last_regenerate|i:1649278252;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('orpu7betkberrinnqpf52ek1rbj9been','::1',1649284403,'__ci_last_regenerate|i:1649284403;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('t1tce2ofo0cppglvikd2vv64dgkjf9b1','::1',1649284862,'__ci_last_regenerate|i:1649284862;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ohh60gu3vopijvvp9l4o1cp98js5b16e','::1',1649285222,'__ci_last_regenerate|i:1649285222;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('fr2snrkeuupvlcirta965qla1i8u4iad','::1',1649285954,'__ci_last_regenerate|i:1649285954;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('b265ur3dkqcan300dknpns8q8ctgjmm0','::1',1649287109,'__ci_last_regenerate|i:1649287109;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('c2005kok19js70bdbejtt5ik7ldtsrm6','::1',1649287113,'__ci_last_regenerate|i:1649287109;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8vib7tu2c06uh6o8lr2rlvbsjllr1lpb','::1',1649368195,'__ci_last_regenerate|i:1649368195;'),('sfe9f4l7k5c7025n24q8naesksd8673r','::1',1649369693,'__ci_last_regenerate|i:1649369693;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('s36hs4dt17d53iu39o38ik9fjr1hceip','::1',1649370059,'__ci_last_regenerate|i:1649370059;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('hfvf3flek09611at2ltb1iqhoar16u4f','::1',1649370405,'__ci_last_regenerate|i:1649370405;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8qqhrq7tmsndq9r817if75i1h21vbk53','::1',1649370910,'__ci_last_regenerate|i:1649370910;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('st1qjlqcgv67jdsb98uhljiubf8tpiuc','::1',1649371293,'__ci_last_regenerate|i:1649371293;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('jdjrcch1deenank654k5vgbj6167b6ld','::1',1649371617,'__ci_last_regenerate|i:1649371617;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('is869kvha54c05b6if1b33uihdmojmgm','::1',1649374723,'__ci_last_regenerate|i:1649374723;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('cevfl21snap02bmfc477bv28goedlbtt','::1',1649375052,'__ci_last_regenerate|i:1649375052;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ailtqvei139n31qkp5676suudq2bhqq4','::1',1649375356,'__ci_last_regenerate|i:1649375356;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('sqdkicl2e8ahjs0thtb2tqgerkvslpvb','::1',1649375669,'__ci_last_regenerate|i:1649375669;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('fvn2ig7unujqmae3s44gt25vcnq6jgi5','::1',1649376074,'__ci_last_regenerate|i:1649376074;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('nit6359uotranvhtund3cbv06htprg8q','::1',1649376530,'__ci_last_regenerate|i:1649376530;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('moel7cvaud6knenrgok58ioa9ldfmjrb','::1',1649376837,'__ci_last_regenerate|i:1649376837;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7jmavsnebm4mvinukah1esuaakjrmek7','::1',1649377177,'__ci_last_regenerate|i:1649377177;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('rqlf0vjg7vb2if3ele5tlbbvstd4flu5','::1',1649377479,'__ci_last_regenerate|i:1649377479;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('eang1vc5c38j73v4bcqbutordnn17i25','::1',1649377866,'__ci_last_regenerate|i:1649377866;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('t0djuuj8n7fguv15ieuserovnrn4bggo','::1',1649378543,'__ci_last_regenerate|i:1649378543;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('4o3v7j7vvh3upv4dttikv2r4g9duhc81','::1',1649378851,'__ci_last_regenerate|i:1649378851;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('tnet71dfgplc1ahog73rnq32t8ommqd7','::1',1649379157,'__ci_last_regenerate|i:1649379157;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2opb18c8augjsqiqb6k23jgkipu7pd12','::1',1649379368,'__ci_last_regenerate|i:1649379157;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('onm1h08vjidqinr9kmn42jani17l38kv','::1',1649387992,'__ci_last_regenerate|i:1649387992;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5j18b5375mtq7427orofiqu1ha2nsb0g','::1',1649388298,'__ci_last_regenerate|i:1649388298;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('aqsccai126u2aa47ijqi24i04brl0bf4','::1',1649388697,'__ci_last_regenerate|i:1649388697;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('v0vvlihlnt9624ud2bsag4kbuu6kk2eq','::1',1649389009,'__ci_last_regenerate|i:1649389009;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('djk6rf94velmn6tap2o187jkkpbin5k4','::1',1649389326,'__ci_last_regenerate|i:1649389326;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('vgo4s3j1bub7a86kb3clqljpjmhsrocb','::1',1649389716,'__ci_last_regenerate|i:1649389716;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('peahjm4n0mn9lhjqlv2nct2roqhrl9sq','::1',1649390055,'__ci_last_regenerate|i:1649390055;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ifnt1bbbj564nu96oavep3ufiq9iq4p0','::1',1649390356,'__ci_last_regenerate|i:1649390356;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ha8uj4m6o9a92b7sievghim8he52vbcr','::1',1649391394,'__ci_last_regenerate|i:1649391394;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('55coegkb16j7ecccdfopa9cknve1a706','::1',1649391698,'__ci_last_regenerate|i:1649391698;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('a3ple1c3ksek2nplo9b4sg305di6fg0v','::1',1649392096,'__ci_last_regenerate|i:1649392096;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('0v93por4mkb737puhgdsran67unjk5d7','::1',1649392402,'__ci_last_regenerate|i:1649392402;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('19vhp4j4a991qa084bvq5hogs8r69dpq','::1',1649392725,'__ci_last_regenerate|i:1649392725;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2fjgbfeecsmg9jv1fvcqpifv3f1d7q7f','::1',1649393064,'__ci_last_regenerate|i:1649393064;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('8168uthrpq3c9pcq2f0dmlklfev2fhfa','::1',1649393358,'__ci_last_regenerate|i:1649393064;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('uj98gtfktdotn58rkhhi35o7v1pqq4k2','::1',1649432968,'__ci_last_regenerate|i:1649432968;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('mokj4v608q7tu6a46htpp4llmt1q2c2p','::1',1649433292,'__ci_last_regenerate|i:1649433292;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ncv7fitl8vk176gbb7e4rsmlnpspverl','::1',1649434335,'__ci_last_regenerate|i:1649434335;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('dvsii56os331f8chk2j6i95hngfnikak','::1',1649434699,'__ci_last_regenerate|i:1649434699;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('pl435nif0s6q6lij4k4srk9v7uengin4','::1',1649434752,'__ci_last_regenerate|i:1649434699;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ru7u25qj4cp6ermkbqkcun0n1bsa4mc9','::1',1650202926,'__ci_last_regenerate|i:1650202926;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('781t5i3bl10sdvshq5i3621ljv74ssqq','::1',1650203255,'__ci_last_regenerate|i:1650203255;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2vlclo289b9rd0lmeeg1t3d6p2kqqjdh','::1',1650203564,'__ci_last_regenerate|i:1650203564;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('l3jddjqd5jn0bbirvrh7g97fch2u169s','::1',1650203880,'__ci_last_regenerate|i:1650203880;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bao1boorp95g600fp3rjd7i9pv0gurb9','::1',1650204182,'__ci_last_regenerate|i:1650204182;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('nqfn62ruegu5v0snvihltdgjap0cf3p4','::1',1650204571,'__ci_last_regenerate|i:1650204571;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('finj8kf78duc0jvh8e4gkp90hph49ac7','::1',1650204886,'__ci_last_regenerate|i:1650204886;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7f8eq5aois5r8tq6ekj9bi7pqoie6nc2','::1',1650205353,'__ci_last_regenerate|i:1650205353;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7kac7aq5ih1beugaodptt99r56aq7s71','::1',1650205687,'__ci_last_regenerate|i:1650205687;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('llha3fteis8uigj807a3541dp2c06r5g','::1',1650206008,'__ci_last_regenerate|i:1650206008;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bvmur5v5ljt9t2tv4aot5ha54i4vkpd7','::1',1650206318,'__ci_last_regenerate|i:1650206318;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('gvf10mdblti580u7fh7jnombgr732hf1','::1',1650210836,'__ci_last_regenerate|i:1650210836;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('150mg6ust13lovrqgv7rgf8p03po5ke2','::1',1650210836,'__ci_last_regenerate|i:1650210836;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('kulko67kumppo865tavuprk8dp5ir6v4','::1',1650425523,'__ci_last_regenerate|i:1650425523;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('0n2gcgi0sojcbbhnlq1lva3b2334jg3h','::1',1650425904,'__ci_last_regenerate|i:1650425904;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('fhi2sg6s6lfllqqugg68d21i949r68gt','::1',1650426810,'__ci_last_regenerate|i:1650426810;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('gvjma5tgr5nj2scbu1fdbaonvljcitmr','::1',1650427124,'__ci_last_regenerate|i:1650427124;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('pb6d27p8g06atda8ovf4dr6jk0mcag93','::1',1650427429,'__ci_last_regenerate|i:1650427429;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('oi3fnnva9g6f5ante0t3q0akh3m5n5s2','::1',1650427562,'__ci_last_regenerate|i:1650427429;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lv14fal4vaav8tf2n6jga17lncang45j','::1',1650495113,'__ci_last_regenerate|i:1650495113;'),('lqtk350kpq9klr0td3oc4ck4uvllrpn8','::1',1650496412,'__ci_last_regenerate|i:1650496412;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('jmcea83u1f0sqr261upvefqccp4t1o5o','::1',1650496738,'__ci_last_regenerate|i:1650496738;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('9jl718a5b48vks11rb35gcck0ihltb4d','::1',1650497053,'__ci_last_regenerate|i:1650497053;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('dr20smjjmcq0hucq9eq12ssph0soueiv','::1',1650497521,'__ci_last_regenerate|i:1650497521;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('pdt3s8dc6gdb5c515k8gi8rroi19ecir','::1',1650497866,'__ci_last_regenerate|i:1650497866;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('5nf973bervau875av2vote1nmq1f57h5','::1',1650498203,'__ci_last_regenerate|i:1650498203;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('a07g43cv8qe64ffc01rptsn7mv954aes','::1',1650502736,'__ci_last_regenerate|i:1650502736;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('noeghg4rqb643j9im1lte64srrnnikv2','::1',1650503040,'__ci_last_regenerate|i:1650503040;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('grgfcpepp0jedm2dpfcg3vam9kb74dfk','::1',1650503398,'__ci_last_regenerate|i:1650503398;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('i3ge64dja4ckqkoduo4rv1eptr7na9n5','::1',1650503813,'__ci_last_regenerate|i:1650503813;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('b0rn8op9eq1i77r19kv3ssd7goeapk1b','::1',1650504117,'__ci_last_regenerate|i:1650504117;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('vcegbs8151mgs3aq2t8rl7pdmjq63bhu','::1',1650504455,'__ci_last_regenerate|i:1650504455;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('o260fab045iks0b0lplmd45elatfurp7','::1',1650505390,'__ci_last_regenerate|i:1650505390;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('i0ls950t8cql0p9o337ig5sd769cpdhv','::1',1650505794,'__ci_last_regenerate|i:1650505794;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('d0urv8ad6uj9blagp62gbr9ov68kuioo','::1',1650509394,'__ci_last_regenerate|i:1650509394;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6lg42800kn7j4pcivin8bfhqgi71e21p','::1',1650509884,'__ci_last_regenerate|i:1650509884;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('7s222ccem0irs5v9q3a0rahephl3smfj','::1',1650510662,'__ci_last_regenerate|i:1650510662;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('brfbu3243o96cmde73m6bdt44ecljgt5','::1',1650511357,'__ci_last_regenerate|i:1650511357;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('3obbrsschjujeclofrlc929srcmgjd13','::1',1650511670,'__ci_last_regenerate|i:1650511670;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('k9fuv7n4lgm5dda2npgadc4v86s4qbs6','::1',1650511974,'__ci_last_regenerate|i:1650511974;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('of6q4cvcnokl56d6205051of7cgouah3','::1',1650512293,'__ci_last_regenerate|i:1650512293;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('ib002cvnn2s4ia6d4t40u0b7ttet2mtd','::1',1650512619,'__ci_last_regenerate|i:1650512619;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('admoufjlg2t2bmic32mk8k90m6if4m25','::1',1650512936,'__ci_last_regenerate|i:1650512936;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('vkgoud549rdrvmdm1u7v6cdcgsthcvdg','::1',1650513277,'__ci_last_regenerate|i:1650513277;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('j559is5u7rgv29omlujejv1h1kbqbiea','::1',1650513578,'__ci_last_regenerate|i:1650513578;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2krto86929ndheqggjrptkfqi6reem09','::1',1650513921,'__ci_last_regenerate|i:1650513921;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('tnjgc36gjdsd7a0509cstfoctj63g5lp','::1',1650514238,'__ci_last_regenerate|i:1650514238;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('r4jknokko4hie4jsu6k5oe5rtk9mvrm5','::1',1650514553,'__ci_last_regenerate|i:1650514553;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('d4n58pb45i4darpu33h22abj04fq5qps','::1',1650514871,'__ci_last_regenerate|i:1650514871;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('2l335f3m222agv2s1cqdcniach3l6t7k','::1',1650515226,'__ci_last_regenerate|i:1650515226;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6meqf3qeog1ff1fsgigslmc7vfgca0e9','::1',1650515564,'__ci_last_regenerate|i:1650515564;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('kof7pjltbhq6c2svfgpjm4jeo25a23dk','::1',1650515880,'__ci_last_regenerate|i:1650515880;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('dmpl76ecjmsj6l2kbq4j87pjfltegkh0','::1',1650516168,'__ci_last_regenerate|i:1650515880;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('54rd4c27gis3bndmjr0m7507t2ls1v0c','::1',1650578289,'__ci_last_regenerate|i:1650578289;'),('4h07e2pqjdrsm80t8pmsh3tr30ci1mha','::1',1650580187,'__ci_last_regenerate|i:1650580187;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('34tdgp7ngbp79il9hn0g14gtclqegnqp','::1',1650580534,'__ci_last_regenerate|i:1650580534;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('bsjam9401cgogu9ghom12r2sfsdi7g0s','::1',1650580858,'__ci_last_regenerate|i:1650580858;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('lsajg32rt141rcrdmtik098ansbqnbq8','::1',1650581197,'__ci_last_regenerate|i:1650581197;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('4rvli19tr7i4g94hcb6404ahlrhcc844','::1',1650581525,'__ci_last_regenerate|i:1650581525;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('cqdtkf064h5o5r2mtpf2pmidgr5cbgno','::1',1650581833,'__ci_last_regenerate|i:1650581833;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('d7kll52emks19120rinq6sdd884m5bl0','::1',1650581996,'__ci_last_regenerate|i:1650581833;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('d89jb8vai0ifgma6106usf5pvdq9grml','::1',1650594316,'__ci_last_regenerate|i:1650594316;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;'),('6l9sf4u6jgdeetku0bgta7l9v79lc780','::1',1650594323,'__ci_last_regenerate|i:1650594316;user|s:10:\"1705520227\";nombre|s:14:\"PABLO OREJUELA\";password|s:10:\"1705520227\";rol|s:1:\"3\";id|s:1:\"2\";is_logged_in|b:1;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idciudad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(45) NOT NULL,
  `cod_ciudad` varchar(45) NOT NULL,
  `id_provincia` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `fk_ciudad_provincia_idx` (`id_provincia`),
  CONSTRAINT `fk_ciudad_provincia` FOREIGN KEY (`id_provincia`) REFERENCES `provincias` (`idprovincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'CUENCA','0101',1),(2,'GIRÓN','0102',1),(3,'GUALACEO','0103',1),(4,'NABÓN','0104',1),(5,'PAUTE','0105',1),(6,'PUCARA','0106',1),(7,'SAN FERNANDO','0107',1),(8,'SANTA ISABEL','0108',1),(9,'SIGSIG','0109',1),(10,'OÑA','0110',1),(11,'CHORDELEG','0111',1),(12,'EL PAN','0112',1),(13,'SEVILLA DE ORO','0113',1),(14,'GUACHAPALA','0114',1),(15,'CAMILO PONCE ENRÍQUEZ','0115',1),(16,'GUARANDA','0201',2),(17,'CHILLANES','0202',2),(18,'CHIMBO','0203',2),(19,'ECHEANDÍA','0204',2),(20,'SAN MIGUEL','0205',2),(21,'CALUMA','0206',2),(22,'LAS NAVES','0207',2),(23,'AZOGUES','0301',3),(24,'BIBLIÁN','0302',3),(25,'CAÑAR','0303',3),(26,'LA TRONCAL','0304',3),(27,'EL TAMBO','0305',3),(28,'DÉLEG','0306',3),(29,'SUSCAL','0307',3),(30,'TULCÁN','0401',4),(31,'BOLÍVAR','0402',4),(32,'ESPEJO','0403',4),(33,'MIRA','0404',4),(34,'MONTÚFAR','0405',4),(35,'SAN PEDRO DE HUACA','0406',4),(36,'LATACUNGA','0501',5),(37,'LA MANÁ','0502',5),(38,'PANGUA','0503',5),(39,'PUJILI','0504',5),(40,'SALCEDO','0505',5),(41,'SAQUISILÍ','0506',5),(42,'SIGCHOS','0507',5),(43,'RIOBAMBA','0601',6),(44,'ALAUSI','0602',6),(45,'COLTA','0603',6),(46,'CHAMBO','0604',6),(47,'CHUNCHI','0605',6),(48,'GUAMOTE','0606',6),(49,'GUANO','0607',6),(50,'PALLATANGA','0608',6),(51,'PENIPE','0609',6),(52,'CUMANDÁ','0610',6),(53,'MACHALA','0701',7),(54,'ARENILLAS','0702',7),(55,'ATAHUALPA','0703',7),(56,'BALSAS','0704',7),(57,'CHILLA','0705',7),(58,'EL GUABO','0706',7),(59,'HUAQUILLAS','0707',7),(60,'MARCABELÍ','0708',7),(61,'PASAJE','0709',7),(62,'PIÑAS','0710',7),(63,'PORTOVELO','0711',7),(64,'SANTA ROSA','0712',7),(65,'ZARUMA','0713',7),(66,'LAS LAJAS','0714',7),(67,'ESMERALDAS','0801',8),(68,'ELOY ALFARO','0802',8),(69,'MUISNE','0803',8),(70,'QUININDÉ','0804',8),(71,'SAN LORENZO','0805',8),(72,'ATACAMES','0806',8),(73,'RIOVERDE','0807',8),(74,'LA CONCORDIA','0808',8),(75,'GUAYAQUIL','0901',9),(76,'ALFREDO BAQUERIZO MORENO (JUJÁN)','0902',9),(77,'BALAO','0903',9),(78,'BALZAR','0904',9),(79,'COLIMES','0905',9),(80,'DAULE','0906',9),(81,'DURÁN','0907',9),(82,'EL EMPALME','0908',9),(83,'EL TRIUNFO','0909',9),(84,'MILAGRO','0910',9),(85,'NARANJAL','0911',9),(86,'NARANJITO','0912',9),(87,'PALESTINA','0913',9),(88,'PEDRO CARBO','0914',9),(89,'SAMBORONDÓN','0916',9),(90,'SANTA LUCÍA','0918',9),(91,'SALITRE (URBINA JADO)','0919',9),(92,'SAN JACINTO DE YAGUACHI','0920',9),(93,'PLAYAS','0921',9),(94,'SIMÓN BOLÍVAR','0922',9),(95,'CORONEL MARCELINO MARIDUEÑA','0923',9),(96,'LOMAS DE SARGENTILLO','0924',9),(97,'NOBOL','0925',9),(98,'GENERAL ANTONIO ELIZALDE','0927',9),(99,'ISIDRO AYORA','0928',9),(100,'IBARRA','1001',10),(101,'ANTONIO ANTE','1002',10),(102,'COTACACHI','1003',10),(103,'OTAVALO','1004',10),(104,'PIMAMPIRO','1005',10),(105,'SAN MIGUEL DE URCUQUÍ','1006',10),(106,'LOJA','1101',11),(107,'CALVAS','1102',11),(108,'CATAMAYO','1103',11),(109,'CELICA','1104',11),(110,'CHAGUARPAMBA','1105',11),(111,'ESPÍNDOLA','1106',11),(112,'GONZANAMÁ','1107',11),(113,'MACARÁ','1108',11),(114,'PALTAS','1109',11),(115,'PUYANGO','1110',11),(116,'SARAGURO','1111',11),(117,'SOZORANGA','1112',11),(118,'ZAPOTILLO','1113',11),(119,'PINDAL','1114',11),(120,'QUILANGA','1115',11),(121,'OLMEDO','1116',11),(122,'BABAHOYO','1201',12),(123,'BABA','1202',12),(124,'MONTALVO','1203',12),(125,'PUEBLOVIEJO','1204',12),(126,'QUEVEDO','1205',12),(127,'URDANETA','1206',12),(128,'VENTANAS','1207',12),(129,'VÍNCES','1208',12),(130,'PALENQUE','1209',12),(131,'BUENA FÉ','1210',12),(132,'VALENCIA','1211',12),(133,'MOCACHE','1212',12),(134,'QUINSALOMA','1213',12),(135,'PORTOVIEJO','1301',13),(136,'BOLÍVAR','1302',13),(137,'CHONE','1303',13),(138,'EL CARMEN','1304',13),(139,'FLAVIO ALFARO','1305',13),(140,'JIPIJAPA','1306',13),(141,'JUNÍN','1307',13),(142,'MANTA','1308',13),(143,'MONTECRISTI','1309',13),(144,'PAJÁN','1310',13),(145,'PICHINCHA','1311',13),(146,'ROCAFUERTE','1312',13),(147,'SANTA ANA','1313',13),(148,'SUCRE','1314',13),(149,'TOSAGUA','1315',13),(150,'24 DE MAYO','1316',13),(151,'PEDERNALES','1317',13),(152,'OLMEDO','1318',13),(153,'PUERTO LÓPEZ','1319',13),(154,'JAMA','1320',13),(155,'JARAMIJÓ','1321',13),(156,'SAN VICENTE','1322',13),(157,'MORONA','1401',14),(158,'GUALAQUIZA','1402',14),(159,'LIMÓN INDANZA','1403',14),(160,'PALORA','1404',14),(161,'SANTIAGO','1405',14),(162,'SUCÚA','1406',14),(163,'HUAMBOYA','1407',14),(164,'SAN JUAN BOSCO','1408',14),(165,'TAISHA','1409',14),(166,'LOGROÑO','1410',14),(167,'PABLO SEXTO','1411',14),(168,'TIWINTZA','1412',14),(169,'TENA','1501',15),(170,'ARCHIDONA','1503',15),(171,'EL CHACO','1504',15),(172,'QUIJOS','1507',15),(173,'CARLOS JULIO AROSEMENA TOLA','1509',15),(174,'PASTAZA','1601',16),(175,'MERA','1602',16),(176,'SANTA CLARA','1603',16),(177,'ARAJUNO','1604',16),(178,'QUITO','1701',17),(179,'CAYAMBE','1702',17),(180,'MEJIA','1703',17),(181,'PEDRO MONCAYO','1704',17),(182,'RUMIÑAHUI','1705',17),(183,'SAN MIGUEL DE LOS BANCOS','1707',17),(184,'PEDRO VICENTE MALDONADO','1708',17),(185,'PUERTO QUITO','1709',17),(186,'AMBATO','1801',18),(187,'BAÑOS DE AGUA SANTA','1802',18),(188,'CEVALLOS','1803',18),(189,'MOCHA','1804',18),(190,'PATATE','1805',18),(191,'QUERO','1806',18),(192,'SAN PEDRO DE PELILEO','1807',18),(193,'SANTIAGO DE PÍLLARO','1808',18),(194,'TISALEO','1809',18),(195,'ZAMORA','1901',19),(196,'CHINCHIPE','1902',19),(197,'NANGARITZA','1903',19),(198,'YACUAMBI','1904',19),(199,'YANTZAZA (YANZATZA)','1905',19),(200,'EL PANGUI','1906',19),(201,'CENTINELA DEL CÓNDOR','1907',19),(202,'PALANDA','1908',19),(203,'PAQUISHA','1909',19),(204,'SAN CRISTÓBAL','2001',20),(205,'ISABELA','2002',20),(206,'SANTA CRUZ','2003',20),(207,'LAGO AGRIO','2101',21),(208,'GONZALO PIZARRO','2102',21),(209,'PUTUMAYO','2103',21),(210,'SHUSHUFINDI','2104',21),(211,'SUCUMBÍOS','2105',21),(212,'CASCALES','2106',21),(213,'CUYABENO','2107',21),(214,'ORELLANA','2201',22),(215,'AGUARICO','2202',22),(216,'LA JOYA DE LOS SACHAS','2203',22),(217,'LORETO','2204',22),(218,'SANTO DOMINGO','2301',23),(219,'SANTA ELENA','2401',24),(220,'LA LIBERTAD','2402',24),(221,'SALINAS','2403',24),(222,'LAS GOLONDRINAS','9001',90),(223,'MANGA DEL CURA','9003',90),(224,'EL PIEDRERO','9004',90);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigo_socio`
--

DROP TABLE IF EXISTS `codigo_socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codigo_socio` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigo_socio` varchar(45) NOT NULL,
  `patrocinador` int(10) unsigned NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `idsocio` int(10) unsigned NOT NULL,
  `idrango` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_cod_patrocina_idx` (`patrocinador`),
  KEY `fk_cod_socio_idx` (`idsocio`),
  KEY `fk_codigo_socio_rango_idx` (`idrango`),
  CONSTRAINT `fk_codigo_socio` FOREIGN KEY (`idsocio`) REFERENCES `socios` (`idsocio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_codigo_socio_rango` FOREIGN KEY (`idrango`) REFERENCES `rangos` (`idrango`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigo_socio`
--

LOCK TABLES `codigo_socio` WRITE;
/*!40000 ALTER TABLE `codigo_socio` DISABLE KEYS */;
INSERT INTO `codigo_socio` VALUES (1,'CLTUN-1',0,'2022-03-23',1,8,'2022-04-05 01:00:53',1),(3,'POPCH-2',1,'2022-04-01',2,1,'2022-04-20 04:06:00',1),(4,'PCHJO/U-4',2,'2022-04-05',4,1,'2022-04-21 22:59:07',1),(5,'PCHNL/U-5',1,'2022-04-06',5,1,'2022-04-21 22:51:59',1),(6,'PCHJR/U-3',4,'2022-04-06',3,1,'2022-04-07 22:46:54',1),(7,'PCHPR/U-7',3,'2022-04-06',6,1,'2022-04-08 00:12:25',1),(8,'PCHEO/U-8',4,'2022-04-20',7,1,'2022-04-21 22:59:53',0),(9,'PASEO/U-9',6,'2022-04-20',8,1,'2022-04-21 04:42:15',0),(10,'PASAO/U-10',9,'2022-04-20',9,1,'2022-04-21 04:42:23',0);
/*!40000 ALTER TABLE `codigo_socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisiones`
--

DROP TABLE IF EXISTS `comisiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisiones` (
  `idcomision` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `puntos` decimal(7,2) DEFAULT 0.00,
  `comision` decimal(7,2) DEFAULT 0.00,
  `fecha` date DEFAULT NULL,
  `pagado` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcomision`),
  KEY `comisiones_FK` (`id`),
  CONSTRAINT `comisiones_FK` FOREIGN KEY (`id`) REFERENCES `codigo_socio` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisiones`
--

LOCK TABLES `comisiones` WRITE;
/*!40000 ALTER TABLE `comisiones` DISABLE KEYS */;
INSERT INTO `comisiones` VALUES (1,260.00,250.00,'2022-04-06',1,'2022-04-06 22:47:06',3);
/*!40000 ALTER TABLE `comisiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `idcompras` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `pago` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `idpaquete` tinyint(1) unsigned NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idcompras`),
  KEY `fk_recompras_codigo_socio_idx` (`id`),
  KEY `compras_FK` (`idpaquete`),
  CONSTRAINT `compras_FK` FOREIGN KEY (`idpaquete`) REFERENCES `paquetes` (`idpaquete`) ON UPDATE CASCADE,
  CONSTRAINT `fk_compras_codsocio` FOREIGN KEY (`id`) REFERENCES `codigo_socio` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (3,3,'2022-04-05',0,3,'2022-04-06 00:00:03'),(4,4,'2022-04-05',0,1,'2022-04-06 00:00:18'),(5,4,'2022-04-05',0,3,'2022-04-06 00:30:40'),(6,10,'2022-04-20',0,3,'2022-04-21 02:52:59');
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cta_banco`
--

DROP TABLE IF EXISTS `cta_banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cta_banco` (
  `idcuenta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsocio` int(10) unsigned NOT NULL,
  `num_cta` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT '0000000000',
  `idbanco` smallint(5) unsigned NOT NULL,
  `idtipo_cuenta` tinyint(1) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcuenta`),
  KEY `fk_socio_cta_idx` (`idsocio`),
  KEY `fk_banco_cta_idx` (`idbanco`),
  KEY `fk_tipo_banco_idx` (`idtipo_cuenta`),
  CONSTRAINT `fk_cta_banco_codigo` FOREIGN KEY (`idsocio`) REFERENCES `socios` (`idsocio`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cta_banco`
--

LOCK TABLES `cta_banco` WRITE;
/*!40000 ALTER TABLE `cta_banco` DISABLE KEYS */;
INSERT INTO `cta_banco` VALUES (2,4,'000000000',163,1),(3,5,'000000000',163,1),(4,7,'000000000',163,1),(5,8,'0022559958',10,1),(25,9,'000000000',163,1);
/*!40000 ALTER TABLE `cta_banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matrices`
--

DROP TABLE IF EXISTS `matrices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matrices` (
  `idmatriz` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `matriz` varchar(45) NOT NULL,
  PRIMARY KEY (`idmatriz`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matrices`
--

LOCK TABLES `matrices` WRITE;
/*!40000 ALTER TABLE `matrices` DISABLE KEYS */;
INSERT INTO `matrices` VALUES (1,'UNINIVEL');
/*!40000 ALTER TABLE `matrices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivacion`
--

DROP TABLE IF EXISTS `motivacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivacion` (
  `idmotivacion` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(30) NOT NULL,
  PRIMARY KEY (`idmotivacion`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivacion`
--

LOCK TABLES `motivacion` WRITE;
/*!40000 ALTER TABLE `motivacion` DISABLE KEYS */;
INSERT INTO `motivacion` VALUES (1,'tRoZG-jIkwE'),(2,'epiJDHQBvNE'),(3,'XrGdLIp3Q4A'),(4,'rJ9PusdjNVs'),(5,'0WZgzI60aZQ'),(6,'MyuoFAGK3lA'),(7,'RzYy55QtDlc'),(8,'-B3urqsYJ5M'),(9,'-CRH3IPCQA4'),(10,'eU1aXP6Rlrg'),(11,'araS0-PAj0E'),(12,'PxwJp6evuao'),(13,'XPairUhQBG8'),(14,'iaQ-XQSqwNI'),(15,'uXwrJjkJY8g'),(16,'ZeUiurgjqnk'),(17,'ybUieSIGObM'),(18,'3QNImR9BD1s'),(19,'CJ_OsAAPsAY'),(20,'WH88E9g9YNg'),(21,'ktRVzVSZkbc'),(22,'XLzDA8bENaI'),(23,'76rjj99thUk'),(24,'8hn2YW1wnkE'),(25,'1JnVqYPYxt4'),(26,'HgYWztyVBW8'),(27,'ww5_nM9xn_M'),(28,'brF-NtbfP_E');
/*!40000 ALTER TABLE `motivacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes`
--

DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paquetes` (
  `idpaquete` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `idmatrices` int(10) unsigned NOT NULL,
  `paquete` decimal(6,2) unsigned NOT NULL,
  `frascos` tinyint(2) unsigned NOT NULL,
  `extra` tinyint(2) unsigned NOT NULL,
  `puntos` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`idpaquete`),
  KEY `fk_paquete_matriz_idx` (`idmatrices`),
  CONSTRAINT `fk_paquete_matriz` FOREIGN KEY (`idmatrices`) REFERENCES `matrices` (`idmatriz`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes`
--

LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
INSERT INTO `paquetes` VALUES (1,1,30.00,1,0,12),(2,1,112.00,4,1,48),(3,1,336.00,12,4,144),(4,1,560.00,20,8,240),(5,1,1120.00,40,20,480);
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `idprovincia` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `provincia` varchar(70) DEFAULT NULL,
  `cod_provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprovincia`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,'AZUAY','AZU'),(2,'BOLIVAR','BOL'),(3,'CAÑAR','CAN'),(4,'CARCHI','CAR'),(5,'COTOPAXI','COT'),(6,'CHIMBORAZO','CHI'),(7,'EL ORO','ORO'),(8,'ESMERALDAS','ESM'),(9,'GUAYAS','GUA'),(10,'IMBABURA','IMB'),(11,'LOJA','LOJ'),(12,'LOS RIOS','RIO'),(13,'MANABI','MAN'),(14,'MORONA SANTIAGO','MOR'),(15,'NAPO','NAP'),(16,'PASTAZA','PAS'),(17,'PICHINCHA','PCH'),(18,'TUNGURAHUA','TUN'),(19,'ZAMORA CHINCHIPE','ZAM'),(20,'GALAPAGOS','GAL'),(21,'SUCUMBIOS','SUC'),(22,'ORELLANA','ORE'),(23,'SANTO DOMINGO DE LOS TSACHILAS','STO'),(24,'SANTA ELENA','STA'),(90,'ZONAS NO DELIMITADAS','ZND');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rangos`
--

DROP TABLE IF EXISTS `rangos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rangos` (
  `idrango` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rango` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `volumen` varchar(7) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idrango`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rangos`
--

LOCK TABLES `rangos` WRITE;
/*!40000 ALTER TABLE `rangos` DISABLE KEYS */;
INSERT INTO `rangos` VALUES (1,'DISTRIBUIDOR','0','person'),(2,'ZAFIRO','1000','zafiro'),(3,'RUBÍ','5000','rubi'),(4,'ESMERALDA','15000','esmeralda'),(5,'DIAMANTE','50000','diamante'),(6,'DIAMANTE AZUL','120000','diamante-azul'),(7,'DIAMANTE NEGRO','400000','diamante-negro'),(8,'DIAMANTE CORONA','1000000','diamante-corona');
/*!40000 ALTER TABLE `rangos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idrol` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rol` varchar(25) NOT NULL,
  `administracion` tinyint(1) NOT NULL DEFAULT 0,
  `inicio` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `reportes` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `socios` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'SUPERADMIN',1,1,1,1),(2,'ADMINISTRADOR',1,1,1,1),(3,'SOCIO',1,1,1,1);
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('xyqNLDK1C35lnkvrQzvCbDAIh2MTcKjGl6yF44lq',1,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.60 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoibk82dmFSRlRKeVNKUENWMTBhR25LekQxV2VIYmJTOWFMN3hKQUNqNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==',1648765868);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socios`
--

DROP TABLE IF EXISTS `socios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socios` (
  `idsocio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `cedula` varchar(45) NOT NULL,
  `clave_socio` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT 'email@email.com ',
  `idciudad` int(10) unsigned NOT NULL,
  `direccion` varchar(150) DEFAULT 'N/A',
  `celular` varchar(10) DEFAULT '9999999999',
  `idrol` tinyint(1) unsigned NOT NULL,
  `logged_socio` tinyint(1) DEFAULT 0,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idsocio`),
  KEY `fk_socios_ciudad_idx` (`idciudad`),
  KEY `fk_socios_rol_idx` (`idrol`),
  CONSTRAINT `fk_socio_ciudad` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_socio_rol` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socios`
--

LOCK TABLES `socios` WRITE;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` VALUES (1,'CARLOS','LOPEZ','1802326643','ea105c6e1b00504c8d951a1f429fe92c','hostill@gmail.com',186,'AMBATO',NULL,1,0,'2022-03-24 17:26:42'),(2,'PABLO','OREJUELA','1705520227','888abec6dc2926ee4b684274532750bb','pabloorejuela@hotmail.com',178,'VILLA FLORA','0993422997',3,0,'2022-04-03 02:45:48'),(3,'JUAN','ROJAS','1705520234','08e984a379ee16b6f53d8d71c2f12673','jfrojas@gmail.com',178,'NNUU','0995000461',3,0,'2022-04-07 22:43:49'),(4,'JUAN','OREJUELA','1705520235','08e984a379ee16b6f53d8d71c2f12673','jfoc@gmail.com',178,'NNUU','0995000467',3,0,'2022-04-05 23:04:38'),(5,'NADIA','LOPEZ','1702935287','2a2a4921e17c6c800631f3f2aaf8790c','',178,'EL CALZADO','0983231870',3,0,'2022-04-06 23:18:29'),(6,'Pedro','ROJAS','1705520001','08e984a379ee16b6f53d8d71c2f12673','jfrojas@gmail.com',178,'NNUU','0995000461',3,0,'2022-04-07 22:43:49'),(7,'EDUARDO','OREJUELA','1704025342','e9c93ae97822926537d4e20b69d4c76a','pabloorejuela@hotmail.com',179,'PASAJE OE2P Y ANTONIO MANTILLA','0939450672',3,0,'2022-04-21 00:58:56'),(8,'ESTER','OREJUELA','1705520223','89fd91eebea91fe7c82de29275edab6d','pabloorejuela@hotmail.com',177,'PASAJE OE2P Y ANTONIO MANTILLA','0982927990',3,0,'2022-04-21 01:05:12'),(9,'ANTONIO','OREJUELA','1705520220','91b89d02b2bfaed54a84d1b26857cc91','pabloorejuela@hotmail.com',177,'PASAJE OE2P Y ANTONIO MANTILLA','0982227991',3,0,'2022-04-21 02:52:59');
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonios`
--

DROP TABLE IF EXISTS `testimonios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonios` (
  `idtestimonios` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `titulo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` smallint(5) unsigned DEFAULT 0,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`idtestimonios`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonios`
--

LOCK TABLES `testimonios` WRITE;
/*!40000 ALTER TABLE `testimonios` DISABLE KEYS */;
INSERT INTO `testimonios` VALUES (1,NULL,'Cancer en el seno. Artritis, diabetes, Diagnostico: Si en 25 dias no se operaba moria','RITA LUCAS - GUAYAQUIL',1,'https://youtu.be/QC4T1UK19O0','pD3lyqtE--g'),(2,NULL,'Paralitica, no podia caminar durante 2 a&ntilde;os. Diagnostico: Nunca volver&iacute;a a caminar','SILVIA SANDOVAL - PILLARO',2,'https://youtu.be/QC4T1UK19O0','QC4T1UK19O0'),(3,NULL,'Derrame Cerebral','VIDAL DAVILA - GUAYAQUIL',3,'https://youtu.be/-I_31Kwci3o','-I_31Kwci3o'),(4,NULL,'Al borde de la muerte, Artritis, Artrosis, Paralisis del cuerpo','ROBERTO ZAPATA - COLOMBIANO',4,'https://youtu.be/QIZBNZ-T1UA','QIZBNZ-T1UA'),(5,NULL,'Mal de Parkinson','GONZALO LOPEZ - PILLARO',5,'','bihvF7HpNBc'),(6,NULL,'PROBLEMAS DE CANCER Y TUBERCULOSIS','LUIS PAREDES - BABAHOYO',6,'','4fGMLt6B0Gw'),(7,NULL,'DISENTERIA, VOMITO Y FIEBRE','MIRIAN ZURITA - BABAHOYO',9,'','UIJLBHYF4mc'),(8,NULL,'PREVENCION DE ENFERMEDADES','TARQUINO MOSQUERA - BABAHOYO',10,'','looRbI9HF1w'),(9,NULL,'DOLORES DE HUESOS Y AHOGOS','RAMON BRAVO - GUAYAQUIL',11,'','aru8ZRxqJiQ'),(10,NULL,'PROBLEMAS DE ARTRITIS Y COLITIS','LUCIANO MAZA - LOJA',12,'','vRW-O0Gsozk'),(11,NULL,'RESTAURACION DE LA VISION','SUSANA BEDON - QUITO',13,'','nqgVEhDxmP4'),(12,NULL,'PROBLEMAS DE CIRUJIAS','VICENTE CUJI - QUITO',14,'','0SFsXP2JZSM'),(13,NULL,'PROBLEMAS DE ACNE','RUBEN RODRIGUEZ - QUITO',15,'','7mgqVge5fe0'),(14,NULL,'PROBLEMAS ESTOMACALES Y OSTEOPOROSIS','SERGIO FLORES - BABAHOYO',16,'','tNqp2id1m6E'),(15,NULL,'DERRAME CEREBRAL Y DIABETES','MATILDE VERA - BABAHOYO',17,'','PSypr3PJaCg'),(16,NULL,'IMSOMIO, SISTEMA INMUNOLOGICO E INSUFICIENCIA RENAL','LAURA MONTERO - BABAHOYO',18,'','usv6e9z7cx0'),(17,NULL,'ENFERMEDAD CARDIACA','ADELA FRANCO - BABAHOYO',19,'i7g7rV2z92o','i7g7rV2z92o'),(18,NULL,'MENOPAUSIA - ARTRITIS','ANA MARTINEZ - MATA DE CACAO',20,'lSAaKG3sdr8','lSAaKG3sdr8'),(19,NULL,'MULTIPLES ENFERMEDADES','BLANCA VILLEGAS - LA TRONCAL, PROVINCIA DEL CA&ntilde;AR',21,'IiSJB3tLzhc','IiSJB3tLzhc'),(20,NULL,'DOLOR DE HUESOS, DE ESTOMAGO, DE CABEZA Y CANSANCIO GENERAL','EUDOMILIA DE LOPEZ - PILLARO',22,'gvQw-oTKX4I','gvQw-oTKX4I'),(21,NULL,'INSOMNIO','VIRGINIA PAUCAR - GUAYAQUIL',23,'RW76MBlK_b0','RW76MBlK_b0'),(22,NULL,'MIGRA&ntilde;AS Y DOLOR DE PIERNAS','NARCISO LOPEZ - LA TRONCAL',24,'YRHyHw4T4vM','YRHyHw4T4vM'),(23,NULL,'LEISHMANIASIS','MARY PAREDES - EL COCA',25,'AkNZNTH-CGg','AkNZNTH-CGg'),(24,NULL,'INFARTO CEREBRAL, DIABETES','MARIELA SUZO - GUAYAQUIL',26,'C-KzRBMoRqA','C-KzRBMoRqA'),(25,NULL,'DOLORES DE CABEZA, VOMITO','LILIANA CUEVA - GUAYAQUIL',27,'jLBCIWzhv5M','jLBCIWzhv5M'),(26,NULL,'PARALISIS CORPORAL','LIDA MORALES - GUAYAQUIL',28,'-9Mb2k0dnv0','-9Mb2k0dnv0'),(27,NULL,'CANCER DE HIGADO, ALCOHOLISMO, DROGADICCION','RITA LUCAS - GUAYAQUIL',29,'40KZMnQ3Dco','40KZMnQ3Dco'),(28,NULL,'DISCAPACITADO, NO PUEDE CAMINAR Y NO PUEDE VER','FABIAN ORTIZ - GUAYAQUIL',30,'bAlwzJADl-Y','bAlwzJADl-Y'),(29,NULL,'GASTRITIS SERVERA','GERMANICO MENDEZ - GUAYAQUIL',31,'MPNNvCaKCU4','MPNNvCaKCU4'),(30,NULL,'HIGADO GRASO Y COLESTEROL ALTO','ISIDRO ESPINOZA - GUAYAQUIL',32,'u1vrvsWMN5M','u1vrvsWMN5M'),(31,NULL,'ARTRITIS Y GASTRITIS','MARIA DIOSELINA CULUMBA',33,'yNicdlt763k','yNicdlt763k'),(32,NULL,'DIABETES, ARTRITIS Y GASTRITIS','BEATRIZ ERAZO',34,'6bl-0jQzQvk','6bl-0jQzQvk'),(33,NULL,'DENGUE PALUDISMO','s/n',35,'f5qFKd_Ex54','f5qFKd_Ex54'),(34,NULL,'PIEL PALIDA Y ENFERMIZA','s/n',36,'NY9AhxBQxJY','NY9AhxBQxJY'),(35,NULL,'CANCER DE UTERO Y CATARATAS','LILIANA CUEVA',37,'qbYqJLRyQZ8','qbYqJLRyQZ8'),(36,NULL,'CALCULOS RENALES Y PROBLEMAS DE LA VISTA','GUILLERMO PITA',38,'fLUw6PbnFhM','fLUw6PbnFhM'),(37,NULL,'DOLORES EN EL CUERPO, NO PODIA CAMINAR','ARGENTINA ALVARES',39,'43P6SN87lMk','43P6SN87lMk'),(38,NULL,'DERRAME CEREBRAL, VITILIGO','DON JUAN REZABALA',40,'k5Bk42rapNU','k5Bk42rapNU'),(39,NULL,'SORIASIS','JUSTINA EULALIA SANTILLAN',41,'41mXTKJXeGA','41mXTKJXeGA'),(40,NULL,'DOLORES HUESOS Y PROBLEMAS EN LA VISION','FRANCISCA OLVERA',42,'bTVQXY67wI8','bTVQXY67wI8'),(41,NULL,'ULCERAS EN LAS PIERNAS, DEBIAN AMPUTARLE','s/n',43,'6vgPKHLeCjM','6vgPKHLeCjM'),(42,NULL,'HEMORRAGIAS, DIABETES, GASES, INSOMNIO','GERMANIA OLVERA',44,'bp_MRajd6MM','bp_MRajd6MM'),(43,NULL,'GASTRITIS, INSOMNIO','GASTRITIS, INSOMNIO',45,'1W3RirehunA','1W3RirehunA'),(44,NULL,'REUMATISMO GRADO DOS, CEGUERA, PACIENTE CON SIDA','CARLOS CEDE&ntilde;O',46,'hUB8d0WgXE8','hUB8d0WgXE8'),(45,NULL,'PROBLEMAS EN LA PROSTATA Y RI&ntilde;ONES','SRA. MARTA',47,'hBuL9NBnGbg','hBuL9NBnGbg'),(46,NULL,'NO PODIA CAMINAR','MIGUEL DELGADO',48,'4TjpUaAo71w','4TjpUaAo71w'),(47,NULL,'VARICES, CALCULOS EN LOS RI&nacute;ONES','ANA BARREIRO',49,'bTkup7xORmM','bTkup7xORmM'),(48,NULL,'MADRE ESTABA POSTRADA Y VOLVIO A CAMINAR','COLOMBIA POVEDA',50,'aPrKukcTeho','aPrKukcTeho'),(49,NULL,'INSOMNIO','s/n',51,'-9-PHaZAwFE','-9-PHaZAwFE'),(50,NULL,'RECUPERO LA VISION, CAIDA DE CABELLO','NATALIA MACIAS',52,'It2XgOSUomM','It2XgOSUomM'),(51,NULL,'PROBLEMAS DE ACN&Eacute;, INTOXICACIONES','PAOLA GUERRERO',53,'VyUTKup2djw','VyUTKup2djw'),(52,NULL,'CANCER, CIRROCIS HEPATICA, DOLORES DE CABEZA, MAREO, CALCULOS, ETAPA TERMINAL, DESAHUCIADA.','FATIMA SOLEDISPA',7,'https://youtu.be/ASkw4lrwt28','ASkw4lrwt28'),(53,'2018-12-11 00:00:00','MULTIPLES ENFERMEDADES, ESTUVO AL BORDE DE LA MUERTE','HERLINDA CHILAN',54,'https://youtu.be/8rugKz60v6c','8rugKz60v6c');
/*!40000 ALTER TABLE `testimonios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cuenta`
--

DROP TABLE IF EXISTS `tipo_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cuenta` (
  `idtipo_cuenta` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `tipo_cuenta` varchar(25) NOT NULL,
  PRIMARY KEY (`idtipo_cuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cuenta`
--

LOCK TABLES `tipo_cuenta` WRITE;
/*!40000 ALTER TABLE `tipo_cuenta` DISABLE KEYS */;
INSERT INTO `tipo_cuenta` VALUES (1,'AHORROS'),(2,'CORRIENTE');
/*!40000 ALTER TABLE `tipo_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gtkecuad_teruso'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 21:28:10
