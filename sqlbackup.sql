-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: e-commerce
-- ------------------------------------------------------
-- Server version	8.0.42

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add cart',9,'add_cart'),(34,'Can change cart',9,'change_cart'),(35,'Can delete cart',9,'delete_cart'),(36,'Can view cart',9,'view_cart'),(37,'Can add cart item',10,'add_cartitem'),(38,'Can change cart item',10,'change_cartitem'),(39,'Can delete cart item',10,'delete_cartitem'),(40,'Can view cart item',10,'view_cartitem'),(41,'Can add order item',11,'add_orderitem'),(42,'Can change order item',11,'change_orderitem'),(43,'Can delete order item',11,'delete_orderitem'),(44,'Can view order item',11,'view_orderitem'),(45,'Can add order',12,'add_order'),(46,'Can change order',12,'change_order'),(47,'Can delete order',12,'delete_order'),(48,'Can view order',12,'view_order');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$ewLyjDpTWU2TTHpZRPv8ho$uS19/Xv87O46inXFMIwplJY3SnOSniWKzRpdmCQbJl4=','2026-01-25 17:42:14.606054',1,'admin','','','admin@gmail.com',1,1,'2025-11-12 06:32:22.567507'),(2,'pbkdf2_sha256$1000000$TtDxnf9qXgdbZl2xausA1f$rP+4oWw+HQoEIZuZTw4RZ2BOe8wxUFXDd0DWE9iw4Sc=',NULL,0,'suman','','','suman@gmail.com',0,1,'2025-11-21 06:59:56.858713'),(3,'pbkdf2_sha256$1000000$y2nWRvjvBUM3dPv4OlJcf2$JepbCyKv/1KRO5qMfpT2t44E/sUuowywdgRYvXzQWx8=',NULL,0,'suman12','','','suman1@gmail.com',0,1,'2025-11-21 07:07:27.190329'),(4,'pbkdf2_sha256$1000000$ihhPsxPJooZGjkCFW9uZi9$FZtQK9WiaDmEvwYfB3SjrfX6pgYqihzGdVdYAHhUvXM=',NULL,0,'khj','','','khj@gmail.com',0,1,'2025-12-12 07:45:02.162684'),(5,'pbkdf2_sha256$1000000$46fpImUdHxlukUH4uUCWiO$9PMmTX9YKy934cLOj9OTZVU0aQ5vbOiozbYjvYVW4LM=',NULL,0,'suraj','','','surajpoudel493@gmail.com',0,1,'2025-12-14 06:55:46.703788'),(6,'pbkdf2_sha256$1000000$AsuZTDc2wyB7NUvGQ2Xfap$9Bb51UXquYEf7QnLPwVua7zuCBal+0YOUv6x8AD+Bdg=',NULL,0,'sagarmatha','','','sagarmatha@gmail.com',0,1,'2025-12-14 13:29:05.078183'),(7,'pbkdf2_sha256$1000000$k6x7FkNn5wF8wKp41110ci$N4zTRTZ8lPNiDkh0ha+xlaQD0u7ROwnAafrxiatSscI=',NULL,0,'sagar','','','sagar@gmail.com',0,1,'2025-12-14 13:32:05.815312');
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
-- Table structure for table `cart_cart`
--

DROP TABLE IF EXISTS `cart_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cart`
--

