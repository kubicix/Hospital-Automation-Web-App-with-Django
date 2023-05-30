-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: randevual
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `asistan`
--

DROP TABLE IF EXISTS `asistan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistan` (
  `idAsistan` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(45) NOT NULL,
  `soyad` varchar(45) NOT NULL,
  `cinsiyet` varchar(45) NOT NULL,
  `Doktor_idDoktor` int NOT NULL,
  PRIMARY KEY (`idAsistan`),
  KEY `fk_Asistan_Doktor1_idx` (`Doktor_idDoktor`),
  CONSTRAINT `fk_Asistan_Doktor1` FOREIGN KEY (`Doktor_idDoktor`) REFERENCES `register_doktor` (`idDoktor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistan`
--

LOCK TABLES `asistan` WRITE;
/*!40000 ALTER TABLE `asistan` DISABLE KEYS */;
INSERT INTO `asistan` VALUES (1,'Ali','Coşar','Erkek',2),(2,'Ecren','Ulgar','Kadın',3),(3,'Beren','Kum','Kadın',4),(4,'Murat','Ülkü','Erkek',1),(5,'Oya','Toprak','Kadın',5);
/*!40000 ALTER TABLE `asistan` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add hasta',7,'add_hasta'),(26,'Can change hasta',7,'change_hasta'),(27,'Can delete hasta',7,'delete_hasta'),(28,'Can view hasta',7,'view_hasta'),(29,'Can add bolum',8,'add_bolum'),(30,'Can change bolum',8,'change_bolum'),(31,'Can delete bolum',8,'delete_bolum'),(32,'Can view bolum',8,'view_bolum'),(33,'Can add randevu',9,'add_randevu'),(34,'Can change randevu',9,'change_randevu'),(35,'Can delete randevu',9,'delete_randevu'),(36,'Can view randevu',9,'view_randevu'),(37,'Can add doktor',10,'add_doktor'),(38,'Can change doktor',10,'change_doktor'),(39,'Can delete doktor',10,'delete_doktor'),(40,'Can view doktor',10,'view_doktor');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
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
-- Table structure for table `calismasaat`
--

DROP TABLE IF EXISTS `calismasaat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calismasaat` (
  `idCalismaSaat` int NOT NULL AUTO_INCREMENT,
  `saat` int NOT NULL,
  PRIMARY KEY (`idCalismaSaat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calismasaat`
--

LOCK TABLES `calismasaat` WRITE;
/*!40000 ALTER TABLE `calismasaat` DISABLE KEYS */;
INSERT INTO `calismasaat` VALUES (1,45),(2,35),(3,30),(4,24),(5,10);
/*!40000 ALTER TABLE `calismasaat` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'register','bolum'),(10,'register','doktor'),(7,'register','hasta'),(9,'register','randevu'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-29 10:50:02.681959'),(2,'auth','0001_initial','2023-04-29 10:50:03.450093'),(3,'admin','0001_initial','2023-04-29 10:50:03.585923'),(4,'admin','0002_logentry_remove_auto_add','2023-04-29 10:50:03.612802'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-29 10:50:03.626235'),(6,'contenttypes','0002_remove_content_type_name','2023-04-29 10:50:03.702323'),(7,'auth','0002_alter_permission_name_max_length','2023-04-29 10:50:03.757459'),(8,'auth','0003_alter_user_email_max_length','2023-04-29 10:50:03.796868'),(9,'auth','0004_alter_user_username_opts','2023-04-29 10:50:03.808884'),(10,'auth','0005_alter_user_last_login_null','2023-04-29 10:50:03.863579'),(11,'auth','0006_require_contenttypes_0002','2023-04-29 10:50:03.871220'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-29 10:50:03.884218'),(13,'auth','0008_alter_user_username_max_length','2023-04-29 10:50:03.945286'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-29 10:50:04.001244'),(15,'auth','0010_alter_group_name_max_length','2023-04-29 10:50:04.022470'),(16,'auth','0011_update_proxy_permissions','2023-04-29 10:50:04.033454'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-29 10:50:04.072931'),(18,'sessions','0001_initial','2023-04-29 10:50:04.101958'),(19,'register','0001_initial','2023-04-29 11:05:03.778246'),(20,'register','0002_bolum_randevu','2023-05-03 16:41:46.303368'),(21,'register','0003_rename_bolum_adi_bolum_bolumad_remove_bolum_id_and_more','2023-05-03 18:15:11.264537'),(22,'register','0004_randevu','2023-05-04 11:41:25.347769'),(23,'register','0005_randevu_tcno','2023-05-04 13:29:59.551484'),(24,'register','0005_randevu_hastatcno','2023-05-04 13:36:09.172743'),(25,'register','0006_alter_hasta_password','2023-05-07 15:56:52.482615');
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
INSERT INTO `django_session` VALUES ('krmnz3ulcnybgr7ehxb28sf9p4vhajmi','.eJyrVipJzstXslIyRAAlHaXizLSiVJCokbGJqVItAMDICZA:1pvbks:DYBqGYIH7gPLNwoo-PWosUkktgELmUC1psm7IhG16qM','2023-05-21 10:36:38.442353'),('vmzo65oqhtly8cw9kixwh6xofu5tm7vh','eyJ0Y25vIjoiMjIyMjIyMjIyMjIifQ:1pvjWk:AVOKRwg-xffOzPDSZiGWSELOPkaoTrq6-5YP1EJMsAY','2023-05-21 18:54:34.242644');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `r_randevu`
--

DROP TABLE IF EXISTS `r_randevu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `r_randevu` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tarih` date NOT NULL,
  `saat` time NOT NULL,
  `bolum` varchar(255) NOT NULL,
  `tcno` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r_randevu`
--

LOCK TABLES `r_randevu` WRITE;
/*!40000 ALTER TABLE `r_randevu` DISABLE KEYS */;
INSERT INTO `r_randevu` VALUES (11,'2023-12-20','15:50:00','Diş','22222222222'),(13,'2024-12-12','16:30:00','İç Hastalıkları','11111111111'),(15,'2023-12-11','16:00:00','Kulak Burun Boğaz','22222222222'),(16,'2023-06-05','15:50:00','Kardiyolojii','11111111111'),(18,'2024-12-12','18:23:00','Psikiyatri','11111111111'),(19,'2024-11-11','18:23:00','Diş','22222222222');
/*!40000 ALTER TABLE `r_randevu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_bolum`
--

DROP TABLE IF EXISTS `register_bolum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_bolum` (
  `idbolum` int NOT NULL AUTO_INCREMENT,
  `bolumad` varchar(45) NOT NULL,
  PRIMARY KEY (`idbolum`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_bolum`
--

LOCK TABLES `register_bolum` WRITE;
/*!40000 ALTER TABLE `register_bolum` DISABLE KEYS */;
INSERT INTO `register_bolum` VALUES (1,'Kulak Burun Boğaz'),(2,'İç Hastalıkları'),(3,'Psikiyatri'),(4,'Diş'),(5,'Kardiyolojii');
/*!40000 ALTER TABLE `register_bolum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_doktor`
--

DROP TABLE IF EXISTS `register_doktor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_doktor` (
  `idDoktor` int NOT NULL AUTO_INCREMENT,
  `ad` varchar(45) DEFAULT NULL,
  `soyad` varchar(45) DEFAULT NULL,
  `cinsiyet` varchar(45) DEFAULT NULL,
  `Bolum_idbolum` int NOT NULL,
  `CalismaSaat_idCalismaSaat` int NOT NULL,
  `sifre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDoktor`),
  KEY `fk_Doktor_Bolum1_idx` (`Bolum_idbolum`),
  KEY `fk_Doktor_CalismaSaat1_idx` (`CalismaSaat_idCalismaSaat`),
  CONSTRAINT `fk_Doktor_Bolum1` FOREIGN KEY (`Bolum_idbolum`) REFERENCES `register_bolum` (`idbolum`),
  CONSTRAINT `fk_Doktor_CalismaSaat1` FOREIGN KEY (`CalismaSaat_idCalismaSaat`) REFERENCES `calismasaat` (`idCalismaSaat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_doktor`
--

LOCK TABLES `register_doktor` WRITE;
/*!40000 ALTER TABLE `register_doktor` DISABLE KEYS */;
INSERT INTO `register_doktor` VALUES (1,'Koray','Balıkçı','Erkek',2,1,'12345'),(2,'Ali','Erdem','Erkek',3,2,'234'),(3,'Işıl','Bulvar','Kadın',1,3,'345'),(4,'Özlem','Sever','Kadın',4,4,'456'),(5,'Lütfi','Demir','Erkek',5,5,'567'),(6,'Ahmet','Taş','Erkek',1,3,'678');
/*!40000 ALTER TABLE `register_doktor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_hasta`
--

DROP TABLE IF EXISTS `register_hasta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_hasta` (
  `tcno` varchar(11) NOT NULL,
  `ad` varchar(25) NOT NULL,
  `soyad` varchar(25) NOT NULL,
  `cinsiyet` varchar(8) NOT NULL,
  `dogumTarih` year NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 KEY_BLOCK_SIZE=16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_hasta`
--

LOCK TABLES `register_hasta` WRITE;
/*!40000 ALTER TABLE `register_hasta` DISABLE KEYS */;
INSERT INTO `register_hasta` VALUES ('11111111111','Mehmet','Çakır','Erkek',1974,'1111'),('22222222222','Büşra','Yılmaz','Kadın',2000,'2222'),('33333333333','Elif','Örs','Kadın',1986,'3333'),('44444444444','Muhittin','Sipahi','Erkek',1952,'4444'),('55555555555','Yusuf','Orak','Erkek',1995,'5555'),('66666666666','Ekro','Demir','Erkek',2001,'6666');
/*!40000 ALTER TABLE `register_hasta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_randevu`
--

DROP TABLE IF EXISTS `register_randevu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_randevu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tarih` date DEFAULT NULL,
  `saat` time DEFAULT NULL,
  `bolum` int DEFAULT NULL,
  `doktorid` int DEFAULT NULL,
  `hastatcno` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_randevu_register_bolum1_idx1` (`bolum`),
  KEY `fk_randevu_register_doktor1_idx1` (`doktorid`),
  KEY `fk_randevu_register_hasta1_idx1` (`hastatcno`),
  CONSTRAINT `fk_randevu_register_bolum1` FOREIGN KEY (`bolum`) REFERENCES `register_bolum` (`idbolum`),
  CONSTRAINT `fk_randevu_register_doktor1` FOREIGN KEY (`doktorid`) REFERENCES `register_doktor` (`idDoktor`),
  CONSTRAINT `fk_randevu_register_hasta1` FOREIGN KEY (`hastatcno`) REFERENCES `register_hasta` (`tcno`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_randevu`
--

LOCK TABLES `register_randevu` WRITE;
/*!40000 ALTER TABLE `register_randevu` DISABLE KEYS */;
INSERT INTO `register_randevu` VALUES (18,'2024-11-11','18:23:00',3,2,'11111111111'),(19,'2023-05-05','18:59:00',1,6,'22222222222'),(20,'2023-05-04','21:24:00',2,1,'11111111111'),(21,'2023-05-12','21:26:00',3,2,'11111111111'),(51,'2023-05-05','00:00:00',1,3,'22222222222'),(52,'2023-05-19','23:57:00',3,2,'22222222222');
/*!40000 ALTER TABLE `register_randevu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-30 21:24:01
