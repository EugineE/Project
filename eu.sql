-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: transport
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `attendence`
--

DROP TABLE IF EXISTS `attendence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendence` (
  `department` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendence`
--

LOCK TABLES `attendence` WRITE;
/*!40000 ALTER TABLE `attendence` DISABLE KEYS */;
INSERT INTO `attendence` VALUES ('IT','2017-06-16'),('MECH','2017-06-02'),('AERO','2017-06-02'),('CIVIL','2017-06-02'),('BIO-TECH','2017-06-02'),('CSE','2017-06-02'),('EEE','2017-06-02'),('ECE','2017-06-02'),('E&I','2017-06-02'),('ME','2017-06-02'),('MBA','2017-06-02'),('LIBRARY','2017-06-02');
/*!40000 ALTER TABLE `attendence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `batch` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES ('2017-2021'),('2016-2020'),('2015-2019'),('2014-2018');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardingpoint`
--

DROP TABLE IF EXISTS `boardingpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boardingpoint` (
  `bus_no` int(10) DEFAULT NULL,
  `bp` varchar(30) DEFAULT NULL,
  `total` varchar(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardingpoint`
--

LOCK TABLES `boardingpoint` WRITE;
/*!40000 ALTER TABLE `boardingpoint` DISABLE KEYS */;
INSERT INTO `boardingpoint` VALUES (1,'APARTMENT ','0'),(1,'AYAPANTHANGAL ','0'),(1,'BUTT ROAD ','0'),(1,'KALLARAI ','0'),(1,'KARAYANCHAVADI ','1'),(1,'KATTUPAKKAM ','2'),(1,'KUMMANANCHAVADI ','1'),(1,'L&T ','0'),(1,'MANAVALAN NAGAR ','0'),(1,'MUGALIVAKKAM ','1'),(1,'NANDAMBAKKAM ','0'),(1,'POONAMALLEE ','0'),(1,'PORUR ','0'),(1,'PUDU CHATRIAM ','0'),(1,'RAMAPURAM ','1'),(1,'SAKTHI NAGAR ','0'),(1,'SUNDAR HOSPITAL ','1'),(1,'THIRUMALISAI ','1'),(1,'THIRUVALLUR ','0'),(1,'VELLAVUDU ','0'),(2,'AMBATTUR O.T ','1'),(2,'AMBATTUR POLICE STATION ','0'),(2,'AVADI BUS STAND ','0'),(2,'AVADI CHECK POST ','2'),(2,'HINDU COLLEGE ','0'),(2,'JAYA COLLEGE ','0'),(2,'MAHALAKSHMI NAGAR ','0'),(2,'PATTABIRAM ','0'),(2,'TELEPHONE EXCHANGE ','0'),(2,'THIRUMULAIVAYIL ','0'),(2,'THIRUNINDRAVUR ','0'),(2,'VAISANAVI  NAGAR ','0'),(2,'VEPAMPATTU ','0'),(2,'VEPAMPATTU SECOND GATE ','0'),(3,'AMBIKA APPALAM','0'),(3,'B.P. ROAD ','1'),(3,'CENTRAL','0'),(3,'DON BOSCO ','0'),(3,'ESWARI KALYANA MANDAPAM ','0'),(3,'G3 POLICE STATION','0'),(3,'HERO HONDA SHOWROOM','1'),(3,'JEEVA RAILWAY STREET ','0'),(3,'LIGHT HOUSE ','0'),(3,'MOOLAKADAI ','0'),(3,'NATRAJ THEATRE','0'),(3,'PERAMBUR MARKET','0'),(4,'BHARAT PETROLEUM','0'),(4,'COLLECTOR NAGAR ','0'),(4,'D.A.V SCHOOL ','0'),(4,'GOLDEN FLATS ','0'),(4,'HB PETROL BUNK ','0'),(4,'HOUSING BOARD ','0'),(4,'J.J NAGAR BUS DEPOT','0'),(4,'P.W.D QUARTERS ','0'),(4,'PARK ','0'),(5,'AMBEDKAR NAGAR ','0'),(5,'AYANAVARAM SIGNAL ','0'),(5,'DASHPRAKASH HOTEL','0'),(5,'ESI HOSPITAL ','0'),(5,'ICF ','0'),(5,'JOINT OFFICE ','0'),(5,'KALPANA HOTEL ','0'),(5,'KELLYS ','1'),(5,'MADHARSHA ','0'),(5,'MENTAL HOSPITAL ','0'),(5,'NATHAMUNI ','0'),(5,'NOOR HOTEL ','0'),(5,'PADI SIDCO NAGAR ','0'),(5,'PURUSAVAKKAM ','0'),(5,'RAILWAY QUARTERS ','0'),(5,'RELIANCE ','0'),(5,'SAJANI THEATRE ','0'),(5,'SECRETARIAT COLONY ','0'),(5,'SENTHIL NAGAR ','0'),(5,'VASANTH & CO ','0'),(6,'ANAGA PUTHUR','0'),(6,'KUNDRATHUR','0'),(6,'MANGADU','0'),(6,'NATESAN THEATRE','0'),(6,'PAMMAL','0'),(6,'POODI BAZAAR','0'),(6,'SILLVARAM','0'),(7,'AJAXE','0'),(7,'ELLAIAMMAN KOVIL','0'),(7,'ENNORE CHURCH','0'),(7,'ERANAVUR','0'),(7,'KALADIPET POLICE STATON','0'),(7,'KALMANDABAM','0'),(7,'KASIMEDU','0'),(7,'LIFT GATE','0'),(7,'PERIYAR NAGAR','0'),(7,'RAJAKADAI MARKET','0'),(7,'ROYAPURAM','0'),(7,'S.O','0'),(7,'THIRUVOTIYUR MARKET','0'),(7,'TOLLGATE','0'),(8,'IRUMPULIYUR','0'),(8,'MEDAVAKKAM ATM','1'),(8,'MEDAVAKKAM KUTTU ROAD','0'),(8,'PERUNGALATHUR ERIKARAI','0'),(8,'PERUNGALATHUR SAIRAM GATE','0'),(8,'TAMBARAM GATE','0'),(9,'DENTAL COLLEGE','0'),(9,'JAYALAKSHMI THEATRE','0'),(9,'JELLADAMPETTAI','0'),(9,'KUMARAN THEATRE','0'),(9,'NARAYANA PURAM I.O.B','0'),(9,'OILMILL STOP','0'),(9,'PALLAVARAM BYPASS','0'),(9,'PALLIKARANAI KULAM','0'),(9,'PALLIKARANAI POLICE STATION','0'),(9,'RELIANCE','0'),(9,'VIRUTHUNAGAR','0'),(10,'ARUMBAKKAM','0'),(10,'CHOOLAIMEDU ','0'),(10,'KUMAR THEATRE','0'),(10,'M.G.R UNIVERSITY','0'),(10,'MADYRAVAYIL BRIDGE','0'),(10,'METHA NAGAR','0'),(10,'N.S.K NAGAR','0'),(10,'NERKUNDRAM','0'),(10,'ONION MANDY','0'),(10,'PANCHAYAT BOARD ','0'),(10,'PANCHILI AMMAN KOIL','0'),(10,'SKYWALK','0'),(10,'VELAPPANCHAVADI','0'),(11,'ADAM MARKET','0'),(11,'ARUL NAGAR','0'),(11,'ICE HOUSE ','0'),(11,'K.K.R APARTMENT','0'),(11,'M.R.C. NAGAR BUS STOP','0'),(11,'MATHUR','0'),(11,'PATTINAPAKKAM ','0'),(11,'RATHNA CAFÉ','0'),(11,'SANTHOME','0'),(11,'STAR THEATRE ','0'),(11,'THABALPETTI','0'),(11,'V.HOUSE BUS STAND','0'),(12,'ADYAR TEL.EXCHANGE','0'),(12,'DOLLAR BISCUIT','0'),(12,'KARAPAKKAM','1'),(12,'MANDAVELI  SIGNAL','0'),(12,'MANDAVELI TEL. EXCHANGE','0'),(12,'MYLAPORE BUS STAND','0'),(12,'NISSI HOSTEL','0'),(12,'PUSHPA NAGAR','0'),(12,'STELLA MARYS','0'),(12,'THANGAVELU COLLEGE','0'),(12,'VALLUVATKOTTAM','0'),(13,'CHENGALPET HOSPITAL','0'),(13,'CHENGALPET NEW BUS STAND','0'),(13,'CHENGALPET OLD BUS STAND','0'),(13,'GUDUVANCHERRY ','0'),(13,'KANDIGAI','0'),(13,'KATTANKOLATHUR','0'),(13,'KOLAPAKKAM ','0'),(13,'MAHINDRA CITY','0'),(13,'MAMBAKKAM','0'),(13,'MARAMALAI NAGAR','0'),(13,'PUTHUPAKKAM ','0'),(13,'SINGAPERUMAL KOIL','0'),(13,'SRM COLLEGE','0'),(13,'THIRUTHURAI ','0'),(13,'VANDALUR ZOO','0'),(14,'AGARAM ','0'),(14,'ANNA SALAI','1'),(14,'JAMALIA  ','0'),(14,'KOLATHUR','0'),(14,'OOTERY PILLAIYAR KOIL','0'),(14,'PERAMBUR CHURCH ','0'),(14,'PERIYAR NAGAR','0'),(14,'VENUS (GANDHI STATUE)','0'),(14,'VINAYAGAPURAM','0'),(14,'WELDING SHOP','0'),(15,'BABY NAGAR ','0'),(15,'CHURCH','0'),(15,'GUINDY ','0'),(15,'KANDANCHAVADI','0'),(15,'METTUKUPPAM','0'),(15,'OKKIAMPETTAI','0'),(15,'P.T.C.QUARTERS','0'),(15,'PILLAIYAR KOIL','0'),(15,'T.C.S','0'),(15,'TANCY NAGAR ','0'),(15,'THARAMANI','0'),(15,'VELACHERY POLICE STN','0'),(15,'VIJAYA NAGAR','0'),(16,'4TH MAIN ROAD ','0'),(16,'AZHARKANA','0'),(16,'CHIDAMBARAM STORE BUS STAND','0'),(16,'KEELKATTALAI ','0'),(16,'KOVILAMBAKKAM ','0'),(16,'PALAVANTHANGAL SUBWAY','0'),(16,'VELLAKAL ','0'),(17,'ADYAR POST OFFICE','0'),(17,'ALWARPET ','0'),(17,'AMARAVATTI HOTEL','0'),(17,'CHETPET','0'),(17,'CHINTHAMANI','0'),(17,'K-4 POLICE STATION ','0'),(17,'K.P.N TRAVELS','0'),(17,'KALIAPPA HOSPITAL','0'),(17,'KILPAUK GARDEN','0'),(17,'PILLAIYAR KOIL','0'),(17,'R.A.PURAM ','0'),(17,'SHASTRI BHAVAN ','0'),(17,'STERLING RD GOOD SHEPERD CH','0'),(17,'TAJ HOTEL','0'),(17,'TAYLORS ROAD CORNER','0'),(17,'TAYLORS ROAD PARK','0'),(17,'TAYLORS ROAD SIGNAL','0'),(18,'ANAND THEATRE','0'),(18,'D.M.S','0'),(18,'DOVETON ','0'),(18,'EGMORE','0'),(18,'I.I.T','0'),(18,'KALAIGNAR TV','0'),(18,'KOTTURPURAM','0'),(18,'KOTTURPURAM PARK','0'),(18,'MADHYAKAILASH','0'),(18,'PATTALAM','0'),(18,'PUDUPET','0'),(18,'TEYNAMPET FIRE STATION ','0'),(18,'TIDEL PARK','0'),(18,'VASANTHI THEATRE','0'),(19,'ADAMBAKKAM','0'),(19,'KAKKAN BRIDGE ','0'),(19,'N.G.O COLONY BUS STAND ','0'),(19,'PUZITHIVAKKAM JUNCTION','0'),(19,'VELACHERY KAIVELLI','0'),(20,'AYYAMPETTAI','0'),(20,'KANCHIPURAM','0'),(20,'KANCHIPURAM PERUMAL KOIL','0'),(20,'KANCHIPURAM POLICE STN ','0'),(20,'KORUKUPETTAI','0'),(20,'MANIVAKKAM','0'),(20,'MOONGIL MANDAPAM','0'),(20,'ORAGADUM','0'),(20,'PACHAIAPPAS COLLEGE','0'),(20,'PADAPPAI','0'),(20,'PARVATHY NAGAR','0'),(20,'TAMBARAM BRIDGE','0'),(20,'THERADI ','0'),(20,'VANDRAVASI','0'),(20,'VENKUDI','0'),(20,'WALAJABAD','0'),(21,'AMBATTUR ESTATE','0'),(21,'AMBICA EMPIRE HOTEL','0'),(21,'B.B.C ','0'),(21,'ELECTION OFFICE','0'),(21,'K.P.N  TRAVELS','0'),(21,'KODAMBAKKAM MEENAKSHI COLL','0'),(21,'KOYAMBEDU ','0'),(21,'MANNUR PETTAI ','0'),(21,'MMDA','0'),(21,'PADI BRITANIA','0'),(21,'PERUMAL KOIL','0'),(21,'POWER  HOUSE ','0'),(21,'THIRU NAGAR','0'),(21,'VADAPALANI  SIGNAL','0'),(22,'AGARAM','0'),(22,'AIR FORCE ROAD ','0'),(22,'BHARATH ENGG COLLEGE','0'),(22,'CAMP ROAD','0'),(22,'INDIRA NAGAR','0'),(22,'MAPPEDU','0'),(22,'PERUMBAKKAM ','0'),(22,'PUDHU NAGAR','0'),(22,'PUTHU KOIL','0'),(22,'THENAGARAM','0'),(23,'APPOLLO HOSPITAL ','0'),(23,'BHARATHI ARTS COLLEGE','0'),(23,'LAKSHMI KOIL','0'),(23,'MAHARANI','0'),(23,'MANIKUNDU','0'),(23,'MANNADI ','0'),(23,'PANDIYAN THEATRE','0'),(23,'PARRYS SIGNAL','0'),(23,'TANDIARPET','0'),(23,'TOLL GATE ','0'),(23,'VETTUVANGANI ','0'),(24,'AVICHI','0'),(24,'KARAMBAKKAM','0'),(24,'LAKSHMI NAGAR','0'),(24,'MEGA MARKET','0'),(24,'VALASARAWAKKAM ','0'),(24,'VIRUGAMBAKKAM ','0'),(25,'BASIN BRIDGE','0'),(25,'E.B ','0'),(25,'M.K.B. NAGAR ','0'),(25,'M.R NAGAR','0'),(25,'MINT ','0'),(25,'MULLAI NAGAR BUS STAND  ','0'),(25,'MUTHU KUMARAN COLLEGE','0'),(25,'VYASARPADI ','0'),(26,'BESANT NAGAR AAVIN ','0'),(26,'BESANT NAGAR DEPOT','0'),(26,'BESANT NAGAR KOIL','0'),(26,'ENJAMBAKKAM BUS STAND','0'),(26,'PALAVAKKAM SIGNAL','0'),(26,'THIRUVANMIYUR MARUDEESWAR KOIL','0'),(26,'THIRUVANMIYUR SIGNAL ','0'),(26,'VANNANDURAI ','0'),(27,'ANNA NAGAR ROUNDANA','0'),(27,'ANNA NAGAR WEST ','0'),(27,'BLUE STAR ','0'),(27,'CHINNAMALAI','0'),(27,'KORATTUR ','0'),(27,'LUCAS TVS','0'),(27,'PERUNGUDI','0'),(27,'SAIDAPET','0'),(27,'SHANTHI COLONY 11TH MAIN ROAD ','0'),(27,'SHANTHI COLONY 12TH MAIN ROAD ','0'),(27,'YMCA  ','0'),(28,'KAILASH HOTEL ','0'),(28,'KOTTIVAKKAM ','0'),(28,'NEELANGARAI POLICE STATION','0'),(28,'PALAVAKKAM ','0'),(28,'PRARTHANA THEATRE','0'),(28,'SHOLINGANALLUR TOLLGATE','0'),(28,'THIRUVANMIYUR RTO ','0'),(29,'AMBAL NAGAR','0'),(29,'AMMAN KOIL ','0'),(29,'EKKATUTHANGAL ','0'),(29,'GUINDY ESTATE','0'),(29,'K.K NAGAR (AAVIN MILK BOOTH)','0'),(29,'KASI THEATRE','0'),(29,'PONDICHERRY GUEST HOUSE ','0'),(29,'SHIVAN PARK','0'),(29,'UDHAYAM E.S.I ','0'),(30,'BALAIAH  GARDEN ','0'),(30,'BHARAT PETROL BUNK','0'),(30,'OIL MILL','0'),(30,'PONNI AMMAN KOIL','0'),(30,'RAM NAGAR ','1'),(30,'SADASIVAM NAGAR','0'),(30,'U.T.I BANK','0'),(30,'VANUVAMPET CHURCH','0'),(31,'ANNA NAGAR ','0'),(31,'CHITHALAPAKKAM ','0'),(31,'INFOSYS','0'),(31,'K V SCHOOL ','0'),(31,'MADAMBAKKAM PUTHU KOIL','0'),(31,'MEDAVAKKAM ','1'),(31,'RAJA KILPAKKAM SIGNAL  ','0'),(31,'SHOLINGANALLUR  ','1'),(31,'SUDARSAN NAGAR','0'),(32,'CAMP ','0'),(32,'GUINDY ','0'),(32,'RED HILL','0'),(32,'RETTARY ','0'),(32,'RETTARY BYEPASS','0'),(32,'THIRUMANGALAM','0'),(32,'VELACHERY BYEPASS','0'),(32,'VELACHERY PETROL BUNK','0'),(32,'VELACHERY RAILWAY STATION','0'),(32,'VELACHERY TOLLGATE','0'),(32,'VIJAYA NAGAR BUS STAND ','0'),(33,'7TH AVENUE BLUE TANK','0'),(33,'ARANGANATHAN SUBWAY IN','0'),(33,'ARANGANATHAN SUBWAY OUT ','0'),(33,'G.R.COMPLEX ','0'),(33,'JAYARAJ THEATRE  ','0'),(33,'KANNAMMAPET ','0'),(33,'MANTHOPPU SCHOOL','0'),(33,'METTUPALAYAM PANDIAN THEATRE','0'),(33,'SRINIVASA THEATRE BACK SIDE ','0'),(33,'WEST MAMBALAM 7TH AVENUE','0'),(33,'WEST MAMBALAM GRT SCHOOL','0'),(34,'AALATHUR ','0'),(34,'ANUPURAM TOWNSHIP 1','0'),(34,'ANUPURAM TOWNSHIP 2 ','0'),(34,'KALPAKKAM BUS STOP','0'),(34,'KALPAKKAM TOWNSHIP','0'),(34,'KELAMBAKKAM','0'),(34,'MANAMAI','0'),(34,'PADUR BUS STOP  ','0'),(34,'POONCHERI BUS STOP ','0'),(34,'PUTHU PATTINAM','0'),(34,'SADRAS GATE','0'),(34,'SADRAS KUPPAM','0'),(34,'THANDALAM','0'),(34,'THIRUPORUR PILLIYAR TEMPLE','0'),(34,'VENGAMPAKKAM','0'),(35,'AJANTHA HOTEL','0'),(35,'AMIR MAHAL  ','0'),(35,'CHINDADRIPET','0'),(35,'EZHIL NAGAR','0'),(35,'MANDAVELI POST OFFICE','0'),(35,'MYLAPORE SIGNAL ','0'),(35,'MYLAPORE TANK ','0'),(35,'ROYAPETTAH','0'),(35,'ROYAPETTAH POLICE STATION ','0'),(35,'VEPERY ','0'),(36,'CHROMPET','0'),(36,'M.I.E.T GATE ','0'),(36,'MEPZ','0'),(36,'PALLAVARAM ','0'),(36,'SELAIYUR POLICE STATION','0'),(36,'T.B HOSPITAL','0'),(36,'TAMBARAM BUS STAND','0'),(37,'ATTAI COMPANY','0'),(37,'CHENGALPET BRIDGE','0'),(37,'FORD COMPANY ','0'),(37,'GUDUVANCHERRY  	 ','0'),(37,'GUDUVANCHERRY E.B','0'),(37,'KANDIGAI ','0'),(37,'KATTAKOLATHUR','0'),(37,'KOLAPAKKAM','0'),(37,'MAHINDRA CITY','0'),(37,'MAMBAKKAM','0'),(37,'MARAIMALAR NAGAR ','0'),(37,'PUDHUPAKKAM  ','0'),(37,'PULLIPAKKAM','0'),(37,'S.P KOIL  ','0'),(37,'SRINIVASAPURAM','0'),(37,'SRM COLLEGE','0'),(37,'THIRUTHURAI ','0'),(37,'URAPAKKAM SCHOOL','0'),(37,'URAPAKKAM TEA STALL','0'),(37,'VANDALUR ZOO ','0'),(38,'AMUR','0'),(38,'ANAND  COLLEGE (KALIPATTUR)','0'),(38,'BAJANAI KOIL','0'),(38,'BYE PASS ','0'),(38,'CHEMMANCHERY ALAMARAM ','0'),(38,'CHENGAMMAL','0'),(38,'ECHUR ','0'),(38,'KALIPATTUR','0'),(38,'KANNAGAPATTU','0'),(38,'MANAMATHI','0'),(38,'NAVALUR','0'),(38,'THIRUKAZHUKUNDRAM BUS STAND','0'),(38,'THIRUKAZHUKUNDRAM MARKET','0'),(38,'THIRUPORUR','0'),(39,'CONVENT','0'),(39,'PADMAVATHY KALYANA MANDAPAM ','0'),(39,'PERUMBAKKAM ','0'),(39,'PONNI AMMAN KOIL','0'),(39,'PONNI AMMAN KOIL ','0'),(39,'PUDHU NAGAR','0'),(39,'SANTHOSHPURAM  ','0'),(40,'BHARATHI  NAGAR','0'),(40,'KAMARAJAPURAM ','0'),(40,'PARVATHY NAGAR','0'),(40,'SEMBAKKAM','0'),(40,'TAMBARAM BRIDGE','0'),(41,'JAYALAKSHMI THEATRE','0'),(41,'KOVILAMBAKKAM ','0'),(41,'KUMARAN THEATRE','0'),(41,'OIL MILL','0'),(41,'PERUMBAKKAM ','0'),(41,'PUDHU NAGAR  ','0'),(41,'VELLAKAL','0'),(42,'KAMARAJAPURAM','0'),(42,'KUMARAN NAGAR','0'),(42,'MEDAVAKKAM','1'),(42,'PONNIAMMAN KOIL','0'),(42,'PUTHTHU KOIL ','0');
/*!40000 ALTER TABLE `boardingpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combine_route`
--

DROP TABLE IF EXISTS `combine_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combine_route` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `route_no` varchar(30) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combine_route`
--

LOCK TABLES `combine_route` WRITE;
/*!40000 ALTER TABLE `combine_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `combine_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fc`
--

DROP TABLE IF EXISTS `fc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fc` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) DEFAULT NULL,
  `vechile_type` varchar(10) NOT NULL,
  `fc_date` date NOT NULL,
  `fc_amount` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT 'false',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fc`
--

LOCK TABLES `fc` WRITE;
/*!40000 ALTER TABLE `fc` DISABLE KEYS */;
INSERT INTO `fc` VALUES (1,'tN45','LORRY','2017-06-20','5000','true'),(2,'TN72G545r','JCB','2017-07-02','5000','false'),(3,'tN45','LORRY','2018-07-20','10000','false');
/*!40000 ALTER TABLE `fc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel`
--

DROP TABLE IF EXISTS `fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuel` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) NOT NULL,
  `kilometer` int(11) NOT NULL,
  `liters` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `vechile_type` varchar(30) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel`
--

LOCK TABLES `fuel` WRITE;
/*!40000 ALTER TABLE `fuel` DISABLE KEYS */;
INSERT INTO `fuel` VALUES (1,'Tn72g5556',5000,400,'2017-07-07',100000,'JCB'),(2,'Tn72g5556',5000,500,'2017-07-05',4000,'JCB'),(3,'TN72G545r',5000,2000,'2017-07-06',500000,'JCB');
/*!40000 ALTER TABLE `fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurence`
--

DROP TABLE IF EXISTS `insurence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurence` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) DEFAULT NULL,
  `vechile_type` varchar(10) NOT NULL,
  `insurence_date` date NOT NULL,
  `insurence_amount` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT 'false',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurence`
--

LOCK TABLES `insurence` WRITE;
/*!40000 ALTER TABLE `insurence` DISABLE KEYS */;
INSERT INTO `insurence` VALUES (1,'tN45','LORRY','2017-06-30','50000000','true'),(2,'tN45','LORRY','2019-11-28','5220','false'),(3,'TN72G545r','JCB','2017-07-01','520','false');
/*!40000 ALTER TABLE `insurence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maintenance` (
  `sno` int(100) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) NOT NULL,
  `vechile_type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(20) NOT NULL,
  `reason` varchar(100) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,'Tn72g5556','JCB','2017-07-05','5000','Oil Change'),(2,'Tn72g5556','JCB','2017-07-02','30000','Tire change'),(3,'Tn72g5556','JCB','2017-07-02','30520','Brake Down'),(4,'TN72G545r','JCB','2017-07-02','30520','Brake Down');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permit`
--

DROP TABLE IF EXISTS `permit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permit` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) DEFAULT NULL,
  `vechile_type` varchar(10) NOT NULL,
  `permit_date` date NOT NULL,
  `permit_amount` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT 'false',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permit`
--

LOCK TABLES `permit` WRITE;
/*!40000 ALTER TABLE `permit` DISABLE KEYS */;
INSERT INTO `permit` VALUES (1,'tN45','LORRY','2017-07-06','3','true'),(2,'tN45','LORRY','2019-11-21','65635','false'),(3,'TN72G545r','JCB','2017-07-05','10000','false');
/*!40000 ALTER TABLE `permit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roadtax`
--

DROP TABLE IF EXISTS `roadtax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roadtax` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) DEFAULT NULL,
  `vechile_type` varchar(10) NOT NULL,
  `roadtax_date` date NOT NULL,
  `roadtax_amount` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT 'false',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roadtax`
--

LOCK TABLES `roadtax` WRITE;
/*!40000 ALTER TABLE `roadtax` DISABLE KEYS */;
INSERT INTO `roadtax` VALUES (1,'tN45','LORRY','2017-07-05','502','false'),(2,'TN72G545r','JCB','2017-07-26','42000','false');
/*!40000 ALTER TABLE `roadtax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `staffId` varchar(20) NOT NULL,
  `department` varchar(20) DEFAULT NULL,
  `boardingpoint` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'false',
  PRIMARY KEY (`sno`),
  UNIQUE KEY `staffId` (`staffId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'sam','12','IT','KUMMANANCHAVADI ','false'),(2,'joshva','1258','IT','KATTUPAKKAM ','false');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `registerno` varchar(50) NOT NULL,
  `department` varchar(20) DEFAULT NULL,
  `batch` varchar(20) DEFAULT NULL,
  `boardingpoint` varchar(80) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'false',
  PRIMARY KEY (`sno`),
  UNIQUE KEY `registerno` (`registerno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Eugine','23','IT','2013-2017','KARAYANCHAVADI ','true'),(2,'Eugine','234','IT','2013-2017','KARAPAKKAM','true'),(3,'Eugine','2','IT','2013-2017','KELLYS ','true'),(4,'Sam','2357','IT','2014-2018','RAMAPURAM ','false'),(5,'Sam','123','IT','2014-2018','RAM NAGAR ','false'),(6,'Sam','1237','IT','2014-2018','THIRUMALISAI ','false'),(7,'krishna','45','IT','2014-2018','SUNDAR HOSPITAL ','false'),(8,'ashwin','26','IT','2013-2017','MUGALIVAKKAM ','true'),(10,'alagu','543i765','IT','2014-2018','SHOLINGANALLUR  ','false'),(11,'krishna','3108452','IT','2014-2018','KATTUPAKKAM ','false'),(12,'Shiril','46','IT','2015-2019','AVADI CHECK POST ','false'),(13,'sabari','4666','IT','2015-2019','AVADI CHECK POST ','false'),(14,'ashwin','4668','IT','2014-2018','AMBATTUR O.T ','false'),(15,'krishna','857','IT','2015-2019','B.P. ROAD ','false'),(16,'sam','71','IT','2013-2017','HERO HONDA SHOWROOM','true'),(17,'venkat','310814205113','IT','2014-2018','ANNA SALAI','false'),(18,'melvin','32364562','BIO-TECH','2016-2020','MEDAVAKKAM ATM','false'),(19,'Eugine','31089','IT','2014-2018','MEDAVAKKAM ','false');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vechile_detials`
--

DROP TABLE IF EXISTS `vechile_detials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vechile_detials` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `vechile_no` varchar(20) NOT NULL,
  `vechile_type` varchar(20) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vechile_detials`
--

LOCK TABLES `vechile_detials` WRITE;
/*!40000 ALTER TABLE `vechile_detials` DISABLE KEYS */;
INSERT INTO `vechile_detials` VALUES (1,'Tn72g5556','JCB'),(2,'tN45','LORRY'),(3,'TN72G545r','JCB');
/*!40000 ALTER TABLE `vechile_detials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-29 22:12:52
