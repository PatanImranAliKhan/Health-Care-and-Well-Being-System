-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: doctello
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add feedback',1,'add_feedback'),(2,'Can change feedback',1,'change_feedback'),(3,'Can delete feedback',1,'delete_feedback'),(4,'Can view feedback',1,'view_feedback'),(5,'Can add appointment',2,'add_appointment'),(6,'Can change appointment',2,'change_appointment'),(7,'Can delete appointment',2,'delete_appointment'),(8,'Can view appointment',2,'view_appointment'),(9,'Can add customer',3,'add_customer'),(10,'Can change customer',3,'change_customer'),(11,'Can delete customer',3,'delete_customer'),(12,'Can view customer',3,'view_customer'),(13,'Can add hospital',4,'add_hospital'),(14,'Can change hospital',4,'change_hospital'),(15,'Can delete hospital',4,'delete_hospital'),(16,'Can view hospital',4,'view_hospital'),(17,'Can add doctor',5,'add_doctor'),(18,'Can change doctor',5,'change_doctor'),(19,'Can delete doctor',5,'delete_doctor'),(20,'Can view doctor',5,'view_doctor'),(21,'Can add health tips',6,'add_healthtips'),(22,'Can change health tips',6,'change_healthtips'),(23,'Can delete health tips',6,'delete_healthtips'),(24,'Can view health tips',6,'view_healthtips'),(25,'Can add medicine',7,'add_medicine'),(26,'Can change medicine',7,'change_medicine'),(27,'Can delete medicine',7,'delete_medicine'),(28,'Can view medicine',7,'view_medicine'),(29,'Can add medicine order',8,'add_medicineorder'),(30,'Can change medicine order',8,'change_medicineorder'),(31,'Can delete medicine order',8,'delete_medicineorder'),(32,'Can view medicine order',8,'view_medicineorder'),(33,'Can add pharmacy',9,'add_pharmacy'),(34,'Can change pharmacy',9,'change_pharmacy'),(35,'Can delete pharmacy',9,'delete_pharmacy'),(36,'Can view pharmacy',9,'view_pharmacy'),(37,'Can add log entry',10,'add_logentry'),(38,'Can change log entry',10,'change_logentry'),(39,'Can delete log entry',10,'delete_logentry'),(40,'Can view log entry',10,'view_logentry'),(41,'Can add permission',11,'add_permission'),(42,'Can change permission',11,'change_permission'),(43,'Can delete permission',11,'delete_permission'),(44,'Can view permission',11,'view_permission'),(45,'Can add group',12,'add_group'),(46,'Can change group',12,'change_group'),(47,'Can delete group',12,'delete_group'),(48,'Can view group',12,'view_group'),(49,'Can add user',13,'add_user'),(50,'Can change user',13,'change_user'),(51,'Can delete user',13,'delete_user'),(52,'Can view user',13,'view_user'),(53,'Can add content type',14,'add_contenttype'),(54,'Can change content type',14,'change_contenttype'),(55,'Can delete content type',14,'delete_contenttype'),(56,'Can view content type',14,'view_contenttype'),(57,'Can add session',15,'add_session'),(58,'Can change session',15,'change_session'),(59,'Can delete session',15,'delete_session'),(60,'Can view session',15,'view_session'),(61,'Can add slot',16,'add_slot'),(62,'Can change slot',16,'change_slot'),(63,'Can delete slot',16,'delete_slot'),(64,'Can view slot',16,'view_slot'),(65,'Can add medicine cart',17,'add_medicinecart'),(66,'Can change medicine cart',17,'change_medicinecart'),(67,'Can delete medicine cart',17,'delete_medicinecart'),(68,'Can view medicine cart',17,'view_medicinecart'),(69,'Can add consultation',18,'add_consultation'),(70,'Can change consultation',18,'change_consultation'),(71,'Can delete consultation',18,'delete_consultation'),(72,'Can view consultation',18,'view_consultation'),(73,'Can add consult',19,'add_consult'),(74,'Can change consult',19,'change_consult'),(75,'Can delete consult',19,'delete_consult'),(76,'Can view consult',19,'view_consult'),(77,'Can add patient',3,'add_patient'),(78,'Can change patient',3,'change_patient'),(79,'Can delete patient',3,'delete_patient'),(80,'Can view patient',3,'view_patient');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$x5bAtylpcxACKKBKSfSnmo$sLTiisCR+KA87Dg3i6g1pVEw2azwuRjBjgkCD9If65g=','2021-05-12 08:07:56.231585',1,'imran','','','imranirfanalikhan786@gmail.com',1,1,'2021-05-12 08:07:03.446015');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentication_feedback`
--

DROP TABLE IF EXISTS `authentication_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authentication_feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint NOT NULL,
  `feedback` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentication_feedback`
--

LOCK TABLES `authentication_feedback` WRITE;
/*!40000 ALTER TABLE `authentication_feedback` DISABLE KEYS */;
INSERT INTO `authentication_feedback` VALUES (1,'Irfan','irfanalikhanp9@gmail.com',6303412886,'Good'),(2,'Patan Imran Ali Khan','imranirfanalikhan786@gmail.com',6303412886,'Nice work');
/*!40000 ALTER TABLE `authentication_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_appointment`
--

DROP TABLE IF EXISTS `customer_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_appointment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `hospital` varchar(100) NOT NULL,
  `problem` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `slot` varchar(50) NOT NULL,
  `confirmation` varchar(50) NOT NULL,
  `report` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_appointment`
--

LOCK TABLES `customer_appointment` WRITE;
/*!40000 ALTER TABLE `customer_appointment` DISABLE KEYS */;
INSERT INTO `customer_appointment` VALUES (6,'Noorjahan Patan','noori@gmail.com','9603134008','Amrutha Heart Hospital','Allergies','2021-05-27','morning','email','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34_4G5O3zh.pdf');
/*!40000 ALTER TABLE `customer_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_hospital`
--

DROP TABLE IF EXISTS `customer_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_hospital` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `rating` double NOT NULL,
  `mobile` bigint NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_hospital`
--

