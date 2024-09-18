-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: farmart
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'nDHEm36cbYkeDqfQy1PTALor52LljmNC',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2029-08-22 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2024-08-21 20:36:25','2024-08-21 20:36:25',1,NULL,NULL,NULL,NULL),(2,'Homepage middle 1','2029-08-22 00:00:00','not_set','IZ6WU8KUALYD','promotion/2.png','/products',0,2,'published','2024-08-21 20:36:25','2024-08-21 20:36:25',1,NULL,NULL,NULL,NULL),(3,'Homepage middle 2','2029-08-22 00:00:00','not_set','ILSFJVYFGCPZ','promotion/3.png','/products',0,3,'published','2024-08-21 20:36:25','2024-08-21 20:36:25',1,NULL,NULL,NULL,NULL),(4,'Homepage middle 3','2029-08-22 00:00:00','not_set','ZDOZUZZIU7FT','promotion/4.png','/products',0,4,'published','2024-08-21 20:36:25','2024-08-21 20:36:25',1,NULL,NULL,NULL,NULL),(5,'Products list 1','2029-08-22 00:00:00','not_set','ZDOZUZZIU7FZ','promotion/5.png','/products/beat-headphone',0,5,'published','2024-08-21 20:36:25','2024-08-21 20:36:25',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Aut molestiae perspiciatis vel. In hic voluptatem in cum possimus. Est autem accusantium quam temporibus ullam reprehenderit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(2,'Fashion',0,'Quia aut iure sunt dolores voluptatem officiis ipsum tempora. Ex unde tenetur commodi ut sed laboriosam. Ducimus qui repellendus tempora pariatur neque aliquam. Qui quo sed aut.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(3,'Electronic',0,'Natus iure rerum sapiente rerum. Et fugit reiciendis omnis dolor at ipsa inventore sit. Eius error aut pariatur rerum omnis doloremque exercitationem aut. Consectetur sed ut deleniti.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(4,'Commercial',0,'Dolorem et accusantium ut. Consectetur laboriosam incidunt quis repudiandae. Nihil perferendis sit dolorem repellat animi sed. Ullam deserunt velit ad dolorem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-08-21 20:36:24','2024-08-21 20:36:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Kitty Jenkins','kraig77@example.net','(402) 815-0515','14776 Beryl Street Suite 409\nEast Jarrellland, IA 30406','Delectus qui amet labore omnis blanditiis quis.','Molestias quia reiciendis qui et minus ut iure. Impedit totam ea voluptatem iure molestiae. Dignissimos dolorem modi adipisci qui. Est eum voluptatem inventore vitae non quis. Nostrum voluptatibus et illum similique. Qui ratione voluptas veniam. Fuga sint est recusandae quod qui. Magni exercitationem est iure fugiat magnam id autem iste. Sed deleniti itaque facere. Aut ut animi necessitatibus nam eaque inventore.',NULL,'unread','2024-08-21 20:36:24','2024-08-21 20:36:24'),(2,'Loyal Metz','esther.collins@example.org','+12242623644','92971 Jacobi Highway Suite 728\nAmayachester, AZ 84517-7222','Dolorem suscipit porro est tenetur omnis.','Consequuntur cumque hic et qui. Consequuntur possimus voluptatem possimus error aut sit. Quas cum debitis et magnam nihil dolores illum non. Quam ipsam quos facere rerum ex. Quia maiores debitis dolorem nam deleniti. Minus cum quibusdam asperiores sed consequatur voluptates quam eius. Quo dolorem magni aspernatur occaecati delectus. Voluptatum ratione natus tempora dolore omnis. Ipsum quo et veritatis minima qui suscipit minus.',NULL,'read','2024-08-21 20:36:24','2024-08-21 20:36:24'),(3,'Jaydon Becker','mitchel.little@example.net','+13346050704','26998 Leilani Court Apt. 291\nLake Noeliaton, SC 86326','Quae ipsum labore dolor dolores adipisci.','Tenetur minima veritatis ut nostrum. Molestiae autem est illo qui et dignissimos maxime. Et iure quas eveniet dolorem culpa. Voluptas aut quia et ducimus aut doloremque sed. Suscipit sint et consequatur odit et. Aperiam vitae vel blanditiis voluptate consequatur voluptate. Modi a vitae aut voluptas sed harum rerum.',NULL,'read','2024-08-21 20:36:24','2024-08-21 20:36:24'),(4,'Robin McLaughlin','violet58@example.org','+12692555770','98588 Sipes Pines\nLake Willis, FL 44406-8956','Doloremque ut qui quasi rerum.','Ab recusandae cumque illo ratione culpa temporibus. Sapiente nesciunt eius accusantium ut impedit. Sunt illum sunt omnis officia. Ut enim iste dolorem ut rem. Commodi dolorum velit eveniet distinctio ut saepe eum. Ullam reprehenderit placeat blanditiis ratione. Et maiores dolorem ducimus nihil aperiam quisquam sapiente. Culpa placeat optio quas iure voluptas ut. Tempora soluta ullam qui dolor. Voluptate et sunt et pariatur inventore quasi quas nobis. Sit ratione aut est labore.',NULL,'unread','2024-08-21 20:36:24','2024-08-21 20:36:24'),(5,'Giovanni Connelly Sr.','ispinka@example.com','325-813-4934','9464 Kirsten Ridges\nWest Gaetano, CT 08763','Sit voluptatem et et ut veniam.','Quas error iure ut architecto est voluptate ex. Adipisci enim velit reprehenderit eaque dolores atque voluptatibus sunt. Dolorem consequatur quam aut eum ab veritatis. Fuga sunt temporibus ut architecto. Labore ab minus aspernatur consequuntur. Quia nisi ex sed libero nesciunt sit nihil consequatur. In quia ipsum quis minus omnis nobis quos. In in aperiam quia iure omnis quis.',NULL,'unread','2024-08-21 20:36:24','2024-08-21 20:36:24'),(6,'Dolores Hansen','krystal69@example.com','+1.260.563.2373','449 Kris Dale Apt. 950\nLarkinbury, NH 20819-5143','Exercitationem enim est non assumenda dolorem.','Consequatur id libero consequatur voluptatem omnis. Quia sequi in necessitatibus quasi. Vero libero qui quia facilis dignissimos accusantium. Quo molestiae assumenda labore sed optio aut provident. Necessitatibus quasi quos repudiandae. Vel et veniam ducimus vero aut ut in. Et voluptas rerum fugiat culpa. Id ab et et voluptas et aliquam id voluptate. Molestiae consectetur enim nesciunt pariatur.',NULL,'read','2024-08-21 20:36:24','2024-08-21 20:36:24'),(7,'Dr. Marquise Stiedemann','lschaden@example.com','1-214-447-1918','25532 Lebsack Summit Apt. 129\nEast Genovevabury, ID 84190','Provident aut beatae expedita rerum vero.','Iste velit doloribus quod et et dolores omnis. Dolorum est quo ut iusto adipisci maiores. Commodi omnis modi rerum sunt adipisci. Incidunt inventore debitis recusandae ducimus. Praesentium ut expedita ut corrupti. Et voluptatibus itaque nihil nisi eos debitis. Ut alias rerum laborum libero ullam dolorem enim dolorem. Distinctio quam explicabo omnis ut.',NULL,'unread','2024-08-21 20:36:24','2024-08-21 20:36:24'),(8,'Pamela Champlin','jwyman@example.net','818.250.4310','8120 Yost Key Suite 905\nStanleyview, OR 96168-2344','Expedita rem temporibus odit in nam.','Voluptates explicabo dolorem illo quibusdam praesentium est voluptas. Laborum est id dolorum aut sint officiis. Eum recusandae explicabo quo in. In animi sit voluptatem molestiae. Harum veritatis est qui atque sequi. Nesciunt et sit sapiente quis in. Adipisci et nihil adipisci cumque autem. Provident voluptate est aut nobis corrupti. Tempora voluptatem porro quidem repudiandae fuga. Aut ut non non accusamus minima est.',NULL,'unread','2024-08-21 20:36:24','2024-08-21 20:36:24'),(9,'Malachi Fisher','eileen.kuphal@example.org','+1.484.714.5202','719 Hauck Extensions\nJudestad, NC 81727','Quo eaque est natus et et dolorem.','Aliquid ea suscipit velit aliquid. Quaerat beatae sit voluptas porro voluptas libero voluptate iste. Quo voluptate enim consequatur ducimus. Error porro dolorem repellendus tempore nihil et. Velit possimus perspiciatis eius sit velit. Et laboriosam ipsam eum ducimus. Blanditiis occaecati vitae autem beatae natus. Assumenda corporis cupiditate debitis aliquam expedita quia. Dolores consequatur ut quasi et. Unde dolore occaecati vel et praesentium.',NULL,'read','2024-08-21 20:36:24','2024-08-21 20:36:24'),(10,'Torrance Jacobs','bernadine08@example.com','+1-702-825-8792','2301 Jacquelyn Hollow Suite 026\nNew Maudie, MA 34547-7409','Quia incidunt deserunt sed soluta.','Dicta recusandae aut perferendis accusantium laborum quidem. Consequuntur voluptas ullam in maxime possimus autem optio. Assumenda voluptas fugit autem unde et. Officia maiores eius aut. Sunt non ducimus quo et tempora qui et. Rerum laudantium quasi sint. Nam qui odit voluptatem magnam similique. A quidem omnis ut quo expedita.',NULL,'read','2024-08-21 20:36:24','2024-08-21 20:36:24');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'brands/1.png','published',0,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'brands/2.png','published',1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',2,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,'Farmart','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/4.png','published',3,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'brands/3.png','published',4,1,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'EUR','€',0,2,1,0,0.84,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'VND','₫',0,0,2,0,23203,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,'NGN','₦',1,2,2,0,895.52,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Miracle Carroll','customer@botble.com','+12727260734','GP','Maryland','Schulistburgh','3698 Stiedemann Trail',1,1,'2024-08-21 20:36:11','2024-08-21 20:36:11','47935'),(2,'Miracle Carroll','customer@botble.com','+15415946139','KE','Delaware','Walterton','375 Beatty Key',1,0,'2024-08-21 20:36:11','2024-08-21 20:36:11','68409'),(3,'Dr. Jazmyn Hane','vendor@botble.com','+18286291750','CA','Washington','Predovicfurt','9263 Graham Springs Apt. 890',2,1,'2024-08-21 20:36:11','2024-08-21 20:36:11','89373'),(4,'Dr. Jazmyn Hane','vendor@botble.com','+15309829907','ZW','New Mexico','New Brielleberg','95628 Callie Squares Suite 870',2,0,'2024-08-21 20:36:11','2024-08-21 20:36:11','30505-4006'),(5,'Prof. Lorenz Okuneva Jr.','spinka.sydni@example.org','+12313781540','PG','Arkansas','New Javonteside','9179 Gene Garden',3,1,'2024-08-21 20:36:11','2024-08-21 20:36:11','15621'),(6,'Mrs. Ethelyn Hammes','broob@example.net','+16196936534','AM','Louisiana','Lake Tryciachester','624 Gino Plaza Suite 846',4,1,'2024-08-21 20:36:12','2024-08-21 20:36:12','99204'),(7,'Johnathan Rau','margarete.towne@example.com','+16578494405','KI','Louisiana','Julienberg','89033 Bella Alley Apt. 687',5,1,'2024-08-21 20:36:12','2024-08-21 20:36:12','46380-8627'),(8,'Adonis Swift','isabella15@example.org','+18039261329','PM','Washington','Lake Tyrellborough','5421 Raynor Crossroad',6,1,'2024-08-21 20:36:12','2024-08-21 20:36:12','82514'),(9,'Mr. Jan Oberbrunner II','flatley.kacey@example.com','+17865776661','CU','Indiana','Williamsontown','69986 Lind Plains',7,1,'2024-08-21 20:36:12','2024-08-21 20:36:12','86343'),(10,'Cody Murphy','morissette.justyn@example.com','+13858998848','FK','Colorado','Johathanview','957 Lenora Mews Apt. 857',8,1,'2024-08-21 20:36:13','2024-08-21 20:36:13','07818'),(11,'Kathleen Kautzer DDS','ilene.rogahn@example.net','+19893611596','MD','Maine','West Armanifurt','7651 Macey Junctions Suite 653',9,1,'2024-08-21 20:36:13','2024-08-21 20:36:13','59314-2754'),(12,'Brandi Herzog','kelvin80@example.org','+18066045579','GL','Nebraska','Krajcikland','274 Blanda Inlet',10,1,'2024-08-21 20:36:13','2024-08-21 20:36:13','71510-7861');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Miracle Carroll','customer@botble.com','$2y$12$CDhDVOdlwKgIwiFa3/f4P..TttQk4OkAKHgs6dXl8Lu17M5uaYDyu','customers/2.jpg','1999-08-12','+19843102228',NULL,'2024-08-21 20:36:11','2024-08-21 20:36:11','2024-08-22 03:36:11',NULL,'activated',NULL,0,NULL),(2,'Dr. Jazmyn Hane','vendor@botble.com','$2y$12$yZ6fKA5ZHhMrVjmi2TE6W.9byp0thZhwG6kslEad/T5DU.UmhXTTO','customers/1.jpg','1989-08-17','+12313633727',NULL,'2024-08-21 20:36:11','2024-08-21 20:36:22','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(3,'Prof. Lorenz Okuneva Jr.','spinka.sydni@example.org','$2y$12$J5UA6hwh2HlNvn1IZOiy2uIQrkKCwFvfCoINf5fRiFoBml6NqJOTi','customers/1.jpg','1985-08-10','+15409470383',NULL,'2024-08-21 20:36:11','2024-08-21 20:36:22','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(4,'Mrs. Ethelyn Hammes','broob@example.net','$2y$12$3ma6Iyqw1jwNKmGvBO6jWeZJWh17m3wTr6hjxxbkTtv9ga8dc.lCG','customers/2.jpg','1998-07-25','+13026597945',NULL,'2024-08-21 20:36:12','2024-08-21 20:36:23','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(5,'Johnathan Rau','margarete.towne@example.com','$2y$12$m6YB9tjY2GhbPjdMvEaVuewRF.96nvzV5AKZQFwsOmSVcyYi4XpfW','customers/3.jpg','1974-08-14','+13866436609',NULL,'2024-08-21 20:36:12','2024-08-21 20:36:23','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(6,'Adonis Swift','isabella15@example.org','$2y$12$iyVT2kUfD5UAk4LmjL58du83aF8ZUt4bydTUhg6pDghwnjHhpLXkW','customers/4.jpg','1974-07-28','+12155023230',NULL,'2024-08-21 20:36:12','2024-08-21 20:36:23','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(7,'Mr. Jan Oberbrunner II','flatley.kacey@example.com','$2y$12$M73UCgxZRu5UmOfBtG5plezqW193oEGJUSIYsdkJskZYenjJDRATS','customers/5.jpg','2002-08-09','+13367832247',NULL,'2024-08-21 20:36:12','2024-08-21 20:36:23','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(8,'Cody Murphy','morissette.justyn@example.com','$2y$12$pPRdFeLsB66MR93pNzzXZeWqzjyiGpCyaPhHIOuA3CJRO1NqRFk5y','customers/6.jpg','1991-08-14','+16506933083',NULL,'2024-08-21 20:36:13','2024-08-21 20:36:24','2024-08-22 03:36:11',NULL,'activated',NULL,1,'2024-08-22 03:36:22'),(9,'Kathleen Kautzer DDS','ilene.rogahn@example.net','$2y$12$OnU5J4RIKJ30b6D73vJN8OHtypaDoSG2mkzl2MqqDRhcRrmb.9HPe','customers/7.jpg','1992-08-14','+13307056053',NULL,'2024-08-21 20:36:13','2024-08-21 20:36:24','2024-08-22 03:36:11',NULL,'activated',NULL,0,NULL),(10,'Brandi Herzog','kelvin80@example.org','$2y$12$De18gzrnCyBg.pAJuqCJn.H/pkxOI1Vkk1Qp3qgG4qV/uAx4ZY.7K','customers/8.jpg','1974-08-02','+13419951547',NULL,'2024-08-21 20:36:13','2024-08-21 20:36:24','2024-08-22 03:36:11',NULL,'activated',NULL,0,NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,30,927.08,18,4),(1,65,207.72,17,4),(1,21,283.68,17,2),(1,39,314.16,19,5),(1,56,259.6896,7,4),(1,33,930.6,18,4),(1,44,355.5,8,2),(1,24,364.785,19,2),(1,51,955.8,9,2),(1,59,105.79,9,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-09-21 00:00:00','published','2024-08-21 20:36:22','2024-08-21 20:36:22');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,1,'2 Year',10,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,1,'3 Year',20,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,2,'4GB',0,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(5,2,'8GB',10,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(6,2,'16GB',20,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(7,3,'Core i5',0,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(8,3,'Core i7',10,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(9,3,'Core i9',20,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(10,4,'128GB',0,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(11,4,'256GB',10,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(12,4,'512GB',20,9999,0,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-08-21 20:36:10','2024-08-21 20:36:10',0),(2,'Size','size','text',1,1,1,'published',1,'2024-08-21 20:36:10','2024-08-21 20:36:10',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-08-21 20:36:10','2024-08-21 20:36:10',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-08-21 20:36:10','2024-08-21 20:36:10',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(6,2,'S','s',NULL,NULL,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(7,2,'M','m',NULL,NULL,0,2,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(8,2,'L','l',NULL,NULL,0,3,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-08-21 20:36:10','2024-08-21 20:36:10'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Fruits & Vegetables',0,NULL,'published',0,'product-categories/1.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-star',NULL),(2,'Fruits',1,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(3,'Apples',2,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(4,'Bananas',2,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(5,'Berries',2,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(6,'Oranges & Easy Peelers',2,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(7,'Grapes',2,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(8,'Lemons & Limes',2,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(9,'Peaches & Nectarines',2,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(10,'Pears',2,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(11,'Melon',2,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(12,'Avocados',2,NULL,'published',9,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(13,'Plums & Apricots',2,NULL,'published',10,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(14,'Vegetables',1,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(15,'Potatoes',14,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(16,'Carrots & Root Vegetables',14,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(17,'Broccoli & Cauliflower',14,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(18,'Cabbage, Spinach & Greens',14,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(19,'Onions, Leeks & Garlic',14,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(20,'Mushrooms',14,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(21,'Tomatoes',14,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(22,'Beans, Peas & Sweetcorn',14,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(23,'Freshly Drink Orange Juice',14,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(24,'Breads Sweets',0,NULL,'published',1,'product-categories/2.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-bread',NULL),(25,'Crisps, Snacks & Nuts',24,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(26,'Crisps & Popcorn',25,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(27,'Nuts & Seeds',25,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(28,'Lighter Options',25,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(29,'Cereal Bars',25,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(30,'Breadsticks & Pretzels',25,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(31,'Fruit Snacking',25,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(32,'Rice & Corn Cakes',25,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(33,'Protein & Energy Snacks',25,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(34,'Toddler Snacks',25,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(35,'Meat Snacks',25,NULL,'published',9,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(36,'Beans',25,NULL,'published',10,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(37,'Lentils',25,NULL,'published',11,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(38,'Chickpeas',25,NULL,'published',12,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(39,'Tins & Cans',24,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(40,'Tomatoes',39,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(41,'Baked Beans, Spaghetti',39,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(42,'Fish',39,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(43,'Beans & Pulses',39,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(44,'Fruit',39,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(45,'Coconut Milk & Cream',39,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(46,'Lighter Options',39,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(47,'Olives',39,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(48,'Sweetcorn',39,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(49,'Carrots',39,NULL,'published',9,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(50,'Peas',39,NULL,'published',10,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(51,'Mixed Vegetables',39,NULL,'published',11,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(52,'Frozen Seafoods',0,NULL,'published',2,'product-categories/3.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-hamburger',NULL),(53,'Raw Meats',0,NULL,'published',3,'product-categories/4.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-steak',NULL),(54,'Wines & Alcohol Drinks',0,NULL,'published',4,'product-categories/5.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-glass',NULL),(55,'Ready Meals',54,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(56,'Meals for 1',55,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(57,'Meals for 2',55,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(58,'Indian',55,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(59,'Italian',55,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(60,'Chinese',55,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(61,'Traditional British',55,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(62,'Thai & Oriental',55,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(63,'Mediterranean & Moroccan',55,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(64,'Mexican & Caribbean',55,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(65,'Lighter Meals',55,NULL,'published',9,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(66,'Lunch & Veg Pots',55,NULL,'published',10,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(67,'Salad & Herbs',54,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(68,'Salad Bags',67,NULL,'published',0,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(69,'Cucumber',67,NULL,'published',1,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(70,'Tomatoes',67,NULL,'published',2,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(71,'Lettuce',67,NULL,'published',3,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(72,'Lunch Salad Bowls',67,NULL,'published',4,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(73,'Lunch Salad Bowls',67,NULL,'published',5,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(74,'Fresh Herbs',67,NULL,'published',6,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(75,'Avocados',67,NULL,'published',7,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(76,'Peppers',67,NULL,'published',8,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(77,'Coleslaw & Potato Salad',67,NULL,'published',9,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(78,'Spring Onions',67,NULL,'published',10,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(79,'Chilli, Ginger & Garlic',67,NULL,'published',11,NULL,0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,NULL),(80,'Tea & Coffee',0,NULL,'published',5,'product-categories/6.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-teacup',NULL),(81,'Milks and Dairies',0,NULL,'published',6,'product-categories/7.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-coffee-cup',NULL),(82,'Pet Foods',0,NULL,'published',7,'product-categories/8.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-hotdog',NULL),(83,'Food Cupboard',0,NULL,'published',8,'product-categories/1.png',1,'2024-08-21 20:36:10','2024-08-21 20:36:10','icon-cheese',NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,30),(1,49),(1,63),(2,11),(2,27),(2,36),(2,62),(3,18),(3,56),(4,5),(4,7),(4,23),(4,38),(5,6),(5,15),(5,25),(5,34),(5,57),(6,3),(6,44),(7,9),(7,24),(7,31),(7,45),(7,47),(7,54),(8,16),(8,22),(8,58),(8,59),(9,14),(9,34),(9,51),(10,21),(10,58),(11,17),(11,59),(12,1),(12,22),(12,28),(12,53),(13,35),(13,65),(14,14),(14,33),(14,38),(15,7),(15,41),(15,43),(16,57),(16,64),(17,26),(18,16),(19,4),(19,12),(19,35),(21,3),(21,8),(21,13),(21,28),(21,39),(21,46),(21,55),(22,1),(22,13),(22,45),(23,19),(23,21),(24,6),(24,8),(24,48),(24,55),(24,61),(25,12),(25,14),(25,53),(26,3),(26,4),(26,40),(27,29),(27,40),(29,31),(30,11),(30,17),(30,19),(30,49),(31,9),(32,10),(32,15),(32,18),(32,32),(32,39),(32,46),(32,47),(32,64),(33,9),(33,37),(33,50),(33,65),(34,12),(34,38),(34,39),(34,56),(35,2),(35,22),(35,23),(36,26),(36,54),(38,17),(38,22),(38,36),(38,37),(38,52),(39,7),(39,13),(39,48),(39,63),(40,29),(40,31),(40,58),(40,59),(40,60),(42,24),(42,64),(43,30),(43,45),(44,31),(44,49),(44,61),(45,21),(45,27),(45,33),(46,2),(46,41),(46,52),(46,58),(47,18),(48,2),(48,53),(48,56),(48,62),(49,14),(49,18),(49,25),(49,30),(49,43),(49,61),(50,12),(51,44),(51,46),(51,51),(52,3),(52,7),(52,8),(52,15),(52,26),(52,36),(52,45),(52,51),(53,37),(53,63),(54,23),(54,26),(54,40),(54,56),(55,19),(55,42),(55,50),(55,52),(55,65),(56,41),(56,47),(57,35),(57,61),(58,21),(58,33),(58,37),(59,11),(59,23),(59,34),(59,44),(59,62),(60,27),(60,32),(60,43),(62,5),(62,42),(62,51),(63,10),(63,24),(63,55),(63,60),(64,6),(64,16),(64,30),(65,25),(65,32),(65,36),(65,48),(65,62),(66,10),(66,24),(66,46),(66,50),(67,29),(67,41),(67,53),(67,55),(67,60),(68,1),(68,20),(69,10),(69,25),(69,28),(69,42),(69,65),(70,6),(70,11),(71,9),(71,15),(71,35),(71,40),(72,52),(73,8),(73,20),(73,43),(74,4),(74,59),(75,13),(75,19),(75,20),(75,39),(75,54),(76,44),(76,63),(76,64),(77,34),(77,54),(78,38),(78,48),(79,2),(79,20),(79,57),(80,5),(80,60),(81,1),(81,16),(81,28),(81,29),(81,33),(82,4),(82,17),(82,32),(82,42),(82,49),(82,50),(82,57),(83,5),(83,27),(83,47);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,3),(1,4),(1,14),(1,16),(1,17),(1,21),(1,32),(1,35),(1,36),(1,41),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,56),(1,58),(2,1),(2,8),(2,9),(2,12),(2,13),(2,18),(2,23),(2,28),(2,29),(2,30),(2,33),(2,34),(2,37),(2,43),(2,50),(2,51),(2,52),(2,54),(2,55),(2,59),(2,64),(3,2),(3,5),(3,6),(3,7),(3,10),(3,11),(3,15),(3,19),(3,20),(3,22),(3,24),(3,25),(3,26),(3,27),(3,31),(3,38),(3,39),(3,40),(3,42),(3,53),(3,57),(3,60),(3,61),(3,62),(3,63),(3,65);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,8,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,52,0,0.00,'fixed',1),(1,58,0,0.00,'fixed',1),(1,61,0,0.00,'fixed',1),(1,64,0,0.00,'fixed',1),(2,11,0,0.00,'fixed',1),(2,20,0,0.00,'fixed',1),(2,26,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(2,55,0,0.00,'fixed',1),(2,62,0,0.00,'fixed',1),(3,12,0,0.00,'fixed',1),(3,26,0,0.00,'fixed',1),(3,46,0,0.00,'fixed',1),(3,50,0,0.00,'fixed',1),(3,51,0,0.00,'fixed',1),(3,56,0,0.00,'fixed',1),(4,3,0,0.00,'fixed',1),(4,26,0,0.00,'fixed',1),(4,32,0,0.00,'fixed',1),(4,33,0,0.00,'fixed',1),(4,39,0,0.00,'fixed',1),(4,63,0,0.00,'fixed',1),(5,3,0,0.00,'fixed',1),(5,8,0,0.00,'fixed',1),(5,27,0,0.00,'fixed',1),(5,32,0,0.00,'fixed',1),(5,48,0,0.00,'fixed',1),(5,61,0,0.00,'fixed',1),(5,63,0,0.00,'fixed',1),(6,1,0,0.00,'fixed',1),(6,3,0,0.00,'fixed',1),(6,12,0,0.00,'fixed',1),(6,22,0,0.00,'fixed',1),(6,25,0,0.00,'fixed',1),(6,46,0,0.00,'fixed',1),(6,52,0,0.00,'fixed',1),(7,1,0,0.00,'fixed',1),(7,6,0,0.00,'fixed',1),(7,20,0,0.00,'fixed',1),(7,28,0,0.00,'fixed',1),(7,47,0,0.00,'fixed',1),(7,64,0,0.00,'fixed',1),(8,10,0,0.00,'fixed',1),(8,21,0,0.00,'fixed',1),(8,36,0,0.00,'fixed',1),(8,52,0,0.00,'fixed',1),(8,55,0,0.00,'fixed',1),(8,62,0,0.00,'fixed',1),(8,65,0,0.00,'fixed',1),(9,7,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,45,0,0.00,'fixed',1),(9,50,0,0.00,'fixed',1),(9,51,0,0.00,'fixed',1),(9,58,0,0.00,'fixed',1),(9,60,0,0.00,'fixed',1),(10,12,0,0.00,'fixed',1),(10,21,0,0.00,'fixed',1),(10,35,0,0.00,'fixed',1),(10,46,0,0.00,'fixed',1),(10,61,0,0.00,'fixed',1),(10,64,0,0.00,'fixed',1),(11,10,0,0.00,'fixed',1),(11,23,0,0.00,'fixed',1),(11,29,0,0.00,'fixed',1),(11,38,0,0.00,'fixed',1),(11,53,0,0.00,'fixed',1),(11,59,0,0.00,'fixed',1),(12,27,0,0.00,'fixed',1),(12,44,0,0.00,'fixed',1),(12,45,0,0.00,'fixed',1),(12,46,0,0.00,'fixed',1),(12,55,0,0.00,'fixed',1),(12,59,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,18,0,0.00,'fixed',1),(13,28,0,0.00,'fixed',1),(13,40,0,0.00,'fixed',1),(13,64,0,0.00,'fixed',1),(14,4,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,19,0,0.00,'fixed',1),(14,28,0,0.00,'fixed',1),(14,53,0,0.00,'fixed',1),(14,59,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,10,0,0.00,'fixed',1),(15,13,0,0.00,'fixed',1),(15,26,0,0.00,'fixed',1),(15,41,0,0.00,'fixed',1),(15,55,0,0.00,'fixed',1),(15,59,0,0.00,'fixed',1),(16,1,0,0.00,'fixed',1),(16,12,0,0.00,'fixed',1),(16,21,0,0.00,'fixed',1),(16,22,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,55,0,0.00,'fixed',1),(16,65,0,0.00,'fixed',1),(17,1,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,28,0,0.00,'fixed',1),(17,42,0,0.00,'fixed',1),(17,49,0,0.00,'fixed',1),(17,50,0,0.00,'fixed',1),(17,64,0,0.00,'fixed',1),(18,1,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,10,0,0.00,'fixed',1),(18,14,0,0.00,'fixed',1),(18,31,0,0.00,'fixed',1),(18,39,0,0.00,'fixed',1),(19,1,0,0.00,'fixed',1),(19,29,0,0.00,'fixed',1),(19,42,0,0.00,'fixed',1),(19,44,0,0.00,'fixed',1),(19,47,0,0.00,'fixed',1),(19,54,0,0.00,'fixed',1),(19,56,0,0.00,'fixed',1),(20,2,0,0.00,'fixed',1),(20,10,0,0.00,'fixed',1),(20,42,0,0.00,'fixed',1),(20,44,0,0.00,'fixed',1),(20,51,0,0.00,'fixed',1),(20,57,0,0.00,'fixed',1),(20,62,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,43,0,0.00,'fixed',1),(21,45,0,0.00,'fixed',1),(21,50,0,0.00,'fixed',1),(21,58,0,0.00,'fixed',1),(21,60,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,21,0,0.00,'fixed',1),(22,27,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(22,39,0,0.00,'fixed',1),(22,43,0,0.00,'fixed',1),(22,45,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,8,0,0.00,'fixed',1),(23,13,0,0.00,'fixed',1),(23,17,0,0.00,'fixed',1),(23,50,0,0.00,'fixed',1),(23,62,0,0.00,'fixed',1),(24,1,0,0.00,'fixed',1),(24,3,0,0.00,'fixed',1),(24,10,0,0.00,'fixed',1),(24,17,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,31,0,0.00,'fixed',1),(24,51,0,0.00,'fixed',1),(25,11,0,0.00,'fixed',1),(25,23,0,0.00,'fixed',1),(25,32,0,0.00,'fixed',1),(25,36,0,0.00,'fixed',1),(25,38,0,0.00,'fixed',1),(26,3,0,0.00,'fixed',1),(26,4,0,0.00,'fixed',1),(26,8,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,25,0,0.00,'fixed',1),(26,41,0,0.00,'fixed',1),(26,62,0,0.00,'fixed',1),(27,2,0,0.00,'fixed',1),(27,15,0,0.00,'fixed',1),(27,26,0,0.00,'fixed',1),(27,29,0,0.00,'fixed',1),(27,33,0,0.00,'fixed',1),(27,44,0,0.00,'fixed',1),(27,52,0,0.00,'fixed',1),(28,14,0,0.00,'fixed',1),(28,23,0,0.00,'fixed',1),(28,30,0,0.00,'fixed',1),(28,41,0,0.00,'fixed',1),(28,43,0,0.00,'fixed',1),(28,55,0,0.00,'fixed',1),(28,60,0,0.00,'fixed',1),(29,2,0,0.00,'fixed',1),(29,19,0,0.00,'fixed',1),(29,21,0,0.00,'fixed',1),(29,34,0,0.00,'fixed',1),(29,45,0,0.00,'fixed',1),(29,65,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,6,0,0.00,'fixed',1),(30,27,0,0.00,'fixed',1),(30,28,0,0.00,'fixed',1),(30,34,0,0.00,'fixed',1),(30,38,0,0.00,'fixed',1),(30,43,0,0.00,'fixed',1),(31,10,0,0.00,'fixed',1),(31,23,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1),(31,32,0,0.00,'fixed',1),(31,38,0,0.00,'fixed',1),(31,55,0,0.00,'fixed',1),(31,56,0,0.00,'fixed',1),(32,5,0,0.00,'fixed',1),(32,14,0,0.00,'fixed',1),(32,15,0,0.00,'fixed',1),(32,45,0,0.00,'fixed',1),(32,48,0,0.00,'fixed',1),(32,58,0,0.00,'fixed',1),(33,6,0,0.00,'fixed',1),(33,7,0,0.00,'fixed',1),(33,10,0,0.00,'fixed',1),(33,24,0,0.00,'fixed',1),(33,46,0,0.00,'fixed',1),(33,48,0,0.00,'fixed',1),(33,51,0,0.00,'fixed',1),(34,1,0,0.00,'fixed',1),(34,5,0,0.00,'fixed',1),(34,10,0,0.00,'fixed',1),(34,18,0,0.00,'fixed',1),(34,55,0,0.00,'fixed',1),(34,58,0,0.00,'fixed',1),(34,59,0,0.00,'fixed',1),(35,13,0,0.00,'fixed',1),(35,23,0,0.00,'fixed',1),(35,29,0,0.00,'fixed',1),(35,32,0,0.00,'fixed',1),(35,41,0,0.00,'fixed',1),(35,42,0,0.00,'fixed',1),(35,57,0,0.00,'fixed',1),(36,33,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,42,0,0.00,'fixed',1),(36,61,0,0.00,'fixed',1),(36,63,0,0.00,'fixed',1),(36,64,0,0.00,'fixed',1),(36,65,0,0.00,'fixed',1),(37,3,0,0.00,'fixed',1),(37,27,0,0.00,'fixed',1),(37,29,0,0.00,'fixed',1),(37,35,0,0.00,'fixed',1),(37,43,0,0.00,'fixed',1),(37,46,0,0.00,'fixed',1),(37,53,0,0.00,'fixed',1),(38,18,0,0.00,'fixed',1),(38,22,0,0.00,'fixed',1),(38,23,0,0.00,'fixed',1),(38,29,0,0.00,'fixed',1),(38,33,0,0.00,'fixed',1),(38,56,0,0.00,'fixed',1),(38,58,0,0.00,'fixed',1),(39,2,0,0.00,'fixed',1),(39,7,0,0.00,'fixed',1),(39,16,0,0.00,'fixed',1),(39,25,0,0.00,'fixed',1),(39,27,0,0.00,'fixed',1),(39,29,0,0.00,'fixed',1),(40,1,0,0.00,'fixed',1),(40,2,0,0.00,'fixed',1),(40,20,0,0.00,'fixed',1),(40,26,0,0.00,'fixed',1),(40,37,0,0.00,'fixed',1),(40,50,0,0.00,'fixed',1),(40,63,0,0.00,'fixed',1),(41,1,0,0.00,'fixed',1),(41,22,0,0.00,'fixed',1),(41,30,0,0.00,'fixed',1),(41,31,0,0.00,'fixed',1),(41,32,0,0.00,'fixed',1),(41,56,0,0.00,'fixed',1),(41,64,0,0.00,'fixed',1),(42,25,0,0.00,'fixed',1),(42,31,0,0.00,'fixed',1),(42,47,0,0.00,'fixed',1),(42,51,0,0.00,'fixed',1),(42,58,0,0.00,'fixed',1),(43,8,0,0.00,'fixed',1),(43,15,0,0.00,'fixed',1),(43,24,0,0.00,'fixed',1),(43,26,0,0.00,'fixed',1),(43,38,0,0.00,'fixed',1),(43,45,0,0.00,'fixed',1),(43,48,0,0.00,'fixed',1),(44,10,0,0.00,'fixed',1),(44,31,0,0.00,'fixed',1),(44,37,0,0.00,'fixed',1),(44,45,0,0.00,'fixed',1),(44,46,0,0.00,'fixed',1),(44,54,0,0.00,'fixed',1),(45,9,0,0.00,'fixed',1),(45,11,0,0.00,'fixed',1),(45,19,0,0.00,'fixed',1),(45,20,0,0.00,'fixed',1),(45,29,0,0.00,'fixed',1),(45,44,0,0.00,'fixed',1),(45,51,0,0.00,'fixed',1),(46,15,0,0.00,'fixed',1),(46,27,0,0.00,'fixed',1),(46,32,0,0.00,'fixed',1),(46,39,0,0.00,'fixed',1),(46,42,0,0.00,'fixed',1),(46,60,0,0.00,'fixed',1),(46,61,0,0.00,'fixed',1),(47,1,0,0.00,'fixed',1),(47,13,0,0.00,'fixed',1),(47,17,0,0.00,'fixed',1),(47,48,0,0.00,'fixed',1),(47,57,0,0.00,'fixed',1),(47,58,0,0.00,'fixed',1),(48,2,0,0.00,'fixed',1),(48,17,0,0.00,'fixed',1),(48,36,0,0.00,'fixed',1),(48,38,0,0.00,'fixed',1),(48,41,0,0.00,'fixed',1),(48,45,0,0.00,'fixed',1),(48,56,0,0.00,'fixed',1),(49,2,0,0.00,'fixed',1),(49,22,0,0.00,'fixed',1),(49,23,0,0.00,'fixed',1),(49,25,0,0.00,'fixed',1),(49,53,0,0.00,'fixed',1),(49,58,0,0.00,'fixed',1),(49,63,0,0.00,'fixed',1),(50,2,0,0.00,'fixed',1),(50,6,0,0.00,'fixed',1),(50,7,0,0.00,'fixed',1),(50,11,0,0.00,'fixed',1),(50,12,0,0.00,'fixed',1),(50,36,0,0.00,'fixed',1),(51,4,0,0.00,'fixed',1),(51,7,0,0.00,'fixed',1),(51,11,0,0.00,'fixed',1),(51,31,0,0.00,'fixed',1),(51,45,0,0.00,'fixed',1),(51,57,0,0.00,'fixed',1),(51,59,0,0.00,'fixed',1),(52,2,0,0.00,'fixed',1),(52,5,0,0.00,'fixed',1),(52,14,0,0.00,'fixed',1),(52,27,0,0.00,'fixed',1),(52,37,0,0.00,'fixed',1),(52,42,0,0.00,'fixed',1),(52,48,0,0.00,'fixed',1),(53,31,0,0.00,'fixed',1),(53,33,0,0.00,'fixed',1),(53,46,0,0.00,'fixed',1),(53,49,0,0.00,'fixed',1),(53,60,0,0.00,'fixed',1),(53,63,0,0.00,'fixed',1),(54,7,0,0.00,'fixed',1),(54,10,0,0.00,'fixed',1),(54,11,0,0.00,'fixed',1),(54,33,0,0.00,'fixed',1),(54,38,0,0.00,'fixed',1),(54,44,0,0.00,'fixed',1),(54,64,0,0.00,'fixed',1),(55,11,0,0.00,'fixed',1),(55,13,0,0.00,'fixed',1),(55,22,0,0.00,'fixed',1),(55,23,0,0.00,'fixed',1),(55,44,0,0.00,'fixed',1),(55,47,0,0.00,'fixed',1),(55,61,0,0.00,'fixed',1),(56,24,0,0.00,'fixed',1),(56,25,0,0.00,'fixed',1),(56,27,0,0.00,'fixed',1),(56,35,0,0.00,'fixed',1),(56,40,0,0.00,'fixed',1),(56,63,0,0.00,'fixed',1),(57,20,0,0.00,'fixed',1),(57,26,0,0.00,'fixed',1),(57,27,0,0.00,'fixed',1),(57,53,0,0.00,'fixed',1),(57,56,0,0.00,'fixed',1),(57,60,0,0.00,'fixed',1),(57,62,0,0.00,'fixed',1),(58,16,0,0.00,'fixed',1),(58,18,0,0.00,'fixed',1),(58,22,0,0.00,'fixed',1),(58,26,0,0.00,'fixed',1),(58,32,0,0.00,'fixed',1),(58,42,0,0.00,'fixed',1),(58,60,0,0.00,'fixed',1),(59,4,0,0.00,'fixed',1),(59,9,0,0.00,'fixed',1),(59,11,0,0.00,'fixed',1),(59,17,0,0.00,'fixed',1),(59,19,0,0.00,'fixed',1),(59,34,0,0.00,'fixed',1),(59,43,0,0.00,'fixed',1),(60,3,0,0.00,'fixed',1),(60,6,0,0.00,'fixed',1),(60,32,0,0.00,'fixed',1),(60,51,0,0.00,'fixed',1),(60,53,0,0.00,'fixed',1),(60,54,0,0.00,'fixed',1),(60,58,0,0.00,'fixed',1),(61,2,0,0.00,'fixed',1),(61,11,0,0.00,'fixed',1),(61,15,0,0.00,'fixed',1),(61,19,0,0.00,'fixed',1),(61,23,0,0.00,'fixed',1),(61,55,0,0.00,'fixed',1),(61,59,0,0.00,'fixed',1),(62,4,0,0.00,'fixed',1),(62,9,0,0.00,'fixed',1),(62,14,0,0.00,'fixed',1),(62,17,0,0.00,'fixed',1),(62,42,0,0.00,'fixed',1),(62,46,0,0.00,'fixed',1),(62,57,0,0.00,'fixed',1),(63,1,0,0.00,'fixed',1),(63,9,0,0.00,'fixed',1),(63,17,0,0.00,'fixed',1),(63,27,0,0.00,'fixed',1),(63,39,0,0.00,'fixed',1),(63,44,0,0.00,'fixed',1),(63,61,0,0.00,'fixed',1),(64,2,0,0.00,'fixed',1),(64,24,0,0.00,'fixed',1),(64,25,0,0.00,'fixed',1),(64,30,0,0.00,'fixed',1),(64,31,0,0.00,'fixed',1),(64,44,0,0.00,'fixed',1),(64,46,0,0.00,'fixed',1),(65,19,0,0.00,'fixed',1),(65,24,0,0.00,'fixed',1),(65,27,0,0.00,'fixed',1),(65,44,0,0.00,'fixed',1),(65,47,0,0.00,'fixed',1),(65,56,0,0.00,'fixed',1),(65,59,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/4.jpg','{\"filename\":\"4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"4\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(2,4,'ecommerce/digital-product-files/4-1.jpg','{\"filename\":\"4-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/4-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"4-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(3,8,'ecommerce/digital-product-files/8.jpg','{\"filename\":\"8.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"8\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(4,8,'ecommerce/digital-product-files/8-1.jpg','{\"filename\":\"8-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/8-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"8-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(5,12,'ecommerce/digital-product-files/12.jpg','{\"filename\":\"12.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"12\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(6,12,'ecommerce/digital-product-files/12-1.jpg','{\"filename\":\"12-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/12-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"12-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(7,16,'ecommerce/digital-product-files/16.jpg','{\"filename\":\"16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"16\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(8,20,'ecommerce/digital-product-files/20.jpg','{\"filename\":\"20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"20\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(9,20,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(10,24,'ecommerce/digital-product-files/24.jpg','{\"filename\":\"24.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"24\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(11,24,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(12,28,'ecommerce/digital-product-files/28.jpg','{\"filename\":\"28.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"28\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(13,28,'ecommerce/digital-product-files/28-1.jpg','{\"filename\":\"28-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/28-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"28-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(14,32,'ecommerce/digital-product-files/32.jpg','{\"filename\":\"32.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"32\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(15,32,'ecommerce/digital-product-files/32-1.jpg','{\"filename\":\"32-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/32-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"32-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(16,36,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(17,36,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(18,40,'ecommerce/digital-product-files/40.jpg','{\"filename\":\"40.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"40\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(19,40,'ecommerce/digital-product-files/40-1.jpg','{\"filename\":\"40-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/40-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"40-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(20,44,'ecommerce/digital-product-files/44.jpg','{\"filename\":\"44.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"44\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(21,44,'ecommerce/digital-product-files/44-1.jpg','{\"filename\":\"44-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/44-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"44-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(22,48,'ecommerce/digital-product-files/48.jpg','{\"filename\":\"48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(23,48,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(24,52,'ecommerce/digital-product-files/52.jpg','{\"filename\":\"52.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"52\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(25,52,'ecommerce/digital-product-files/52-1.jpg','{\"filename\":\"52-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/52-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"52-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(26,56,'ecommerce/digital-product-files/56.jpg','{\"filename\":\"56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(27,56,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(28,60,'ecommerce/digital-product-files/60.jpg','{\"filename\":\"60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"60\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(29,60,'ecommerce/digital-product-files/60-1.jpg','{\"filename\":\"60-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"60-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(30,64,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(31,64,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(32,95,'ecommerce/digital-product-files/20-1.jpg','{\"filename\":\"20-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"20-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(33,96,'ecommerce/digital-product-files/20-2.jpg','{\"filename\":\"20-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/20-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"20-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(34,97,'ecommerce/digital-product-files/24-1.jpg','{\"filename\":\"24-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"24-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(35,98,'ecommerce/digital-product-files/24-2.jpg','{\"filename\":\"24-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/24-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"24-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(36,108,'ecommerce/digital-product-files/36-1.jpg','{\"filename\":\"36-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"36-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(37,109,'ecommerce/digital-product-files/36-2.jpg','{\"filename\":\"36-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"36-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(38,110,'ecommerce/digital-product-files/36.jpg','{\"filename\":\"36.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/36.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"36\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(39,123,'ecommerce/digital-product-files/48-1.jpg','{\"filename\":\"48-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(40,124,'ecommerce/digital-product-files/48-2.jpg','{\"filename\":\"48-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(41,125,'ecommerce/digital-product-files/48.jpg','{\"filename\":\"48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(42,126,'ecommerce/digital-product-files/48.jpg','{\"filename\":\"48.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/48.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"48\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(43,134,'ecommerce/digital-product-files/56-1.jpg','{\"filename\":\"56-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(44,135,'ecommerce/digital-product-files/56-2.jpg','{\"filename\":\"56-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(45,136,'ecommerce/digital-product-files/56.jpg','{\"filename\":\"56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(46,137,'ecommerce/digital-product-files/56.jpg','{\"filename\":\"56.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/56.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"56\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(47,140,'ecommerce/digital-product-files/60-1.jpg','{\"filename\":\"60-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"60-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(48,141,'ecommerce/digital-product-files/60-2.jpg','{\"filename\":\"60-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"60-2\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(49,142,'ecommerce/digital-product-files/60.jpg','{\"filename\":\"60.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/60.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"60\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(50,148,'ecommerce/digital-product-files/64-1.jpg','{\"filename\":\"64-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"64-1\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22'),(51,149,'ecommerce/digital-product-files/64.jpg','{\"filename\":\"64.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/64.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2024-08-22 03:36:22\",\"name\":\"64\",\"extension\":\"jpg\"}','2024-08-21 20:36:22','2024-08-21 20:36:22');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,12),(1,30),(1,33),(1,36),(1,45),(1,60),(2,3),(2,6),(2,9),(2,21),(2,24),(2,39),(2,48),(2,51),(2,54),(3,15),(3,18),(3,27),(3,42),(3,57),(3,63);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#d71e2d','published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'New','#02856e','published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'Sale','#fe9931','published','2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(1,6),(2,2),(2,5),(2,6),(3,2),(3,4),(3,6),(4,3),(4,4),(4,5),(5,3),(5,4),(5,5),(6,2),(6,4),(6,5),(7,1),(7,2),(7,3),(8,1),(8,2),(8,5),(9,2),(9,3),(9,5),(10,1),(10,4),(10,5),(11,1),(11,3),(11,5),(12,2),(12,3),(12,6),(13,2),(13,4),(13,5),(14,2),(14,3),(14,4),(15,3),(15,4),(15,6),(16,2),(16,5),(16,6),(17,1),(17,2),(17,6),(18,1),(18,2),(18,3),(19,1),(19,4),(19,6),(20,1),(20,2),(20,4),(21,3),(21,4),(21,6),(22,1),(22,3),(22,6),(23,2),(23,4),(23,5),(24,2),(24,3),(24,4),(25,1),(25,3),(25,6),(26,1),(26,3),(26,5),(27,1),(27,2),(27,3),(28,2),(28,4),(28,5),(29,1),(29,2),(29,3),(30,1),(30,4),(30,6),(31,4),(31,5),(31,6),(32,2),(32,3),(32,4),(33,3),(33,4),(33,5),(34,1),(34,2),(34,6),(35,2),(35,4),(35,6),(36,3),(36,4),(36,6),(37,1),(37,3),(37,4),(38,2),(38,4),(38,6),(39,1),(39,3),(39,6),(40,3),(40,5),(40,6),(41,1),(41,3),(41,5),(42,1),(42,5),(42,6),(43,3),(43,4),(43,6),(44,1),(44,5),(44,6),(45,3),(45,4),(45,6),(46,1),(46,5),(46,6),(47,4),(47,5),(47,6),(48,1),(48,4),(48,5),(49,1),(49,2),(49,4),(50,1),(50,4),(50,6),(51,1),(51,2),(51,5),(52,2),(52,3),(52,5),(53,3),(53,4),(53,6),(54,1),(54,3),(54,5),(55,1),(55,2),(55,4),(56,1),(56,2),(56,3),(57,2),(57,3),(57,5),(58,1),(58,3),(58,5),(59,1),(59,2),(59,5),(60,1),(60,4),(60,5),(61,1),(61,2),(61,3),(62,2),(62,3),(62,6),(63,3),(63,4),(63,6),(64,1),(64,4),(64,5),(65,2),(65,3),(65,4);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(2,'Mobile',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(3,'Iphone',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(4,'Printer',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(5,'Office',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(6,'IT',NULL,'published','2024-08-21 20:36:13','2024-08-21 20:36:13');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (3,1,2),(7,1,4),(59,1,30),(69,1,35),(5,2,3),(27,2,14),(31,2,16),(39,2,20),(41,2,21),(43,2,22),(51,2,26),(53,2,27),(55,2,28),(65,2,33),(71,2,36),(11,3,6),(21,3,11),(29,3,15),(33,3,17),(45,3,23),(49,3,25),(73,3,37),(9,4,5),(17,4,9),(47,4,24),(61,4,31),(63,4,32),(77,4,39),(1,5,1),(13,5,7),(15,5,8),(19,5,10),(23,5,12),(25,5,13),(35,5,18),(37,5,19),(57,5,29),(67,5,34),(75,5,38),(79,5,40),(16,6,8),(32,6,16),(40,6,20),(50,6,25),(58,6,29),(60,6,30),(70,6,35),(2,7,1),(10,7,5),(18,7,9),(20,7,10),(28,7,14),(46,7,23),(56,7,28),(66,7,33),(4,8,2),(8,8,4),(14,8,7),(22,8,11),(26,8,13),(36,8,18),(42,8,21),(44,8,22),(68,8,34),(76,8,38),(30,9,15),(34,9,17),(38,9,19),(52,9,26),(54,9,27),(64,9,32),(74,9,37),(78,9,39),(6,10,3),(12,10,6),(24,10,12),(48,10,24),(62,10,31),(72,10,36),(80,10,40),(89,11,45),(103,11,52),(113,11,57),(131,11,66),(147,11,74),(151,11,76),(157,11,79),(159,11,80),(163,11,82),(171,11,86),(83,12,42),(85,12,43),(105,12,53),(109,12,55),(125,12,63),(95,13,48),(121,13,61),(129,13,65),(133,13,67),(135,13,68),(137,13,69),(167,13,84),(81,14,41),(87,14,44),(91,14,46),(97,14,49),(101,14,51),(115,14,58),(123,14,62),(127,14,64),(139,14,70),(143,14,72),(153,14,77),(161,14,81),(165,14,83),(173,14,87),(93,15,47),(99,15,50),(107,15,54),(111,15,56),(117,15,59),(119,15,60),(141,15,71),(145,15,73),(149,15,75),(155,15,78),(169,15,85),(88,16,44),(98,16,49),(110,16,55),(126,16,63),(128,16,64),(130,16,65),(144,16,72),(86,17,43),(100,17,50),(104,17,52),(124,17,62),(132,17,66),(150,17,75),(160,17,80),(164,17,82),(166,17,83),(174,17,87),(82,18,41),(96,18,48),(112,18,56),(116,18,58),(118,18,59),(120,18,60),(148,18,74),(156,18,78),(168,18,84),(84,19,42),(94,19,47),(102,19,51),(106,19,53),(114,19,57),(122,19,61),(134,19,67),(140,19,70),(142,19,71),(146,19,73),(152,19,76),(158,19,79),(162,19,81),(90,20,45),(92,20,46),(108,20,54),(136,20,68),(138,20,69),(154,20,77),(170,20,85),(172,20,86);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,66,1,1),(2,67,1,0),(3,68,1,0),(4,69,1,0),(5,70,5,1),(6,71,5,0),(7,72,6,1),(8,73,6,0),(9,74,6,0),(10,75,7,1),(11,76,9,1),(12,77,9,0),(13,78,9,0),(14,79,10,1),(15,80,10,0),(16,81,10,0),(17,82,10,0),(18,83,11,1),(19,84,13,1),(20,85,13,0),(21,86,13,0),(22,87,13,0),(23,88,14,1),(24,89,14,0),(25,90,14,0),(26,91,15,1),(27,92,19,1),(28,93,19,0),(29,94,19,0),(30,95,20,1),(31,96,20,0),(32,97,24,1),(33,98,24,0),(34,99,27,1),(35,100,27,0),(36,101,27,0),(37,102,30,1),(38,103,31,1),(39,104,31,0),(40,105,31,0),(41,106,34,1),(42,107,34,0),(43,108,36,1),(44,109,36,0),(45,110,36,0),(46,111,39,1),(47,112,39,0),(48,113,39,0),(49,114,39,0),(50,115,41,1),(51,116,41,0),(52,117,41,0),(53,118,45,1),(54,119,45,0),(55,120,46,1),(56,121,46,0),(57,122,46,0),(58,123,48,1),(59,124,48,0),(60,125,48,0),(61,126,48,0),(62,127,50,1),(63,128,50,0),(64,129,50,0),(65,130,51,1),(66,131,51,0),(67,132,51,0),(68,133,51,0),(69,134,56,1),(70,135,56,0),(71,136,56,0),(72,137,56,0),(73,138,58,1),(74,139,58,0),(75,140,60,1),(76,141,60,0),(77,142,60,0),(78,143,61,1),(79,144,61,0),(80,145,61,0),(81,146,62,1),(82,147,62,0),(83,148,64,1),(84,149,64,0),(85,150,65,1),(86,151,65,0),(87,152,65,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-08-22',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,24,0),(2,24,0),(1,27,0),(2,27,0),(1,30,0),(2,30,0),(1,31,0),(2,31,0),(3,34,0),(4,34,0),(3,36,0),(4,36,0),(3,39,0),(4,39,0),(3,41,0),(4,41,0),(3,45,0),(4,45,0),(3,46,0),(4,46,0),(3,48,0),(4,48,0),(3,50,0),(4,50,0),(3,51,0),(4,51,0),(3,56,0),(4,56,0),(3,58,0),(4,58,0),(3,60,0),(4,60,0),(3,61,0),(4,61,0),(3,62,0),(4,62,0),(3,64,0),(4,64,0),(3,65,0),(4,65,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` bigint unsigned DEFAULT NULL,
  `approved_by` bigint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]',NULL,'FQ-157-A1',0,15,0,1,1,5,0,0,80.25,NULL,NULL,NULL,20.00,17.00,15.00,718.00,NULL,53424,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]',NULL,'BV-159',0,14,0,1,1,4,0,0,40.5,35,NULL,NULL,13.00,13.00,13.00,817.00,NULL,57097,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,0),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]',NULL,'R6-171',0,17,0,1,1,1,0,0,20,19,NULL,NULL,16.00,17.00,17.00,572.00,NULL,25631,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,0),(4,'Red &amp; Black Headphone (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]',NULL,'V9-133',0,13,0,1,1,4,0,0,586,246,NULL,NULL,15.00,11.00,15.00,602.00,NULL,187452,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,0),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]',NULL,'KB-126-A1',0,20,0,1,1,5,0,0,748,NULL,NULL,NULL,14.00,18.00,10.00,685.00,NULL,35886,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]',NULL,'SO-123-A1',0,19,0,1,1,3,0,0,442,NULL,NULL,NULL,12.00,15.00,11.00,801.00,NULL,68158,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,4,0),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]',NULL,'8F-127-A1',0,16,0,1,1,3,0,0,537,NULL,NULL,NULL,15.00,11.00,15.00,769.00,NULL,197928,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,7,0),(8,'Smart Televisions (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]',NULL,'WA-153',0,12,0,1,1,1,0,0,1143,858,NULL,NULL,12.00,12.00,14.00,830.00,NULL,49656,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,0),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]',NULL,'FN-179-A1',0,12,0,1,1,2,0,0,513,NULL,NULL,NULL,10.00,19.00,18.00,845.00,NULL,56395,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]',NULL,'PG-176-A1',0,19,0,1,1,3,0,0,1257,NULL,NULL,NULL,18.00,11.00,17.00,710.00,NULL,46145,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,0),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]',NULL,'6S-135-A1',0,20,0,1,1,3,0,0,1125,NULL,NULL,NULL,11.00,12.00,11.00,806.00,NULL,175761,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(12,'EPSION Plaster Printer (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]',NULL,'I8-135',0,20,0,1,0,2,0,0,518,285,NULL,NULL,19.00,17.00,20.00,741.00,NULL,190759,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,0),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]',NULL,'VQ-176-A1',0,14,0,1,1,3,0,0,556,NULL,NULL,NULL,10.00,19.00,14.00,685.00,NULL,134682,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(14,'B&amp;O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]',NULL,'80-193-A1',0,20,0,1,1,5,0,0,554,NULL,NULL,NULL,13.00,12.00,11.00,825.00,NULL,51425,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,4,0),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]',NULL,'X0-128-A1',0,12,0,1,1,5,0,0,570,NULL,NULL,NULL,20.00,10.00,11.00,644.00,NULL,150952,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,6,0),(16,'Apple MacBook Air Retina 12-Inch Laptop (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]',NULL,'VD-186',0,10,0,1,0,1,0,0,536,263,NULL,NULL,10.00,15.00,16.00,744.00,NULL,106881,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,0),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]',NULL,'YI-180',0,14,0,1,1,5,0,0,528,257,NULL,NULL,19.00,20.00,18.00,747.00,NULL,67704,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]',NULL,'QD-147',0,14,0,1,1,4,0,0,982,345,NULL,NULL,11.00,10.00,17.00,584.00,NULL,156742,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,6,0),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]',NULL,'JA-120-A1',0,19,0,1,0,4,0,0,1028,NULL,NULL,NULL,16.00,12.00,16.00,823.00,NULL,94773,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,4,0),(20,'NYX Beauty Couton Pallete Makeup 12 (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]',NULL,'4Q-200-A1',0,16,0,1,0,2,0,0,804,586.92,NULL,NULL,15.00,11.00,10.00,884.00,NULL,48136,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,0),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]',NULL,'PA-179',0,12,0,1,0,4,0,0,738,394,NULL,NULL,15.00,14.00,14.00,892.00,NULL,1730,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]',NULL,'BA-116',0,18,0,1,1,3,0,0,487,217,NULL,NULL,13.00,13.00,18.00,717.00,NULL,6941,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,6,0),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]',NULL,'9Y-133',0,19,0,1,0,4,0,0,647,375,NULL,NULL,20.00,17.00,17.00,757.00,NULL,190318,'2024-08-21 20:36:20','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(24,'Vimto Squash Remix Apple 1.5 Litres (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\",\"products\\/24-2.jpg\"]',NULL,'7C-130-A1',0,19,0,1,0,3,0,0,586,439.5,NULL,NULL,18.00,14.00,11.00,667.00,NULL,119152,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,4,0),(25,'Crock Pot Slow Cooker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\",\"products\\/25-2.jpg\"]',NULL,'KM-123',0,15,0,1,1,3,0,0,606,262,NULL,NULL,16.00,18.00,11.00,865.00,NULL,26655,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,7,0),(26,'Taylors of Harrogate Yorkshire Coffee','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\"]',NULL,'VW-133',0,10,0,1,0,4,0,0,912,266,NULL,NULL,11.00,11.00,15.00,709.00,NULL,4584,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(27,'Soft Mochi &amp; Galeto Ice Cream','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]',NULL,'T7-142-A1',0,15,0,1,0,2,0,0,726,NULL,NULL,NULL,15.00,11.00,18.00,620.00,NULL,76357,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(28,'Naked Noodle Egg Noodles Singapore (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\",\"products\\/28-2.jpg\"]',NULL,'ZY-183',0,11,0,1,1,3,0,0,906,714,NULL,NULL,18.00,19.00,18.00,818.00,NULL,77955,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,5,0),(29,'Saute Pan Silver','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\",\"products\\/29-2.jpg\"]',NULL,'CL-200',0,15,0,1,0,1,0,0,684,494,NULL,NULL,10.00,11.00,19.00,567.00,NULL,29536,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(30,'Bar S – Classic Bun Length Franks','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\",\"products\\/30-2.jpg\"]',NULL,'DL-121-A1',0,17,0,1,0,3,0,0,1078,NULL,NULL,NULL,10.00,18.00,20.00,604.00,NULL,190863,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(31,'Broccoli Crowns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]',NULL,'RP-180-A1',0,11,0,1,0,4,0,0,525,NULL,NULL,NULL,13.00,10.00,13.00,636.00,NULL,179386,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(32,'Slimming World Vegan Mac Greens (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/32.jpg\",\"products\\/32-1.jpg\",\"products\\/32-2.jpg\"]',NULL,'SA-167',0,16,0,1,1,2,0,0,1044,629,NULL,NULL,11.00,16.00,14.00,505.00,NULL,72815,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,5,0),(33,'Häagen-Dazs Salted Caramel','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/33.jpg\",\"products\\/33-1.jpg\",\"products\\/33-2.jpg\"]',NULL,'NH-156',0,11,0,1,0,4,0,0,1054,1034,NULL,NULL,19.00,19.00,17.00,717.00,NULL,195152,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(34,'Iceland 3 Solo Exotic Burst','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/34.jpg\",\"products\\/34-1.jpg\"]',NULL,'QN-102-A1',0,10,0,1,1,2,0,0,954,NULL,NULL,NULL,14.00,18.00,12.00,764.00,NULL,151410,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(35,'Extreme Budweiser Light Can','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/35.jpg\",\"products\\/35-1.jpg\"]',NULL,'CG-119',0,18,0,1,1,1,0,0,827,145,NULL,NULL,18.00,13.00,20.00,610.00,NULL,137627,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(36,'Iceland Macaroni Cheese Traybake (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/36.jpg\",\"products\\/36-1.jpg\",\"products\\/36-2.jpg\"]',NULL,'NS-120-A1',0,16,0,1,1,5,0,0,693,568.26,NULL,NULL,19.00,16.00,12.00,539.00,NULL,187426,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,7,0),(37,'Dolmio Bolognese Pasta Sauce','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/37.jpg\",\"products\\/37-1.jpg\",\"products\\/37-2.jpg\"]',NULL,'R1-154',0,19,0,1,1,2,0,0,990,81,NULL,NULL,16.00,11.00,20.00,520.00,NULL,141729,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,4,0),(38,'Sitema BakeIT Plastic Box','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/38.jpg\",\"products\\/38-1.jpg\",\"products\\/38-2.jpg\",\"products\\/38-3.jpg\"]',NULL,'DB-123',0,18,0,1,0,1,0,0,953,671,NULL,NULL,18.00,20.00,15.00,670.00,NULL,37073,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(39,'Wayfair Basics Dinner Plate Storage','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/39.jpg\",\"products\\/39-1.jpg\",\"products\\/39-2.jpg\"]',NULL,'RL-140-A1',0,18,0,1,1,1,0,0,561,NULL,NULL,NULL,10.00,19.00,16.00,795.00,NULL,183915,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(40,'Miko The Panda Water Bottle (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/40.jpg\",\"products\\/40-1.jpg\"]',NULL,'4I-172',0,14,0,1,0,3,0,0,1194,1070,NULL,NULL,14.00,11.00,10.00,545.00,NULL,30495,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,0),(41,'Sesame Seed Bread','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/41.jpg\",\"products\\/41-1.jpg\",\"products\\/41-2.jpg\"]',NULL,'Q5-121-A1',0,12,0,1,1,2,0,0,1180,NULL,NULL,NULL,11.00,14.00,12.00,751.00,NULL,3888,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(42,'Morrisons The Best Beef','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/42.jpg\",\"products\\/42-1.jpg\",\"products\\/42-2.jpg\"]',NULL,'MX-115',0,18,0,1,0,4,0,0,640,357,NULL,NULL,17.00,15.00,19.00,523.00,NULL,47652,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,7,0),(43,'Avocado, Hass Large','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/43.jpg\",\"products\\/43-1.jpg\",\"products\\/43-2.jpg\"]',NULL,'OY-158',0,18,0,1,1,4,0,0,530,441,NULL,NULL,17.00,10.00,15.00,776.00,NULL,139055,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,6,0),(44,'Italia Beef Lasagne (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/44.jpg\",\"products\\/44-1.jpg\",\"products\\/44-2.jpg\"]',NULL,'YF-111',0,14,0,1,0,5,0,0,556,450,NULL,NULL,15.00,10.00,11.00,792.00,NULL,109634,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,0),(45,'Maxwell House Classic Roast Mocha','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/45.jpg\",\"products\\/45-1.jpg\"]',NULL,'1J-166-A1',0,20,0,1,1,5,0,0,650,NULL,NULL,NULL,13.00,15.00,17.00,559.00,NULL,27401,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,0),(46,'Bottled Pure Water 500ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/46.jpg\",\"products\\/46-1.jpg\"]',NULL,'PF-181-A1',0,16,0,1,1,1,0,0,1270,NULL,NULL,NULL,20.00,16.00,16.00,791.00,NULL,193458,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(47,'Famart Farmhouse Soft White','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/47.jpg\",\"products\\/47-1.jpg\"]',NULL,'I7-200',0,13,0,1,1,4,0,0,1022,899,NULL,NULL,16.00,11.00,20.00,529.00,NULL,153861,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(48,'Coca-Cola Original Taste (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/48.jpg\",\"products\\/48-1.jpg\",\"products\\/48-2.jpg\"]',NULL,'YU-142-A1',0,20,0,1,1,3,0,0,1177,859.21,NULL,NULL,16.00,12.00,20.00,870.00,NULL,137976,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,3,0),(49,'Casillero Diablo Cabernet Sauvignon','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/49.jpg\",\"products\\/49-1.jpg\",\"products\\/49-2.jpg\"]',NULL,'U1-103',0,10,0,1,0,1,0,0,508,190,NULL,NULL,16.00,11.00,10.00,826.00,NULL,13921,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,1,0),(50,'Arla Organic Free Range Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/50.jpg\",\"products\\/50-1.jpg\"]',NULL,'MK-159-A1',0,20,0,1,1,3,0,0,1061,NULL,NULL,NULL,14.00,20.00,12.00,563.00,NULL,153569,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(51,'Aptamil Follow On Baby Milk','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/51.jpg\"]',NULL,'UP-167-A1',0,11,0,1,0,5,0,0,1180,NULL,NULL,NULL,15.00,14.00,11.00,528.00,NULL,48951,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(52,'Cuisinart Chef’S Classic Hard-Anodized (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/52.jpg\",\"products\\/52-1.jpg\",\"products\\/52-2.jpg\"]',NULL,'5P-174',0,18,0,1,1,4,0,0,1265,851,NULL,NULL,17.00,12.00,11.00,702.00,NULL,94397,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,1,0),(53,'Corn, Yellow Sweet','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/53.jpg\",\"products\\/53-1.jpg\"]',NULL,'GO-179',0,16,0,1,0,2,0,0,1291,282,NULL,NULL,14.00,18.00,13.00,518.00,NULL,153527,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(54,'Hobnobs The Nobbly Biscuit','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/54.jpg\",\"products\\/54-1.jpg\"]',NULL,'ES-162',0,10,0,1,1,4,0,0,677,286,NULL,NULL,12.00,11.00,10.00,690.00,NULL,104533,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(55,'Honest Organic Still Lemonade','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/55.jpg\",\"products\\/55-1.jpg\",\"products\\/55-2.jpg\"]',NULL,'9Y-112',0,10,0,1,1,2,0,0,1240,205,NULL,NULL,17.00,14.00,17.00,725.00,NULL,85106,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(56,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/56.jpg\",\"products\\/56-1.jpg\",\"products\\/56-2.jpg\"]',NULL,'YJ-188-A1',0,12,0,1,0,5,0,0,762,541.02,NULL,NULL,19.00,10.00,19.00,878.00,NULL,108112,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,2,0),(57,'Iceland 6 Hot Cross Buns','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/57.jpg\",\"products\\/57-1.jpg\"]',NULL,'RV-188',0,16,0,1,0,1,0,0,1064,153,NULL,NULL,13.00,19.00,16.00,692.00,NULL,68022,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,2,0),(58,'Iceland Luxury 4 Panini Rolls','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/58.jpg\",\"products\\/58-1.jpg\",\"products\\/58-2.jpg\"]',NULL,'H5-136-A1',0,13,0,1,1,2,0,0,1214,NULL,NULL,NULL,12.00,10.00,16.00,537.00,NULL,135651,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,7,0),(59,'Iceland Soft Scoop Vanilla','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/59.jpg\",\"products\\/59-1.jpg\",\"products\\/59-2.jpg\",\"products\\/59-3.jpg\"]',NULL,'NR-113',0,14,0,1,0,1,0,0,1046,149,NULL,NULL,13.00,13.00,11.00,875.00,NULL,52922,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(60,'Iceland Spaghetti Bolognese (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/60.jpg\",\"products\\/60-1.jpg\",\"products\\/60-2.jpg\"]',NULL,'GN-155-A1',0,18,0,1,0,2,0,0,1252,926.48,NULL,NULL,19.00,20.00,19.00,846.00,NULL,95697,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,8,0),(61,'Kellogg’s Coco Pops Cereal','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/61.jpg\",\"products\\/61-1.jpg\"]',NULL,'YU-162-A1',0,20,0,1,0,5,0,0,1257,NULL,NULL,NULL,17.00,20.00,11.00,757.00,NULL,153815,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,3,0),(62,'Kit Kat Chunky Milk Chocolate','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/62.jpg\",\"products\\/62-1.jpg\"]',NULL,'AW-169-A1',0,11,0,1,0,5,0,0,1136,NULL,NULL,NULL,16.00,13.00,20.00,726.00,NULL,98475,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(63,'Large Green Bell Pepper','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/63.jpg\",\"products\\/63-1.jpg\"]',NULL,'8K-173',0,19,0,1,1,1,0,0,747,653,NULL,NULL,17.00,10.00,13.00,882.00,NULL,32579,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,8,0),(64,'Pice 94w Beasley Journal (Digital)','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/64.jpg\",\"products\\/64-1.jpg\"]',NULL,'ZG-168-A1',0,14,0,1,0,2,0,0,929,836.1,NULL,NULL,12.00,12.00,18.00,596.00,NULL,113340,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,7,0),(65,'Province Piece Glass Drinking Glass','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/65.jpg\",\"products\\/65-1.jpg\",\"products\\/65-2.jpg\"]',NULL,'HK-116-A1',0,16,0,1,0,3,0,0,577,NULL,NULL,NULL,19.00,17.00,11.00,836.00,NULL,68169,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,5,0),(66,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'FQ-157-A1',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,17.00,15.00,718.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(67,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'FQ-157-A1-A2',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,17.00,15.00,718.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(68,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'FQ-157-A1-A3',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,17.00,15.00,718.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(69,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]',NULL,'FQ-157-A1-A4',0,15,0,1,0,5,1,0,80.25,NULL,NULL,NULL,20.00,17.00,15.00,718.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(70,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]',NULL,'KB-126-A1',0,20,0,1,0,5,1,0,748,NULL,NULL,NULL,14.00,18.00,10.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(71,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]',NULL,'KB-126-A1-A2',0,20,0,1,0,5,1,0,748,NULL,NULL,NULL,14.00,18.00,10.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(72,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SO-123-A1',0,19,0,1,0,3,1,0,442,NULL,NULL,NULL,12.00,15.00,11.00,801.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(73,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SO-123-A1-A2',0,19,0,1,0,3,1,0,442,NULL,NULL,NULL,12.00,15.00,11.00,801.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(74,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]',NULL,'SO-123-A1-A3',0,19,0,1,0,3,1,0,442,NULL,NULL,NULL,12.00,15.00,11.00,801.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(75,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]',NULL,'8F-127-A1',0,16,0,1,0,3,1,0,537,NULL,NULL,NULL,15.00,11.00,15.00,769.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(76,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]',NULL,'FN-179-A1',0,12,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,19.00,18.00,845.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(77,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]',NULL,'FN-179-A1-A2',0,12,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,19.00,18.00,845.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(78,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]',NULL,'FN-179-A1-A3',0,12,0,1,0,2,1,0,513,NULL,NULL,NULL,10.00,19.00,18.00,845.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(79,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]',NULL,'PG-176-A1',0,19,0,1,0,3,1,0,1257,NULL,NULL,NULL,18.00,11.00,17.00,710.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(80,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-2.jpg\"]',NULL,'PG-176-A1-A2',0,19,0,1,0,3,1,0,1257,NULL,NULL,NULL,18.00,11.00,17.00,710.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(81,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'PG-176-A1-A3',0,19,0,1,0,3,1,0,1257,NULL,NULL,NULL,18.00,11.00,17.00,710.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(82,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]',NULL,'PG-176-A1-A4',0,19,0,1,0,3,1,0,1257,NULL,NULL,NULL,18.00,11.00,17.00,710.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(83,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]',NULL,'6S-135-A1',0,20,0,1,0,3,1,0,1125,NULL,NULL,NULL,11.00,12.00,11.00,806.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(84,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]',NULL,'VQ-176-A1',0,14,0,1,0,3,1,0,556,NULL,NULL,NULL,10.00,19.00,14.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(85,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'VQ-176-A1-A2',0,14,0,1,0,3,1,0,556,NULL,NULL,NULL,10.00,19.00,14.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(86,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'VQ-176-A1-A3',0,14,0,1,0,3,1,0,556,NULL,NULL,NULL,10.00,19.00,14.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(87,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]',NULL,'VQ-176-A1-A4',0,14,0,1,0,3,1,0,556,NULL,NULL,NULL,10.00,19.00,14.00,685.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(88,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'80-193-A1',0,20,0,1,0,5,1,0,554,NULL,NULL,NULL,13.00,12.00,11.00,825.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(89,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'80-193-A1-A2',0,20,0,1,0,5,1,0,554,NULL,NULL,NULL,13.00,12.00,11.00,825.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(90,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]',NULL,'80-193-A1-A3',0,20,0,1,0,5,1,0,554,NULL,NULL,NULL,13.00,12.00,11.00,825.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(91,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]',NULL,'X0-128-A1',0,12,0,1,0,5,1,0,570,NULL,NULL,NULL,20.00,10.00,11.00,644.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(92,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]',NULL,'JA-120-A1',0,19,0,1,0,4,1,0,1028,NULL,NULL,NULL,16.00,12.00,16.00,823.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(93,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]',NULL,'JA-120-A1-A2',0,19,0,1,0,4,1,0,1028,NULL,NULL,NULL,16.00,12.00,16.00,823.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(94,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-3.jpg\"]',NULL,'JA-120-A1-A3',0,19,0,1,0,4,1,0,1028,NULL,NULL,NULL,16.00,12.00,16.00,823.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(95,'NYX Beauty Couton Pallete Makeup 12 (Digital)',NULL,NULL,'published','[\"products\\/20-1.jpg\"]',NULL,'4Q-200-A1',0,16,0,1,0,2,1,0,804,586.92,NULL,NULL,15.00,11.00,10.00,884.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(96,'NYX Beauty Couton Pallete Makeup 12 (Digital)',NULL,NULL,'published','[\"products\\/20-2.jpg\"]',NULL,'4Q-200-A1-A2',0,16,0,1,0,2,1,0,804,723.6,NULL,NULL,15.00,11.00,10.00,884.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(97,'Vimto Squash Remix Apple 1.5 Litres (Digital)',NULL,NULL,'published','[\"products\\/24-1.jpg\"]',NULL,'7C-130-A1',0,19,0,1,0,3,1,0,586,439.5,NULL,NULL,18.00,14.00,11.00,667.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(98,'Vimto Squash Remix Apple 1.5 Litres (Digital)',NULL,NULL,'published','[\"products\\/24-2.jpg\"]',NULL,'7C-130-A1-A2',0,19,0,1,0,3,1,0,586,410.2,NULL,NULL,18.00,14.00,11.00,667.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(99,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27-1.jpg\"]',NULL,'T7-142-A1',0,15,0,1,0,2,1,0,726,NULL,NULL,NULL,15.00,11.00,18.00,620.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(100,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27.jpg\"]',NULL,'T7-142-A1-A2',0,15,0,1,0,2,1,0,726,NULL,NULL,NULL,15.00,11.00,18.00,620.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(101,'Soft Mochi & Galeto Ice Cream',NULL,NULL,'published','[\"products\\/27.jpg\"]',NULL,'T7-142-A1-A3',0,15,0,1,0,2,1,0,726,NULL,NULL,NULL,15.00,11.00,18.00,620.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(102,'Bar S – Classic Bun Length Franks',NULL,NULL,'published','[\"products\\/30-1.jpg\"]',NULL,'DL-121-A1',0,17,0,1,0,3,1,0,1078,NULL,NULL,NULL,10.00,18.00,20.00,604.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(103,'Broccoli Crowns',NULL,NULL,'published','[\"products\\/31-1.jpg\"]',NULL,'RP-180-A1',0,11,0,1,0,4,1,0,525,NULL,NULL,NULL,13.00,10.00,13.00,636.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(104,'Broccoli Crowns',NULL,NULL,'published','[\"products\\/31.jpg\"]',NULL,'RP-180-A1-A2',0,11,0,1,0,4,1,0,525,NULL,NULL,NULL,13.00,10.00,13.00,636.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(105,'Broccoli Crowns',NULL,NULL,'published','[\"products\\/31.jpg\"]',NULL,'RP-180-A1-A3',0,11,0,1,0,4,1,0,525,NULL,NULL,NULL,13.00,10.00,13.00,636.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(106,'Iceland 3 Solo Exotic Burst',NULL,NULL,'published','[\"products\\/34-1.jpg\"]',NULL,'QN-102-A1',0,10,0,1,0,2,1,0,954,NULL,NULL,NULL,14.00,18.00,12.00,764.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(107,'Iceland 3 Solo Exotic Burst',NULL,NULL,'published','[\"products\\/34.jpg\"]',NULL,'QN-102-A1-A2',0,10,0,1,0,2,1,0,954,NULL,NULL,NULL,14.00,18.00,12.00,764.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(108,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36-1.jpg\"]',NULL,'NS-120-A1',0,16,0,1,0,5,1,0,693,568.26,NULL,NULL,19.00,16.00,12.00,539.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(109,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36-2.jpg\"]',NULL,'NS-120-A1-A2',0,16,0,1,0,5,1,0,693,512.82,NULL,NULL,19.00,16.00,12.00,539.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(110,'Iceland Macaroni Cheese Traybake (Digital)',NULL,NULL,'published','[\"products\\/36.jpg\"]',NULL,'NS-120-A1-A3',0,16,0,1,0,5,1,0,693,505.89,NULL,NULL,19.00,16.00,12.00,539.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(111,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-1.jpg\"]',NULL,'RL-140-A1',0,18,0,1,0,1,1,0,561,NULL,NULL,NULL,10.00,19.00,16.00,795.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(112,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39-2.jpg\"]',NULL,'RL-140-A1-A2',0,18,0,1,0,1,1,0,561,NULL,NULL,NULL,10.00,19.00,16.00,795.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(113,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39.jpg\"]',NULL,'RL-140-A1-A3',0,18,0,1,0,1,1,0,561,NULL,NULL,NULL,10.00,19.00,16.00,795.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(114,'Wayfair Basics Dinner Plate Storage',NULL,NULL,'published','[\"products\\/39.jpg\"]',NULL,'RL-140-A1-A4',0,18,0,1,0,1,1,0,561,NULL,NULL,NULL,10.00,19.00,16.00,795.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(115,'Sesame Seed Bread',NULL,NULL,'published','[\"products\\/41-1.jpg\"]',NULL,'Q5-121-A1',0,12,0,1,0,2,1,0,1180,NULL,NULL,NULL,11.00,14.00,12.00,751.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(116,'Sesame Seed Bread',NULL,NULL,'published','[\"products\\/41-2.jpg\"]',NULL,'Q5-121-A1-A2',0,12,0,1,0,2,1,0,1180,NULL,NULL,NULL,11.00,14.00,12.00,751.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(117,'Sesame Seed Bread',NULL,NULL,'published','[\"products\\/41.jpg\"]',NULL,'Q5-121-A1-A3',0,12,0,1,0,2,1,0,1180,NULL,NULL,NULL,11.00,14.00,12.00,751.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(118,'Maxwell House Classic Roast Mocha',NULL,NULL,'published','[\"products\\/45-1.jpg\"]',NULL,'1J-166-A1',0,20,0,1,0,5,1,0,650,NULL,NULL,NULL,13.00,15.00,17.00,559.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(119,'Maxwell House Classic Roast Mocha',NULL,NULL,'published','[\"products\\/45.jpg\"]',NULL,'1J-166-A1-A2',0,20,0,1,0,5,1,0,650,NULL,NULL,NULL,13.00,15.00,17.00,559.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(120,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46-1.jpg\"]',NULL,'PF-181-A1',0,16,0,1,0,1,1,0,1270,NULL,NULL,NULL,20.00,16.00,16.00,791.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(121,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46.jpg\"]',NULL,'PF-181-A1-A2',0,16,0,1,0,1,1,0,1270,NULL,NULL,NULL,20.00,16.00,16.00,791.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(122,'Bottled Pure Water 500ml',NULL,NULL,'published','[\"products\\/46.jpg\"]',NULL,'PF-181-A1-A3',0,16,0,1,0,1,1,0,1270,NULL,NULL,NULL,20.00,16.00,16.00,791.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(123,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48-1.jpg\"]',NULL,'YU-142-A1',0,20,0,1,0,3,1,0,1177,859.21,NULL,NULL,16.00,12.00,20.00,870.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(124,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48-2.jpg\"]',NULL,'YU-142-A1-A2',0,20,0,1,0,3,1,0,1177,894.52,NULL,NULL,16.00,12.00,20.00,870.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(125,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48.jpg\"]',NULL,'YU-142-A1-A3',0,20,0,1,0,3,1,0,1177,1023.99,NULL,NULL,16.00,12.00,20.00,870.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(126,'Coca-Cola Original Taste (Digital)',NULL,NULL,'published','[\"products\\/48.jpg\"]',NULL,'YU-142-A1-A4',0,20,0,1,0,3,1,0,1177,929.83,NULL,NULL,16.00,12.00,20.00,870.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(127,'Arla Organic Free Range Milk',NULL,NULL,'published','[\"products\\/50-1.jpg\"]',NULL,'MK-159-A1',0,20,0,1,0,3,1,0,1061,NULL,NULL,NULL,14.00,20.00,12.00,563.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(128,'Arla Organic Free Range Milk',NULL,NULL,'published','[\"products\\/50.jpg\"]',NULL,'MK-159-A1-A2',0,20,0,1,0,3,1,0,1061,NULL,NULL,NULL,14.00,20.00,12.00,563.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(129,'Arla Organic Free Range Milk',NULL,NULL,'published','[\"products\\/50.jpg\"]',NULL,'MK-159-A1-A3',0,20,0,1,0,3,1,0,1061,NULL,NULL,NULL,14.00,20.00,12.00,563.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(130,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'UP-167-A1',0,11,0,1,0,5,1,0,1180,NULL,NULL,NULL,15.00,14.00,11.00,528.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(131,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'UP-167-A1-A2',0,11,0,1,0,5,1,0,1180,NULL,NULL,NULL,15.00,14.00,11.00,528.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(132,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'UP-167-A1-A3',0,11,0,1,0,5,1,0,1180,NULL,NULL,NULL,15.00,14.00,11.00,528.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(133,'Aptamil Follow On Baby Milk',NULL,NULL,'published','[\"products\\/51.jpg\"]',NULL,'UP-167-A1-A4',0,11,0,1,0,5,1,0,1180,NULL,NULL,NULL,15.00,14.00,11.00,528.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(134,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-1.jpg\"]',NULL,'YJ-188-A1',0,12,0,1,0,5,1,0,762,541.02,NULL,NULL,19.00,10.00,19.00,878.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(135,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56-2.jpg\"]',NULL,'YJ-188-A1-A2',0,12,0,1,0,5,1,0,762,647.7,NULL,NULL,19.00,10.00,19.00,878.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(136,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56.jpg\"]',NULL,'YJ-188-A1-A3',0,12,0,1,0,5,1,0,762,624.84,NULL,NULL,19.00,10.00,19.00,878.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(137,'Ice Beck’s Beer 350ml x 24 Pieces (Digital)',NULL,NULL,'published','[\"products\\/56.jpg\"]',NULL,'YJ-188-A1-A4',0,12,0,1,0,5,1,0,762,670.56,NULL,NULL,19.00,10.00,19.00,878.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(138,'Iceland Luxury 4 Panini Rolls',NULL,NULL,'published','[\"products\\/58-1.jpg\"]',NULL,'H5-136-A1',0,13,0,1,0,2,1,0,1214,NULL,NULL,NULL,12.00,10.00,16.00,537.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(139,'Iceland Luxury 4 Panini Rolls',NULL,NULL,'published','[\"products\\/58-2.jpg\"]',NULL,'H5-136-A1-A2',0,13,0,1,0,2,1,0,1214,NULL,NULL,NULL,12.00,10.00,16.00,537.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(140,'Iceland Spaghetti Bolognese (Digital)',NULL,NULL,'published','[\"products\\/60-1.jpg\"]',NULL,'GN-155-A1',0,18,0,1,0,2,1,0,1252,926.48,NULL,NULL,19.00,20.00,19.00,846.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(141,'Iceland Spaghetti Bolognese (Digital)',NULL,NULL,'published','[\"products\\/60-2.jpg\"]',NULL,'GN-155-A1-A2',0,18,0,1,0,2,1,0,1252,901.44,NULL,NULL,19.00,20.00,19.00,846.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(142,'Iceland Spaghetti Bolognese (Digital)',NULL,NULL,'published','[\"products\\/60.jpg\"]',NULL,'GN-155-A1-A3',0,18,0,1,0,2,1,0,1252,901.44,NULL,NULL,19.00,20.00,19.00,846.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(143,'Kellogg’s Coco Pops Cereal',NULL,NULL,'published','[\"products\\/61-1.jpg\"]',NULL,'YU-162-A1',0,20,0,1,0,5,1,0,1257,NULL,NULL,NULL,17.00,20.00,11.00,757.00,NULL,0,'2024-08-21 20:36:21','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(144,'Kellogg’s Coco Pops Cereal',NULL,NULL,'published','[\"products\\/61.jpg\"]',NULL,'YU-162-A1-A2',0,20,0,1,0,5,1,0,1257,NULL,NULL,NULL,17.00,20.00,11.00,757.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(145,'Kellogg’s Coco Pops Cereal',NULL,NULL,'published','[\"products\\/61.jpg\"]',NULL,'YU-162-A1-A3',0,20,0,1,0,5,1,0,1257,NULL,NULL,NULL,17.00,20.00,11.00,757.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(146,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62-1.jpg\"]',NULL,'AW-169-A1',0,11,0,1,0,5,1,0,1136,NULL,NULL,NULL,16.00,13.00,20.00,726.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(147,'Kit Kat Chunky Milk Chocolate',NULL,NULL,'published','[\"products\\/62.jpg\"]',NULL,'AW-169-A1-A2',0,11,0,1,0,5,1,0,1136,NULL,NULL,NULL,16.00,13.00,20.00,726.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(148,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64-1.jpg\"]',NULL,'ZG-168-A1',0,14,0,1,0,2,1,0,929,836.1,NULL,NULL,12.00,12.00,18.00,596.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(149,'Pice 94w Beasley Journal (Digital)',NULL,NULL,'published','[\"products\\/64.jpg\"]',NULL,'ZG-168-A1-A2',0,14,0,1,0,2,1,0,929,817.52,NULL,NULL,12.00,12.00,18.00,596.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL,0,0,0,0,NULL,0),(150,'Province Piece Glass Drinking Glass',NULL,NULL,'published','[\"products\\/65-1.jpg\"]',NULL,'HK-116-A1',0,16,0,1,0,3,1,0,577,NULL,NULL,NULL,19.00,17.00,11.00,836.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(151,'Province Piece Glass Drinking Glass',NULL,NULL,'published','[\"products\\/65-2.jpg\"]',NULL,'HK-116-A1-A2',0,16,0,1,0,3,1,0,577,NULL,NULL,NULL,19.00,17.00,11.00,836.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0),(152,'Province Piece Glass Drinking Glass',NULL,NULL,'published','[\"products\\/65.jpg\"]',NULL,'HK-116-A1-A3',0,16,0,1,0,3,1,0,577,NULL,NULL,NULL,19.00,17.00,11.00,836.00,NULL,0,'2024-08-21 20:36:22','2024-08-21 20:36:24','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL,0,0,0,0,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,1,NULL,NULL,38,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15.jpg\",\"products\\/17-2.jpg\",\"products\\/37-1.jpg\"]'),(2,9,NULL,NULL,31,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/46-1.jpg\"]'),(3,9,NULL,NULL,16,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/55-2.jpg\",\"products\\/58-2.jpg\"]'),(4,8,NULL,NULL,49,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4.jpg\",\"products\\/25-2.jpg\",\"products\\/54-1.jpg\",\"products\\/64-1.jpg\"]'),(5,3,NULL,NULL,48,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/42-2.jpg\",\"products\\/49-1.jpg\"]'),(6,6,NULL,NULL,21,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/42-1.jpg\",\"products\\/55.jpg\",\"products\\/57-1.jpg\"]'),(7,7,NULL,NULL,63,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-3.jpg\",\"products\\/63.jpg\"]'),(8,2,NULL,NULL,2,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/15-1.jpg\",\"products\\/41-1.jpg\",\"products\\/46-1.jpg\"]'),(9,9,NULL,NULL,42,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\",\"products\\/38-2.jpg\",\"products\\/44-1.jpg\",\"products\\/53.jpg\"]'),(10,2,NULL,NULL,48,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/24-1.jpg\",\"products\\/52.jpg\"]'),(11,4,NULL,NULL,46,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-3.jpg\",\"products\\/51.jpg\",\"products\\/57.jpg\"]'),(12,4,NULL,NULL,2,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-1.jpg\",\"products\\/11-1.jpg\",\"products\\/38-1.jpg\",\"products\\/48.jpg\"]'),(13,9,NULL,NULL,26,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24.jpg\",\"products\\/30.jpg\",\"products\\/65-2.jpg\"]'),(14,7,NULL,NULL,41,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/14.jpg\",\"products\\/18.jpg\"]'),(15,5,NULL,NULL,12,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15-1.jpg\",\"products\\/49-2.jpg\",\"products\\/52-2.jpg\"]'),(16,8,NULL,NULL,65,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/39-1.jpg\"]'),(17,9,NULL,NULL,55,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/8-3.jpg\",\"products\\/19-2.jpg\",\"products\\/42-2.jpg\"]'),(18,8,NULL,NULL,9,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/30.jpg\",\"products\\/36-1.jpg\"]'),(19,5,NULL,NULL,48,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-1.jpg\"]'),(20,3,NULL,NULL,19,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-1.jpg\",\"products\\/40-1.jpg\"]'),(21,3,NULL,NULL,25,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/39-1.jpg\"]'),(22,1,NULL,NULL,9,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-3.jpg\",\"products\\/58.jpg\"]'),(23,7,NULL,NULL,49,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/14.jpg\"]'),(24,8,NULL,NULL,3,2.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/32.jpg\"]'),(25,8,NULL,NULL,8,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/42-2.jpg\",\"products\\/44-2.jpg\",\"products\\/51.jpg\"]'),(26,6,NULL,NULL,10,1.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/42-1.jpg\"]'),(27,9,NULL,NULL,47,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/52.jpg\"]'),(28,10,NULL,NULL,22,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10.jpg\",\"products\\/52.jpg\"]'),(29,3,NULL,NULL,61,2.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30-1.jpg\",\"products\\/32-2.jpg\",\"products\\/43-2.jpg\",\"products\\/54.jpg\"]'),(30,6,NULL,NULL,11,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-1.jpg\",\"products\\/50.jpg\",\"products\\/62-1.jpg\"]'),(31,2,NULL,NULL,51,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\"]'),(32,8,NULL,NULL,20,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/64-1.jpg\"]'),(33,6,NULL,NULL,65,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38.jpg\",\"products\\/48.jpg\",\"products\\/57-1.jpg\"]'),(34,10,NULL,NULL,38,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-2.jpg\",\"products\\/31.jpg\",\"products\\/36-2.jpg\",\"products\\/60.jpg\"]'),(35,8,NULL,NULL,2,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/3.jpg\",\"products\\/20-2.jpg\",\"products\\/55.jpg\",\"products\\/65.jpg\"]'),(36,1,NULL,NULL,58,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15-1.jpg\",\"products\\/20.jpg\"]'),(37,10,NULL,NULL,62,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/32-1.jpg\",\"products\\/50.jpg\",\"products\\/64-1.jpg\"]'),(39,3,NULL,NULL,42,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/23-1.jpg\",\"products\\/49-1.jpg\",\"products\\/63.jpg\"]'),(40,1,NULL,NULL,64,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-1.jpg\",\"products\\/10.jpg\",\"products\\/11-3.jpg\",\"products\\/52.jpg\"]'),(41,1,NULL,NULL,39,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\"]'),(42,1,NULL,NULL,28,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/24-2.jpg\",\"products\\/36.jpg\",\"products\\/38-3.jpg\"]'),(43,6,NULL,NULL,36,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\",\"products\\/12-2.jpg\",\"products\\/22-1.jpg\",\"products\\/37.jpg\"]'),(44,1,NULL,NULL,49,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\"]'),(45,3,NULL,NULL,47,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\",\"products\\/22-3.jpg\"]'),(46,5,NULL,NULL,43,3.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-1.jpg\",\"products\\/20.jpg\",\"products\\/32.jpg\",\"products\\/60-2.jpg\"]'),(47,9,NULL,NULL,43,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35.jpg\",\"products\\/42.jpg\"]'),(48,4,NULL,NULL,1,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-2.jpg\"]'),(49,3,NULL,NULL,11,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49.jpg\"]'),(50,8,NULL,NULL,41,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29-2.jpg\",\"products\\/36-2.jpg\",\"products\\/47.jpg\"]'),(51,4,NULL,NULL,48,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\"]'),(53,5,NULL,NULL,24,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/23-3.jpg\",\"products\\/36-1.jpg\"]'),(54,3,NULL,NULL,45,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/34.jpg\",\"products\\/40-1.jpg\",\"products\\/65.jpg\"]'),(55,5,NULL,NULL,39,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/18.jpg\",\"products\\/20-1.jpg\",\"products\\/32-1.jpg\"]'),(56,7,NULL,NULL,58,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/40-1.jpg\"]'),(57,10,NULL,NULL,36,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/5-3.jpg\",\"products\\/22-2.jpg\",\"products\\/42.jpg\"]'),(58,3,NULL,NULL,1,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\",\"products\\/37-2.jpg\",\"products\\/48.jpg\"]'),(59,8,NULL,NULL,27,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/21-2.jpg\"]'),(60,7,NULL,NULL,34,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\",\"products\\/39-2.jpg\",\"products\\/60-2.jpg\"]'),(61,7,NULL,NULL,22,4.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/8-2.jpg\",\"products\\/34.jpg\",\"products\\/58-2.jpg\"]'),(62,7,NULL,NULL,28,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-1.jpg\",\"products\\/44-2.jpg\",\"products\\/52-2.jpg\",\"products\\/55.jpg\"]'),(63,6,NULL,NULL,34,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17.jpg\",\"products\\/55-2.jpg\"]'),(64,6,NULL,NULL,41,3.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/22-3.jpg\",\"products\\/23-2.jpg\"]'),(66,5,NULL,NULL,64,2.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/45.jpg\",\"products\\/63-1.jpg\"]'),(67,9,NULL,NULL,36,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/45-1.jpg\"]'),(69,1,NULL,NULL,18,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4.jpg\",\"products\\/32-1.jpg\"]'),(71,4,NULL,NULL,64,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-1.jpg\",\"products\\/29.jpg\",\"products\\/58-2.jpg\"]'),(72,10,NULL,NULL,25,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-2.jpg\",\"products\\/58-1.jpg\"]'),(74,2,NULL,NULL,56,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-1.jpg\",\"products\\/17.jpg\"]'),(75,8,NULL,NULL,54,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\",\"products\\/13.jpg\",\"products\\/15.jpg\",\"products\\/21.jpg\"]'),(76,10,NULL,NULL,3,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/27-1.jpg\"]'),(77,10,NULL,NULL,11,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/51.jpg\"]'),(78,4,NULL,NULL,13,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49-2.jpg\"]'),(79,5,NULL,NULL,2,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-3.jpg\"]'),(80,1,NULL,NULL,33,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-1.jpg\",\"products\\/11-3.jpg\",\"products\\/58-2.jpg\"]'),(82,7,NULL,NULL,37,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/60-1.jpg\"]'),(83,7,NULL,NULL,18,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-3.jpg\",\"products\\/23-3.jpg\",\"products\\/56-1.jpg\"]'),(84,4,NULL,NULL,10,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/32.jpg\"]'),(85,4,NULL,NULL,12,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29.jpg\"]'),(86,10,NULL,NULL,14,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11.jpg\",\"products\\/17-1.jpg\",\"products\\/38.jpg\",\"products\\/46.jpg\"]'),(87,2,NULL,NULL,54,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-1.jpg\",\"products\\/10.jpg\",\"products\\/30-1.jpg\"]'),(88,10,NULL,NULL,39,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-1.jpg\"]'),(89,3,NULL,NULL,23,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5.jpg\",\"products\\/25-1.jpg\",\"products\\/49.jpg\",\"products\\/62-1.jpg\"]'),(90,6,NULL,NULL,17,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/1.jpg\",\"products\\/40-1.jpg\",\"products\\/46-1.jpg\"]'),(91,4,NULL,NULL,61,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/13.jpg\",\"products\\/63.jpg\"]'),(93,10,NULL,NULL,41,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/23-2.jpg\",\"products\\/27.jpg\",\"products\\/61.jpg\"]'),(94,2,NULL,NULL,52,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-1.jpg\"]'),(96,1,NULL,NULL,14,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/9.jpg\",\"products\\/24-2.jpg\",\"products\\/33-1.jpg\"]'),(97,5,NULL,NULL,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/45-1.jpg\"]'),(98,9,NULL,NULL,18,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-2.jpg\",\"products\\/37.jpg\",\"products\\/65.jpg\"]'),(99,5,NULL,NULL,14,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/37-1.jpg\"]'),(100,7,NULL,NULL,42,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/33-1.jpg\",\"products\\/48-2.jpg\"]'),(101,5,NULL,NULL,34,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\"]'),(102,4,NULL,NULL,20,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-1.jpg\",\"products\\/12-3.jpg\",\"products\\/23-1.jpg\"]'),(104,9,NULL,NULL,2,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20.jpg\",\"products\\/52-1.jpg\"]'),(106,3,NULL,NULL,40,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/18-1.jpg\",\"products\\/41-2.jpg\",\"products\\/56-1.jpg\"]'),(107,8,NULL,NULL,18,2.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/57-1.jpg\"]'),(108,4,NULL,NULL,40,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-2.jpg\",\"products\\/30-1.jpg\",\"products\\/40-1.jpg\"]'),(109,4,NULL,NULL,25,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/26.jpg\"]'),(110,7,NULL,NULL,8,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/10-2.jpg\",\"products\\/46-1.jpg\",\"products\\/61-1.jpg\"]'),(111,4,NULL,NULL,21,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13-1.jpg\",\"products\\/27-1.jpg\",\"products\\/28-1.jpg\"]'),(112,2,NULL,NULL,9,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-3.jpg\"]'),(114,1,NULL,NULL,54,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49-1.jpg\"]'),(115,6,NULL,NULL,6,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-1.jpg\",\"products\\/39-1.jpg\",\"products\\/42.jpg\",\"products\\/60-2.jpg\"]'),(116,9,NULL,NULL,59,3.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-1.jpg\"]'),(117,1,NULL,NULL,62,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18.jpg\",\"products\\/25-2.jpg\",\"products\\/29.jpg\",\"products\\/60-2.jpg\"]'),(118,8,NULL,NULL,21,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/34.jpg\",\"products\\/36-2.jpg\"]'),(119,10,NULL,NULL,35,4.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-1.jpg\",\"products\\/30-1.jpg\",\"products\\/43.jpg\",\"products\\/55.jpg\"]'),(120,4,NULL,NULL,24,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5.jpg\",\"products\\/22.jpg\",\"products\\/36-2.jpg\",\"products\\/52.jpg\"]'),(121,7,NULL,NULL,16,4.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-2.jpg\",\"products\\/32-1.jpg\",\"products\\/39-1.jpg\"]'),(123,1,NULL,NULL,21,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/46-1.jpg\",\"products\\/48.jpg\",\"products\\/56.jpg\"]'),(126,5,NULL,NULL,40,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-1.jpg\",\"products\\/19.jpg\",\"products\\/28-1.jpg\",\"products\\/29-2.jpg\"]'),(127,7,NULL,NULL,29,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/54.jpg\"]'),(128,8,NULL,NULL,7,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29-2.jpg\"]'),(129,1,NULL,NULL,60,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\",\"products\\/52-1.jpg\"]'),(130,2,NULL,NULL,1,3.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\",\"products\\/29-1.jpg\",\"products\\/52.jpg\"]'),(132,7,NULL,NULL,32,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4.jpg\",\"products\\/11.jpg\",\"products\\/17-3.jpg\",\"products\\/29-2.jpg\"]'),(134,4,NULL,NULL,8,1.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/26.jpg\",\"products\\/49-2.jpg\",\"products\\/65-1.jpg\"]'),(135,9,NULL,NULL,65,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/65-1.jpg\"]'),(136,2,NULL,NULL,39,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-1.jpg\",\"products\\/34-1.jpg\",\"products\\/58-1.jpg\"]'),(138,5,NULL,NULL,28,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/32-2.jpg\",\"products\\/57-1.jpg\"]'),(139,2,NULL,NULL,40,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/26-1.jpg\",\"products\\/32-2.jpg\",\"products\\/38.jpg\"]'),(140,6,NULL,NULL,37,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/37-2.jpg\",\"products\\/47.jpg\",\"products\\/53.jpg\"]'),(141,10,NULL,NULL,15,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-2.jpg\",\"products\\/22-1.jpg\",\"products\\/26.jpg\",\"products\\/39-1.jpg\"]'),(142,7,NULL,NULL,65,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20.jpg\",\"products\\/22-3.jpg\"]'),(145,10,NULL,NULL,59,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-2.jpg\",\"products\\/57-1.jpg\",\"products\\/58-2.jpg\"]'),(146,2,NULL,NULL,15,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/46.jpg\",\"products\\/56-2.jpg\"]'),(147,8,NULL,NULL,17,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-2.jpg\",\"products\\/41-1.jpg\",\"products\\/54-1.jpg\",\"products\\/56-1.jpg\"]'),(148,10,NULL,NULL,65,2.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/18-2.jpg\",\"products\\/22-2.jpg\",\"products\\/30-1.jpg\"]'),(149,4,NULL,NULL,9,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-1.jpg\",\"products\\/28-2.jpg\",\"products\\/64-1.jpg\"]'),(150,3,NULL,NULL,43,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-3.jpg\"]'),(151,8,NULL,NULL,32,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-1.jpg\"]'),(152,2,NULL,NULL,59,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13-1.jpg\",\"products\\/20-1.jpg\",\"products\\/59.jpg\"]'),(153,7,NULL,NULL,23,1.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-2.jpg\",\"products\\/49-2.jpg\"]'),(154,7,NULL,NULL,44,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-3.jpg\",\"products\\/31.jpg\"]'),(155,3,NULL,NULL,34,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/39.jpg\"]'),(156,10,NULL,NULL,18,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/27.jpg\"]'),(157,3,NULL,NULL,44,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/44.jpg\"]'),(158,10,NULL,NULL,8,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/9.jpg\",\"products\\/18-3.jpg\",\"products\\/44-2.jpg\"]'),(160,4,NULL,NULL,14,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/42.jpg\",\"products\\/44.jpg\",\"products\\/59-1.jpg\"]'),(161,1,NULL,NULL,55,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\",\"products\\/12-2.jpg\",\"products\\/43.jpg\",\"products\\/57.jpg\"]'),(162,1,NULL,NULL,25,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\"]'),(163,9,NULL,NULL,23,2.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12.jpg\",\"products\\/32-2.jpg\"]'),(164,8,NULL,NULL,42,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/53.jpg\"]'),(165,9,NULL,NULL,7,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-2.jpg\"]'),(166,6,NULL,NULL,62,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/33.jpg\",\"products\\/41.jpg\",\"products\\/57-1.jpg\"]'),(167,6,NULL,NULL,44,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\"]'),(168,9,NULL,NULL,12,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29-2.jpg\",\"products\\/38.jpg\",\"products\\/62.jpg\"]'),(169,1,NULL,NULL,5,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-2.jpg\"]'),(171,4,NULL,NULL,50,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/18-3.jpg\",\"products\\/31-1.jpg\",\"products\\/63-1.jpg\"]'),(172,9,NULL,NULL,51,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59.jpg\"]'),(174,1,NULL,NULL,8,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/35-1.jpg\",\"products\\/53.jpg\"]'),(176,7,NULL,NULL,39,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-2.jpg\",\"products\\/45.jpg\",\"products\\/46.jpg\"]'),(178,7,NULL,NULL,51,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\",\"products\\/34-1.jpg\",\"products\\/59-2.jpg\"]'),(179,2,NULL,NULL,5,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/32-1.jpg\"]'),(180,5,NULL,NULL,26,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-2.jpg\",\"products\\/33-2.jpg\",\"products\\/41-1.jpg\"]'),(182,2,NULL,NULL,36,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30.jpg\",\"products\\/48-1.jpg\"]'),(186,4,NULL,NULL,65,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\",\"products\\/34.jpg\",\"products\\/43.jpg\",\"products\\/50.jpg\"]'),(188,6,NULL,NULL,25,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/63.jpg\"]'),(189,7,NULL,NULL,43,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/40.jpg\"]'),(190,1,NULL,NULL,24,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/18-2.jpg\",\"products\\/45-1.jpg\",\"products\\/55-2.jpg\"]'),(191,7,NULL,NULL,33,1.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10.jpg\",\"products\\/18-2.jpg\",\"products\\/25.jpg\",\"products\\/55.jpg\"]'),(192,8,NULL,NULL,24,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/19-3.jpg\",\"products\\/51.jpg\"]'),(193,5,NULL,NULL,63,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/22-1.jpg\"]'),(194,6,NULL,NULL,53,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\",\"products\\/59-2.jpg\"]'),(195,8,NULL,NULL,6,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36-1.jpg\"]'),(196,9,NULL,NULL,37,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/33-1.jpg\",\"products\\/59.jpg\"]'),(198,6,NULL,NULL,60,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49-2.jpg\"]'),(199,8,NULL,NULL,39,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/19-1.jpg\",\"products\\/57-1.jpg\"]'),(201,5,NULL,NULL,54,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/41.jpg\",\"products\\/50.jpg\",\"products\\/60-2.jpg\"]'),(202,2,NULL,NULL,27,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28.jpg\",\"products\\/49.jpg\",\"products\\/56-1.jpg\"]'),(203,9,NULL,NULL,6,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-3.jpg\",\"products\\/20-3.jpg\",\"products\\/55.jpg\"]'),(204,1,NULL,NULL,42,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49-1.jpg\"]'),(206,1,NULL,NULL,15,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35.jpg\",\"products\\/37.jpg\"]'),(207,6,NULL,NULL,45,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/27.jpg\",\"products\\/42.jpg\",\"products\\/61.jpg\"]'),(209,3,NULL,NULL,4,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-3.jpg\",\"products\\/25-2.jpg\"]'),(210,3,NULL,NULL,57,3.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/20-2.jpg\"]'),(211,2,NULL,NULL,13,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-3.jpg\",\"products\\/58-1.jpg\"]'),(212,8,NULL,NULL,28,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30-1.jpg\",\"products\\/38-2.jpg\",\"products\\/56-2.jpg\"]'),(213,6,NULL,NULL,18,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\",\"products\\/33.jpg\"]'),(214,3,NULL,NULL,12,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/35-1.jpg\",\"products\\/43.jpg\",\"products\\/45-1.jpg\"]'),(216,4,NULL,NULL,34,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/13-1.jpg\",\"products\\/43.jpg\",\"products\\/47-1.jpg\"]'),(217,3,NULL,NULL,56,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13-1.jpg\",\"products\\/30-2.jpg\"]'),(218,1,NULL,NULL,65,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/34-1.jpg\",\"products\\/42-1.jpg\",\"products\\/52.jpg\",\"products\\/57-1.jpg\"]'),(220,4,NULL,NULL,5,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/9-2.jpg\"]'),(221,8,NULL,NULL,12,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/57.jpg\"]'),(223,4,NULL,NULL,18,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28.jpg\",\"products\\/44-1.jpg\",\"products\\/62-1.jpg\"]'),(224,8,NULL,NULL,36,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13-1.jpg\",\"products\\/22.jpg\"]'),(227,8,NULL,NULL,10,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17.jpg\",\"products\\/18-3.jpg\",\"products\\/62-1.jpg\"]'),(228,9,NULL,NULL,14,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\",\"products\\/27-1.jpg\",\"products\\/40-1.jpg\",\"products\\/60.jpg\"]'),(229,5,NULL,NULL,60,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20.jpg\",\"products\\/30-1.jpg\",\"products\\/36-1.jpg\"]'),(231,10,NULL,NULL,21,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12.jpg\",\"products\\/14.jpg\",\"products\\/16.jpg\",\"products\\/18-1.jpg\"]'),(233,5,NULL,NULL,22,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12.jpg\",\"products\\/22.jpg\",\"products\\/23-1.jpg\"]'),(234,6,NULL,NULL,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-1.jpg\",\"products\\/38-3.jpg\"]'),(235,8,NULL,NULL,60,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-3.jpg\",\"products\\/20-1.jpg\",\"products\\/20-3.jpg\"]'),(237,5,NULL,NULL,41,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-3.jpg\",\"products\\/43.jpg\",\"products\\/65-2.jpg\"]'),(242,4,NULL,NULL,52,4.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\"]'),(243,9,NULL,NULL,5,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\",\"products\\/44-1.jpg\"]'),(244,8,NULL,NULL,53,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-2.jpg\",\"products\\/23-3.jpg\"]'),(245,2,NULL,NULL,46,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\"]'),(246,3,NULL,NULL,64,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/10-1.jpg\",\"products\\/20-1.jpg\",\"products\\/23-2.jpg\"]'),(248,6,NULL,NULL,19,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/41-2.jpg\"]'),(249,8,NULL,NULL,14,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18.jpg\",\"products\\/61.jpg\"]'),(251,6,NULL,NULL,27,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/10-1.jpg\",\"products\\/21-1.jpg\",\"products\\/45-1.jpg\"]'),(252,4,NULL,NULL,4,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11.jpg\",\"products\\/19-1.jpg\",\"products\\/36-2.jpg\"]'),(253,7,NULL,NULL,36,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-1.jpg\",\"products\\/42-1.jpg\",\"products\\/47.jpg\"]'),(254,5,NULL,NULL,37,2.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/37-2.jpg\"]'),(255,7,NULL,NULL,52,2.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36.jpg\"]'),(256,7,NULL,NULL,56,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38.jpg\"]'),(259,1,NULL,NULL,47,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\"]'),(262,3,NULL,NULL,60,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18.jpg\",\"products\\/42-1.jpg\"]'),(263,9,NULL,NULL,10,4.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/60-2.jpg\"]'),(264,9,NULL,NULL,61,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10.jpg\"]'),(265,4,NULL,NULL,62,5.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10.jpg\"]'),(267,7,NULL,NULL,6,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36-1.jpg\",\"products\\/36-2.jpg\",\"products\\/43-2.jpg\"]'),(268,8,NULL,NULL,43,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-2.jpg\"]'),(269,6,NULL,NULL,7,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/19-1.jpg\"]'),(270,2,NULL,NULL,3,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/41.jpg\"]'),(271,10,NULL,NULL,26,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-1.jpg\",\"products\\/11-3.jpg\",\"products\\/58-1.jpg\"]'),(272,5,NULL,NULL,57,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-1.jpg\",\"products\\/35-1.jpg\"]'),(273,8,NULL,NULL,50,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/43-1.jpg\",\"products\\/51.jpg\",\"products\\/63.jpg\"]'),(274,3,NULL,NULL,26,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23.jpg\",\"products\\/27.jpg\",\"products\\/54.jpg\",\"products\\/59-3.jpg\"]'),(275,3,NULL,NULL,58,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-3.jpg\",\"products\\/32-2.jpg\",\"products\\/51.jpg\",\"products\\/62-1.jpg\"]'),(277,8,NULL,NULL,34,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/52.jpg\",\"products\\/60-2.jpg\"]'),(280,6,NULL,NULL,4,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15-1.jpg\"]'),(283,5,NULL,NULL,58,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18.jpg\",\"products\\/27.jpg\",\"products\\/40-1.jpg\",\"products\\/45.jpg\"]'),(284,3,NULL,NULL,21,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/36.jpg\",\"products\\/61.jpg\"]'),(285,5,NULL,NULL,42,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\",\"products\\/49-2.jpg\"]'),(288,6,NULL,NULL,12,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-3.jpg\",\"products\\/21-2.jpg\",\"products\\/30-1.jpg\",\"products\\/31.jpg\"]'),(289,5,NULL,NULL,52,1.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/3.jpg\",\"products\\/15-1.jpg\",\"products\\/57.jpg\"]'),(290,3,NULL,NULL,65,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/40-1.jpg\",\"products\\/52-2.jpg\",\"products\\/53.jpg\",\"products\\/62.jpg\"]'),(291,10,NULL,NULL,6,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29-1.jpg\",\"products\\/39-1.jpg\",\"products\\/43-1.jpg\",\"products\\/65-2.jpg\"]'),(293,2,NULL,NULL,23,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\"]'),(294,8,NULL,NULL,58,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/33.jpg\"]'),(295,4,NULL,NULL,27,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/29-2.jpg\",\"products\\/35-1.jpg\"]'),(297,2,NULL,NULL,18,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-2.jpg\",\"products\\/36.jpg\"]'),(299,6,NULL,NULL,22,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5.jpg\"]'),(300,2,NULL,NULL,57,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\",\"products\\/35-1.jpg\",\"products\\/59-2.jpg\"]'),(301,10,NULL,NULL,43,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\",\"products\\/13.jpg\"]'),(304,1,NULL,NULL,31,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-1.jpg\",\"products\\/29-2.jpg\",\"products\\/39.jpg\"]'),(308,6,NULL,NULL,50,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/22-3.jpg\",\"products\\/45-1.jpg\"]'),(309,1,NULL,NULL,44,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\",\"products\\/41-1.jpg\",\"products\\/53-1.jpg\",\"products\\/55-1.jpg\"]'),(312,7,NULL,NULL,14,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/19.jpg\",\"products\\/22-1.jpg\"]'),(313,3,NULL,NULL,7,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/58-1.jpg\"]'),(316,8,NULL,NULL,44,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/58-2.jpg\"]'),(318,4,NULL,NULL,39,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/43-2.jpg\"]'),(319,2,NULL,NULL,55,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-1.jpg\"]'),(324,5,NULL,NULL,61,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13-1.jpg\",\"products\\/31.jpg\",\"products\\/43-2.jpg\"]'),(325,9,NULL,NULL,54,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/31.jpg\",\"products\\/48-1.jpg\"]'),(327,5,NULL,NULL,27,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-3.jpg\",\"products\\/14.jpg\",\"products\\/22-3.jpg\",\"products\\/25.jpg\"]'),(332,6,NULL,NULL,46,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/17.jpg\"]'),(335,8,NULL,NULL,4,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/39-1.jpg\",\"products\\/53-1.jpg\"]'),(336,6,NULL,NULL,64,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/19.jpg\",\"products\\/22-3.jpg\",\"products\\/24.jpg\"]'),(337,4,NULL,NULL,29,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30-2.jpg\",\"products\\/45-1.jpg\"]'),(339,2,NULL,NULL,29,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/41.jpg\",\"products\\/54-1.jpg\"]'),(340,10,NULL,NULL,9,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49.jpg\"]'),(341,10,NULL,NULL,55,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/32-2.jpg\",\"products\\/36-1.jpg\",\"products\\/36-2.jpg\"]'),(342,4,NULL,NULL,32,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-1.jpg\",\"products\\/28-2.jpg\",\"products\\/36-1.jpg\"]'),(343,7,NULL,NULL,31,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\"]'),(344,5,NULL,NULL,53,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\",\"products\\/25-1.jpg\",\"products\\/58-2.jpg\"]'),(345,5,NULL,NULL,6,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/25-1.jpg\"]'),(347,1,NULL,NULL,53,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-2.jpg\",\"products\\/15-1.jpg\",\"products\\/22.jpg\",\"products\\/37.jpg\"]'),(348,4,NULL,NULL,38,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\"]'),(349,10,NULL,NULL,60,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15.jpg\",\"products\\/39.jpg\"]'),(350,6,NULL,NULL,28,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36.jpg\"]'),(352,10,NULL,NULL,53,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4.jpg\",\"products\\/19-3.jpg\"]'),(354,10,NULL,NULL,20,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/29-1.jpg\"]'),(355,9,NULL,NULL,11,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/46.jpg\",\"products\\/55.jpg\",\"products\\/56-1.jpg\",\"products\\/58-1.jpg\"]'),(358,10,NULL,NULL,54,3.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-3.jpg\",\"products\\/61.jpg\"]'),(359,8,NULL,NULL,15,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-1.jpg\",\"products\\/49-2.jpg\",\"products\\/56-1.jpg\"]'),(362,1,NULL,NULL,57,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-2.jpg\",\"products\\/25.jpg\"]'),(363,5,NULL,NULL,30,1.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35.jpg\",\"products\\/50.jpg\"]'),(364,4,NULL,NULL,60,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/31-1.jpg\"]'),(365,6,NULL,NULL,57,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-2.jpg\",\"products\\/37-1.jpg\",\"products\\/52.jpg\",\"products\\/55-2.jpg\"]'),(366,1,NULL,NULL,17,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/63.jpg\"]'),(367,4,NULL,NULL,26,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/44-1.jpg\"]'),(371,9,NULL,NULL,60,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-1.jpg\",\"products\\/25.jpg\",\"products\\/59-1.jpg\"]'),(373,5,NULL,NULL,16,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59.jpg\"]'),(374,2,NULL,NULL,64,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/20-1.jpg\",\"products\\/40.jpg\",\"products\\/63-1.jpg\"]'),(376,2,NULL,NULL,16,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\",\"products\\/18-3.jpg\",\"products\\/26.jpg\",\"products\\/65.jpg\"]'),(379,1,NULL,NULL,40,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/46-1.jpg\"]'),(381,9,NULL,NULL,34,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-1.jpg\",\"products\\/40-1.jpg\",\"products\\/58.jpg\"]'),(382,4,NULL,NULL,51,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21.jpg\",\"products\\/42-2.jpg\",\"products\\/43-2.jpg\"]'),(385,9,NULL,NULL,46,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35-1.jpg\",\"products\\/52-2.jpg\"]'),(386,3,NULL,NULL,51,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-1.jpg\",\"products\\/22-2.jpg\",\"products\\/56-1.jpg\"]'),(388,9,NULL,NULL,28,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-3.jpg\",\"products\\/60.jpg\"]'),(389,2,NULL,NULL,58,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/18-1.jpg\",\"products\\/47.jpg\",\"products\\/50.jpg\"]'),(393,2,NULL,NULL,14,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/26.jpg\"]'),(397,9,NULL,NULL,62,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9.jpg\",\"products\\/33-2.jpg\",\"products\\/39-1.jpg\",\"products\\/43-1.jpg\"]'),(398,5,NULL,NULL,3,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15-1.jpg\"]'),(400,4,NULL,NULL,55,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30-1.jpg\"]'),(401,9,NULL,NULL,53,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/19.jpg\",\"products\\/54.jpg\",\"products\\/58.jpg\"]'),(403,2,NULL,NULL,4,2.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/50.jpg\"]'),(405,9,NULL,NULL,56,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/1.jpg\",\"products\\/12-1.jpg\",\"products\\/22-3.jpg\",\"products\\/34.jpg\"]'),(406,7,NULL,NULL,59,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15-1.jpg\",\"products\\/60-2.jpg\"]'),(408,10,NULL,NULL,10,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/26-1.jpg\",\"products\\/47.jpg\",\"products\\/48-2.jpg\",\"products\\/52-2.jpg\"]'),(409,2,NULL,NULL,28,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/32.jpg\",\"products\\/55.jpg\"]'),(414,6,NULL,NULL,13,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-1.jpg\",\"products\\/24.jpg\",\"products\\/42.jpg\",\"products\\/48-2.jpg\"]'),(416,1,NULL,NULL,30,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\"]'),(418,1,NULL,NULL,11,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/58.jpg\"]'),(422,10,NULL,NULL,45,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/1.jpg\",\"products\\/44-2.jpg\"]'),(425,2,NULL,NULL,22,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-2.jpg\",\"products\\/16.jpg\",\"products\\/23.jpg\",\"products\\/24-1.jpg\"]'),(426,7,NULL,NULL,64,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38.jpg\"]'),(429,2,NULL,NULL,21,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/14.jpg\"]'),(432,10,NULL,NULL,7,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/23-3.jpg\",\"products\\/45.jpg\",\"products\\/49-2.jpg\"]'),(433,5,NULL,NULL,32,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-3.jpg\",\"products\\/57.jpg\"]'),(435,4,NULL,NULL,56,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38.jpg\"]'),(437,5,NULL,NULL,15,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/63-1.jpg\"]'),(438,6,NULL,NULL,54,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-2.jpg\",\"products\\/38-1.jpg\",\"products\\/47-1.jpg\",\"products\\/56-1.jpg\"]'),(440,7,NULL,NULL,53,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15.jpg\",\"products\\/28-1.jpg\"]'),(441,10,NULL,NULL,56,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\"]'),(444,2,NULL,NULL,11,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/48.jpg\",\"products\\/53-1.jpg\"]'),(445,8,NULL,NULL,62,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59-1.jpg\",\"products\\/63.jpg\",\"products\\/65-1.jpg\"]'),(448,8,NULL,NULL,25,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/24.jpg\",\"products\\/37-1.jpg\",\"products\\/42-1.jpg\"]'),(452,1,NULL,NULL,29,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-3.jpg\",\"products\\/4-1.jpg\",\"products\\/38.jpg\",\"products\\/49.jpg\"]'),(453,10,NULL,NULL,32,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-2.jpg\",\"products\\/42-1.jpg\",\"products\\/44-2.jpg\"]'),(454,4,NULL,NULL,42,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/49-1.jpg\"]'),(455,2,NULL,NULL,33,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-2.jpg\",\"products\\/33-1.jpg\",\"products\\/38-3.jpg\",\"products\\/49-1.jpg\"]'),(457,6,NULL,NULL,5,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\",\"products\\/23-3.jpg\",\"products\\/29-2.jpg\",\"products\\/44-1.jpg\"]'),(460,3,NULL,NULL,35,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36.jpg\",\"products\\/62-1.jpg\"]'),(461,1,NULL,NULL,56,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/44-1.jpg\",\"products\\/49.jpg\",\"products\\/53.jpg\"]'),(462,9,NULL,NULL,41,4.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-3.jpg\",\"products\\/30-2.jpg\"]'),(465,10,NULL,NULL,37,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\"]'),(466,9,NULL,NULL,20,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\",\"products\\/55-2.jpg\"]'),(467,1,NULL,NULL,10,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25.jpg\",\"products\\/26.jpg\",\"products\\/61.jpg\"]'),(468,9,NULL,NULL,52,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/43-1.jpg\",\"products\\/65-2.jpg\"]'),(470,6,NULL,NULL,58,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\"]'),(474,1,NULL,NULL,59,2.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/26-1.jpg\",\"products\\/40.jpg\"]'),(475,10,NULL,NULL,52,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/60-1.jpg\"]'),(476,10,NULL,NULL,44,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/36-2.jpg\"]'),(479,5,NULL,NULL,65,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\",\"products\\/32-1.jpg\",\"products\\/62.jpg\"]'),(480,9,NULL,NULL,15,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/25-1.jpg\",\"products\\/47-1.jpg\",\"products\\/52-2.jpg\"]'),(481,3,NULL,NULL,14,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/51.jpg\"]'),(482,3,NULL,NULL,50,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/32-2.jpg\",\"products\\/44-1.jpg\",\"products\\/45-1.jpg\"]'),(484,4,NULL,NULL,17,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-3.jpg\",\"products\\/37-1.jpg\"]'),(490,6,NULL,NULL,59,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/58-2.jpg\"]'),(493,3,NULL,NULL,17,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/35.jpg\"]'),(496,5,NULL,NULL,46,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/53.jpg\",\"products\\/55.jpg\",\"products\\/64-1.jpg\"]'),(497,7,NULL,NULL,27,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-2.jpg\",\"products\\/40.jpg\"]'),(500,10,NULL,NULL,63,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-2.jpg\",\"products\\/27.jpg\",\"products\\/35-1.jpg\",\"products\\/39-1.jpg\"]'),(503,4,NULL,NULL,36,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/33-1.jpg\",\"products\\/33.jpg\"]'),(510,6,NULL,NULL,42,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/17-1.jpg\"]'),(511,9,NULL,NULL,40,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35-1.jpg\",\"products\\/39.jpg\"]'),(516,8,NULL,NULL,59,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-3.jpg\"]'),(517,2,NULL,NULL,44,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-3.jpg\",\"products\\/26-1.jpg\",\"products\\/52.jpg\",\"products\\/53.jpg\"]'),(519,8,NULL,NULL,56,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/60.jpg\",\"products\\/65.jpg\"]'),(520,6,NULL,NULL,55,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25-2.jpg\",\"products\\/46.jpg\",\"products\\/59-1.jpg\"]'),(522,9,NULL,NULL,39,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/42.jpg\",\"products\\/43-1.jpg\"]'),(523,1,NULL,NULL,63,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11.jpg\",\"products\\/39-1.jpg\",\"products\\/54.jpg\",\"products\\/56.jpg\"]'),(524,1,NULL,NULL,22,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/32.jpg\",\"products\\/47.jpg\"]'),(525,10,NULL,NULL,30,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-1.jpg\",\"products\\/25.jpg\",\"products\\/58.jpg\"]'),(526,3,NULL,NULL,37,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24.jpg\",\"products\\/54-1.jpg\",\"products\\/60-1.jpg\"]'),(527,2,NULL,NULL,38,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/22.jpg\",\"products\\/37-1.jpg\",\"products\\/54-1.jpg\"]'),(528,4,NULL,NULL,37,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/59.jpg\"]'),(529,6,NULL,NULL,43,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-2.jpg\",\"products\\/44-2.jpg\",\"products\\/44.jpg\"]'),(530,2,NULL,NULL,41,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/2-3.jpg\",\"products\\/36-2.jpg\",\"products\\/39-1.jpg\"]'),(532,3,NULL,NULL,53,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/3.jpg\",\"products\\/11-2.jpg\",\"products\\/46-1.jpg\",\"products\\/54-1.jpg\"]'),(533,6,NULL,NULL,29,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/17-3.jpg\",\"products\\/40.jpg\",\"products\\/46.jpg\"]'),(535,3,NULL,NULL,27,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-1.jpg\",\"products\\/52-1.jpg\",\"products\\/57.jpg\"]'),(536,6,NULL,NULL,30,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-1.jpg\",\"products\\/32-2.jpg\",\"products\\/34.jpg\"]'),(538,10,NULL,NULL,51,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]'),(542,3,NULL,NULL,30,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-1.jpg\",\"products\\/25-1.jpg\",\"products\\/41.jpg\"]'),(543,5,NULL,NULL,51,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20.jpg\",\"products\\/43-2.jpg\",\"products\\/63.jpg\"]'),(548,10,NULL,NULL,64,5.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/43-2.jpg\",\"products\\/58.jpg\"]'),(553,1,NULL,NULL,4,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\",\"products\\/38.jpg\",\"products\\/44-2.jpg\",\"products\\/54-1.jpg\"]'),(557,7,NULL,NULL,60,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\"]'),(560,3,NULL,NULL,52,3.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/60-2.jpg\"]'),(567,9,NULL,NULL,64,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/54.jpg\"]'),(569,8,NULL,NULL,1,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-1.jpg\",\"products\\/30-1.jpg\",\"products\\/48-1.jpg\"]'),(572,3,NULL,NULL,9,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/39.jpg\",\"products\\/49.jpg\"]'),(573,10,NULL,NULL,12,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/4.jpg\",\"products\\/42-1.jpg\"]'),(574,8,NULL,NULL,35,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/50.jpg\",\"products\\/59-3.jpg\"]'),(575,4,NULL,NULL,58,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/21-1.jpg\",\"products\\/34.jpg\"]'),(576,3,NULL,NULL,32,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/38.jpg\",\"products\\/50.jpg\"]'),(579,9,NULL,NULL,63,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/26-1.jpg\",\"products\\/52-2.jpg\"]'),(580,1,NULL,NULL,6,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/44.jpg\",\"products\\/54-1.jpg\"]'),(581,8,NULL,NULL,37,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-2.jpg\"]'),(582,9,NULL,NULL,35,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12.jpg\",\"products\\/30-1.jpg\",\"products\\/31.jpg\",\"products\\/38.jpg\"]'),(583,5,NULL,NULL,62,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/20.jpg\",\"products\\/31-1.jpg\",\"products\\/31.jpg\"]'),(584,5,NULL,NULL,25,4.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21.jpg\",\"products\\/22-1.jpg\",\"products\\/22-3.jpg\",\"products\\/58-2.jpg\"]'),(586,9,NULL,NULL,9,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/41-2.jpg\",\"products\\/56-1.jpg\"]'),(587,8,NULL,NULL,51,4.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25.jpg\",\"products\\/39-2.jpg\",\"products\\/52-2.jpg\",\"products\\/57-1.jpg\"]'),(588,7,NULL,NULL,38,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\",\"products\\/24.jpg\",\"products\\/50-1.jpg\",\"products\\/60-2.jpg\"]'),(589,9,NULL,NULL,1,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-2.jpg\",\"products\\/37.jpg\",\"products\\/46.jpg\",\"products\\/49.jpg\"]'),(592,8,NULL,NULL,31,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/7.jpg\",\"products\\/17-2.jpg\",\"products\\/43-2.jpg\",\"products\\/50.jpg\"]'),(593,1,NULL,NULL,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\",\"products\\/19-3.jpg\",\"products\\/20-1.jpg\",\"products\\/65-2.jpg\"]'),(594,5,NULL,NULL,5,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-1.jpg\"]'),(596,2,NULL,NULL,60,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\",\"products\\/55.jpg\"]'),(600,2,NULL,NULL,63,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/33-1.jpg\"]'),(603,8,NULL,NULL,33,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/52-1.jpg\",\"products\\/54-1.jpg\",\"products\\/63.jpg\"]'),(604,1,NULL,NULL,1,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-3.jpg\",\"products\\/18.jpg\",\"products\\/34.jpg\",\"products\\/41-1.jpg\"]'),(608,3,NULL,NULL,20,5.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-1.jpg\",\"products\\/22-2.jpg\",\"products\\/44-2.jpg\",\"products\\/57.jpg\"]'),(610,6,NULL,NULL,24,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-2.jpg\"]'),(615,7,NULL,NULL,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/8.jpg\",\"products\\/65-1.jpg\"]'),(618,6,NULL,NULL,63,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59-1.jpg\"]'),(619,5,NULL,NULL,33,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19-2.jpg\",\"products\\/53-1.jpg\"]'),(620,4,NULL,NULL,19,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/28.jpg\",\"products\\/40-1.jpg\",\"products\\/48.jpg\"]'),(621,2,NULL,NULL,6,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/34.jpg\"]'),(624,1,NULL,NULL,2,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-2.jpg\",\"products\\/22-3.jpg\",\"products\\/33.jpg\",\"products\\/41.jpg\"]'),(625,3,NULL,NULL,15,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-3.jpg\"]'),(629,3,NULL,NULL,18,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/25.jpg\"]'),(634,3,NULL,NULL,36,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59.jpg\"]'),(637,8,NULL,NULL,5,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-1.jpg\",\"products\\/57-1.jpg\",\"products\\/58-2.jpg\"]'),(638,9,NULL,NULL,27,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/54-1.jpg\"]'),(640,10,NULL,NULL,29,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/39-2.jpg\"]'),(641,5,NULL,NULL,18,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/53.jpg\",\"products\\/61-1.jpg\"]'),(642,7,NULL,NULL,62,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/31.jpg\",\"products\\/47.jpg\"]'),(643,9,NULL,NULL,30,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4.jpg\",\"products\\/8-2.jpg\",\"products\\/13.jpg\",\"products\\/60-2.jpg\"]'),(652,5,NULL,NULL,55,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18-3.jpg\"]'),(656,5,NULL,NULL,19,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-2.jpg\",\"products\\/17-2.jpg\",\"products\\/35.jpg\",\"products\\/43-1.jpg\"]'),(659,4,NULL,NULL,41,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/9-2.jpg\",\"products\\/33.jpg\"]'),(661,6,NULL,NULL,35,5.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-2.jpg\",\"products\\/38.jpg\",\"products\\/57.jpg\"]'),(662,2,NULL,NULL,49,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-3.jpg\",\"products\\/18.jpg\",\"products\\/25-2.jpg\",\"products\\/41.jpg\"]'),(663,3,NULL,NULL,33,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\"]'),(667,2,NULL,NULL,34,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/3.jpg\",\"products\\/19-3.jpg\",\"products\\/58.jpg\"]'),(671,9,NULL,NULL,21,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/52-2.jpg\"]'),(672,7,NULL,NULL,9,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59-3.jpg\"]'),(680,10,NULL,NULL,17,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/44-2.jpg\",\"products\\/52.jpg\"]'),(682,3,NULL,NULL,8,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/55-2.jpg\"]'),(687,3,NULL,NULL,63,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-2.jpg\"]'),(688,4,NULL,NULL,15,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36-1.jpg\",\"products\\/42-2.jpg\",\"products\\/54-1.jpg\"]'),(689,6,NULL,NULL,51,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-3.jpg\",\"products\\/54-1.jpg\",\"products\\/60.jpg\"]'),(693,1,NULL,NULL,19,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\",\"products\\/43-2.jpg\"]'),(695,5,NULL,NULL,50,1.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2.jpg\",\"products\\/53.jpg\",\"products\\/54.jpg\",\"products\\/57.jpg\"]'),(699,1,NULL,NULL,43,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/38-2.jpg\"]'),(701,3,NULL,NULL,62,3.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/27-1.jpg\",\"products\\/33.jpg\"]'),(702,6,NULL,NULL,20,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30.jpg\",\"products\\/64-1.jpg\"]'),(706,7,NULL,NULL,61,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/22-3.jpg\",\"products\\/26-1.jpg\"]'),(707,8,NULL,NULL,52,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-2.jpg\",\"products\\/30-2.jpg\"]'),(709,6,NULL,NULL,56,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\"]'),(711,10,NULL,NULL,58,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/41.jpg\"]'),(718,1,NULL,NULL,20,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-2.jpg\",\"products\\/39-2.jpg\",\"products\\/61-1.jpg\"]'),(720,9,NULL,NULL,8,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/60.jpg\"]'),(725,7,NULL,NULL,13,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-2.jpg\",\"products\\/22-1.jpg\"]'),(726,10,NULL,NULL,42,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/58-2.jpg\"]'),(728,7,NULL,NULL,35,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/19.jpg\",\"products\\/25-2.jpg\"]'),(737,5,NULL,NULL,49,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/16.jpg\",\"products\\/21.jpg\",\"products\\/39.jpg\"]'),(738,7,NULL,NULL,20,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/33-2.jpg\",\"products\\/33.jpg\",\"products\\/41-1.jpg\"]'),(739,8,NULL,NULL,11,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/1.jpg\",\"products\\/34.jpg\",\"products\\/41-1.jpg\"]'),(741,3,NULL,NULL,10,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59-3.jpg\"]'),(743,7,NULL,NULL,24,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/48.jpg\"]'),(744,5,NULL,NULL,8,1.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-2.jpg\",\"products\\/21.jpg\",\"products\\/35.jpg\"]'),(748,9,NULL,NULL,48,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/42.jpg\"]'),(749,3,NULL,NULL,13,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17-1.jpg\",\"products\\/28-2.jpg\",\"products\\/31-1.jpg\",\"products\\/52.jpg\"]'),(754,7,NULL,NULL,57,5.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-3.jpg\",\"products\\/13.jpg\",\"products\\/59-1.jpg\"]'),(757,4,NULL,NULL,47,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/6.jpg\",\"products\\/36-2.jpg\"]'),(760,7,NULL,NULL,3,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/14.jpg\",\"products\\/17-3.jpg\",\"products\\/21.jpg\"]'),(782,9,NULL,NULL,24,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/49-1.jpg\",\"products\\/58.jpg\"]'),(784,5,NULL,NULL,36,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/15-1.jpg\"]'),(786,1,NULL,NULL,3,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36-2.jpg\",\"products\\/60.jpg\"]'),(788,3,NULL,NULL,29,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/9-2.jpg\",\"products\\/48-2.jpg\"]'),(791,9,NULL,NULL,4,3.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\",\"products\\/28-2.jpg\",\"products\\/38-1.jpg\",\"products\\/58-1.jpg\"]'),(793,1,NULL,NULL,35,3.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24.jpg\",\"products\\/27-1.jpg\",\"products\\/49.jpg\",\"products\\/58-2.jpg\"]'),(795,10,NULL,NULL,40,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-2.jpg\",\"products\\/9-1.jpg\",\"products\\/18.jpg\",\"products\\/46.jpg\"]'),(796,3,NULL,NULL,59,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/33-2.jpg\"]'),(799,2,NULL,NULL,45,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-1.jpg\",\"products\\/64-1.jpg\"]'),(800,6,NULL,NULL,61,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/52-1.jpg\"]'),(805,1,NULL,NULL,45,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/50-1.jpg\",\"products\\/65.jpg\"]'),(806,8,NULL,NULL,40,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/19-3.jpg\",\"products\\/62-1.jpg\"]'),(807,9,NULL,NULL,45,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-1.jpg\"]'),(808,2,NULL,NULL,43,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/15.jpg\",\"products\\/22.jpg\"]'),(809,5,NULL,NULL,9,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\",\"products\\/19-1.jpg\",\"products\\/64-1.jpg\"]'),(812,1,NULL,NULL,27,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/10-2.jpg\"]'),(816,3,NULL,NULL,3,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-1.jpg\",\"products\\/18-2.jpg\",\"products\\/56.jpg\",\"products\\/63-1.jpg\"]'),(821,3,NULL,NULL,41,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/42-1.jpg\"]'),(823,3,NULL,NULL,16,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-2.jpg\"]'),(831,10,NULL,NULL,13,5.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\"]'),(834,6,NULL,NULL,31,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-3.jpg\",\"products\\/26-1.jpg\",\"products\\/54-1.jpg\"]'),(849,7,NULL,NULL,45,3.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/14.jpg\",\"products\\/37.jpg\"]'),(854,8,NULL,NULL,61,2.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/17.jpg\"]'),(856,2,NULL,NULL,25,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/12-2.jpg\",\"products\\/32-2.jpg\",\"products\\/43-1.jpg\",\"products\\/43-2.jpg\"]'),(858,8,NULL,NULL,57,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/11-3.jpg\"]'),(867,9,NULL,NULL,29,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/30-2.jpg\",\"products\\/37.jpg\",\"products\\/65.jpg\"]'),(868,5,NULL,NULL,29,5.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35-1.jpg\",\"products\\/44-2.jpg\"]'),(872,5,NULL,NULL,13,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/55.jpg\"]'),(874,10,NULL,NULL,61,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/27-1.jpg\"]'),(886,4,NULL,NULL,63,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-1.jpg\",\"products\\/7.jpg\",\"products\\/17-2.jpg\",\"products\\/44.jpg\"]'),(890,8,NULL,NULL,19,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/18.jpg\",\"products\\/30-2.jpg\",\"products\\/33-1.jpg\",\"products\\/43-2.jpg\"]'),(913,7,NULL,NULL,1,4.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-1.jpg\",\"products\\/32-2.jpg\",\"products\\/36-2.jpg\",\"products\\/59-3.jpg\"]'),(914,9,NULL,NULL,49,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\",\"products\\/24.jpg\",\"products\\/52-2.jpg\"]'),(919,8,NULL,NULL,16,3.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/35-1.jpg\",\"products\\/50.jpg\",\"products\\/58-1.jpg\"]'),(922,7,NULL,NULL,55,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/24-1.jpg\",\"products\\/55.jpg\"]'),(924,8,NULL,NULL,22,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8.jpg\",\"products\\/20.jpg\",\"products\\/23-2.jpg\",\"products\\/52.jpg\"]'),(925,10,NULL,NULL,4,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/24-2.jpg\",\"products\\/41.jpg\"]'),(929,2,NULL,NULL,35,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/28-1.jpg\",\"products\\/33.jpg\"]'),(930,6,NULL,NULL,16,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/62.jpg\"]'),(938,6,NULL,NULL,47,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21-1.jpg\",\"products\\/30-2.jpg\",\"products\\/59-3.jpg\"]'),(939,2,NULL,NULL,53,1.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/59-2.jpg\"]'),(940,4,NULL,NULL,57,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-2.jpg\",\"products\\/36.jpg\",\"products\\/52-1.jpg\",\"products\\/53.jpg\"]'),(942,1,NULL,NULL,32,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5.jpg\",\"products\\/22.jpg\",\"products\\/45-1.jpg\"]'),(946,7,NULL,NULL,11,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/5-1.jpg\",\"products\\/5-3.jpg\",\"products\\/22-3.jpg\"]'),(947,1,NULL,NULL,51,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/23-3.jpg\"]'),(952,4,NULL,NULL,23,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/4-2.jpg\",\"products\\/8-3.jpg\",\"products\\/39.jpg\",\"products\\/63-1.jpg\"]'),(954,7,NULL,NULL,30,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20.jpg\"]'),(969,10,NULL,NULL,27,3.00,'Best ecommerce CMS online store!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/2-1.jpg\",\"products\\/39.jpg\"]'),(975,2,NULL,NULL,19,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/13.jpg\"]'),(982,8,NULL,NULL,47,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/21.jpg\",\"products\\/52-2.jpg\"]'),(988,2,NULL,NULL,42,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/38-1.jpg\"]'),(993,5,NULL,NULL,31,5.00,'Clean & perfect source code','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/8-3.jpg\",\"products\\/23.jpg\",\"products\\/32-1.jpg\",\"products\\/65-1.jpg\"]'),(997,2,NULL,NULL,24,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/36.jpg\",\"products\\/48-2.jpg\",\"products\\/49-1.jpg\",\"products\\/52.jpg\"]'),(998,9,NULL,NULL,44,5.00,'Good app, good backup service and support. Good documentation.','published','2024-08-21 20:36:22','2024-08-21 20:36:22','[\"products\\/20-3.jpg\",\"products\\/58-2.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-08-21 20:36:13','2024-08-21 20:36:13');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-08-21 20:36:13','2024-08-21 20:36:13'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-08-21 20:36:13','2024-08-21 20:36:13'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-08-21 20:36:13','2024-08-21 20:36:13');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Farmart','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-08-21 20:36:22','2024-08-21 20:36:22',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,3),(1,4),(1,5),(1,12),(1,18),(1,19),(1,22),(1,27),(1,28),(1,30),(1,32),(1,33),(1,37),(1,41),(1,55),(1,60),(1,64),(1,65),(2,6),(2,7),(2,10),(2,14),(2,15),(2,16),(2,20),(2,29),(2,35),(2,38),(2,39),(2,42),(2,44),(2,47),(2,48),(2,49),(2,50),(2,52),(2,53),(2,56),(2,57),(2,58),(2,59),(2,62),(3,1),(3,2),(3,8),(3,9),(3,11),(3,13),(3,17),(3,21),(3,23),(3,24),(3,25),(3,26),(3,31),(3,34),(3,36),(3,40),(3,43),(3,45),(3,46),(3,51),(3,54),(3,61),(3,63);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(2,'None',0.000000,2,'published','2024-08-21 20:36:13','2024-08-21 20:36:13'),(3,'Import Tax',15.000000,3,'published','2024-08-21 20:36:13','2024-08-21 20:36:13');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL),(2,'PAYMENT',1,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL),(3,'ORDER &amp; RETURNS',2,'published','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-08-21 20:36:10','2024-08-21 20:36:10'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','abc6f1006b9349b868d5adcc83524313',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','bb171c142c0a1fedb6c7438f07ecef55',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','5019f5cd1a550cbf386ff91f2cf52834',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','a412f1bd3e42ac7707635ae962b668df',2,'Botble\\Menu\\Models\\MenuLocation'),(5,'en_US','bae5413b2db597c58834e3895c818553',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','355f3b26cf515142b7b76318df2993a9',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','4d315d9e47a417ef116ad61a6b04c708',4,'Botble\\Menu\\Models\\Menu'),(8,'en_US','6cd4801f599325a85a6ee48c92bbbba2',5,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',5403,'brands/1.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(2,0,'2','2',1,'image/png',5403,'brands/2.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(3,0,'3','3',1,'image/png',5403,'brands/3.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(4,0,'4','4',1,'image/png',5403,'brands/4.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(5,0,'1','1',2,'image/png',5327,'product-categories/1.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(6,0,'2','2',2,'image/png',5327,'product-categories/2.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(7,0,'3','3',2,'image/png',5327,'product-categories/3.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(8,0,'4','4',2,'image/png',5327,'product-categories/4.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(9,0,'5','5',2,'image/png',5327,'product-categories/5.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(10,0,'6','6',2,'image/png',5327,'product-categories/6.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(11,0,'7','7',2,'image/png',5327,'product-categories/7.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(12,0,'8','8',2,'image/png',5327,'product-categories/8.png','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(13,0,'1','1',3,'image/jpeg',9803,'customers/1.jpg','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(14,0,'10','10',3,'image/jpeg',9803,'customers/10.jpg','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(15,0,'2','2',3,'image/jpeg',9803,'customers/2.jpg','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(16,0,'3','3',3,'image/jpeg',9803,'customers/3.jpg','[]','2024-08-21 20:36:10','2024-08-21 20:36:10',NULL,'public'),(17,0,'4','4',3,'image/jpeg',9803,'customers/4.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(18,0,'5','5',3,'image/jpeg',9803,'customers/5.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(19,0,'6','6',3,'image/jpeg',9803,'customers/6.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(20,0,'7','7',3,'image/jpeg',9803,'customers/7.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(21,0,'8','8',3,'image/jpeg',9803,'customers/8.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(22,0,'9','9',3,'image/jpeg',9803,'customers/9.jpg','[]','2024-08-21 20:36:11','2024-08-21 20:36:11',NULL,'public'),(23,0,'1','1',4,'image/jpeg',9803,'products/1.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(24,0,'10-1','10-1',4,'image/jpeg',9803,'products/10-1.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(25,0,'10-2','10-2',4,'image/jpeg',9803,'products/10-2.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(26,0,'10','10',4,'image/jpeg',9803,'products/10.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(27,0,'11-1','11-1',4,'image/jpeg',9803,'products/11-1.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(28,0,'11-2','11-2',4,'image/jpeg',9803,'products/11-2.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(29,0,'11-3','11-3',4,'image/jpeg',9803,'products/11-3.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(30,0,'11','11',4,'image/jpeg',9803,'products/11.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(31,0,'12-1','12-1',4,'image/jpeg',9803,'products/12-1.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(32,0,'12-2','12-2',4,'image/jpeg',9803,'products/12-2.jpg','[]','2024-08-21 20:36:13','2024-08-21 20:36:13',NULL,'public'),(33,0,'12-3','12-3',4,'image/jpeg',9803,'products/12-3.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(34,0,'12','12',4,'image/jpeg',9803,'products/12.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(35,0,'13-1','13-1',4,'image/jpeg',9803,'products/13-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(36,0,'13','13',4,'image/jpeg',9803,'products/13.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(37,0,'14','14',4,'image/jpeg',9803,'products/14.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(38,0,'15-1','15-1',4,'image/jpeg',9803,'products/15-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(39,0,'15','15',4,'image/jpeg',9803,'products/15.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(40,0,'16','16',4,'image/jpeg',9803,'products/16.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(41,0,'17-1','17-1',4,'image/jpeg',9803,'products/17-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(42,0,'17-2','17-2',4,'image/jpeg',9803,'products/17-2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(43,0,'17-3','17-3',4,'image/jpeg',9803,'products/17-3.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(44,0,'17','17',4,'image/jpeg',9803,'products/17.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(45,0,'18-1','18-1',4,'image/jpeg',9803,'products/18-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(46,0,'18-2','18-2',4,'image/jpeg',9803,'products/18-2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(47,0,'18-3','18-3',4,'image/jpeg',9803,'products/18-3.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(48,0,'18','18',4,'image/jpeg',9803,'products/18.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(49,0,'19-1','19-1',4,'image/jpeg',9803,'products/19-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(50,0,'19-2','19-2',4,'image/jpeg',9803,'products/19-2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(51,0,'19-3','19-3',4,'image/jpeg',9803,'products/19-3.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(52,0,'19','19',4,'image/jpeg',9803,'products/19.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(53,0,'2-1','2-1',4,'image/jpeg',9803,'products/2-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(54,0,'2-2','2-2',4,'image/jpeg',9803,'products/2-2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(55,0,'2-3','2-3',4,'image/jpeg',9803,'products/2-3.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(56,0,'2','2',4,'image/jpeg',9803,'products/2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(57,0,'20-1','20-1',4,'image/jpeg',9803,'products/20-1.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(58,0,'20-2','20-2',4,'image/jpeg',9803,'products/20-2.jpg','[]','2024-08-21 20:36:14','2024-08-21 20:36:14',NULL,'public'),(59,0,'20-3','20-3',4,'image/jpeg',9803,'products/20-3.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(60,0,'20','20',4,'image/jpeg',9803,'products/20.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(61,0,'21-1','21-1',4,'image/jpeg',9803,'products/21-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(62,0,'21-2','21-2',4,'image/jpeg',9803,'products/21-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(63,0,'21','21',4,'image/jpeg',9803,'products/21.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(64,0,'22-1','22-1',4,'image/jpeg',9803,'products/22-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(65,0,'22-2','22-2',4,'image/jpeg',9803,'products/22-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(66,0,'22-3','22-3',4,'image/jpeg',9803,'products/22-3.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(67,0,'22','22',4,'image/jpeg',9803,'products/22.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(68,0,'23-1','23-1',4,'image/jpeg',9803,'products/23-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(69,0,'23-2','23-2',4,'image/jpeg',9803,'products/23-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(70,0,'23-3','23-3',4,'image/jpeg',9803,'products/23-3.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(71,0,'23','23',4,'image/jpeg',9803,'products/23.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(72,0,'24-1','24-1',4,'image/jpeg',9803,'products/24-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(73,0,'24-2','24-2',4,'image/jpeg',9803,'products/24-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(74,0,'24','24',4,'image/jpeg',9803,'products/24.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(75,0,'25-1','25-1',4,'image/jpeg',9803,'products/25-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(76,0,'25-2','25-2',4,'image/jpeg',9803,'products/25-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(77,0,'25','25',4,'image/jpeg',9803,'products/25.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(78,0,'26-1','26-1',4,'image/jpeg',9803,'products/26-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(79,0,'26','26',4,'image/jpeg',9803,'products/26.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(80,0,'27-1','27-1',4,'image/jpeg',9803,'products/27-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(81,0,'27','27',4,'image/jpeg',9803,'products/27.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(82,0,'28-1','28-1',4,'image/jpeg',9803,'products/28-1.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(83,0,'28-2','28-2',4,'image/jpeg',9803,'products/28-2.jpg','[]','2024-08-21 20:36:15','2024-08-21 20:36:15',NULL,'public'),(84,0,'28','28',4,'image/jpeg',9803,'products/28.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(85,0,'29-1','29-1',4,'image/jpeg',9803,'products/29-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(86,0,'29-2','29-2',4,'image/jpeg',9803,'products/29-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(87,0,'29','29',4,'image/jpeg',9803,'products/29.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(88,0,'3','3',4,'image/jpeg',9803,'products/3.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(89,0,'30-1','30-1',4,'image/jpeg',9803,'products/30-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(90,0,'30-2','30-2',4,'image/jpeg',9803,'products/30-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(91,0,'30','30',4,'image/jpeg',9803,'products/30.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(92,0,'31-1','31-1',4,'image/jpeg',9803,'products/31-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(93,0,'31','31',4,'image/jpeg',9803,'products/31.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(94,0,'32-1','32-1',4,'image/jpeg',9803,'products/32-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(95,0,'32-2','32-2',4,'image/jpeg',9803,'products/32-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(96,0,'32','32',4,'image/jpeg',9803,'products/32.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(97,0,'33-1','33-1',4,'image/jpeg',9803,'products/33-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(98,0,'33-2','33-2',4,'image/jpeg',9803,'products/33-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(99,0,'33','33',4,'image/jpeg',9803,'products/33.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(100,0,'34-1','34-1',4,'image/jpeg',9803,'products/34-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(101,0,'34','34',4,'image/jpeg',9803,'products/34.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(102,0,'35-1','35-1',4,'image/jpeg',9803,'products/35-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(103,0,'35','35',4,'image/jpeg',9803,'products/35.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(104,0,'36-1','36-1',4,'image/jpeg',9803,'products/36-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(105,0,'36-2','36-2',4,'image/jpeg',9803,'products/36-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(106,0,'36','36',4,'image/jpeg',9803,'products/36.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(107,0,'37-1','37-1',4,'image/jpeg',9803,'products/37-1.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(108,0,'37-2','37-2',4,'image/jpeg',9803,'products/37-2.jpg','[]','2024-08-21 20:36:16','2024-08-21 20:36:16',NULL,'public'),(109,0,'37','37',4,'image/jpeg',9803,'products/37.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(110,0,'38-1','38-1',4,'image/jpeg',9803,'products/38-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(111,0,'38-2','38-2',4,'image/jpeg',9803,'products/38-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(112,0,'38-3','38-3',4,'image/jpeg',9803,'products/38-3.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(113,0,'38','38',4,'image/jpeg',9803,'products/38.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(114,0,'39-1','39-1',4,'image/jpeg',9803,'products/39-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(115,0,'39-2','39-2',4,'image/jpeg',9803,'products/39-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(116,0,'39','39',4,'image/jpeg',9803,'products/39.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(117,0,'4-1','4-1',4,'image/jpeg',9803,'products/4-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(118,0,'4-2','4-2',4,'image/jpeg',9803,'products/4-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(119,0,'4-3','4-3',4,'image/jpeg',9803,'products/4-3.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(120,0,'4','4',4,'image/jpeg',9803,'products/4.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(121,0,'40-1','40-1',4,'image/jpeg',9803,'products/40-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(122,0,'40','40',4,'image/jpeg',9803,'products/40.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(123,0,'41-1','41-1',4,'image/jpeg',9803,'products/41-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(124,0,'41-2','41-2',4,'image/jpeg',9803,'products/41-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(125,0,'41','41',4,'image/jpeg',9803,'products/41.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(126,0,'42-1','42-1',4,'image/jpeg',9803,'products/42-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(127,0,'42-2','42-2',4,'image/jpeg',9803,'products/42-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(128,0,'42','42',4,'image/jpeg',9803,'products/42.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(129,0,'43-1','43-1',4,'image/jpeg',9803,'products/43-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(130,0,'43-2','43-2',4,'image/jpeg',9803,'products/43-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(131,0,'43','43',4,'image/jpeg',9803,'products/43.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(132,0,'44-1','44-1',4,'image/jpeg',9803,'products/44-1.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(133,0,'44-2','44-2',4,'image/jpeg',9803,'products/44-2.jpg','[]','2024-08-21 20:36:17','2024-08-21 20:36:17',NULL,'public'),(134,0,'44','44',4,'image/jpeg',9803,'products/44.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(135,0,'45-1','45-1',4,'image/jpeg',9803,'products/45-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(136,0,'45','45',4,'image/jpeg',9803,'products/45.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(137,0,'46-1','46-1',4,'image/jpeg',9803,'products/46-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(138,0,'46','46',4,'image/jpeg',9803,'products/46.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(139,0,'47-1','47-1',4,'image/jpeg',9803,'products/47-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(140,0,'47','47',4,'image/jpeg',9803,'products/47.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(141,0,'48-1','48-1',4,'image/jpeg',9803,'products/48-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(142,0,'48-2','48-2',4,'image/jpeg',9803,'products/48-2.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(143,0,'48','48',4,'image/jpeg',9803,'products/48.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(144,0,'49-1','49-1',4,'image/jpeg',9803,'products/49-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(145,0,'49-2','49-2',4,'image/jpeg',9803,'products/49-2.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(146,0,'49','49',4,'image/jpeg',9803,'products/49.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(147,0,'5-1','5-1',4,'image/jpeg',9803,'products/5-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(148,0,'5-2','5-2',4,'image/jpeg',9803,'products/5-2.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(149,0,'5-3','5-3',4,'image/jpeg',9803,'products/5-3.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(150,0,'5','5',4,'image/jpeg',9803,'products/5.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(151,0,'50-1','50-1',4,'image/jpeg',9803,'products/50-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(152,0,'50','50',4,'image/jpeg',9803,'products/50.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(153,0,'51','51',4,'image/jpeg',9803,'products/51.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(154,0,'52-1','52-1',4,'image/jpeg',9803,'products/52-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(155,0,'52-2','52-2',4,'image/jpeg',9803,'products/52-2.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(156,0,'52','52',4,'image/jpeg',9803,'products/52.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(157,0,'53-1','53-1',4,'image/jpeg',9803,'products/53-1.jpg','[]','2024-08-21 20:36:18','2024-08-21 20:36:18',NULL,'public'),(158,0,'53','53',4,'image/jpeg',9803,'products/53.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(159,0,'54-1','54-1',4,'image/jpeg',9803,'products/54-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(160,0,'54','54',4,'image/jpeg',9803,'products/54.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(161,0,'55-1','55-1',4,'image/jpeg',9803,'products/55-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(162,0,'55-2','55-2',4,'image/jpeg',9803,'products/55-2.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(163,0,'55','55',4,'image/jpeg',9803,'products/55.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(164,0,'56-1','56-1',4,'image/jpeg',9803,'products/56-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(165,0,'56-2','56-2',4,'image/jpeg',9803,'products/56-2.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(166,0,'56','56',4,'image/jpeg',9803,'products/56.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(167,0,'57-1','57-1',4,'image/jpeg',9803,'products/57-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(168,0,'57','57',4,'image/jpeg',9803,'products/57.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(169,0,'58-1','58-1',4,'image/jpeg',9803,'products/58-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(170,0,'58-2','58-2',4,'image/jpeg',9803,'products/58-2.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(171,0,'58','58',4,'image/jpeg',9803,'products/58.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(172,0,'59-1','59-1',4,'image/jpeg',9803,'products/59-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(173,0,'59-2','59-2',4,'image/jpeg',9803,'products/59-2.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(174,0,'59-3','59-3',4,'image/jpeg',9803,'products/59-3.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(175,0,'59','59',4,'image/jpeg',9803,'products/59.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(176,0,'6','6',4,'image/jpeg',9803,'products/6.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(177,0,'60-1','60-1',4,'image/jpeg',9803,'products/60-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(178,0,'60-2','60-2',4,'image/jpeg',9803,'products/60-2.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(179,0,'60','60',4,'image/jpeg',9803,'products/60.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(180,0,'61-1','61-1',4,'image/jpeg',9803,'products/61-1.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(181,0,'61','61',4,'image/jpeg',9803,'products/61.jpg','[]','2024-08-21 20:36:19','2024-08-21 20:36:19',NULL,'public'),(182,0,'62-1','62-1',4,'image/jpeg',9803,'products/62-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(183,0,'62','62',4,'image/jpeg',9803,'products/62.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(184,0,'63-1','63-1',4,'image/jpeg',9803,'products/63-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(185,0,'63','63',4,'image/jpeg',9803,'products/63.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(186,0,'64-1','64-1',4,'image/jpeg',9803,'products/64-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(187,0,'64','64',4,'image/jpeg',9803,'products/64.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(188,0,'65-1','65-1',4,'image/jpeg',9803,'products/65-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(189,0,'65-2','65-2',4,'image/jpeg',9803,'products/65-2.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(190,0,'65','65',4,'image/jpeg',9803,'products/65.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(191,0,'7','7',4,'image/jpeg',9803,'products/7.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(192,0,'8-1','8-1',4,'image/jpeg',9803,'products/8-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(193,0,'8-2','8-2',4,'image/jpeg',9803,'products/8-2.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(194,0,'8-3','8-3',4,'image/jpeg',9803,'products/8-3.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(195,0,'8','8',4,'image/jpeg',9803,'products/8.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(196,0,'9-1','9-1',4,'image/jpeg',9803,'products/9-1.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(197,0,'9-2','9-2',4,'image/jpeg',9803,'products/9-2.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(198,0,'9','9',4,'image/jpeg',9803,'products/9.jpg','[]','2024-08-21 20:36:20','2024-08-21 20:36:20',NULL,'public'),(199,0,'1','1',5,'image/png',2691,'stores/1.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(200,0,'10','10',5,'image/png',2691,'stores/10.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(201,0,'11','11',5,'image/png',2691,'stores/11.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(202,0,'12','12',5,'image/png',2691,'stores/12.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(203,0,'13','13',5,'image/png',2691,'stores/13.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(204,0,'14','14',5,'image/png',2691,'stores/14.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(205,0,'15','15',5,'image/png',2691,'stores/15.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(206,0,'16','16',5,'image/png',2732,'stores/16.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(207,0,'17','17',5,'image/png',2732,'stores/17.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(208,0,'2','2',5,'image/png',2691,'stores/2.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(209,0,'3','3',5,'image/png',2691,'stores/3.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(210,0,'4','4',5,'image/png',2691,'stores/4.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(211,0,'5','5',5,'image/png',2691,'stores/5.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(212,0,'6','6',5,'image/png',2691,'stores/6.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(213,0,'7','7',5,'image/png',2691,'stores/7.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(214,0,'8','8',5,'image/png',2691,'stores/8.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(215,0,'9','9',5,'image/png',2691,'stores/9.png','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(216,0,'background-1','background-1',5,'image/jpeg',5286,'stores/background-1.jpg','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(217,0,'background-2','background-2',5,'image/jpeg',5286,'stores/background-2.jpg','[]','2024-08-21 20:36:22','2024-08-21 20:36:22',NULL,'public'),(218,0,'1','1',6,'image/jpeg',9803,'news/1.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(219,0,'10','10',6,'image/jpeg',9803,'news/10.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(220,0,'11','11',6,'image/jpeg',9803,'news/11.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(221,0,'2','2',6,'image/jpeg',9803,'news/2.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(222,0,'3','3',6,'image/jpeg',9803,'news/3.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(223,0,'4','4',6,'image/jpeg',9803,'news/4.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(224,0,'5','5',6,'image/jpeg',9803,'news/5.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(225,0,'6','6',6,'image/jpeg',9803,'news/6.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(226,0,'7','7',6,'image/jpeg',9803,'news/7.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(227,0,'8','8',6,'image/jpeg',9803,'news/8.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(228,0,'9','9',6,'image/jpeg',9803,'news/9.jpg','[]','2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,'public'),(229,0,'01-sm','01-sm',7,'image/jpeg',10737,'sliders/01-sm.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(230,0,'01','01',7,'image/jpeg',11704,'sliders/01.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(231,0,'02-sm','02-sm',7,'image/jpeg',10737,'sliders/02-sm.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(232,0,'02','02',7,'image/jpeg',11704,'sliders/02.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(233,0,'1','1',8,'image/jpeg',7935,'promotion/1.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(234,0,'2','2',8,'image/png',14659,'promotion/2.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(235,0,'3','3',8,'image/png',10632,'promotion/3.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(236,0,'4','4',8,'image/png',10076,'promotion/4.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(237,0,'5','5',8,'image/png',12274,'promotion/5.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(238,0,'404','404',9,'image/png',31297,'general/404.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(239,0,'app-android','app-android',9,'image/png',630,'general/app-android.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(240,0,'app-bg','app-bg',9,'image/png',11530,'general/app-bg.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(241,0,'app-ios','app-ios',9,'image/png',630,'general/app-ios.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(242,0,'background','background',9,'image/jpeg',26676,'general/background.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(243,0,'blog-bg','blog-bg',9,'image/jpeg',81226,'general/blog-bg.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(244,0,'coming-soon','coming-soon',9,'image/jpeg',26506,'general/coming-soon.jpg','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(245,0,'facebook','facebook',9,'image/png',732,'general/facebook.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(246,0,'favicon','favicon',9,'image/png',6337,'general/favicon.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(247,0,'footer-payments','footer-payments',9,'image/png',439,'general/footer-payments.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(248,0,'icon-protect','icon-protect',9,'image/png',1677,'general/icon-protect.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(249,0,'icon-reload','icon-reload',9,'image/png',1457,'general/icon-reload.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(250,0,'icon-rocket','icon-rocket',9,'image/png',1640,'general/icon-rocket.png','[]','2024-08-21 20:36:25','2024-08-21 20:36:25',NULL,'public'),(251,0,'icon-support','icon-support',9,'image/png',1854,'general/icon-support.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(252,0,'icon-tag','icon-tag',9,'image/png',1151,'general/icon-tag.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(253,0,'instagram','instagram',9,'image/png',2476,'general/instagram.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(254,0,'logo-light','logo-light',9,'image/png',12206,'general/logo-light.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(255,0,'logo','logo',9,'image/png',18245,'general/logo.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(256,0,'newsletter-popup','newsletter-popup',9,'image/png',17253,'general/newsletter-popup.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(257,0,'open-graph-image','open-graph-image',9,'image/png',406719,'general/open-graph-image.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(258,0,'pinterest','pinterest',9,'image/png',2103,'general/pinterest.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(259,0,'placeholder','placeholder',9,'image/png',2675,'general/placeholder.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(260,0,'slider-bg','slider-bg',9,'image/jpeg',26676,'general/slider-bg.jpg','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(261,0,'twitter','twitter',9,'image/png',1749,'general/twitter.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public'),(262,0,'youtube','youtube',9,'image/png',1035,'general/youtube.png','[]','2024-08-21 20:36:26','2024-08-21 20:36:26',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands',NULL,'brands',0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL),(2,0,'product-categories',NULL,'product-categories',0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL),(3,0,'customers',NULL,'customers',0,'2024-08-21 20:36:10','2024-08-21 20:36:10',NULL),(4,0,'products',NULL,'products',0,'2024-08-21 20:36:13','2024-08-21 20:36:13',NULL),(5,0,'stores',NULL,'stores',0,'2024-08-21 20:36:22','2024-08-21 20:36:22',NULL),(6,0,'news',NULL,'news',0,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL),(7,0,'sliders',NULL,'sliders',0,'2024-08-21 20:36:25','2024-08-21 20:36:25',NULL),(8,0,'promotion',NULL,'promotion',0,'2024-08-21 20:36:25','2024-08-21 20:36:25',NULL),(9,0,'general',NULL,'general',0,'2024-08-21 20:36:25','2024-08-21 20:36:25',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-08-21 20:36:25','2024-08-21 20:36:25'),(2,2,'header-navigation','2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/products/smart-watches','icon icon-tag',0,'Special Prices',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory',NULL,NULL,0,'Products Of Category',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(13,1,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Blog',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(14,1,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,0,'FAQs',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(15,1,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,0,'Contact',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(16,2,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,1,'About Us',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(17,2,0,NULL,NULL,'wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(18,2,0,NULL,NULL,'orders/tracking',NULL,1,'Order Tracking',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(19,3,0,3,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Terms Of Use',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(20,3,0,4,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Terms & Conditions',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(21,3,0,5,'Botble\\Page\\Models\\Page',NULL,NULL,2,'Refund Policy',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(22,3,0,7,'Botble\\Page\\Models\\Page',NULL,NULL,2,'FAQs',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(23,3,0,NULL,NULL,'/nothing',NULL,2,'404 Page',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(24,4,0,2,'Botble\\Page\\Models\\Page',NULL,NULL,3,'About us',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(25,4,0,10,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Affiliate',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(26,4,0,11,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Career',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(27,4,0,8,'Botble\\Page\\Models\\Page',NULL,NULL,3,'Contact us',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(28,5,0,6,'Botble\\Page\\Models\\Page',NULL,NULL,4,'Our blog',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(29,5,0,NULL,NULL,'/cart',NULL,4,'Cart',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(30,5,0,NULL,NULL,'/customer/overview',NULL,4,'My account',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(31,5,0,NULL,NULL,'/products',NULL,4,'Shop',NULL,'_self',0,'2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(2,'Header menu','header-menu','published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(3,'Useful Links','useful-links','published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(4,'Help Center','help-center','published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(5,'Business','business','published','2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'faq_ids','[[1,2,5,6,7]]',1,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(2,'faq_ids','[[2,3,4,8,9]]',2,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(3,'faq_ids','[[1,2,6,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(4,'faq_ids','[[2,4,5,7,9]]',4,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(5,'faq_ids','[[2,6,7,8,10]]',5,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(6,'faq_ids','[[1,2,3,6,10]]',6,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(7,'faq_ids','[[1,2,3,5,9]]',7,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(8,'faq_ids','[[3,4,6,8,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(9,'faq_ids','[[2,4,5,6,8]]',9,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(10,'faq_ids','[[1,5,7,8,9]]',10,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(11,'faq_ids','[[2,4,7,8,9]]',11,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(12,'faq_ids','[[1,2,3,5,7]]',12,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(13,'faq_ids','[[3,5,7,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(14,'faq_ids','[[3,6,7,9,10]]',14,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(15,'faq_ids','[[3,6,8,9,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(16,'faq_ids','[[1,5,8,9,10]]',16,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(17,'faq_ids','[[1,3,4,6,10]]',17,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(18,'faq_ids','[[3,5,7,8,9]]',18,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(19,'faq_ids','[[1,6,7,9,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(20,'faq_ids','[[2,4,7,9,10]]',20,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(21,'faq_ids','[[1,2,3,4,9]]',21,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(22,'faq_ids','[[2,6,7,8,10]]',22,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(23,'faq_ids','[[2,3,6,7,8]]',23,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:20','2024-08-21 20:36:20'),(24,'faq_ids','[[1,2,3,6,9]]',24,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(25,'faq_ids','[[4,5,6,7,9]]',25,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(26,'faq_ids','[[3,6,7,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(27,'faq_ids','[[1,4,5,8,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(28,'faq_ids','[[1,2,3,5,7]]',28,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(29,'faq_ids','[[1,2,7,8,10]]',29,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(30,'faq_ids','[[1,3,4,7,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(31,'faq_ids','[[2,3,7,8,10]]',31,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(32,'faq_ids','[[1,4,5,7,10]]',32,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(33,'faq_ids','[[1,3,5,9,10]]',33,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(34,'faq_ids','[[3,6,7,8,10]]',34,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(35,'faq_ids','[[1,3,6,7,8]]',35,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(36,'faq_ids','[[1,2,7,8,9]]',36,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(37,'faq_ids','[[1,4,6,8,10]]',37,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(38,'faq_ids','[[1,3,5,6,10]]',38,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(39,'faq_ids','[[3,4,5,8,10]]',39,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(40,'faq_ids','[[1,7,8,9,10]]',40,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(41,'faq_ids','[[1,3,4,6,9]]',41,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(42,'faq_ids','[[1,3,4,7,9]]',42,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(43,'faq_ids','[[2,5,6,7,9]]',43,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(44,'faq_ids','[[5,7,8,9,10]]',44,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(45,'faq_ids','[[1,4,7,9,10]]',45,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(46,'faq_ids','[[1,4,6,7,8]]',46,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(47,'faq_ids','[[1,3,4,9,10]]',47,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(48,'faq_ids','[[1,2,4,6,7]]',48,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(49,'faq_ids','[[2,3,4,7,9]]',49,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(50,'faq_ids','[[3,4,6,7,8]]',50,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(51,'faq_ids','[[3,4,5,8,9]]',51,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(52,'faq_ids','[[2,3,6,7,8]]',52,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(53,'faq_ids','[[2,3,4,9,10]]',53,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(54,'faq_ids','[[1,2,4,9,10]]',54,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(55,'faq_ids','[[4,5,6,7,10]]',55,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(56,'faq_ids','[[1,3,4,6,8]]',56,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(57,'faq_ids','[[1,6,7,8,10]]',57,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(58,'faq_ids','[[1,3,6,9,10]]',58,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(59,'faq_ids','[[1,2,6,8,10]]',59,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(60,'faq_ids','[[2,3,4,5,6]]',60,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(61,'faq_ids','[[1,4,5,6,7]]',61,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(62,'faq_ids','[[2,5,8,9,10]]',62,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(63,'faq_ids','[[1,2,4,5,8]]',63,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(64,'faq_ids','[[4,5,6,7,10]]',64,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(65,'faq_ids','[[3,5,7,8,10]]',65,'Botble\\Ecommerce\\Models\\Product','2024-08-21 20:36:21','2024-08-21 20:36:21'),(66,'background','[\"stores\\/background-2.jpg\"]',1,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(67,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',1,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(68,'background','[\"stores\\/background-2.jpg\"]',2,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(69,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',2,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(70,'background','[\"stores\\/background-1.jpg\"]',3,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(71,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',3,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(72,'background','[\"stores\\/background-1.jpg\"]',4,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(73,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',4,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(74,'background','[\"stores\\/background-1.jpg\"]',5,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(75,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',5,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(76,'background','[\"stores\\/background-2.jpg\"]',6,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(77,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',6,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(78,'background','[\"stores\\/background-1.jpg\"]',7,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(79,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',7,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(80,'background','[\"stores\\/background-1.jpg\"]',8,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(81,'socials','[{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/\"}]',8,'Botble\\Marketplace\\Models\\Store','2024-08-21 20:36:24','2024-08-21 20:36:24'),(82,'tablet_image','[\"sliders\\/01.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-08-21 20:36:25','2024-08-21 20:36:25'),(83,'mobile_image','[\"sliders\\/01-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-08-21 20:36:25','2024-08-21 20:36:25'),(84,'tablet_image','[\"sliders\\/02.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-08-21 20:36:25','2024-08-21 20:36:25'),(85,'mobile_image','[\"sliders\\/02-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(28,'2023_08_21_090810_make_page_content_nullable',1),(29,'2023_09_14_021936_update_index_for_slugs_table',1),(30,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(31,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(32,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(33,'2024_05_04_030654_improve_social_links',1),(34,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(35,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(36,'2024_07_12_100000_change_random_hash_for_media',1),(37,'2020_11_18_150916_ads_create_ads_table',2),(38,'2021_12_02_035301_add_ads_translations_table',2),(39,'2023_04_17_062645_add_open_in_new_tab',2),(40,'2023_11_07_023805_add_tablet_mobile_image',2),(41,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',2),(42,'2024_04_27_100730_improve_analytics_setting',3),(43,'2015_06_29_025744_create_audit_history',4),(44,'2023_11_14_033417_change_request_column_in_table_audit_histories',4),(45,'2015_06_18_033822_create_blog_table',5),(46,'2021_02_16_092633_remove_default_value_for_author_type',5),(47,'2021_12_03_030600_create_blog_translations',5),(48,'2022_04_19_113923_add_index_to_table_posts',5),(49,'2023_08_29_074620_make_column_author_id_nullable',5),(50,'2024_07_30_091615_fix_order_column_in_categories_table',5),(51,'2016_06_17_091537_create_contacts_table',6),(52,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',6),(53,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',6),(54,'2024_03_25_000001_update_captcha_settings_for_contact',6),(55,'2024_04_19_063914_create_custom_fields_table',6),(56,'2020_03_05_041139_create_ecommerce_tables',7),(57,'2021_01_01_044147_ecommerce_create_flash_sale_table',7),(58,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',7),(59,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',7),(60,'2021_02_18_073505_update_table_ec_reviews',7),(61,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',7),(62,'2021_03_10_025153_change_column_tax_amount',7),(63,'2021_03_20_033103_add_column_availability_to_table_ec_products',7),(64,'2021_04_28_074008_ecommerce_create_product_label_table',7),(65,'2021_05_31_173037_ecommerce_create_ec_products_translations',7),(66,'2021_08_17_105016_remove_column_currency_id_in_some_tables',7),(67,'2021_08_30_142128_add_images_column_to_ec_reviews_table',7),(68,'2021_10_04_030050_add_column_created_by_to_table_ec_products',7),(69,'2021_10_05_122616_add_status_column_to_ec_customers_table',7),(70,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',7),(71,'2021_11_23_071403_correct_languages_for_product_variations',7),(72,'2021_11_28_031808_add_product_tags_translations',7),(73,'2021_12_01_031123_add_featured_image_to_ec_products',7),(74,'2022_01_01_033107_update_table_ec_shipments',7),(75,'2022_02_16_042457_improve_product_attribute_sets',7),(76,'2022_03_22_075758_correct_product_name',7),(77,'2022_04_19_113334_add_index_to_ec_products',7),(78,'2022_04_28_144405_remove_unused_table',7),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',7),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',7),(81,'2022_06_16_095633_add_index_to_some_tables',7),(82,'2022_06_30_035148_create_order_referrals_table',7),(83,'2022_07_24_153815_add_completed_at_to_ec_orders_table',7),(84,'2022_08_14_032836_create_ec_order_returns_table',7),(85,'2022_08_14_033554_create_ec_order_return_items_table',7),(86,'2022_08_15_040324_add_billing_address',7),(87,'2022_08_30_091114_support_digital_products_table',7),(88,'2022_09_13_095744_create_options_table',7),(89,'2022_09_13_104347_create_option_value_table',7),(90,'2022_10_05_163518_alter_table_ec_order_product',7),(91,'2022_10_12_041517_create_invoices_table',7),(92,'2022_10_12_142226_update_orders_table',7),(93,'2022_10_13_024916_update_table_order_returns',7),(94,'2022_10_21_030830_update_columns_in_ec_shipments_table',7),(95,'2022_10_28_021046_update_columns_in_ec_shipments_table',7),(96,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',7),(97,'2022_11_19_041643_add_ec_tax_product_table',7),(98,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',7),(99,'2022_12_17_041532_fix_address_in_order_invoice',7),(100,'2022_12_26_070329_create_ec_product_views_table',7),(101,'2023_01_04_033051_fix_product_categories',7),(102,'2023_01_09_050400_add_ec_global_options_translations_table',7),(103,'2023_01_10_093754_add_missing_option_value_id',7),(104,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',7),(105,'2023_01_26_021854_add_ec_customer_used_coupons_table',7),(106,'2023_02_08_015900_update_options_column_in_ec_order_product_table',7),(107,'2023_02_27_095752_remove_duplicate_reviews',7),(108,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',7),(109,'2023_04_21_082427_create_ec_product_categorizables_table',7),(110,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',7),(111,'2023_05_17_025812_fix_invoice_issue',7),(112,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',7),(113,'2023_05_27_144611_fix_exchange_rate_setting',7),(114,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',7),(115,'2023_06_30_042512_create_ec_order_tax_information_table',7),(116,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',7),(117,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',7),(118,'2023_08_15_064505_create_ec_tax_rules_table',7),(119,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',7),(120,'2023_08_22_094114_drop_unique_for_barcode',7),(121,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',7),(122,'2023_09_07_094312_add_index_to_product_sku_and_translations',7),(123,'2023_09_19_024955_create_discount_product_categories_table',7),(124,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',7),(125,'2023_11_22_154643_add_unique_in_table_ec_products_variations',7),(126,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',7),(127,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',7),(128,'2023_12_25_040604_ec_create_review_replies_table',7),(129,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',7),(130,'2024_01_16_070706_fix_translation_tables',7),(131,'2024_01_23_075227_add_proof_file_to_ec_orders_table',7),(132,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',7),(133,'2024_03_27_062402_create_ec_customer_deletion_requests_table',7),(134,'2024_03_29_042242_migrate_old_captcha_settings',7),(135,'2024_03_29_093946_create_ec_order_return_histories_table',7),(136,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',7),(137,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',7),(138,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',7),(139,'2024_05_07_073153_improve_table_wishlist',7),(140,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',7),(141,'2024_05_15_021503_fix_invoice_path',7),(142,'2024_06_20_160724_create_ec_shared_wishlists_table',7),(143,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',7),(144,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',7),(145,'2024_07_14_071826_make_customer_email_nullable',7),(146,'2024_07_15_104916_add_video_media_column_to_ec_products_table',7),(147,'2024_07_26_052530_add_percentage_to_tax_rules_table',7),(148,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',7),(149,'2018_07_09_221238_create_faq_table',8),(150,'2021_12_03_082134_create_faq_translations',8),(151,'2023_11_17_063408_add_description_column_to_faq_categories_table',8),(152,'2016_10_03_032336_create_languages_table',9),(153,'2023_09_14_022423_add_index_for_language_table',9),(154,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(155,'2021_12_03_075608_create_page_translations',10),(156,'2023_07_06_011444_create_slug_translations_table',10),(157,'2019_11_18_061011_create_country_table',11),(158,'2021_12_03_084118_create_location_translations',11),(159,'2021_12_03_094518_migrate_old_location_data',11),(160,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',11),(161,'2022_01_16_085908_improve_plugin_location',11),(162,'2022_08_04_052122_delete_location_backup_tables',11),(163,'2023_04_23_061847_increase_state_translations_abbreviation_column',11),(164,'2023_07_26_041451_add_more_columns_to_location_table',11),(165,'2023_07_27_041451_add_more_columns_to_location_translation_table',11),(166,'2023_08_15_073307_drop_unique_in_states_cities_translations',11),(167,'2023_10_21_065016_make_state_id_in_table_cities_nullable',11),(168,'2024_08_17_094600_add_image_into_countries',11),(169,'2021_07_06_030002_create_marketplace_table',12),(170,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',12),(171,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',12),(172,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',12),(173,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',12),(174,'2021_12_06_031304_update_table_mp_customer_revenues',12),(175,'2022_10_19_152916_add_columns_to_mp_stores_table',12),(176,'2022_10_20_062849_create_mp_category_sale_commissions_table',12),(177,'2022_11_02_071413_add_more_info_for_store',12),(178,'2022_11_02_080444_add_tax_info',12),(179,'2023_02_01_062030_add_store_translations',12),(180,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',12),(181,'2023_02_17_023648_fix_store_prefix',12),(182,'2024_04_03_062451_add_cover_image_to_table_mp_stores',12),(183,'2024_05_07_082630_create_mp_messages_table',12),(184,'2024_07_19_131849_add_documents_to_mp_stores_table',12),(185,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',12),(186,'2017_10_24_154832_create_newsletter_table',13),(187,'2024_03_25_000001_update_captcha_settings_for_newsletter',13),(188,'2017_05_18_080441_create_payment_tables',14),(189,'2021_03_27_144913_add_customer_type_into_table_payments',14),(190,'2021_05_24_034720_make_column_currency_nullable',14),(191,'2021_08_09_161302_add_metadata_column_to_payments_table',14),(192,'2021_10_19_020859_update_metadata_field',14),(193,'2022_06_28_151901_activate_paypal_stripe_plugin',14),(194,'2022_07_07_153354_update_charge_id_in_table_payments',14),(195,'2024_07_04_083133_create_payment_logs_table',14),(196,'2017_07_11_140018_create_simple_slider_table',15),(197,'2016_10_07_193005_create_translations_table',16),(198,'2023_12_12_105220_drop_translations_table',16);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','yturcotte@example.com','+19255816073','775 Kristin Road Apt. 208','PA','Maryland','Port Erwin',2,'stores/1.png',NULL,'Et ea harum dicta officia. Incidunt perspiciatis est doloremque pariatur expedita est aliquid. Dolorem et ut perspiciatis at maxime ut. Aperiam quo tempore repudiandae laboriosam quo rerum aspernatur. Dolor et qui sequi ut impedit eos. Nemo omnis inventore eum dolor incidunt omnis dolor. Mollitia quod fugiat repellat et. Aut fuga animi reiciendis facere est. Expedita ullam recusandae fugit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','marianna.considine@example.net','+13013365391','63595 Kris Summit Suite 058','ET','Rhode Island','O\'Connerfort',6,'stores/2.png',NULL,'Blanditiis facilis eum fugit. Doloribus illo expedita blanditiis cum in laboriosam consequatur. Eius eos omnis sed id recusandae autem beatae. Perspiciatis tempore ea illum quidem. Ipsa nostrum eum occaecati. Eum facere libero tempore error tenetur explicabo dolores. Amet dolorem sapiente est. Veritatis error porro aut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','kwisoky@example.com','+18607499090','3565 Santos Brook','VA','Georgia','West Karleeport',8,'stores/3.png',NULL,'Libero non voluptatum iste dolore dolorum distinctio et. Non beatae sint accusantium sunt voluptates temporibus. Illo sed fugiat id corporis corrupti. Quisquam qui fugit ut dolorem magnam. Saepe et architecto autem tempore. Mollitia vero odio quisquam eos placeat. Laborum similique unde vero quis sapiente.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','malika.sporer@example.com','+16463685775','650 Alexie Center Suite 558','IQ','Washington','Quigleyborough',7,'stores/4.png',NULL,'Repellendus nihil qui omnis architecto illum. Accusamus enim molestias odit qui. Sint est ratione sit quis reiciendis nihil. Aut eveniet eum iusto ut animi assumenda cupiditate. Quisquam aliquid dolorem eum est porro rem. Et maxime eligendi recusandae est doloribus. Nobis corporis adipisci necessitatibus porro et reprehenderit aut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','frami.leopoldo@example.net','+13618943280','56216 Manley Well','KZ','Louisiana','Haydenbury',8,'stores/5.png',NULL,'Vitae at odio qui occaecati explicabo et placeat. In aut delectus optio ipsum. Exercitationem et voluptatem fuga ut provident et. Eos animi deleniti voluptate ipsa.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','macy.thompson@example.org','+16185715378','89747 Heller Isle Apt. 531','CK','New Mexico','Vallieborough',7,'stores/6.png',NULL,'Neque doloribus aliquam ipsam adipisci aperiam est amet. Quam hic enim cupiditate labore asperiores recusandae. Tempora cum ipsam magni aut harum et. Velit aut sequi est non ipsum odit quam eveniet. Vel ex minus fuga assumenda. Fuga occaecati quia nostrum. Tenetur minima vero rerum molestiae.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','iblick@example.net','+19597609838','38977 Rippin Lake Apt. 272','SX','Pennsylvania','Lake Joshuafurt',6,'stores/7.png',NULL,'Quisquam ducimus veniam vel. Itaque aspernatur aliquam est est incidunt rem eos modi. Alias minima sit qui assumenda sit. Eligendi minus qui sapiente sint ab expedita. Quia sit consequatur fugit mollitia est laborum temporibus. Et et alias sed consequatur omnis ad.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','chadrick.grant@example.net','+18203316705','58425 Wilson Keys Apt. 009','PM','Utah','Lake Kyle',6,'stores/8.png',NULL,'Ut reiciendis minus voluptatum velit eveniet. Sint et excepturi voluptatem corrupti. Et non perferendis quod ut cupiditate. Perferendis provident dolor voluptas aspernatur porro. Corporis molestiae cumque odio non quidem. Illo quo autem ut nostrum sit dolores qui. Enim incidunt dolores praesentium.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/news/1.jpg\"></p>\n\n<p><br>\n </p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/news/2.jpg\"></p>\n\n<p><br>\n </p>\n<hr>\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/news/3.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/news/4.jpg\"></p>\n\n<p><br>\n </p>\n\n<hr>\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/news/5.jpg\"></p>\n\n<p> </p>\n','published',NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$ms3YY1evWi1ZTURqyQlDhuIcCjKNOtfL7EuZp23Hwnk/4uipDV4Ay','{\"name\":\"Bradly Thiel\",\"number\":\"+13617220448\",\"full_name\":\"Joseph Hammes DVM\",\"description\":\"Dr. Dudley Schiller PhD\"}','2024-08-21 20:36:22','2024-08-21 20:36:22','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$s6bR/y0JPW/aIoGr83WMbesTetPBhqs1k0/RYFpnPLxJPpclkydoK','{\"name\":\"Antonia Roberts\",\"number\":\"+15307965734\",\"full_name\":\"Mr. Royce Deckow I\",\"description\":\"Taya Emmerich\"}','2024-08-21 20:36:23','2024-08-21 20:36:23','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$PdtIZCtb9W1pUtPHzvvOsuiid7OktCncXNH3TXvTNywpauAQXscl6','{\"name\":\"Winfield Littel\",\"number\":\"+14248125024\",\"full_name\":\"Erna Effertz III\",\"description\":\"Mr. Daryl Kuvalis V\"}','2024-08-21 20:36:23','2024-08-21 20:36:23','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$rlH/ub2/ArZTI.5FUe4d0Og2P2/XXBQweEcphJmv3xggH0M/J9va.','{\"name\":\"Eldora Schmeler Jr.\",\"number\":\"+19785564866\",\"full_name\":\"Mr. Floyd King DVM\",\"description\":\"Dayana Rodriguez\"}','2024-08-21 20:36:23','2024-08-21 20:36:23','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$02ExQ4XmYxzv4hlfv2CQduN5TWEpoghOkpK1ILATavQZfDEmVBH3u','{\"name\":\"Myrtle Sporer IV\",\"number\":\"+15599211851\",\"full_name\":\"Iva Hilpert\",\"description\":\"Celine Abbott\"}','2024-08-21 20:36:23','2024-08-21 20:36:23','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$g3hI/jEL6xnnAAMKwBAxh.QueyO8Z8KayoobC5HYSStgTK32Xlvvi','{\"name\":\"Prof. Monserrate Willms PhD\",\"number\":\"+18178787528\",\"full_name\":\"Hoyt Predovic\",\"description\":\"Naomi Hahn\"}','2024-08-21 20:36:24','2024-08-21 20:36:24','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$NayVnh5Nzz/cZiJ8Lia1l.HkXcGXaqPlX9pE/QgemfnNBOI.vy5v.','{\"name\":\"Berneice Raynor\",\"number\":\"+17128290946\",\"full_name\":\"Caitlyn Stehr DDS\",\"description\":\"Aron Lemke\"}','2024-08-21 20:36:24','2024-08-21 20:36:24','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" is_autoplay=\"yes\" autoplay_speed=\"5000\" ads=\"VC2C8Q1UGCBG\" background=\"general/slider-bg.jpg\"][/simple-slider]</div><div>[featured-product-categories title=\"Browse by Category\"][/featured-product-categories]</div><div>[featured-brands title=\"Featured Brands\"][/featured-brands]</div><div>[flash-sale title=\"Top Saver Today\" flash_sale_id=\"1\"][/flash-sale]</div><div>[product-category-products title=\"Just Landing\" category_id=\"23\"][/product-category-products]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[product-collections title=\"Essential Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[featured-posts title=\"Health Daily\" background=\"general/blog-bg.jpg\"\n                        app_enabled=\"1\"\n                        app_title=\"Shop faster with Farmart App\"\n                        app_description=\"Available on both iOS & Android\"\n                        app_bg=\"general/app-bg.png\"\n                        app_android_img=\"general/app-android.png\"\n                        app_android_link=\"#\"\n                        app_ios_img=\"general/app-ios.png\"\n                        app_ios_link=\"#\"][/featured-posts]</div>',1,NULL,'homepage',NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(2,'About us',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(3,'Terms Of Use',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(4,'Terms &amp; Conditions',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(5,'Refund Policy',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(6,'Blog','<p>---</p>',1,NULL,'full-width',NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Info\" subtitle=\"Location\" name_1=\"Store\" address_1=\"68 Atlantic Ave St, Brooklyn, NY 90002, USA\" phone_1=\"(+005) 5896 72 78 79\" email_1=\"support@farmart.com\" name_2=\"Warehouse\" address_2=\"172 Richmond Hill Ave St, Stamford, NY 90002, USA\" phone_2=\"(+005) 5896 03 04 05\" show_contact_form=\"1\" ][/contact-info-boxes]</div>',1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(10,'Affiliate',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(11,'Career',NULL,1,NULL,NULL,NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25'),(12,'Coming soon','<div>[coming-soon time=\"2025-08-22 03:36:25\" title=\"We’re coming soon.\" subtitle=\"Currently we’re working on our brand new website and will be\nlaunching soon.\" social_title=\"Connect us on social networks\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',NULL,'published','2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(1,2),(4,2),(1,3),(4,3),(2,4),(4,4),(1,5),(4,5),(1,6),(4,6),(1,7),(4,7),(1,8),(3,8),(1,9),(3,9),(1,10),(4,10),(2,11),(3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1875,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1541,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1163,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1968,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',611,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',628,NULL,'2024-08-21 20:36:24','2024-08-21 20:36:24'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1451,NULL,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1175,NULL,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',161,NULL,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',2402,NULL,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',670,NULL,'2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-08-21 20:36:10','2024-08-21 20:36:10');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (2,'api_enabled','0',NULL,'2024-08-21 20:36:26'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2024-08-21 20:36:26'),(4,'analytics_dashboard_widgets','0','2024-08-21 20:36:08','2024-08-21 20:36:08'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-08-21 20:36:08','2024-08-21 20:36:08'),(6,'api_layer_api_key','',NULL,'2024-08-21 20:36:26'),(9,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-08-21 20:36:09','2024-08-21 20:36:09'),(12,'language_hide_default','1',NULL,'2024-08-21 20:36:26'),(14,'language_display','all',NULL,'2024-08-21 20:36:26'),(15,'language_hide_languages','[]',NULL,'2024-08-21 20:36:26'),(16,'ecommerce_store_name','Farmart',NULL,'2024-08-21 20:36:26'),(17,'ecommerce_store_phone','1800979769',NULL,'2024-08-21 20:36:26'),(18,'ecommerce_store_address','502 New Street',NULL,'2024-08-21 20:36:26'),(19,'ecommerce_store_state','Brighton VIC',NULL,'2024-08-21 20:36:26'),(20,'ecommerce_store_city','Brighton VIC',NULL,'2024-08-21 20:36:26'),(21,'ecommerce_store_country','AU',NULL,'2024-08-21 20:36:26'),(22,'simple_slider_using_assets','0',NULL,'2024-08-21 20:36:26'),(23,'media_random_hash','725ee44ab57526b0ae6740d5499b1c1b',NULL,'2024-08-21 20:36:26'),(24,'payment_cod_status','1',NULL,'2024-08-21 20:36:26'),(25,'payment_bank_transfer_status','1',NULL,'2024-08-21 20:36:26'),(26,'theme','farmart',NULL,'2024-08-21 20:36:26'),(27,'show_admin_bar','1',NULL,'2024-08-21 20:36:26'),(28,'language_switcher_display','dropdown',NULL,'2024-08-21 20:36:26'),(29,'admin_favicon','general/favicon.png',NULL,'2024-08-21 20:36:26'),(30,'admin_logo','general/logo-light.png',NULL,'2024-08-21 20:36:26'),(31,'permalink-botble-blog-models-post','blog',NULL,'2024-08-21 20:36:26'),(32,'permalink-botble-blog-models-category','blog',NULL,'2024-08-21 20:36:26'),(33,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-08-21 20:36:26'),(34,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-08-21 20:36:26'),(35,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-08-21 20:36:26'),(36,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-08-21 20:36:26'),(37,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-08-21 20:36:26'),(38,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-08-21 20:36:26'),(39,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-08-21 20:36:26'),(40,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2024-08-21 20:36:26'),(41,'ecommerce_product_sku_format','FM-2443-%s%s%s%s',NULL,'2024-08-21 20:36:26'),(42,'theme-farmart-site_title','Farmart - Laravel Ecommerce system',NULL,NULL),(43,'theme-farmart-seo_description','Farmart is a modern and flexible Multipurpose Marketplace Laravel script. This script is suited for electronic, organic and grocery store, furniture store, clothing store, hitech store and accessories store… With the theme, you can create your own marketplace and allow vendors to sell just like Amazon, Envato, eBay…',NULL,NULL),(44,'theme-farmart-copyright','© %Y Farmart. All Rights Reserved.',NULL,NULL),(45,'theme-farmart-favicon','general/favicon.png',NULL,NULL),(46,'theme-farmart-logo','general/logo.png',NULL,NULL),(47,'theme-farmart-seo_og_image','general/open-graph-image.png',NULL,NULL),(48,'theme-farmart-image-placeholder','general/placeholder.png',NULL,NULL),(49,'theme-farmart-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(50,'theme-farmart-hotline','8 800 332 65-66',NULL,NULL),(51,'theme-farmart-email','contact@fartmart.co',NULL,NULL),(52,'theme-farmart-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(53,'theme-farmart-payment_methods_image','general/footer-payments.png',NULL,NULL),(54,'theme-farmart-homepage_id','1',NULL,NULL),(55,'theme-farmart-blog_page_id','6',NULL,NULL),(56,'theme-farmart-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(57,'theme-farmart-cookie_consent_learn_more_url','/cookie-policy',NULL,NULL),(58,'theme-farmart-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(59,'theme-farmart-number_of_products_per_page','40',NULL,NULL),(60,'theme-farmart-number_of_cross_sale_product','6',NULL,NULL),(61,'theme-farmart-logo_in_the_checkout_page','general/logo.png',NULL,NULL),(62,'theme-farmart-logo_in_invoices','general/logo.png',NULL,NULL),(63,'theme-farmart-logo_vendor_dashboard','general/logo.png',NULL,NULL),(64,'theme-farmart-404_page_image','general/404.png',NULL,NULL),(65,'theme-farmart-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#3b5999\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#000\"}],[{\"key\":\"name\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background-color\",\"value\":\"#0a66c2\"}]]',NULL,NULL),(66,'theme-farmart-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#3b5999\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-twitter\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#55acee\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#b10c0c\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"icon_image\",\"value\":null},{\"key\":\"color\",\"value\":\"#fff\"},{\"key\":\"background_color\",\"value\":\"#0271ae\"}]]',NULL,NULL),(67,'theme-farmart-primary_font','Mulish',NULL,NULL),(68,'theme-farmart-newsletter_popup_enable','1',NULL,NULL),(69,'theme-farmart-newsletter_popup_image','general/newsletter-popup.png',NULL,NULL),(70,'theme-farmart-newsletter_popup_title','Subscribe Now',NULL,NULL),(71,'theme-farmart-newsletter_popup_subtitle','Newsletter',NULL,NULL),(72,'theme-farmart-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/01.jpg','/products',NULL,1,'2024-08-21 20:36:25','2024-08-21 20:36:25'),(2,1,'Slider 2','sliders/02.jpg','/products',NULL,2,'2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-08-21 20:36:25','2024-08-21 20:36:25');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-08-21 20:36:10','2024-08-21 20:36:10'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-08-21 20:36:10','2024-08-21 20:36:10'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-08-21 20:36:10','2024-08-21 20:36:10'),(4,'farmart',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-08-21 20:36:10','2024-08-21 20:36:10'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-08-21 20:36:10','2024-08-21 20:36:10'),(6,'fruits-vegetables',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(7,'fruits',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(8,'apples',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(9,'bananas',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(10,'berries',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(11,'oranges-easy-peelers',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(12,'grapes',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(13,'lemons-limes',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(14,'peaches-nectarines',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(15,'pears',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(16,'melon',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(17,'avocados',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(18,'plums-apricots',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(19,'vegetables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(20,'potatoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(21,'carrots-root-vegetables',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(22,'broccoli-cauliflower',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(23,'cabbage-spinach-greens',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(24,'onions-leeks-garlic',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(25,'mushrooms',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(26,'tomatoes',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(27,'beans-peas-sweetcorn',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(28,'freshly-drink-orange-juice',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(29,'breads-sweets',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(30,'crisps-snacks-nuts',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(31,'crisps-popcorn',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(32,'nuts-seeds',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(33,'lighter-options',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(34,'cereal-bars',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(35,'breadsticks-pretzels',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(36,'fruit-snacking',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(37,'rice-corn-cakes',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(38,'protein-energy-snacks',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(39,'toddler-snacks',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(40,'meat-snacks',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(41,'beans',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(42,'lentils',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(43,'chickpeas',38,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(44,'tins-cans',39,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(45,'tomatoes',40,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(46,'baked-beans-spaghetti',41,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(47,'fish',42,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(48,'beans-pulses',43,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(49,'fruit',44,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(50,'coconut-milk-cream',45,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(51,'lighter-options',46,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(52,'olives',47,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(53,'sweetcorn',48,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(54,'carrots',49,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(55,'peas',50,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(56,'mixed-vegetables',51,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(57,'frozen-seafoods',52,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(58,'raw-meats',53,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(59,'wines-alcohol-drinks',54,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(60,'ready-meals',55,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(61,'meals-for-1',56,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(62,'meals-for-2',57,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(63,'indian',58,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(64,'italian',59,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(65,'chinese',60,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(66,'traditional-british',61,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(67,'thai-oriental',62,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(68,'mediterranean-moroccan',63,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(69,'mexican-caribbean',64,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(70,'lighter-meals',65,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(71,'lunch-veg-pots',66,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(72,'salad-herbs',67,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(73,'salad-bags',68,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(74,'cucumber',69,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(75,'tomatoes',70,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(76,'lettuce',71,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(77,'lunch-salad-bowls',72,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(78,'lunch-salad-bowls',73,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(79,'fresh-herbs',74,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(80,'avocados',75,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(81,'peppers',76,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(82,'coleslaw-potato-salad',77,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(83,'spring-onions',78,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(84,'chilli-ginger-garlic',79,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(85,'tea-coffee',80,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(86,'milks-and-dairies',81,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(87,'pet-foods',82,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(88,'food-cupboard',83,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-08-21 20:36:10','2024-08-21 20:36:10'),(89,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(90,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(91,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(92,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(93,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(94,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-08-21 20:36:13','2024-08-21 20:36:13'),(95,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(96,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(97,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(98,'red-black-headphone-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:26'),(99,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(100,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(101,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(102,'smart-televisions-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:26'),(103,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(104,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(105,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(106,'epsion-plaster-printer-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:26'),(107,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(108,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(109,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(110,'apple-macbook-air-retina-12-inch-laptop-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:26'),(111,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(112,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(113,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(114,'nyx-beauty-couton-pallete-makeup-12-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:26'),(115,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(116,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(117,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:20','2024-08-21 20:36:20'),(118,'vimto-squash-remix-apple-15-litres-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(119,'crock-pot-slow-cooker',25,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(120,'taylors-of-harrogate-yorkshire-coffee',26,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(121,'soft-mochi-galeto-ice-cream',27,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(122,'naked-noodle-egg-noodles-singapore-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(123,'saute-pan-silver',29,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(124,'bar-s-classic-bun-length-franks',30,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(125,'broccoli-crowns',31,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(126,'slimming-world-vegan-mac-greens-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(127,'haagen-dazs-salted-caramel',33,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(128,'iceland-3-solo-exotic-burst',34,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(129,'extreme-budweiser-light-can',35,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(130,'iceland-macaroni-cheese-traybake-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(131,'dolmio-bolognese-pasta-sauce',37,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(132,'sitema-bakeit-plastic-box',38,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(133,'wayfair-basics-dinner-plate-storage',39,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(134,'miko-the-panda-water-bottle-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(135,'sesame-seed-bread',41,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(136,'morrisons-the-best-beef',42,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(137,'avocado-hass-large',43,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(138,'italia-beef-lasagne-digital',44,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(139,'maxwell-house-classic-roast-mocha',45,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(140,'bottled-pure-water-500ml',46,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(141,'famart-farmhouse-soft-white',47,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(142,'coca-cola-original-taste-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(143,'casillero-diablo-cabernet-sauvignon',49,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(144,'arla-organic-free-range-milk',50,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(145,'aptamil-follow-on-baby-milk',51,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(146,'cuisinart-chefs-classic-hard-anodized-digital',52,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(147,'corn-yellow-sweet',53,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(148,'hobnobs-the-nobbly-biscuit',54,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(149,'honest-organic-still-lemonade',55,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(150,'ice-becks-beer-350ml-x-24-pieces-digital',56,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(151,'iceland-6-hot-cross-buns',57,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(152,'iceland-luxury-4-panini-rolls',58,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(153,'iceland-soft-scoop-vanilla',59,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(154,'iceland-spaghetti-bolognese-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(155,'kelloggs-coco-pops-cereal',61,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(156,'kit-kat-chunky-milk-chocolate',62,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(157,'large-green-bell-pepper',63,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(158,'pice-94w-beasley-journal-digital',64,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:26'),(159,'province-piece-glass-drinking-glass',65,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:21','2024-08-21 20:36:21'),(160,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(161,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(162,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(163,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(164,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(165,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(166,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(167,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-08-21 20:36:24','2024-08-21 20:36:24'),(168,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(169,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(170,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(171,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(172,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-08-21 20:36:24','2024-08-21 20:36:24'),(173,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-08-21 20:36:24','2024-08-21 20:36:24'),(174,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-08-21 20:36:24','2024-08-21 20:36:24'),(175,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-08-21 20:36:24','2024-08-21 20:36:24'),(176,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-08-21 20:36:24','2024-08-21 20:36:24'),(177,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(178,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(179,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(180,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(181,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(182,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:24','2024-08-21 20:36:25'),(183,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:25','2024-08-21 20:36:25'),(184,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:25','2024-08-21 20:36:25'),(185,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:25','2024-08-21 20:36:25'),(186,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:25','2024-08-21 20:36:25'),(187,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-08-21 20:36:25','2024-08-21 20:36:25'),(188,'home',1,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(189,'about-us',2,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(190,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(191,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(192,'refund-policy',5,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(193,'blog',6,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(194,'faqs',7,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(195,'contact',8,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(196,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(197,'affiliate',10,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(198,'career',11,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(199,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-08-21 20:36:25','2024-08-21 20:36:25'),(200,'dual-camera-20mp',66,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(201,'dual-camera-20mp',67,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(202,'dual-camera-20mp',68,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(203,'dual-camera-20mp',69,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(204,'smart-watch-external',70,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(205,'smart-watch-external',71,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(206,'nikon-hd-camera',72,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(207,'nikon-hd-camera',73,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(208,'nikon-hd-camera',74,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(209,'audio-equipment',75,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(210,'samsung-smart-phone',76,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(211,'samsung-smart-phone',77,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(212,'samsung-smart-phone',78,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(213,'herschel-leather-duffle-bag-in-brown-color',79,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(214,'herschel-leather-duffle-bag-in-brown-color',80,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(215,'herschel-leather-duffle-bag-in-brown-color',81,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(216,'herschel-leather-duffle-bag-in-brown-color',82,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(217,'xbox-one-wireless-controller-black-color',83,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(218,'sound-intone-i65-earphone-white-version',84,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(219,'sound-intone-i65-earphone-white-version',85,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(220,'sound-intone-i65-earphone-white-version',86,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(221,'sound-intone-i65-earphone-white-version',87,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(222,'bo-play-mini-bluetooth-speaker',88,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(223,'bo-play-mini-bluetooth-speaker',89,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(224,'bo-play-mini-bluetooth-speaker',90,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(225,'apple-macbook-air-retina-133-inch-laptop',91,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(226,'nyx-beauty-couton-pallete-makeup-12',92,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(227,'nyx-beauty-couton-pallete-makeup-12',93,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(228,'nyx-beauty-couton-pallete-makeup-12',94,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(229,'nyx-beauty-couton-pallete-makeup-12-digital',95,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(230,'nyx-beauty-couton-pallete-makeup-12-digital',96,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(231,'vimto-squash-remix-apple-15-litres-digital',97,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(232,'vimto-squash-remix-apple-15-litres-digital',98,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(233,'soft-mochi-galeto-ice-cream',99,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(234,'soft-mochi-galeto-ice-cream',100,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(235,'soft-mochi-galeto-ice-cream',101,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(236,'bar-s-classic-bun-length-franks',102,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(237,'broccoli-crowns',103,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(238,'broccoli-crowns',104,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(239,'broccoli-crowns',105,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(240,'iceland-3-solo-exotic-burst',106,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(241,'iceland-3-solo-exotic-burst',107,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(242,'iceland-macaroni-cheese-traybake-digital',108,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(243,'iceland-macaroni-cheese-traybake-digital',109,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(244,'iceland-macaroni-cheese-traybake-digital',110,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(245,'wayfair-basics-dinner-plate-storage',111,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(246,'wayfair-basics-dinner-plate-storage',112,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(247,'wayfair-basics-dinner-plate-storage',113,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(248,'wayfair-basics-dinner-plate-storage',114,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(249,'sesame-seed-bread',115,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(250,'sesame-seed-bread',116,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(251,'sesame-seed-bread',117,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(252,'maxwell-house-classic-roast-mocha',118,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(253,'maxwell-house-classic-roast-mocha',119,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(254,'bottled-pure-water-500ml',120,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(255,'bottled-pure-water-500ml',121,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(256,'bottled-pure-water-500ml',122,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(257,'coca-cola-original-taste-digital',123,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(258,'coca-cola-original-taste-digital',124,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(259,'coca-cola-original-taste-digital',125,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(260,'coca-cola-original-taste-digital',126,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(261,'arla-organic-free-range-milk',127,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(262,'arla-organic-free-range-milk',128,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(263,'arla-organic-free-range-milk',129,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(264,'aptamil-follow-on-baby-milk',130,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(265,'aptamil-follow-on-baby-milk',131,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(266,'aptamil-follow-on-baby-milk',132,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(267,'aptamil-follow-on-baby-milk',133,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(268,'ice-becks-beer-350ml-x-24-pieces-digital',134,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(269,'ice-becks-beer-350ml-x-24-pieces-digital',135,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(270,'ice-becks-beer-350ml-x-24-pieces-digital',136,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(271,'ice-becks-beer-350ml-x-24-pieces-digital',137,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(272,'iceland-luxury-4-panini-rolls',138,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(273,'iceland-luxury-4-panini-rolls',139,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(274,'iceland-spaghetti-bolognese-digital',140,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(275,'iceland-spaghetti-bolognese-digital',141,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(276,'iceland-spaghetti-bolognese-digital',142,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(277,'kelloggs-coco-pops-cereal',143,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(278,'kelloggs-coco-pops-cereal',144,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(279,'kelloggs-coco-pops-cereal',145,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(280,'kit-kat-chunky-milk-chocolate',146,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(281,'kit-kat-chunky-milk-chocolate',147,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(282,'pice-94w-beasley-journal-digital',148,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(283,'pice-94w-beasley-journal-digital',149,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(284,'province-piece-glass-drinking-glass',150,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(285,'province-piece-glass-drinking-glass',151,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26'),(286,'province-piece-glass-drinking-glass',152,'Botble\\Ecommerce\\Models\\Product','products','2024-08-21 20:36:26','2024-08-21 20:36:26');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-21 20:36:24','2024-08-21 20:36:24'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-21 20:36:24','2024-08-21 20:36:24'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-21 20:36:24','2024-08-21 20:36:24'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-21 20:36:24','2024-08-21 20:36:24'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2024-08-21 20:36:24','2024-08-21 20:36:24');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'maryjane.olson@mann.org',NULL,'$2y$12$z7R8y9Dunw7d5IBHWBgOsu3CMM6UNR21VBPDQr8WZiSnWsIPZo1xW',NULL,'2024-08-21 20:36:10','2024-08-21 20:36:10','Laurence','Hartmann','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_sidebar','farmart',0,'{\"id\":\"SiteInfoWidget\",\"name\":\"Farmart \\u2013 Your Online Foods & Grocery\",\"about\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed finibus viverra iaculis. Etiam vulputate et justo eget scelerisque.\",\"phone\":\"(+965) 7492-4277\",\"address\":\"959 Homestead Street Eastlake, NYC\",\"email\":\"support@farmart.com\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(2,'CustomMenuWidget','footer_sidebar','farmart',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(3,'CustomMenuWidget','footer_sidebar','farmart',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Help Center\",\"menu_id\":\"help-center\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(4,'CustomMenuWidget','footer_sidebar','farmart',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(5,'NewsletterWidget','footer_sidebar','farmart',4,'{\"id\":\"NewsletterWidget\",\"title\":\"Newsletter\",\"subtitle\":\"Register now to get updates on promotions and coupon. Don\\u2019t worry! We not spam\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(6,'BlogSearchWidget','primary_sidebar','farmart',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(7,'BlogCategoriesWidget','primary_sidebar','farmart',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(8,'RecentPostsWidget','primary_sidebar','farmart',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(9,'BlogTagsWidget','primary_sidebar','farmart',4,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(10,'SiteFeaturesWidget','pre_footer_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"100% Secure Payment\",\"subtitle\":\"Guarantee secure payments\"},\"4\":{\"icon\":\"general\\/icon-support.png\",\"title\":\"24\\/7 Dedicated Support\",\"subtitle\":\"Anywhere & anytime\"},\"5\":{\"icon\":\"general\\/icon-tag.png\",\"title\":\"Daily Offers\",\"subtitle\":\"Discount up to 70% OFF\"}}}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(11,'AdsWidget','products_list_sidebar','farmart',1,'{\"id\":\"AdsWidget\",\"title\":\"Ads\",\"ads_key\":\"ZDOZUZZIU7FZ\",\"background\":\"general\\/background.jpg\",\"size\":\"full-width\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(12,'SiteFeaturesWidget','product_detail_sidebar','farmart',1,'{\"id\":\"SiteFeaturesWidget\",\"title\":\"Site Features\",\"data\":{\"1\":{\"icon\":\"general\\/icon-rocket.png\",\"title\":\"Free Shipping\",\"subtitle\":\"For all orders over $200\"},\"2\":{\"icon\":\"general\\/icon-reload.png\",\"title\":\"1 & 1 Returns\",\"subtitle\":\"Cancellation after 1 day\"},\"3\":{\"icon\":\"general\\/icon-protect.png\",\"title\":\"Secure Payment\",\"subtitle\":\"Guarantee secure payments\"}}}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(13,'SiteInfoWidget','product_detail_sidebar','farmart',2,'{\"id\":\"SiteInfoWidget\",\"name\":\"Store information\",\"phone\":\"(+965) 7492-4277\",\"working_time\":\"Mon - Fri: 07AM - 06PM\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(14,'BecomeVendorWidget','product_detail_sidebar','farmart',3,'{\"id\":\"BecomeVendorWidget\",\"name\":\"Become a Vendor?\"}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(15,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(16,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(17,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(18,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2024-08-21 20:36:26','2024-08-21 20:36:26'),(19,'ProductCategoriesWidget','bottom_footer_sidebar','farmart',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2024-08-21 20:36:26','2024-08-21 20:36:26');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-22 10:36:27