LOCK TABLES `cart_cart` WRITE;
/*!40000 ALTER TABLE `cart_cart` DISABLE KEYS */;
INSERT INTO `cart_cart` VALUES (2,'2025-12-17 06:52:29.811873',7),(7,'2025-12-31 07:55:19.603417',1),(28,'2026-01-28 03:20:39.640867',5);
/*!40000 ALTER TABLE `cart_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_cartitem`
--

DROP TABLE IF EXISTS `cart_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` (`cart_id`),
  KEY `cart_cartitem_product_id_b24e265a_fk_store_product_id` (`product_id`),
  CONSTRAINT `cart_cartitem_cart_id_370ad265_fk_cart_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_cart` (`id`),
  CONSTRAINT `cart_cartitem_product_id_b24e265a_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `cart_cartitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_cartitem`
--

LOCK TABLES `cart_cartitem` WRITE;
/*!40000 ALTER TABLE `cart_cartitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_cartitem` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-11-12 06:34:54.317746','1','cloth',1,'[{\"added\": {}}]',7,1),(2,'2025-11-12 06:35:03.019146','2','shoes',1,'[{\"added\": {}}]',7,1),(3,'2025-11-12 06:35:13.205648','3','electronics',1,'[{\"added\": {}}]',7,1),(4,'2025-11-14 08:39:18.568226','4','jacket',3,'',7,1),(5,'2025-11-14 08:39:18.568310','3','electronics',3,'',7,1),(6,'2025-11-14 08:39:18.568345','2','shoes',3,'',7,1),(7,'2025-11-14 08:39:18.568376','1','cloth',3,'',7,1),(8,'2025-12-03 07:30:27.518014','4','Classic red pullover hoodie',2,'[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"Image\"]}}]',8,1),(9,'2025-12-03 07:31:55.649032','4','Classic red pullover hoodie',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(10,'2025-12-10 06:40:06.667422','4','Classic red pullover hoodie',2,'[{\"changed\": {\"fields\": [\"Category\"]}}]',8,1),(11,'2026-01-26 05:46:33.216040','12','Jeans',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(12,'2026-01-26 05:48:56.254844','10','miscellaneous',3,'',7,1),(13,'2026-01-26 05:48:56.254921','9','furnitures',3,'',7,1),(14,'2026-01-26 05:48:56.254977','1','electronics',3,'',7,1),(15,'2026-01-26 05:50:31.351641','29','STRAIGHT LEG JEANS',1,'[{\"added\": {}}]',8,1),(16,'2026-01-26 05:52:28.399051','30','REGULAR FIT HOODIE',1,'[{\"added\": {}}]',8,1),(17,'2026-01-26 05:54:06.656422','31','LOOSE FIT T-SHIRT',1,'[{\"added\": {}}]',8,1),(18,'2026-01-26 05:55:52.157174','32','ORGANIC COTTON TOP',1,'[{\"added\": {}}]',8,1),(19,'2026-01-26 05:57:19.386026','33','RELAXED FIT KNITTED PULLOVER',1,'[{\"added\": {}}]',8,1),(20,'2026-01-26 05:58:35.476523','34','WIDE LEG TROUSERS',1,'[{\"added\": {}}]',8,1),(21,'2026-01-26 06:00:02.930200','35','LOOSE FIT HOODIE',1,'[{\"added\": {}}]',8,1),(22,'2026-01-26 06:02:29.213490','36','PUFFER JACKET',1,'[{\"added\": {}}]',8,1),(23,'2026-01-26 06:03:25.267181','37','SHORT JACKET',1,'[{\"added\": {}}]',8,1),(24,'2026-01-26 06:05:00.516608','38','LONG RAIN JACKET',1,'[{\"added\": {}}]',8,1),(25,'2026-01-26 06:06:29.176356','39','ZIP GILET',1,'[{\"added\": {}}]',8,1),(26,'2026-01-26 06:08:33.594147','40','MYIS03 PUFFER JACKET',1,'[{\"added\": {}}]',8,1),(27,'2026-01-26 06:11:49.336568','41','BOOTCUT JEANS',1,'[{\"added\": {}}]',8,1),(28,'2026-01-26 06:13:07.510595','42','WIDE LEG JEANS',1,'[{\"added\": {}}]',8,1),(29,'2026-01-26 06:14:41.308757','43','MIDI BOOTS',1,'[{\"added\": {}}]',8,1),(30,'2026-01-26 06:16:33.834765','44','LOOSE FIT JEANS',1,'[{\"added\": {}}]',8,1),(31,'2026-01-26 06:18:47.525720','45','REGULAR FIT HOODIE',1,'[{\"added\": {}}]',8,1),(32,'2026-01-26 06:20:49.044158','46','ORGANIC COTTON HOODIE',1,'[{\"added\": {}}]',8,1),(33,'2026-01-26 06:22:30.850706','47','CHECKED SHIRT',1,'[{\"added\": {}}]',8,1),(34,'2026-01-26 06:24:41.555664','48','SNOOPY T-SHIRT',1,'[{\"added\": {}}]',8,1),(35,'2026-01-26 06:28:03.107775','17','Order object (17)',3,'',12,1),(36,'2026-01-26 06:28:03.107849','16','Order object (16)',3,'',12,1),(37,'2026-01-26 06:28:03.107901','15','Order object (15)',3,'',12,1),(38,'2026-01-26 06:28:03.107943','14','Order object (14)',3,'',12,1),(39,'2026-01-26 06:28:03.107981','13','Order object (13)',3,'',12,1),(40,'2026-01-26 06:28:03.108020','12','Order object (12)',3,'',12,1),(41,'2026-01-26 06:28:03.108060','11','Order object (11)',3,'',12,1),(42,'2026-01-26 06:28:03.108097','10','Order object (10)',3,'',12,1),(43,'2026-01-26 06:28:03.108132','9','Order object (9)',3,'',12,1),(44,'2026-01-26 06:28:03.108168','8','Order object (8)',3,'',12,1),(45,'2026-01-26 06:28:03.108205','7','Order object (7)',3,'',12,1),(46,'2026-01-26 06:28:03.108240','6','Order object (6)',3,'',12,1),(47,'2026-01-26 06:28:03.108277','5','Order object (5)',3,'',12,1),(48,'2026-01-26 06:28:03.108312','4','Order object (4)',3,'',12,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'cart','cart'),(10,'cart','cartitem'),(5,'contenttypes','contenttype'),(12,'orders','order'),(11,'orders','orderitem'),(6,'sessions','session'),(7,'store','category'),(8,'store','product');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-11-12 06:30:57.563490'),(2,'auth','0001_initial','2025-11-12 06:30:59.747735'),(3,'admin','0001_initial','2025-11-12 06:31:00.196918'),(4,'admin','0002_logentry_remove_auto_add','2025-11-12 06:31:00.223649'),(5,'admin','0003_logentry_add_action_flag_choices','2025-11-12 06:31:00.257826'),(6,'contenttypes','0002_remove_content_type_name','2025-11-12 06:31:00.612903'),(7,'auth','0002_alter_permission_name_max_length','2025-11-12 06:31:00.809238'),(8,'auth','0003_alter_user_email_max_length','2025-11-12 06:31:00.888257'),(9,'auth','0004_alter_user_username_opts','2025-11-12 06:31:00.907935'),(10,'auth','0005_alter_user_last_login_null','2025-11-12 06:31:01.060152'),(11,'auth','0006_require_contenttypes_0002','2025-11-12 06:31:01.069205'),(12,'auth','0007_alter_validators_add_error_messages','2025-11-12 06:31:01.092187'),(13,'auth','0008_alter_user_username_max_length','2025-11-12 06:31:01.286164'),(14,'auth','0009_alter_user_last_name_max_length','2025-11-12 06:31:01.490996'),(15,'auth','0010_alter_group_name_max_length','2025-11-12 06:31:01.538327'),(16,'auth','0011_update_proxy_permissions','2025-11-12 06:31:01.561157'),(17,'auth','0012_alter_user_first_name_max_length','2025-11-12 06:31:01.761922'),(18,'sessions','0001_initial','2025-11-12 06:31:01.880022'),(19,'store','0001_initial','2025-11-12 06:31:01.979191'),(20,'store','0002_product','2025-11-13 12:00:04.811882'),(21,'store','0003_alter_product_slug','2025-11-14 05:35:33.275559'),(22,'store','0004_rename_category_product_category','2025-11-14 06:35:57.517300'),(23,'cart','0001_initial','2025-11-24 07:13:44.971105'),(24,'orders','0001_initial','2025-12-30 08:06:13.824986');
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
INSERT INTO `django_session` VALUES ('b4s0bwy25toxm7wryjpqmdbwg1ylquzf','.eJxVzEsOwiAUheG93LEhQHl26Nw1EOBepGpKUtqRce-GpAOdnu_PeUOIx17D0WkLC8IMAi6_W4r5SesAfMT13lhu674tiY2EndrZrSG9rmf7d1BjrzADJYNonHGSC0lZmTyVEichi-ZeKM6TkEgZpUvENZGyiewgYz0X2sPnC-PxN2k:1vOVsg:NIAPLPhb3mt8KBPkoNtFwNb167LLIfoyaQaC1mHrZ24','2025-12-11 06:53:30.981428'),('brnofd87ij7niyxh2ad0gpe5hk8yy0h5','.eJxVzEsOwiAUheG93LEhQHl26Nw1EOBepGpKUtqRce-GpAOdnu_PeUOIx17D0WkLC8IMAi6_W4r5SesAfMT13lhu674tiY2EndrZrSG9rmf7d1BjrzADJYNonHGSC0lZmTyVEichi-ZeKM6TkEgZpUvENZGyiewgYz0X2sPnC-PxN2k:1vJ4Qq:K_zRFa9TR7H4IbDq3m7TEZTAZHX2aZOGozqRSqzynas','2025-11-26 06:34:16.004113'),('elkt911e0m10bvlbxfoww8hm7l1ejl6t','.eJxVzEsOwiAUheG93LEhQHl26Nw1EOBepGpKUtqRce-GpAOdnu_PeUOIx17D0WkLC8IMAi6_W4r5SesAfMT13lhu674tiY2EndrZrSG9rmf7d1BjrzADJYNonHGSC0lZmTyVEichi-ZeKM6TkEgZpUvENZGyiewgYz0X2sPnC-PxN2k:1vk47q:ibyh2UIrH9dhusx8SqTy8b3nwsMR8FdhQWYfmAw-mhc','2026-02-08 17:42:14.622186'),('ij5potzvfurnlc3jtjcsh1x3uba0wsv4','.eJxVzEsOwiAUheG93LEhQHl26Nw1EOBepGpKUtqRce-GpAOdnu_PeUOIx17D0WkLC8IMAi6_W4r5SesAfMT13lhu674tiY2EndrZrSG9rmf7d1BjrzADJYNonHGSC0lZmTyVEichi-ZeKM6TkEgZpUvENZGyiewgYz0X2sPnC-PxN2k:1vaqw7:J2maYnGdaH31_j72Dhko46qDWgz7mP62_sV8WcAzrf4','2026-01-14 07:48:03.028196'),('ty1mhkddq7rgzmtt6uiophoebg530kpz','.eJxVzEsOwiAUheG93LEhQHl26Nw1EOBepGpKUtqRce-GpAOdnu_PeUOIx17D0WkLC8IMAi6_W4r5SesAfMT13lhu674tiY2EndrZrSG9rmf7d1BjrzADJYNonHGSC0lZmTyVEichi-ZeKM6TkEgZpUvENZGyiewgYz0X2sPnC-PxN2k:1vVPjT:kMe6JNshMPEJKD36VSidF9MH3F9jjaRdQDpkAh8wv_4','2025-12-30 07:44:31.734873');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order`
--

DROP TABLE IF EXISTS `orders_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `payment_method` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_order_user_id_e9b59eb1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `orders_order_user_id_e9b59eb1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order`
--

LOCK TABLES `orders_order` WRITE;
/*!40000 ALTER TABLE `orders_order` DISABLE KEYS */;
INSERT INTO `orders_order` VALUES (1,'suresh neupane','abc@gmail.com','9866437676','kathmandu','jamal','12223','ajsdjb','1223344','cod','pending','2025-12-31 07:46:55.586648',1),(2,'suresh neupane','abc@gmail.com','9866437676','kathmandu','jamal','12223','ajsdjb','1223344','cod','pending','2025-12-31 07:50:43.525169',1),(3,'suresh neupane','abc@gmail.com','9866437676','kathmandu','jamal','12223','ajsdjb','1223344','cod','pending','2025-12-31 07:51:34.333479',1),(18,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','pending','2026-01-27 07:36:03.349576',5),(19,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','pending','2026-01-27 08:42:08.412716',5),(20,'surj','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','pending','2026-01-27 08:47:52.271880',5),(21,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','','esewa','pending','2026-01-27 08:49:24.899799',5),(22,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','','esewa','pending','2026-01-27 08:52:05.709052',5),(23,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','pending','2026-01-27 09:03:11.962146',5),(24,'suresh neupane','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','pending','2026-01-27 09:04:49.438808',5),(25,'suman sharma','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','completed','2026-01-28 03:18:15.959253',5),(26,'suresh neupane','sharma@gmail.com','9843643763','sunwal','somnath','33013','ajsdjb','1223344','esewa','completed','2026-01-28 03:19:58.637324',5);
/*!40000 ALTER TABLE `orders_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_orderitem`
--

DROP TABLE IF EXISTS `orders_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` (`order_id`),
  KEY `orders_orderitem_product_id_afe4254a_fk_store_product_id` (`product_id`),
  CONSTRAINT `orders_orderitem_order_id_fe61a34d_fk_orders_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  CONSTRAINT `orders_orderitem_product_id_afe4254a_fk_store_product_id` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  CONSTRAINT `orders_orderitem_chk_1` CHECK ((`quantity` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_orderitem`
--

LOCK TABLES `orders_orderitem` WRITE;
/*!40000 ALTER TABLE `orders_orderitem` DISABLE KEYS */;
INSERT INTO `orders_orderitem` VALUES (1,3,100.00,1,4),(2,6,55.99,1,5),(13,2,23.00,18,48),(14,2,23.00,19,48),(15,2,23.00,20,48),(16,2,23.00,21,48),(17,1,20.00,22,47),(18,1,23.00,23,48),(19,2,20.00,24,47),(20,2,20.00,25,47),(21,2,24.00,26,35);
/*!40000 ALTER TABLE `orders_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (3,'shoes','2025-11-02 02:30:52.183000','2025-11-02 02:30:52.183000'),(8,'clothes','2025-11-08 10:43:36.724000','2025-11-08 10:43:36.724000'),(11,'jacket','2025-11-23 06:59:40.181371','2025-11-23 06:59:40.181428'),(12,'Jeans','2025-12-25 07:27:08.436649','2026-01-26 05:46:33.206672');
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int unsigned NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `store_product_category_id_574bae65_fk_store_category_id` (`category_id`),
  CONSTRAINT `store_product_category_id_574bae65_fk_store_category_id` FOREIGN KEY (`category_id`) REFERENCES `store_category` (`id`),
  CONSTRAINT `store_product_chk_1` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (4,'Classic red pullover hoodie','classic-red-pullover-hoodie','The classic pullover hoodie is a timeless wardrobe staple that combines comfort, style, and functionality. Crafted from a soft cotton-polyester blend, it features a cozy brushed fleece interior that keeps you warm without compromising breathability. Its relaxed fit, ribbed cuffs,','product_images/images.jpg',100.00,10,'2025-11-08 10:47:19.965000','2025-12-10 06:40:06.655077',8),(5,'Classic Heather Gray Hoodie','classic-heather-gray-hoodie','Stay cozy and stylish with our Classic Heather Gray Hoodie. Crafted from soft, durable fabric, it features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs. Perfect for a casual day out or a relaxing evening in, this hoodie is a versatile addition to any wardrobe.','product_images/cHddUCu_6bPIqDc.jpeg',55.99,6,'2025-11-08 10:53:44.557000','2025-11-08 10:53:44.557000',8),(6,'Classic Comfort Fit Joggers','classic-comfort-fit-joggers','Discover the perfect blend of style and comfort with our Classic Comfort Fit Joggers. These versatile black joggers feature a soft elastic waistband with an adjustable drawstring, two side pockets, and ribbed ankle cuffs for a secure fit. Made from a lightweight and durable fabric, they are ideal for both active days and relaxed lounging.','product_images/ZKGofuB.jpeg',69.99,8,'2025-11-08 10:55:00.654000','2025-11-08 10:55:00.654000',8),(7,'Classic Comfort Drawstring Joggers','classic-comfort-drawstring-joggers','Experience the perfect blend of comfort and style with our Classic Comfort Drawstring Joggers. Designed for a relaxed fit, these joggers feature a soft, stretchable fabric, convenient side pockets, and an adjustable drawstring waist with elegant gold-tipped detailing. Ideal for lounging or running errands, these pants will quickly become your go-to for effortless, casual wear.','product_images/mp3rUty.jpeg',20.00,10,'2025-11-08 10:56:05.183000','2025-11-08 10:56:05.183000',8),(8,'Classic Blue Baseball Cap','classic-blue-baseball-cap','Top off your casual look with our Classic Blue Baseball Cap, made from high-quality materials for lasting comfort. Featuring a timeless six-panel design with a pre-curved visor, this adjustable cap offers both style and practicality for everyday wear.','product_images/wXuQ7bm.jpeg',10.00,0,'2025-11-08 10:59:06.667000','2025-11-08 10:59:06.667000',8),(9,'Classic Black Hooded Sweatshirt','classic-black-hooded-sweatshirt','Elevate your casual wardrobe with our Classic Black Hooded Sweatshirt. Made from high-quality, soft fabric that ensures comfort and durability, this hoodie features a spacious kangaroo pocket and an adjustable drawstring hood. Its versatile design makes it perfect for a relaxed day at home or a casual outing.','product_images/cSytoSD.jpeg',70.00,3,'2025-11-08 11:00:09.060000','2025-11-08 11:00:09.060000',8),(10,'Classic Red Baseball Cap','classic-red-baseball-cap','Elevate your casual wardrobe with this timeless red baseball cap. Crafted from durable fabric, it features a comfortable fit with an adjustable strap at the back, ensuring one size fits all. Perfect for sunny days or adding a sporty touch to your outfit.','product_images/cBuLvBi.jpeg',35.00,1,'2025-11-08 11:01:17.673000','2025-11-08 11:01:17.673000',8),(21,'Rainbow Glitter High Heels','rainbow-glitter-high-heels','Step into the spotlight with these eye-catching rainbow glitter high heels. Designed to dazzle, each shoe boasts a kaleidoscope of shimmering colors that catch and reflect light with every step. Perfect for special occasions or a night out, these stunners are sure to turn heads and elevate any ensemble.','product_images/62gGzeF.jpeg',65.00,20,'2025-11-08 11:14:18.277000','2025-11-08 11:14:18.277000',3),(22,'Futuristic Holographic Soccer Cleats','futuristic-holographic-soccer-cleats','Step onto the field and stand out from the crowd with these eye-catching holographic soccer cleats. Designed for the modern player, these cleats feature a sleek silhouette, lightweight construction for maximum agility, and durable studs for optimal traction. The shimmering holographic finish reflects a rainbow of colors as you move, ensuring that you\'ll be noticed for both your skills and style. Perfect for the fashion-forward athlete who wants to make a statement.','product_images/qNOjJje.jpeg',30.00,6,'2025-11-08 11:15:17.726000','2025-11-08 11:15:17.726000',3),(23,'Chic Summer Denim Espadrille Sandals','chic-summer-denim-espadrille-sandals','Step into summer with style in our denim espadrille sandals. Featuring a braided jute sole for a classic touch and adjustable denim straps for a snug fit, these sandals offer both comfort and a fashionable edge. The easy slip-on design ensures convenience for beach days or casual outings.','product_images/9qrmE1b.jpeg',20.00,5,'2025-11-08 11:16:16.913000','2025-11-08 11:16:16.913000',3),(29,'STRAIGHT LEG JEANS','straight-leg-jeans','Cuddle up in soft and trendy autumn styles that bring comfort and style to any outfit. Twill is a durable woven fabric characterised by its diagonal design for a classic look.\r\n\r\n- Product type: Straight fit jeans\r\n- Pockets: Front pockets\r\n- Pockets: Back pockets\r\n- Closing: Hook button and zip fly fastening\r\n- Leg details: Elasticated hems\r\n- Fabric: Twill','product_images/13252333_LightBlueDenim_003.jpg',35.00,10,'2026-01-26 05:50:31.350083','2026-01-26 05:50:31.350136',12),(30,'REGULAR FIT HOODIE','regular-fit-hoodie','Dress down any outfit with casual, cool styles and create the perfect look for everyday wear and weekend activities.\r\nBrushed sweat fabric has a soft inside for a comfortable feel.\r\n- Product Type: Hoodie\r\n- Neck: Hoodie\r\n- Sleeve: Long sleeves\r\n- Print: Print placed on the front and the back of the product\r\n- Fit: Standard Fit\r\n- Attachment comp: Cotton/polyester\r\nArticle Number 13252416_KentuckyBlue_1242291','product_images/13252416_KentuckyBlue_1242291_003.jpg',34.00,7,'2026-01-26 05:52:28.397239','2026-01-26 05:52:28.397287',11),(31,'LOOSE FIT T-SHIRT','loose-fit-t-shirt','Add new life to the wardrobe with T-shirts and tops for any occasion and season. Jersey is a lightweight and stretchy fabric with a soft surface and inside for a comfortable feel and freedom to move.\r\n\r\n- Product Type: T-shirt\r\n- Fabric: Jersey\r\n- FIT: Loose Fit\r\n- NECK: O-Neck\r\n- SLEEVE: Short Sleeves (S/S)','product_images/13254360_BrightWhite_1270083_003.jpg',16.00,4,'2026-01-26 05:54:06.654730','2026-01-26 05:54:06.654795',8),(32,'ORGANIC COTTON TOP','organic-cotton-top','Add new life to the wardrobe with T-shirts and tops for any occasion and season. Jersey is a lightweight and stretchy fabric with a soft surface and inside for a comfortable feel and freedom to move.\r\n\r\n\r\n- Product type: Top\r\n- Neck: Round Neck\r\n- Sleeve: Long sleeves\r\n- Length/Size: Long\r\n- Fabric: Jersey\r\n- Fit: Loose Fit','product_images/13254793_BrightWhite_003.jpg',16.00,5,'2026-01-26 05:55:52.155662','2026-01-26 05:55:52.155725',8),(33,'RELAXED FIT KNITTED PULLOVER','relaxed-fit-knitted-pullover','Add coolness and softness to the wardrobe with trendy autumn and winter styles for all-day comfort. Flat knit is a flat knit type with a clean and timeless look.\r\n\r\n- Product Type: Knitted pullover\r\n- Neck: Round Neck\r\n- Sleeve: Long sleeves\r\n- Extra details: Rib detail\r\n- Fit: Relaxed Fit','product_images/13260205_LightGreyMelange_003.jpg',25.00,4,'2026-01-26 05:57:19.384444','2026-01-26 05:57:19.384489',11),(34,'WIDE LEG TROUSERS','wide-leg-trousers','Gear up for a new day and create the perfect outfit with quality everyday styles.\r\n\r\n- Product type: Wide-leg trousers\r\n- Pockets: Front pockets\r\n- Closing: Hook button and zip fly fastening\r\n- Extra details: Pleated detail\r\n- Fit: This pair of trousers has a regular fit hip and wide fit legs','product_images/13254370_Kalamata_003.jpg',24.00,5,'2026-01-26 05:58:35.473003','2026-01-26 05:58:35.473066',8),(35,'LOOSE FIT HOODIE','loose-fit-hoodie','Gear up for a new day and create the perfect outfit with quality everyday styles. Brushed sweat fabric has a soft inside for a comfortable feel.\r\n\r\n- Product Type: Hoodie\r\n- Neck: Hoodie\r\n- Sleeve: Long sleeves\r\n- Extra details: Brushed inside\r\n- Extra details: Printed detail\r\n- Extra details: Rib detail\r\n- Print: Print placed on the front and the back of the product\r\n- Fit: Loose Fit','product_images/13260529_AntiqueWhite_003.jpg',24.00,5,'2026-01-26 06:00:02.928268','2026-01-26 06:00:02.928316',11),(36,'PUFFER JACKET','puffer-jacket','Woven fabric has a distinct criss-cross pattern and a lightly textured surface for a clean and classic look.\r\n\r\n- Product Type : Puffer jacket\r\n- Neck : Detachable hood\r\n- Sleeve : Long sleeves\r\n- Closing : Zip fastening\r\n- Pockets : Front pockets with press stud fastening\r\n- Extra details : Detachable hood for safety\r\n- Extra details : Zip guard to prevent the zip from taking hold of the skin','product_images/13238561_PageantBlue_003.jpg',30.00,5,'2026-01-26 06:02:29.209763','2026-01-26 06:02:29.209817',11),(37,'SHORT JACKET','short-jacket','Complete any outfit with fashionable outerwear styles perfect for everday wear and special occasions.\r\n\r\n- Product type: Jacket\r\n- Closing: Button fastening\r\n- Neck: Round Neck\r\n- Sleeve: Long sleeves\r\n- Sleeves: Dropped shoulders\r\n- Lining: Polyester lining for a comfortable feel','product_images/13249402_Turtledove_003.jpg',28.00,4,'2026-01-26 06:03:25.265440','2026-01-26 06:03:25.265476',11),(38,'LONG RAIN JACKET','long-rain-jacket','Waterproofness describes a material\'s ability to withstand water and is measured by the pressure from a water column in millimetres. Water column pressure shows how much water a product can resist. The higher the pressure, the more waterproof your outerwear is.','product_images/13235667_MochaMeringue_003.jpg',30.00,5,'2026-01-26 06:05:00.515118','2026-01-26 06:05:00.515164',11),(39,'ZIP GILET','zip-gilet','Complete any outfit with fashionable outerwear styles perfect for everday wear and special occasions. Woven fabric has a distinct criss-cross pattern and a lightly textured surface for a clean and classic look. NAME IT has been producing quality outerwear since 1986, with special attention to functionality and safety. We stay up to date with current fashion trends, which we translate into comfortable outerwear for children.\r\n\r\n- Product Type : Gilet\r\n- Neck : V-Neck\r\n- Closing : Zip fastening\r\n- Pockets : Front pockets\r\n- Pockets : Chest pockets with zip fastening','product_images/13226811_Incense_003.jpg',25.00,4,'2026-01-26 06:06:29.174932','2026-01-26 06:06:29.174969',11),(40,'MYIS03 PUFFER JACKET','myis03-puffer-jacket','Explore the wonders of nature in technical outerwear styles that keep your child dry and warm.\r\n\r\n- Product type: Jacket\r\n- Functionality: Waterproofness 3,000mm\r\n- Functionality: Breathability 200g/m2/24h\r\n- Pockets: Side pockets with button fastening\r\n- Closing: Zip fastening\r\n- Neck: Hood\r\n- Sleeve: Long sleeves\r\n- Cuffs: Elasticated cuffs\r\n- Extra details: Zip guard to prevent the zip from taking hold of the skin','product_images/13244882_Black_003.jpg',30.00,3,'2026-01-26 06:08:33.592568','2026-01-26 06:08:33.592615',11),(41,'BOOTCUT JEANS','bootcut-jeans','Denim is not only a wardrobe icon but the perfect choice when putting together an outfit, no matter the season and occasion. Denim is a durable woven fabric available in several expressions for a unique look.\r\n\r\n- Product type: Bootcut jeans\r\n- Pockets: Back pockets\r\n- Pockets: Front pockets\r\n- Closing: Hook button and zip fly fastening\r\n- Waist: Low waist\r\n- Leg details: Boot-cut\r\n- Fabric: Denim','product_images/13249634_LightGreyDenim_003.jpg',20.00,4,'2026-01-26 06:11:49.334922','2026-01-26 06:11:49.334968',12),(42,'WIDE LEG JEANS','wide-leg-jeans','Denim is not only a wardrobe icon but the perfect choice when putting together an outfit, no matter the season and occasion. Denim is a durable woven fabric available in several expressions for a unique look.\r\n\r\n- Product type: Wide fit jeans\r\n- Extra details: Adjustable waist\r\n- Fabric: Denim\r\n- Fit: This pair of jeans has a regular fit hip and wide fit legs','product_images/13253758_DarkBlueDenim_003.jpg',17.00,4,'2026-01-26 06:13:07.508854','2026-01-26 06:13:07.508931',12),(43,'MIDI BOOTS','midi-boots','Ensure comfort and complete your child´s outfit with cool footwear for inside and outside use. Polyester is a durable, synthetic material that does not crease easily and has a soft surface and comfortable feel.\r\n\r\n- Product type: Boots\r\n- Sole: Rubber sole\r\n- Height: Midi','product_images/13248115_BlackCoffee_003.jpg',15.00,3,'2026-01-26 06:14:41.306647','2026-01-26 06:14:41.306704',3),(44,'LOOSE FIT JEANS','loose-fit-jeans','Update the wardrobe with the perfect pair of jeans for an essential item that suits any occasion and season. Denim is a durable woven fabric available in several expressions for a unique look.\r\n\r\n- Detail Type : Loose fit jeans\r\n- Fabric : Denim\r\n- Waist/Rise : Regular waist\r\n- Closing/Fly : Button and zip fly fastening\r\n- Extra details : Adjustable waist\r\n- Pocket other : Front and back pockets\r\n- Fit : Loose Fit','product_images/13220022_DarkBlueDenim_003.jpg',25.00,0,'2026-01-26 06:16:33.832412','2026-01-26 06:16:33.832510',12),(45,'REGULAR FIT HOODIE','regular-fit-hoodie-1','Cuddle up in soft and trendy autumn styles that bring comfort and style to any outfit. Brushed sweat fabric has a soft inside for a comfortable feel.\r\n\r\n- Product Type: Hoodie\r\n- Neck: Hoodie\r\n- Sleeve: Long sleeves\r\n- Print: Print placed on the back of the product\r\n- Fit: Regular Fit','product_images/13255191_Black_1263252_003.jpg',30.00,4,'2026-01-26 06:18:47.524004','2026-01-26 06:18:47.524058',11),(46,'ORGANIC COTTON HOODIE','organic-cotton-hoodie','Welcome comfortable and cool looking sweatshirts to the wardrobe and pair with both jeans, dresses and sweatpants for a trendy look. Unbrushed sweat fabric has a smooth surface and loops on the inside for a comfortable feel.\r\n\r\n- Product type: Hoodie\r\n- Print: Print placed on the front and the back of the product\r\n- Neck: Hoodie\r\n- Sleeve: Long sleeves\r\n- Fabric: Unbrushed Sweat Fabric\r\n- Fit: Oversize Fit','product_images/13256414_NavyBlazer_003.jpg',30.00,4,'2026-01-26 06:20:49.042624','2026-01-26 06:20:49.042675',11),(47,'CHECKED SHIRT','checked-shirt','Gear up for a new day and create the perfect outfit with quality everyday styles. Woven fabric has a distinct criss-cross pattern and a lightly textured surface for a clean and classic look.\r\n\r\n- Product Type : Shirt\r\n- Neck : Shirt collar\r\n- Sleeve : Long sleeves\r\n- Closing : Press stud fastening\r\n- Fit : Regular Fit','product_images/13245829_PageantBlue_003.jpg',20.00,2,'2026-01-26 06:22:30.848887','2026-01-26 06:22:30.848950',8),(48,'SNOOPY T-SHIRT','snoopy-t-shirt','Add new life to the wardrobe with T-shirts and tops for any occasion and season. Jersey is a lightweight and stretchy fabric with a soft surface and inside for a comfortable feel and freedom to move. Snoopy is not your average beagle. He is a book lover and a book writer. He is a collector of fine art and a root beer connoisseur. Plus, his unstoppable imagination helps keep his life anything but ordinary.\r\n\r\n- Product type: Top\r\n- Print : Rubber print for a soft feel\r\n- Neck : Round Neck\r\n- Sleeve : Short sleeves\r\n- Fabric: Jersey\r\n- Fit : Loose Fit','product_images/13246141_Black_003.jpg',23.00,5,'2026-01-26 06:24:41.553409','2026-01-26 06:24:41.553457',8);
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-09 21:11:39