LOCK TABLES `customer_hospital` WRITE;
/*!40000 ALTER TABLE `customer_hospital` DISABLE KEYS */;
INSERT INTO `customer_hospital` VALUES (1,'Viswas Hospital',4.3,7947395949,'Door No 13-6-98, Old Club Road, Kotha Peta, Guntur','Guntur','https://content3.jdmagicbox.com/comp/guntur/z4/9999px863.x863.190314154254.f7z4/catalogue/viswas-hospitals-kotha-peta-guntur-hospitals-5mq8e25e4i.jpg?clr=495f07'),(2,'Medi Lung Hospital',4.1,8045790679,'Old Bank Road, Kotha Peta, Guntur','Guntur','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7RHBPBQTWU8pc8z5zOru4njDGSH5OqNqUuG_GBh_jgc9qhiLsej0gD6SEfei8jm45zGE&usqp=CAU'),(3,'Coastal Care Hospital',4,7947395208,'Door No 39d/3, 8th Lane, Kotha Peta, Guntur','Guntur','https://seeklogo.com/images/C/coastal-care-logo-9D62CB18C1-seeklogo.com.gif'),(4,'Amrutha Heart Hospital',4.2,7947246667,'Door No 4-46/1 A, 60 Feet Road, Satyanarayanapuram, Krishna','Krishna','https://content3.jdmagicbox.com/comp/def_content/hospitals/default-hospitals-4.jpg?clr=27273f'),(5,'Mahitha Nri Hospital',4.3,7947351269,'2B, 2nd Ward, Avanigadda, Krishna','Krishna','https://content3.jdmagicbox.com/comp/krishna/a1/9999p8676.8676.200116112803.z1a1/catalogue/mahitha-nri-hospital-krishna-xtypfbiyis.jpg?clr=665900'),(6,'Sarada Dental Care',4.1,8671222087,'2b, Communist Bazar, Challapalli, Krishna','Krishna','https://content3.jdmagicbox.com/comp/mumbai/l4/9999p8676.8676.180512161601.j8l4/catalogue/sarada-dental-care-challapalli-krishna-hospitals-utqqwtfgnp.jpg?clr=333333'),(7,'Care & Cure Hospital',4,8522076383,'Door No. 13-2-392-4,Near N T R Marg, Anantapur','Anantapur','https://content3.jdmagicbox.com/comp/anantapur/v1/9999p8554.8554.160113104412.a7v1/catalogue/care-and-cure-hospitals-anantapur-hospitals-7948aiseix.jpg'),(8,'Dr. K S A R Gaffoor hospital',4.3,7947349276,'Door No:#28/632-2, 80feet Road Surya Nagar, Sai Nagar, Anantapur','Anantapur','https://scontent.fvga1-2.fna.fbcdn.net/v/t1.6435-0/p370x247/80691972_104504957725026_1003215707925643264_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=85a577&_nc_ohc=D6hRjGF-sgoAX-Zh2W8&_nc_ht=scontent.fvga1-2.fna&tp=6&oh=f725ae18533abd851b62e08ed88ccbee&oe=60BF95D9'),(9,'Vision Multispeciality Hospital',4.4,7947270875,'D.no 14-1-46/A, Pithapuram Main Road, Pithapuram, East Godavari','East Godavari','https://content3.jdmagicbox.com/comp/east-godavari/y1/9999px883.x883.210213091338.j2y1/catalogue/vision-multispeciality-hospital-pithapuram-east-godavari-diabetologist-doctors-i1znxck37e.jpg'),(10,'Harshini Heart Care',3.8,7947399617,'Danavaipeta, Rajanagaram, East Godavari','East Godavari','https://content3.jdmagicbox.com/comp/east-godavari/u8/9999px883.x883.200717131048.g1u8/catalogue/harshini-heart-care-rajanagaram-east-godavari-hospitals-1fkajompyi.jpg?clr=39392d'),(11,'Chittoor Eye Hospital',4.4,7947350059,'Door No #23-339/2 & #23-340/1, Puttur Road, Kongareddy Palli, Chittoor','Chittoor','https://content3.jdmagicbox.com/comp/def_content/ophthalmologists/default-ophthalmologists-14.jpg'),(12,'Kushi Dental Care',4.5,9000947555,'Door No 18/895, Church Street, Ctr Market, Chittoor','Chittoor','https://content3.jdmagicbox.com/comp/chittoor/z8/9999p8572.8572.171229131812.n3z8/catalogue/kushi-dental-care-ctr-market-chittoor-hospitals-wcr8a.jpg'),(13,'Surya Super Speciality Hospital',3.9,7947349797,'Main Road,Near RTC Busstand, Kadapa','Kadapa','https://content3.jdmagicbox.com/comp/kadapa/j8/9999p8562.8562.160603132549.x2j8/catalogue/surya-super-speciality-hospital-kadapa-hospitals-0o1pvsejae.jpg'),(14,'Vr Hospital',4.2,7947476622,'Door No: 2/401, R S Road, Nagarajupet, Kadapa','Kadapa','https://content3.jdmagicbox.com/comp/def_content/hospitals/default-hospitals-13.jpg'),(15,'Gvr Children Hospital',3.7,7947348092,'H No: 43-48, 2nd Lane, NR Peta, Kurnool','Kurnool','https://content3.jdmagicbox.com/comp/kurnool/dc/9999p8518.8518.090731171332.q9t8dc/catalogue/gvr-children-hospital-kurnool-kurnool-hospitals-yzo6apcgcy.jpg'),(16,'Pulse Hospital',3.7,7947395127,'Door No:-16-2-347, Vijayamahal GateRoad, Srinivasa Agraharam 2nd Main Road, Nellore','Nellore','https://content3.jdmagicbox.com/comp/nellore/m4/9999px861.x861.200811165042.x6m4/catalogue/pulse-hospital-nellore-epltksqep0.jpg'),(17,'Omni Hospitals',4,9885056899,'Door No 4/96-35-1, Budavara Peta Main Road, Budavara Peta, Kurnool','Kurnool','https://content3.jdmagicbox.com/comp/kurnool/c9/9999p8518.8518.150807101356.d5c9/catalogue/omni-hospitals-budavara-peta-kurnool-hospitals-e1tp2.jpg'),(18,'Apollo Speciality Hospitals',4.2,7947598635,'Door No 16-111-1133, Muthukuru Road, Nellore','Nellore','https://content3.jdmagicbox.com/comp/nellore/x4/9999px861.x861.170702115946.r7x4/catalogue/apollo-speciality-hospitals-nellore-infertility-doctors-3zuvqhts83.jpg?clr=462020'),(19,'Megha ENT Hospital',3.8,8592282262,'25830 Sundarayya Bhavan Rd, Kurnool Rd, Kurnool Road, Prakasam','Prakasam','https://content3.jdmagicbox.com/comp/ongole/c2/9999p8592.8592.110111111257.u9c2/catalogue/megha-ent-hospital-kurnool-rd-ongole-hospitals-g9xpsgm.jpg'),(20,'Dr. Sunitha\'s Homoeo Care',4.3,7947367277,'Uma Complex, Meher Nager, Near Rhythu Bazar Junction,Srikakulam','Srikakulam','https://content3.jdmagicbox.com/comp/srikakulam/q5/9999p8942.8942.181102140531.x8q5/catalogue/dr-sunitha-s-homoeocare-meher-nager-srikakulam-homeopathic-clinics-db114xzdwj.jpg'),(21,'Rama Krishna Multi Speciality Hospital',3.5,8596226700,'Door(2B), Cumbum Road, Markapur, Prakasam','Prakasam','https://content3.jdmagicbox.com/comp/ongole/c2/9999p8592.8592.110111111257.u9c2/catalogue/megha-ent-hospital-kurnool-rd-ongole-hospitals-g9xpsgm.jpg'),(22,'Suryamukhi Hospital',3.7,7947178095,'Main Road, Oppst to Kc I Care, Labour Office Buliding, Ambedkar Junction, Srikakulam','Srikakulam','https://persadadigital.biz/wp-content/uploads/2019/03/arcus_icons.png'),(23,'Queen\'s NRI Hospital',4,7947598632,'Queen\'s NRI Hospital, Gurudwara Lane, Seethammadha,Visakhapatnam','Vishakapatnam','https://www.queensnrihospital.com/image_site/slider/nri.jpg'),(24,'Sri Aishwarya Dental Clinic',3.8,7947353441,'Shop No C45, Ziddu Vari Street, Kota, Vizianagaram','Viziayanagaram','https://content3.jdmagicbox.com/comp/vizianagaram/m7/9999p8922.8922.170808172106.t9m7/catalogue/sri-aishwarya-dental-clinic-kota-vizianagaram-dental-surgeons-07kElZDFFOJRbty.jpg'),(25,'Venkata Padma Hospital',3.1,7947403178,'Door No 15-1-45, Ambati Satram, Phoolbagh Road, Ambati Satram, Vizianagaram','Viziayanagaram','https://content3.jdmagicbox.com/comp/vizianagaram/w6/9999pxxxx.xxxx.100914190430.s3w6/catalogue/venkata-padma-hospital-vizianagaram-hospitals-cd3p9zs2l2.jpg'),(26,'Vani Homeocare',3.9,9490555632,'Door No :- 2A, Shavukaru Peta, Palakollu, West Godavari','West Godavari','https://content3.jdmagicbox.com/comp/west-godavari/w7/9999p8812.8812.190128202553.d9w7/catalogue/vani-homeocare-palakollu-west-godavari-hospitals-8pd57a9dvx.jpg'),(27,'Goutham Urology & Kidney Center',3.8,7382474949,'Branch Rajahmundry, Tilak Road, Kovvur, West Godavari','West Godavari','https://content3.jdmagicbox.com/comp/west_godavari/m1/9999p8812.8812.210327130421.p2m1/catalogue/-g5rmuvfxd3.jpg?clr=102e56');
/*!40000 ALTER TABLE `customer_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_medicinecart`
--

DROP TABLE IF EXISTS `customer_medicinecart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_medicinecart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `usermobile` bigint NOT NULL,
  `userlocation` varchar(100) NOT NULL,
  `medicinename` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `startprice` double NOT NULL,
  `endprice` double NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_medicinecart`
--

LOCK TABLES `customer_medicinecart` WRITE;
/*!40000 ALTER TABLE `customer_medicinecart` DISABLE KEYS */;
INSERT INTO `customer_medicinecart` VALUES (6,'sree krishna','maremandasreekrishna@gmail.com',8106136242,'Kadapa','dolo 650','irfanalikhanp9@gmail.com','Guntur',30,27,'https://i1.wp.com/medigram.in/wp-content/uploads/2020/08/Dolo-650-Mg-tablet.png?fit=668%2C436&ssl=1'),(9,'name lastname','name@gmail.com',852369712,'Guntur','dolo 650','irfanalikhanp9@gmail.com','Guntur',30,27,'https://i1.wp.com/medigram.in/wp-content/uploads/2020/08/Dolo-650-Mg-tablet.png?fit=668%2C436&ssl=1');
/*!40000 ALTER TABLE `customer_medicinecart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_patient`
--

DROP TABLE IF EXISTS `customer_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_patient` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint NOT NULL,
  `location` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `agreement` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_patient`
--

LOCK TABLES `customer_patient` WRITE;
/*!40000 ALTER TABLE `customer_patient` DISABLE KEYS */;
INSERT INTO `customer_patient` VALUES ('sree','krishna','maremandasreekrishna@gmail.com',8106136242,'Kadapa','kit2001','True',''),('name','lastname','name@gmail.com',852369712,'Guntur','abcdefghijkl','True','Guntur'),('Noorjahan','Patan','noori@gmail.com',9603134008,'Guntur','noorjahan','True','mangalagiri');
/*!40000 ALTER TABLE `customer_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-05-12 08:11:08.200756','1','Hospital object (1)',1,'[{\"added\": {}}]',4,1),(2,'2021-05-12 08:11:59.951521','2','Hospital object (2)',1,'[{\"added\": {}}]',4,1),(3,'2021-05-12 08:13:14.649670','3','Hospital object (3)',1,'[{\"added\": {}}]',4,1),(4,'2021-05-12 08:14:07.782385','4','Hospital object (4)',1,'[{\"added\": {}}]',4,1),(5,'2021-05-12 08:15:45.465445','5','Hospital object (5)',1,'[{\"added\": {}}]',4,1),(6,'2021-05-12 08:16:50.667392','6','Hospital object (6)',1,'[{\"added\": {}}]',4,1),(7,'2021-05-12 08:18:06.384447','7','Hospital object (7)',1,'[{\"added\": {}}]',4,1),(8,'2021-05-12 09:47:54.448848','8','Hospital object (8)',1,'[{\"added\": {}}]',4,1),(9,'2021-05-12 09:48:40.327923','9','Hospital object (9)',1,'[{\"added\": {}}]',4,1),(10,'2021-05-12 09:49:49.278206','10','Hospital object (10)',1,'[{\"added\": {}}]',4,1),(11,'2021-05-12 09:50:55.821367','11','Hospital object (11)',1,'[{\"added\": {}}]',4,1),(12,'2021-05-12 09:52:00.454748','12','Hospital object (12)',1,'[{\"added\": {}}]',4,1),(13,'2021-05-12 09:52:53.268699','13','Hospital object (13)',1,'[{\"added\": {}}]',4,1),(14,'2021-05-12 09:54:01.055154','14','Hospital object (14)',1,'[{\"added\": {}}]',4,1),(15,'2021-05-12 09:54:41.982172','15','Hospital object (15)',1,'[{\"added\": {}}]',4,1),(16,'2021-05-12 09:55:27.171107','16','Hospital object (16)',1,'[{\"added\": {}}]',4,1),(17,'2021-05-12 09:56:00.059492','17','Hospital object (17)',1,'[{\"added\": {}}]',4,1),(18,'2021-05-12 09:56:41.369531','18','Hospital object (18)',1,'[{\"added\": {}}]',4,1),(19,'2021-05-12 09:57:25.412781','19','Hospital object (19)',1,'[{\"added\": {}}]',4,1),(20,'2021-05-12 09:58:34.605111','20','Hospital object (20)',1,'[{\"added\": {}}]',4,1),(21,'2021-05-12 09:59:14.533522','21','Hospital object (21)',1,'[{\"added\": {}}]',4,1),(22,'2021-05-12 09:59:53.595096','22','Hospital object (22)',1,'[{\"added\": {}}]',4,1),(23,'2021-05-12 10:00:32.974941','23','Hospital object (23)',1,'[{\"added\": {}}]',4,1),(24,'2021-05-12 10:01:12.620842','24','Hospital object (24)',1,'[{\"added\": {}}]',4,1),(25,'2021-05-12 10:01:43.824765','25','Hospital object (25)',1,'[{\"added\": {}}]',4,1),(26,'2021-05-12 10:02:15.439888','26','Hospital object (26)',1,'[{\"added\": {}}]',4,1),(27,'2021-05-12 10:02:47.253835','27','Hospital object (27)',1,'[{\"added\": {}}]',4,1),(28,'2021-05-12 10:23:30.350367','irfanalikhanp9@gmail.com','Pharmacy object (irfanalikhanp9@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Assign\"]}}]',9,1),(29,'2021-05-12 11:33:38.237156','1','Medicine object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(30,'2021-05-12 18:54:38.796322','1','HealthTips object (1)',2,'[{\"changed\": {\"fields\": [\"Causes\", \"Prevention\", \"Medicine\"]}}]',6,1),(31,'2021-05-13 08:00:22.455396','imranirfanalikhan786@gmail.com','Doctor object (imranirfanalikhan786@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Assign\"]}}]',5,1),(32,'2021-05-13 17:24:28.661494','2','MedicineOrder object (2)',2,'[{\"changed\": {\"fields\": [\"Useremail\"]}}]',8,1),(33,'2021-05-13 17:28:28.850765','2','MedicineOrder object (2)',3,'',8,1),(34,'2021-05-14 19:43:03.199932','srinivas@gmail.com','Pharmacy object (srinivas@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Assign\"]}}]',9,1),(35,'2021-05-15 08:05:55.339606','3','MedicineCart object (3)',3,'',17,1),(36,'2021-05-15 08:27:24.102150','4','MedicineCart object (4)',3,'',17,1),(37,'2021-05-15 09:28:28.477365','11','MedicineOrder object (11)',3,'',8,1),(38,'2021-05-15 09:28:28.629494','10','MedicineOrder object (10)',3,'',8,1),(39,'2021-05-15 09:28:28.756805','9','MedicineOrder object (9)',3,'',8,1),(40,'2021-05-15 09:28:28.894952','8','MedicineOrder object (8)',3,'',8,1),(41,'2021-05-15 09:28:29.032214','7','MedicineOrder object (7)',3,'',8,1),(42,'2021-05-15 09:33:05.557523','13','MedicineOrder object (13)',3,'',8,1),(43,'2021-05-15 09:33:05.688085','12','MedicineOrder object (12)',3,'',8,1),(44,'2021-05-15 09:34:51.803342','15','MedicineOrder object (15)',3,'',8,1),(45,'2021-05-15 09:34:52.176029','14','MedicineOrder object (14)',3,'',8,1),(46,'2021-05-15 09:36:43.450935','17','MedicineOrder object (17)',3,'',8,1),(47,'2021-05-15 09:36:43.516599','16','MedicineOrder object (16)',3,'',8,1),(48,'2021-05-15 16:05:26.620522','1','Slot object (1)',3,'',16,1),(49,'2021-05-16 15:03:44.784087','3','Appointment object (3)',3,'',2,1),(50,'2021-05-16 15:03:45.025044','2','Appointment object (2)',3,'',2,1),(51,'2021-05-17 10:37:09.455746','1','Consultation object (1)',3,'',18,1),(52,'2021-05-17 11:46:50.606812','20','MedicineOrder object (20)',3,'',8,1),(53,'2021-05-18 06:44:17.057007','8','HealthTips object (8)',2,'[{\"changed\": {\"fields\": [\"Causes\", \"Prevention\", \"Medicine\"]}}]',6,1),(54,'2021-05-18 06:48:26.859168','7','HealthTips object (7)',2,'[{\"changed\": {\"fields\": [\"Causes\", \"Prevention\", \"Medicine\"]}}]',6,1),(55,'2021-05-18 06:49:59.924763','6','HealthTips object (6)',2,'[{\"changed\": {\"fields\": [\"Medicine\"]}}]',6,1),(56,'2021-05-18 06:52:07.660086','5','HealthTips object (5)',2,'[{\"changed\": {\"fields\": [\"Causes\", \"Symptoms\", \"Prevention\", \"Medicine\"]}}]',6,1),(57,'2021-05-18 06:52:40.612154','4','HealthTips object (4)',2,'[{\"changed\": {\"fields\": [\"Causes\", \"Symptoms\", \"Prevention\", \"Medicine\"]}}]',6,1),(58,'2021-05-18 06:53:37.406490','3','HealthTips object (3)',2,'[{\"changed\": {\"fields\": [\"Medicine\"]}}]',6,1),(59,'2021-05-18 13:01:17.842852','noori@gmail.com','Customer object (noori@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',3,1),(60,'2021-05-18 15:41:26.718524','26','MedicineOrder object (26)',3,'',8,1),(61,'2021-05-18 15:41:26.972859','24','MedicineOrder object (24)',3,'',8,1),(62,'2021-05-18 15:41:27.060462','22','MedicineOrder object (22)',3,'',8,1),(63,'2021-05-18 16:32:08.087970','ali@gmail.com','Doctor object (ali@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Assign\"]}}]',5,1),(64,'2021-05-18 16:37:27.133362','name@gmail.com','Patient object (name@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Address\"]}}]',3,1),(65,'2021-05-18 16:39:59.158155','28','MedicineOrder object (28)',3,'',8,1),(66,'2021-05-18 17:17:21.967072','doctor@gmail.com','Doctor object (doctor@gmail.com)',2,'[{\"changed\": {\"fields\": [\"Assign\"]}}]',5,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (10,'admin','logentry'),(12,'auth','group'),(11,'auth','permission'),(13,'auth','user'),(1,'authentication','feedback'),(14,'contenttypes','contenttype'),(2,'customer','appointment'),(4,'customer','hospital'),(17,'customer','medicinecart'),(3,'customer','patient'),(19,'doctor','consult'),(18,'doctor','consultation'),(5,'doctor','doctor'),(6,'doctor','healthtips'),(16,'doctor','slot'),(7,'pharmacy','medicine'),(8,'pharmacy','medicineorder'),(9,'pharmacy','pharmacy'),(15,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-12 08:04:54.386852'),(2,'auth','0001_initial','2021-05-12 08:05:24.511011'),(3,'admin','0001_initial','2021-05-12 08:05:34.276563'),(4,'admin','0002_logentry_remove_auto_add','2021-05-12 08:05:34.568270'),(5,'admin','0003_logentry_add_action_flag_choices','2021-05-12 08:05:34.737460'),(6,'contenttypes','0002_remove_content_type_name','2021-05-12 08:05:40.224498'),(7,'auth','0002_alter_permission_name_max_length','2021-05-12 08:05:44.623020'),(8,'auth','0003_alter_user_email_max_length','2021-05-12 08:05:44.982905'),(9,'auth','0004_alter_user_username_opts','2021-05-12 08:05:45.425060'),(10,'auth','0005_alter_user_last_login_null','2021-05-12 08:05:49.984650'),(11,'auth','0006_require_contenttypes_0002','2021-05-12 08:05:50.226580'),(12,'auth','0007_alter_validators_add_error_messages','2021-05-12 08:05:50.553371'),(13,'auth','0008_alter_user_username_max_length','2021-05-12 08:05:55.981452'),(14,'auth','0009_alter_user_last_name_max_length','2021-05-12 08:06:00.246634'),(15,'auth','0010_alter_group_name_max_length','2021-05-12 08:06:01.119580'),(16,'auth','0011_update_proxy_permissions','2021-05-12 08:06:01.237796'),(17,'auth','0012_alter_user_first_name_max_length','2021-05-12 08:06:03.661114'),(18,'authentication','0001_initial','2021-05-12 08:06:05.498866'),(19,'customer','0001_initial','2021-05-12 08:06:08.722895'),(20,'doctor','0001_initial','2021-05-12 08:06:11.930834'),(21,'pharmacy','0001_initial','2021-05-12 08:06:17.808423'),(22,'sessions','0001_initial','2021-05-12 08:06:21.071021'),(23,'doctor','0002_slot','2021-05-12 15:20:00.489710'),(24,'customer','0002_medicinecart','2021-05-13 14:18:29.435729'),(25,'doctor','0003_auto_20210513_1948','2021-05-13 14:18:31.535208'),(26,'doctor','0004_consultation','2021-05-17 09:38:54.609923'),(27,'doctor','0005_consultation_username','2021-05-17 10:47:11.300654'),(28,'doctor','0006_auto_20210517_1619','2021-05-17 10:49:40.584917'),(29,'customer','0003_customer_address','2021-05-18 13:00:16.602025'),(30,'doctor','0007_auto_20210518_1830','2021-05-18 13:00:19.237382'),(31,'customer','0004_rename_customer_patient','2021-05-18 13:06:06.039906'),(32,'pharmacy','0002_medicineorder_date','2021-05-18 13:24:49.352824'),(33,'doctor','0008_consult_feedback','2021-05-18 13:53:16.702519'),(34,'doctor','0009_consult_problem','2021-05-18 14:47:52.996610'),(35,'customer','0005_appointment_report','2021-05-18 16:04:18.055054');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8n2exwa1r72xpi4tps6qgmbn88itqnkh','.eJwlykEOgjAQRuGrkFkTEkVAWeENvMJPrTJxypAOrAx3pw27ly_vT5v5OCN46ukpXIywCVSSD2BJBuHhm7tyGpIHHVnS3N0fbXO7XOu2JFGHlXVO-yviB0M-l6gfb3b6W92qkfYDAgQkoA:1lj3bJ:I9VVmIN5ZXX0_-2DgjQVVDuV_L0uPgXey3dPZe79nzk','2021-06-01 17:33:49.052257'),('90j4mv5udcmv4y1ldkmm33xl7fiksib7','.eJwly7EOwjAMBNBfQZ4jFNSqop26saH-ghsZCErsykmmqv-OK8a7d7dDK6SMmWCCp4h-8YN8WbAigwPKGJMJm8T5faZrkGySZY3JTuPgu1vXe393kCRgjcJ2eDSuTW23qbyolH-7GRNXOH5YXSe-:1lj3NN:jLf3TGsi9DnnIPD0mBbWZOiJuDAejL5q6v2WYxG-9Yo','2021-06-01 17:19:25.507187'),('buuohec2trjy5j9g0qmtiqg5b3umlzpe','.eJwly7EOwjAMBNBfQZ4jFNSqop26saH-ghsZCErsykmmqv-OK8a7d7dDK6SMmWCCp4h-8YN8WbAigwPKGJMJm8T5faZrkGySZY3JTuPgu1vXe393kCRgjcJ2eDSuTW23qbyolH-7GRNXOH5YXSe-:1lj3r6:vAOzr2uu4uhZ6edi931phZRrCX_W2N3gqynRg517j_4','2021-06-01 17:50:08.253759'),('v5ozmot55n4so9ssks1w4wceqju6cwyz','.eJx1j01rwyAYx79K8JJLCVpNoj2NXUYZG_sG5Uk0jW2iRRN2KP3ue0zbrRvsIvh_--mZ7GCe-t0cTdhZTTaEkdWj1kB7NC4Z-gBu74vWuynYpkiR4ubG4s1rMzzfsr8Geog9trkEQWshOs01bWRVMllR3sgWhOpkWQFQWuq2M0zwem2UqqnsBIeOtw1mKY6mOW0msEPEwXPuYDT5JsvfvQ8H6MFlHzCBy1dZbkZMJc-hZ5_26YovH5M3-sYOS1HhCxgXlMqknyDGTx_0vbZM5pcb-BdxG7o_HJsUGOwROyf1D1CxUvA1q6VCdfAtTNa71H6Z3TSHb1bCIG_5TbYdA56vuIvuwkPLJvGRWcvqB4rBK5NsFKs45YKtpaxW5M7EhSsSk6fgOxPjVdW-nXwgly87Las6:1lj3mb:tToiF4mbJlbJQn_j57tjIJqVpSEho-Z3o0patK2nHTk','2021-06-01 17:45:29.309829');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_consult`
--

DROP TABLE IF EXISTS `doctor_consult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_consult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `doctoremail` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `feedback` varchar(3000) NOT NULL,
  `problem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_consult`
--

LOCK TABLES `doctor_consult` WRITE;
/*!40000 ALTER TABLE `doctor_consult` DISABLE KEYS */;
INSERT INTO `doctor_consult` VALUES (1,'Noorjahan Patan','noori@gmail.com','imranirfanalikhan786@gmail.com','2021-05-17','Small but no worries','Fever'),(2,'sree krishna','maremandasreekrishna@gmail.com','imranirfanalikhan786@gmail.com','2021-05-18','in the starting stage, no problem','Diahhrea'),(3,'name lastname','name@gmail.com','imranirfanalikhan786@gmail.com','2021-05-18','',''),(4,'Noorjahan Patan','noori@gmail.com','ali@gmail.com','2021-05-18','',''),(5,'Noorjahan Patan','noori@gmail.com','ali@gmail.com','2021-05-18','','');
/*!40000 ALTER TABLE `doctor_consult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_doctor`
--

DROP TABLE IF EXISTS `doctor_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_doctor` (
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint NOT NULL,
  `location` varchar(50) NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `experience` int NOT NULL,
  `consultationfee` int NOT NULL,
  `resume` varchar(1000) NOT NULL,
  `idproof` varchar(1000) NOT NULL,
  `description` varchar(500) NOT NULL,
  `password` varchar(30) NOT NULL,
  `agreement` varchar(10) NOT NULL,
  `assign` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_doctor`
--

LOCK TABLES `doctor_doctor` WRITE;
/*!40000 ALTER TABLE `doctor_doctor` DISABLE KEYS */;
INSERT INTO `doctor_doctor` VALUES ('Ali','basha','ali@gmail.com',7896541236,'Prakasam','Ms.c','Dermatologists',2,120,'screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','I am a dermotologist','alibasha','True','True'),('Doctor','doctor','doctor@gmail.com',8523697412,'Prakasam','MBBS','Infectious Disease Specialists',1,20,'screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','screencapture-simpleisbetterthancomplex-tutorial-2020-01-19-how-to-use-chart-js-with-django-html-2021-05-17-18_12_43.pdf','hdcukf','doctor','True','True'),('Patan Imran','Khan','imranirfanalikhan786@gmail.com',916303412886,'Guntur','MBBS','Cardiologists',2,200,'Resume_Imran_Ali_Khan (1).pdf','190031274_EP_MOOCS_CERTIFICATES.pdf','I had acheived best doctor certificate','patan@2002','True','True'),('vamsi','sistla','vamsi@gmail.com',9632587123,'Srikakulam','M.Sc','Endocrinologists',4,300,'190031274_TECHNICAL SKILLS_MOOCS_CERTIFICATES.pdf','CertificateOfCompletion_Java EE Design Patterns and Architecture.pdf','Fine','vamsi','True','False');
/*!40000 ALTER TABLE `doctor_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_healthtips`
--

DROP TABLE IF EXISTS `doctor_healthtips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_healthtips` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `problem` varchar(1000) NOT NULL,
  `causes` varchar(1000) NOT NULL,
  `symptoms` varchar(1000) NOT NULL,
  `prevention` varchar(1000) NOT NULL,
  `medicine` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_healthtips`
--

LOCK TABLES `doctor_healthtips` WRITE;
/*!40000 ALTER TABLE `doctor_healthtips` DISABLE KEYS */;
INSERT INTO `doctor_healthtips` VALUES (1,'Allergies','People with allergies have especially sensitive immune systems that react when they contact allergens. Common allergens include: food(nuts, eggs, milk, soy, shellfish, wheat), pollen, mold','Eye irritation, Runny nose, Stuffy nose, Sneezing, Puffy, watery eyes, Inflamed, itchy nose and throat.','Avoid the outdoors between 5-10 a.m. and save outside activities for late afternoon or after a heavy rain, when pollen levels are lower.Keep windows in your living spaces closed to lower exposure to pollen.To keep cool, use air conditioners and avoid using window and attic fans.Wear a medical alert bracelet or other means to communicate to others about your allergy in case of a reaction.','Flonase,Cetirizine and pseudoephedrine (Zyrtec-D 12 Hour),Desloratadine and pseudoephedrine (Clarinex-D),Fexofenadine and pseudoephedrine (Allegra-D)'),(2,'Cold and Flu','Both of these illnesses are upper respiratory infections, meaning they involve your nose, throat, and lungs. Viruses cause both colds and flu by increasing inflammation of the membranes in the nose and throat.\r\nMost transmission of these viruses occurs via hand-to-hand contact.','Flu symptoms come on suddenly and affect the body all over. Flu symptoms are usually more serious than a cold and include:\r\nfever (100° F),\r\nheadache,\r\nmore intense pain and fatigue, and\r\nmore severe, often dry cough.','Wash your hands often (which is good advice for keeping healthy in any situation). Keep them away from your nose, eyes, and mouth. Use an instant hand sanitizer when you can’t wash your hands.\r\nGet regular exercise and eat well.\r\nFollow good sleep habits.\r\nGet a flu shot each fall (offered to all students at a lower cost by UHS each fall)','Acetaminophen (Tylenol),\r\nnaproxen (Aleve)\r\n fexofenadine (Allegra)'),(3,'Conjunctivitis (pink eye)','Conjunctivitis, an inflammation of the transparent membrane (conjunctiva) that lines your eyelids and part of your eyeballs, has several possible causes. It could be a bacterial or viral infection, an allergic reaction to pollen or animal dander, or a result of chemical irritants (smoke, chlorine, lens solution, etc.).','These symptoms may last a few hours to several weeks: redness, itching, tearing, burning sensation, pus-like discharge and/or crusting of the eyelids. Because conjunctivitis causes inflammation of the small blood vessels in the conjunctiva to become more prominent, the whites of your eyes will appear pink or red. When you wake you are likely to feel that your eyelids are pasted shut, and your vision may not be as clear as usual.','Pink eye is extremely contagious, so if you know someone who is infected, make sure you do not expose yourself to contact with the person’s eye fluid. The infection can easily be passed via keyboards, doorknobs, make-up, pens, gym equipment, and a vast number of other items. To protect yourself, wash your hands frequently, avoid touching your eyes, and wash anything that may be contaminated.','Chloramphenicol'),(4,'Diarrhea','Bacterial infection, caused by contaminated food or waterViral infectionParasites, which can enter the body through food or waterFood intolerance, such as the inability to digest lactose, the sugar in milkOveruse of alcohol or laxativesMedication, such as some antibiotics or antacids containing magnesiumMenstrual crampsStress or a panic attack','watery, loose stoolsfrequent bowel movementscramping or pain in the abdomen, nausea, bloatingpossibly fever or bloody stools, depending on the cause','Avoid foods that are milk-based, greasy, high-fiber, or very sweet because these are likely to aggravate diarrhea.Avoid caffeine and alcohol.Avoid high sugar drinks, like apple juice, grape juice, and soda, which can pull water into the intestine and make the diarrhea persist.Don’t drink clear liquids exclusively for more than 24 hours.','Loperamide'),(5,'Headache','Emotional and physical stressFatigueIrregular sleep habits (sleeping too much or too little)Skipping mealsCaffeine use or withdrawalHormonal factors, such as menstruationMonosodium glutamate (MSG)Foods with nitrates, such as hot dogsAlcoholSome medicinesChanges in weather, altitude, or time zone','pulsing or throbbing qualitybegins with intense pain on one side of the head, which eventually spreadsfelt on one or both sides of the headlasts several hourssevere enough to interfere with routine activitiesa feeling of squeezing or pressure','Ice pack held over the eyes or foreheadHeating pad set on low or hot shower to relax tense neck and shoulder musclesSleep, or at least resting in a dark roomTaking breaks from stressful situationsPrescription drugs for severe headaches','B-complex, almotriptan'),(6,'Mononucleosis','Mononucleosis is an illness caused by the Epstein-Barr virus (EBV), which is spread through saliva.','The most well known symptom of “mono“ is extreme fatigue, forcing the infected person to nap frequently. If you experience such extreme fatigue accompanied by other symptoms, such as swollen lymph glands and spleen, sore throat, fever, loss of appetite, and muscle aches, you may want to get tested for mono. The basis for testing whether you have mono is the presence of antibodies produced by white blood cells.','Avoiding someone with mono can be hard because infected individuals often do not show symptoms. Because the incubation period is so long, a person can be contagious 1-2 months before showing any symptoms, and some people don’t show symptoms at all. Even after signs of mono have disappeared, a person may still be producing the virus. A strong immune system, maintained by healthy diet, exercise, and adequate sleep, can help you from getting ill.','acetaminophen'),(7,'Stomach Ache','Eating or drinking rapidlyDrinking through a strawChewing gum or eating hard candySmoking','abdominal pain in stomach','Avoid foods that trigger gas.Avoid swallowing excess air by not chewing gum or eating hard candy.Take digestive enzyme supplements, such as Beano (for high-fiber foods) and lactase supplements (for milk products).Eat only small amounts of dairy products with food, if you suspect lactose intolerance.Eat slowly, in a relaxed setting, and chew your food thoroughly.Don’t sit in a slumped position or lie down after eating.If increasing the fiber in your diet, do so gradually','Mylanta, Gas-X, Pepcid AC, Zantac 75'),(8,'Nausea and Vomiting','Viruses in the intestines (viral gastroenteritis, see below)Some medications, such as certain antibiotics and birth control pillsEating too much or eating spoiled foodDrinking too much (e.g. alcohol)Motion sicknessMorning sickness in pregnant females.','infection (\"stomach flu\"), food poisoning, motion sickness, overeating, blocked intestine, illness, concussion or brain injury,','Wait 30-60 minutes after vomiting before drinking anything to let your stomach settle.Don’t eat solid foods. Don’t drink milk.Avoid substances that irritate the stomach, like alcohol, aspirin, and fried foods.Avoid diuretics, like caffeine and alcohol, that contribute to fluid loss.','Pepto-Bismol, Kaopectate');
/*!40000 ALTER TABLE `doctor_healthtips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_slot`
--

DROP TABLE IF EXISTS `doctor_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_slot` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `slot` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_slot`
--

LOCK TABLES `doctor_slot` WRITE;
/*!40000 ALTER TABLE `doctor_slot` DISABLE KEYS */;
INSERT INTO `doctor_slot` VALUES (2,'imranirfanalikhan786@gmail.com','Guntur','2021-05-20','9:00am - 10:30am'),(3,'imranirfanalikhan786@gmail.com','Guntur','2021-05-17','3:00pm - 4:00pm'),(4,'imranirfanalikhan786@gmail.com','Guntur','2021-05-21','11:00am - 12:30pm'),(5,'ali@gmail.com','Prakasam','2021-05-20','3:00pm - 4:00pm');
/*!40000 ALTER TABLE `doctor_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_medicine`
--

DROP TABLE IF EXISTS `pharmacy_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_medicine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicinename` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `startprice` double NOT NULL,
  `endprice` double NOT NULL,
  `image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_medicine`
--

LOCK TABLES `pharmacy_medicine` WRITE;
/*!40000 ALTER TABLE `pharmacy_medicine` DISABLE KEYS */;
INSERT INTO `pharmacy_medicine` VALUES (1,'paracetamol','irfanalikhanp9@gmail.com','Guntur',15,10,'https://5.imimg.com/data5/EJ/VB/MY-42865263/paracetamol-tablets-500x500.jpg'),(2,'dolo 650','irfanalikhanp9@gmail.com','Guntur',30,27,'https://i1.wp.com/medigram.in/wp-content/uploads/2020/08/Dolo-650-Mg-tablet.png?fit=668%2C436&ssl=1'),(3,'Ecosrpin 75mg','srinivas@gmail.com','Anantapur',60,50,'https://cdn01.pharmeasy.in/dam/products/064425/ecosprin-75mg-strip-of-14-tablets-box-front-1-1607336525.jpg?dim=240x240&dpr=1.25&q=100'),(5,'Evion 400mg strip of 10 capsule','srinivas@gmail.com','Anantapur',35,27.8,'https://cdn01.pharmeasy.in/dam/products/071710/evion-400mg-strip-of-10-capsules-front-2-1612523975.jpg?dim=240x240&dpr=1.25&q=100'),(6,'Liveasy Wellness- 60 tablets','srinivas@gmail.com','Anantapur',599,540,'https://cdn01.pharmeasy.in/dam/products_otc/T22634/liveasy-calcium-magnesium-vitamin-d3-bottle-of-60-tablets-1.jpg?dim=240x0&dpr=1.25&q=100'),(7,'Calcimax Forte Plus Strip Of 30 Tablets','srinivas@gmail.com','Anantapur',246,196,'https://cdn01.pharmeasy.in/dam/products_otc/207833/calcimax-forte-plus-strip-of-30-tablets-2-1610814452.jpg?dim=240x0&dpr=1.25&q=100');
/*!40000 ALTER TABLE `pharmacy_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_medicineorder`
--

DROP TABLE IF EXISTS `pharmacy_medicineorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_medicineorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `useremail` varchar(100) NOT NULL,
  `usermobile` bigint NOT NULL,
  `userlocation` varchar(100) NOT NULL,
  `medicinename` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `location` varchar(50) NOT NULL,
  `startprice` double NOT NULL,
  `endprice` double NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_medicineorder`
--

LOCK TABLES `pharmacy_medicineorder` WRITE;
/*!40000 ALTER TABLE `pharmacy_medicineorder` DISABLE KEYS */;
INSERT INTO `pharmacy_medicineorder` VALUES (27,'name lastname','name@gmail.com',852369712,'Guntur','dolo 650','irfanalikhanp9@gmail.com','Guntur',30,27,'https://i1.wp.com/medigram.in/wp-content/uploads/2020/08/Dolo-650-Mg-tablet.png?fit=668%2C436&ssl=1','2021-05-18'),(30,'Noorjahan Patan','noori@gmail.com',9603134008,'Guntur','Liveasy Wellness- 60 tablets','srinivas@gmail.com','Anantapur',599,540,'https://cdn01.pharmeasy.in/dam/products_otc/T22634/liveasy-calcium-magnesium-vitamin-d3-bottle-of-60-tablets-1.jpg?dim=240x0&dpr=1.25&q=100','2021-05-18'),(31,'Noorjahan Patan','noori@gmail.com',9603134008,'Guntur','Ecosrpin 75mg','srinivas@gmail.com','Anantapur',60,50,'https://cdn01.pharmeasy.in/dam/products/064425/ecosprin-75mg-strip-of-14-tablets-box-front-1-1607336525.jpg?dim=240x240&dpr=1.25&q=100','2021-05-18');
/*!40000 ALTER TABLE `pharmacy_medicineorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pharmacy_pharmacy`
--

DROP TABLE IF EXISTS `pharmacy_pharmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacy_pharmacy` (
  `username` varchar(30) NOT NULL,
  `shopname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint NOT NULL,
  `location` varchar(50) NOT NULL,
  `experience` int NOT NULL,
  `deliverycharge` int NOT NULL,
  `address` varchar(100) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `shopproofs` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `agreement` varchar(10) NOT NULL,
  `assign` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacy_pharmacy`
--

LOCK TABLES `pharmacy_pharmacy` WRITE;
/*!40000 ALTER TABLE `pharmacy_pharmacy` DISABLE KEYS */;
INSERT INTO `pharmacy_pharmacy` VALUES ('althaf','makeeasy','althaf@gmail.com',8547963241,'Srikakulam',2,20,'Srikakulam','Qwiklabs - Lab Resources.pdf','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','althaf','True','False'),('Charan','Reddy','charan@gmail.com',7412589632,'West Godavari',3,75,'West Godavari','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','190031274_Data Science Methodology.pdf','charan','True','False'),('Irfan','Apollo','irfanalikhanp9@gmail.com',9154321789,'Guntur',5,100,'D. No. 10-300,khajavali street, mangalagiri','CertificateOfCompletion_Mastering Microservices with Java (1).pdf','CertificateOfCompletion_Java EE Design Patterns and Architecture (1).pdf','irfanalikhan','True','True'),('Shanmukh','srinivas','shanmukh@gmail.com',7896541236,'Kurnool',5,120,'Mangalagiri','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','screencapture-pypi-org-project-django-chartjs-2021-05-17-18_38_34.pdf','shanmukh','True','False'),('Srinivas','Medplus','srinivas@gmail.com',9658741236,'Anantapur',1,50,'park road, Ananthapur','190031274_EP_MOOCS_CERTIFICATES.pdf','190031607_PFSD_SKILLING-11.pdf','srinivas123','True','True');
/*!40000 ALTER TABLE `pharmacy_pharmacy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-18 23:40:25
