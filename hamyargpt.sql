-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: hamyargpt
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB-2ubuntu2

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activity_title` varchar(191) DEFAULT NULL,
  `activity_type` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activity_user_id_foreign` (`user_id`),
  CONSTRAINT `activity_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES
(1,1,NULL,'2024-05-11 14:19:42','2024-05-11 14:19:42','Starter Plan For free','Purchased'),
(2,1,NULL,'2024-05-11 14:25:41','2024-05-11 14:25:41','Starter','cancelled');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `code` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES
(1,'landing-header-section','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(2,'landing-features-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(3,'landing-templates-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(4,'landing-tools-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(5,'landing-how-it-works-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(6,'landing-testimonials-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(7,'landing-pricing-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37'),
(8,'landing-faq-section-728x90','',0,'2023-08-30 09:40:37','2023-08-30 09:40:37');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertis`
--

DROP TABLE IF EXISTS `advertis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `tracking_code` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertis`
--

LOCK TABLES `advertis` WRITE;
/*!40000 ALTER TABLE `advertis` DISABLE KEYS */;
/*!40000 ALTER TABLE `advertis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
INSERT INTO `app_settings` VALUES
(1,'front_theme','default'),
(2,'dash_theme','default'),
(3,'chat_setting_for_customer','0'),
(4,'default_ai_engine','openai'),
(5,'user_prompt_library','1'),
(6,'image_thumbnail','1');
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_wizard`
--

DROP TABLE IF EXISTS `article_wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_wizard` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `keywords` text NOT NULL,
  `extra_keywords` text NOT NULL,
  `topic_keywords` text NOT NULL,
  `title` text NOT NULL,
  `extra_titles` text NOT NULL,
  `topic_title` text NOT NULL,
  `language` varchar(191) NOT NULL DEFAULT '',
  `tone` varchar(191) NOT NULL DEFAULT '',
  `image_style` varchar(191) NOT NULL DEFAULT '',
  `image_count` int(11) NOT NULL DEFAULT 0,
  `outline` text NOT NULL,
  `extra_outlines` text NOT NULL,
  `topic_outline` text NOT NULL,
  `current_step` int(11) NOT NULL DEFAULT 0,
  `result` text NOT NULL,
  `image` text NOT NULL,
  `extra_images` text NOT NULL,
  `topic_image` text NOT NULL,
  `generated_count` int(11) NOT NULL DEFAULT 0,
  `creativity` double(8,2) NOT NULL DEFAULT 0.50,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_wizard`
--

LOCK TABLES `article_wizard` WRITE;
/*!40000 ALTER TABLE `article_wizard` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_wizard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bad_words`
--

DROP TABLE IF EXISTS `bad_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bad_words` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `words` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bad_words`
--

LOCK TABLES `bad_words` WRITE;
/*!40000 ALTER TABLE `bad_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `bad_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `feature_image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `seo_title` varchar(191) DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `category` text DEFAULT NULL,
  `tag` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) NOT NULL,
  `owner` varchar(191) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_category`
--

DROP TABLE IF EXISTS `chat_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_category`
--

LOCK TABLES `chat_category` WRITE;
/*!40000 ALTER TABLE `chat_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot`
--

DROP TABLE IF EXISTS `chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `model` varchar(191) DEFAULT NULL,
  `first_message` varchar(191) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `chatbot_interests` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `width` varchar(191) DEFAULT NULL,
  `height` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT 'not-trained',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot`
--

LOCK TABLES `chatbot` WRITE;
/*!40000 ALTER TABLE `chatbot` DISABLE KEYS */;
INSERT INTO `chatbot` VALUES
(1,NULL,'Default','Support','gpt-3.5-turbo-16k','I am AI Assistant. How can I help you?','Your name is John Doe. Remember that you are an assistant who only gives information about wordpress and don\'t give any other information.',NULL,NULL,NULL,NULL,NULL,'not-trained',NULL,NULL);
/*!40000 ALTER TABLE `chatbot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_data`
--

DROP TABLE IF EXISTS `chatbot_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatbot_id` bigint(20) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `type_value` varchar(191) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_data`
--

LOCK TABLES `chatbot_data` WRITE;
/*!40000 ALTER TABLE `chatbot_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatbot_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_data_vectors`
--

DROP TABLE IF EXISTS `chatbot_data_vectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_data_vectors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chatbot_id` bigint(20) DEFAULT NULL,
  `chatbot_data_id` bigint(20) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `embedding` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`embedding`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_data_vectors`
--

LOCK TABLES `chatbot_data_vectors` WRITE;
/*!40000 ALTER TABLE `chatbot_data_vectors` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatbot_data_vectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatbot_history`
--

DROP TABLE IF EXISTS `chatbot_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chatbot_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL,
  `user_openai_chat_id` int(11) DEFAULT NULL,
  `openai_chat_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatbot_history`
--

LOCK TABLES `chatbot_history` WRITE;
/*!40000 ALTER TABLE `chatbot_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatbot_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(191) NOT NULL DEFAULT 'assets/img/auth/default-avatar.png',
  `alt` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES
(1,'1c.svg','Envato','Envato','2023-06-02 13:39:35','2023-06-02 13:39:35'),
(2,'2c.svg','Envato','Envato','2023-06-02 13:39:35','2023-06-02 13:39:35'),
(3,'4c.svg','Envato','Envato','2023-06-02 13:39:35','2023-06-02 13:39:35'),
(4,'5c.svg','Envato','Envato','2023-06-02 13:39:35','2023-06-02 13:39:35'),
(5,'6c.svg','Envato','Envato','2023-06-02 13:39:35','2023-06-02 13:39:35');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `industry` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `target_audience` text DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `tagline` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `brand_color` varchar(191) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tone_of_voice` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companies_user_id_foreign` (`user_id`),
  CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_users`
--

DROP TABLE IF EXISTS `coupon_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupon_users_coupon_id_foreign` (`coupon_id`),
  KEY `coupon_users_user_id_foreign` (`user_id`),
  CONSTRAINT `coupon_users_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `coupon_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_users`
--

LOCK TABLES `coupon_users` WRITE;
/*!40000 ALTER TABLE `coupon_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `discount` decimal(5,2) NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_created_by_foreign` (`created_by`),
  CONSTRAINT `coupons_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `symbol` varchar(191) DEFAULT NULL,
  `thousand_separator` varchar(191) DEFAULT NULL,
  `decimal_separator` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES
(1,'Albania','Leke','ALL','Lek',',','.'),
(2,'America','Dollars','USD','$',',','.'),
(3,'Afghanistan','Afghanis','AFN','؋',',','.'),
(4,'Argentina','Pesos','ARS','$',',','.'),
(5,'Aruba','Guilders','AWG','ƒ',',','.'),
(6,'Australia','Dollars','AUD','$',',','.'),
(7,'Azerbaijan','New Manats','AZN','ман',',','.'),
(8,'Bahamas','Dollars','BSD','$',',','.'),
(9,'Barbados','Dollars','BBD','$',',','.'),
(10,'Belarus','Rubles','BYR','p.',',','.'),
(11,'Belgium','Euro','EUR','€',',','.'),
(12,'Beliz','Dollars','BZD','BZ$',',','.'),
(13,'Bermuda','Dollars','BMD','$',',','.'),
(14,'Bolivia','Bolivianos','BOB','$b',',','.'),
(15,'Bosnia and Herzegovina','Convertible Marka','BAM','KM',',','.'),
(16,'Botswana','Pula\'s','BWP','P',',','.'),
(17,'Bulgaria','Leva','BGN','лв',',','.'),
(18,'Brazil','Reais','BRL','R$',',','.'),
(19,'Britain (United Kingdom)','Pounds','GBP','£',',','.'),
(20,'Brunei Darussalam','Dollars','BND','$',',','.'),
(21,'Cambodia','Riels','KHR','៛',',','.'),
(22,'Canada','Dollars','CAD','$',',','.'),
(23,'Cayman Islands','Dollars','KYD','$',',','.'),
(24,'Chile','Pesos','CLP','$',',','.'),
(25,'China','Yuan Renminbi','CNY','¥',',','.'),
(26,'Colombia','Pesos','COP','$',',','.'),
(27,'Costa Rica','Colón','CRC','₡',',','.'),
(28,'Croatia','Kuna','HRK','kn',',','.'),
(29,'Cuba','Pesos','CUP','₱',',','.'),
(30,'Cyprus','Euro','EUR','€',',','.'),
(31,'Czech Republic','Koruny','CZK','Kč',',','.'),
(32,'Denmark','Kroner','DKK','kr',',','.'),
(33,'Dominican Republic','Pesos','DOP ','RD$',',','.'),
(34,'East Caribbean','Dollars','XCD','$',',','.'),
(35,'Egypt','Pounds','EGP','£',',','.'),
(36,'El Salvador','Colones','SVC','$',',','.'),
(37,'England (United Kingdom)','Pounds','GBP','£',',','.'),
(38,'Euro','Euro','EUR','€',',','.'),
(39,'Falkland Islands','Pounds','FKP','£',',','.'),
(40,'Fiji','Dollars','FJD','$',',','.'),
(41,'France','Euro','EUR','€',',','.'),
(42,'Ghana','Cedis','GHS','¢',',','.'),
(43,'Gibraltar','Pounds','GIP','£',',','.'),
(44,'Greece','Euro','EUR','€',',','.'),
(45,'Guatemala','Quetzales','GTQ','Q',',','.'),
(46,'Guernsey','Pounds','GGP','£',',','.'),
(47,'Guyana','Dollars','GYD','$',',','.'),
(48,'Holland (Netherlands)','Euro','EUR','€',',','.'),
(49,'Honduras','Lempiras','HNL','L',',','.'),
(50,'Hong Kong','Dollars','HKD','$',',','.'),
(51,'Hungary','Forint','HUF','Ft',',','.'),
(52,'Iceland','Kronur','ISK','kr',',','.'),
(53,'India','Rupees','INR','₹',',','.'),
(54,'Indonesia','Rupiahs','IDR','Rp',',','.'),
(55,'Iran','Rials','IRR','﷼',',','.'),
(56,'Ireland','Euro','EUR','€',',','.'),
(57,'Isle of Man','Pounds','IMP','£',',','.'),
(58,'Israel','New Shekels','ILS','₪',',','.'),
(59,'Italy','Euro','EUR','€',',','.'),
(60,'Jamaica','Dollars','JMD','J$',',','.'),
(61,'Japan','Yen','JPY','¥',',','.'),
(62,'Jersey','Pounds','JEP','£',',','.'),
(63,'Kazakhstan','Tenge','KZT','лв',',','.'),
(64,'Korea (North)','Won','KPW','₩',',','.'),
(65,'Korea (South)','Won','KRW','₩',',','.'),
(66,'Kyrgyzstan','Soms','KGS','лв',',','.'),
(67,'Laos','Kips','LAK','₭',',','.'),
(68,'Latvia','Lati','LVL','Ls',',','.'),
(69,'Lebanon','Pounds','LBP','£',',','.'),
(70,'Liberia','Dollars','LRD','$',',','.'),
(71,'Liechtenstein','Switzerland Francs','CHF','CHF',',','.'),
(72,'Lithuania','Litai','LTL','Lt',',','.'),
(73,'Luxembourg','Euro','EUR','€',',','.'),
(74,'Macedonia','Denars','MKD','ден',',','.'),
(75,'Malaysia','Ringgits','MYR','RM',',','.'),
(76,'Malta','Euro','EUR','€',',','.'),
(77,'Mauritius','Rupees','MUR','₨',',','.'),
(78,'Mexico','Pesos','MXN','$',',','.'),
(79,'Mongolia','Tugriks','MNT','₮',',','.'),
(80,'Mozambique','Meticais','MZN','MT',',','.'),
(81,'Namibia','Dollars','NAD','$',',','.'),
(82,'Nepal','Rupees','NPR','₨',',','.'),
(83,'Netherlands Antilles','Guilders','ANG','ƒ',',','.'),
(84,'Netherlands','Euro','EUR','€',',','.'),
(85,'New Zealand','Dollars','NZD','$',',','.'),
(86,'Nicaragua','Cordobas','NIO','C$',',','.'),
(87,'Nigeria','Nairas','NGN','₦',',','.'),
(88,'North Korea','Won','KPW','₩',',','.'),
(89,'Norway','Krone','NOK','kr',',','.'),
(90,'Oman','Rials','OMR','﷼',',','.'),
(91,'Pakistan','Rupees','PKR','₨',',','.'),
(92,'Panama','Balboa','PAB','B/.',',','.'),
(93,'Paraguay','Guarani','PYG','Gs',',','.'),
(94,'Peru','Nuevos Soles','PEN','S/.',',','.'),
(95,'Philippines','Pesos','PHP','Php',',','.'),
(96,'Poland','Zlotych','PLN','zł',',','.'),
(97,'Qatar','Rials','QAR','﷼',',','.'),
(98,'Romania','New Lei','RON','lei',',','.'),
(99,'Russia','Rubles','RUB','руб',',','.'),
(100,'Saint Helena','Pounds','SHP','£',',','.'),
(101,'Saudi Arabia','Riyals','SAR','﷼',',','.'),
(102,'Serbia','Dinars','RSD','Дин.',',','.'),
(103,'Seychelles','Rupees','SCR','₨',',','.'),
(104,'Singapore','Dollars','SGD','$',',','.'),
(105,'Slovenia','Euro','EUR','€',',','.'),
(106,'Solomon Islands','Dollars','SBD','$',',','.'),
(107,'Somalia','Shillings','SOS','S',',','.'),
(108,'South Africa','Rand','ZAR','R',',','.'),
(109,'South Korea','Won','KRW','₩',',','.'),
(110,'Spain','Euro','EUR','€',',','.'),
(111,'Sri Lanka','Rupees','LKR','₨',',','.'),
(112,'Sweden','Kronor','SEK','kr',',','.'),
(113,'Switzerland','Francs','CHF','CHF',',','.'),
(114,'Suriname','Dollars','SRD','$',',','.'),
(115,'Syria','Pounds','SYP','£',',','.'),
(116,'Taiwan','New Dollars','TWD','NT$',',','.'),
(117,'Thailand','Baht','THB','฿',',','.'),
(118,'Trinidad and Tobago','Dollars','TTD','TT$',',','.'),
(119,'Turkey','Lira','TRY','TL',',','.'),
(120,'Turkey','Liras','TRL','£',',','.'),
(121,'Tuvalu','Dollars','TVD','$',',','.'),
(122,'Ukraine','Hryvnia','UAH','₴',',','.'),
(123,'United Kingdom','Pounds','GBP','£',',','.'),
(124,'United States of America','Dollars','USD','$',',','.'),
(125,'Uruguay','Pesos','UYU','$U',',','.'),
(126,'Uzbekistan','Sums','UZS','лв',',','.'),
(127,'Vatican City','Euro','EUR','€',',','.'),
(128,'Venezuela','Bolivares Fuertes','VEF','Bs',',','.'),
(129,'Vietnam','Dong','VND','₫',',','.'),
(130,'Yemen','Rials','YER','﷼',',','.'),
(131,'Zimbabwe','Zimbabwe Dollars','ZWD','Z$',',','.'),
(132,'West African CFA franc','Francs','XOF','CFA',',','.');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_biling_plans`
--

DROP TABLE IF EXISTS `custom_biling_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_biling_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway` varchar(191) DEFAULT NULL,
  `plan_id` varchar(191) DEFAULT NULL,
  `main_plan_price_id` varchar(191) DEFAULT NULL,
  `custom_plan_price_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_biling_plans`
--

LOCK TABLES `custom_biling_plans` WRITE;
/*!40000 ALTER TABLE `custom_biling_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_biling_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customsettings`
--

DROP TABLE IF EXISTS `customsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customsettings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `value_str` varchar(191) DEFAULT NULL,
  `value_text` text DEFAULT NULL,
  `value_longtext` longtext DEFAULT NULL,
  `value_html` text DEFAULT NULL,
  `value_int` int(11) NOT NULL DEFAULT 0,
  `value_bigint` bigint(20) DEFAULT NULL,
  `value_ubigint` bigint(20) unsigned DEFAULT NULL,
  `value_double` double NOT NULL DEFAULT 0,
  `value_bool` tinyint(1) NOT NULL DEFAULT 0,
  `value_date` date DEFAULT NULL,
  `value_timestamp` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customsettings`
--

LOCK TABLES `customsettings` WRITE;
/*!40000 ALTER TABLE `customsettings` DISABLE KEYS */;
INSERT INTO `customsettings` VALUES
(1,'howitworks_bottomline','Used in How it Works section bottom line. Controls visibility and HTML value of line.',NULL,NULL,NULL,'Want to see? <a class=\"text-[#FCA7FF]\" href=\"https://codecanyon.net/item/magicai-openai-content-text-image-chat-code-generator-as-saas/45408109\">Join Magic</a>',1,NULL,NULL,0,0,NULL,NULL,'2024-05-11 13:43:41','2024-05-11 13:43:41');
/*!40000 ALTER TABLE `customsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elevenlab_voices`
--

DROP TABLE IF EXISTS `elevenlab_voices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elevenlab_voices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `voice_id` varchar(191) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elevenlab_voices`
--

LOCK TABLES `elevenlab_voices` WRITE;
/*!40000 ALTER TABLE `elevenlab_voices` DISABLE KEYS */;
/*!40000 ALTER TABLE `elevenlab_voices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `system` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES
(1,1,'Confirmation','Confirmation Email','<div style=\"padding: 0 19px\">\r\n    <h1>Hello, {user_name}!</h1>\r\n    <h2>Welcome to {site_name}!</h2>\r\n\r\n    <p>We are pleased to inform you that your {site_name} account has been successfully created. </p>\r\n    <p>Our platform offers a wide range of features and services to help you achieve your goals.</p>\r\n    <p>You can use {site_name} for: </p>\r\n    <p>\r\n    <ul>\r\n        <li>Copywriting</li>\r\n        <li>Images</li>\r\n        <li>ChatBot</li>\r\n        <li>Speech to Text</li>\r\n        <li>Coding</li>\r\n    </ul>\r\n    </p>\r\n    <p>Thank you for choosing {site_name} as your partner in achieving your goals. We look forward to working with you and helping you succeed.</p>\r\n</div>\r\n\r\n<br>\r\n\r\n<a href=\"{user_activation_url}\" class=\"btn btn-lg btn-block btn-round\">\r\n    Confirm My Account\r\n</a>\r\n\r\n<p class=\"need-help-p\">Need help? <a href=\"{site_url}\">Contact us.</a></p>',NULL,'2023-06-23 12:04:21'),
(2,1,'Invite','Invite Email','<div style=\"padding: 0 19px\">\r\n    <h1>You are Invited! Congrats!</h1>\r\n    <h1>{site_name}</h1>\r\n    <p>Hey,</p>\r\n    <p>We’re excited to invite you to join {site_name}. It is designed to help businesses and individuals leverage the power of artificial intelligence to generate any kind of content easily.</p>\r\n    <p>You can use {site_name} for: </p>\r\n    <p>\r\n    <ul>\r\n        <li>Copywriting</li>\r\n        <li>Images</li>\r\n        <li>ChatBot</li>\r\n        <li>Speech to Text</li>\r\n        <li>Coding</li>\r\n    </ul>\r\n    </p>\r\n    <p>Once you have created your account, you can start exploring the platform and see for yourself how it can benefit you.</p>\r\n    <p>Thank you for considering this invitation. I look forward to seeing you on {site_name}.</p>\r\n</div>\r\n\r\n<br>\r\n\r\n<a href=\"{affiliate_url}\" class=\"btn btn-lg btn-block btn-round\">\r\n    Discover {site_name}\r\n</a>\r\n\r\n<p class=\"need-help-p\">Need help? <a href=\"{site_url}\">Contact us.</a></p>',NULL,'2023-07-14 13:59:47'),
(3,1,'Password Reset','Password Reset','<div style=\"padding: 0 19px\">\r\n    <h1>Password Reset</h1>\r\n    <p>Hey,</p>\r\n    <p>We noticed that you recently requested to reset your password. To ensure the security of your account, we have reset your password for you.</p>\r\n    <p>Sincerely,</p>\r\n    <p>{site_name}</p>\r\n</div>\r\n\r\n<br>\r\n\r\n<a href=\"{reset_url}\" class=\"btn btn-lg btn-block btn-round\">\r\n    Reset Password\r\n</a>\r\n\r\n<p class=\"need-help-p\">Need help? <a href=\"{site_url}\">Contact us.</a></p>',NULL,'2023-06-23 12:08:48'),
(4,1,'Team Invite','Team Invite Email','<div style=\"padding: 0 19px\">\n    <h1>You are Invited! Congrats!</h1>\n    <h1>{site_name}</h1>\n    <p>Hey,</p>\n    <p>We’re excited to invite you to join {site_name}. It is designed to help businesses and individuals leverage the power of artificial intelligence to generate any kind of content easily.</p>\n    <p>You can use {site_name} for: </p>\n    <p>\n    <ul>\n        <li>Copywriting</li>\n        <li>Images</li>\n        <li>ChatBot</li>\n        <li>Speech to Text</li>\n        <li>Coding</li>\n    </ul>\n    </p>\n    <p>Once you have created your account, you can start exploring the platform and see for yourself how it can benefit you.</p>\n    <p>Thank you for considering this invitation. I look forward to seeing you on {site_name}.</p>\n</div>\n\n<br>\n\n<a href=\"{register_url}\" class=\"btn btn-lg btn-block btn-round\">\n    Discover {site_name}\n</a>\n\n<p class=\"need-help-p\">Need help? <a href=\"{site_url}\">Contact us.</a></p>',NULL,'2024-02-06 07:07:15');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extensions`
--

DROP TABLE IF EXISTS `extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extensions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `installed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_theme` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extensions`
--

LOCK TABLES `extensions` WRITE;
/*!40000 ALTER TABLE `extensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES
(1,'42e9b507-351d-4c41-85f3-86dd9f54ad89','database','default','{\"uuid\":\"42e9b507-351d-4c41-85f3-86dd9f54ad89\",\"displayName\":\"App\\\\Mail\\\\ConfirmationEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Mail\\\\SendQueuedMailable\",\"command\":\"O:34:\\\"Illuminate\\\\Mail\\\\SendQueuedMailable\\\":15:{s:8:\\\"mailable\\\";O:26:\\\"App\\\\Mail\\\\ConfirmationEmail\\\":5:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"settings\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Setting\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:8:\\\"template\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:25:\\\"App\\\\Models\\\\EmailTemplates\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"to\\\";a:1:{i:0;a:2:{s:4:\\\"name\\\";N;s:7:\\\"address\\\";s:19:\\\"amirex128@gmail.com\\\";}}s:6:\\\"mailer\\\";s:4:\\\"smtp\\\";}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"maxExceptions\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:3:\\\"job\\\";N;}\"},\"telescope_uuid\":\"9c04df15-6043-4185-be56-59b60bc59502\"}','Symfony\\Component\\Mime\\Exception\\LogicException: An email must have a \"From\" or a \"Sender\" header. in /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/mime/Message.php:138\nStack trace:\n#0 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/mime/Email.php(414): Symfony\\Component\\Mime\\Message->ensureValidity()\n#1 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/mailer/SentMessage.php(33): Symfony\\Component\\Mime\\Email->ensureValidity()\n#2 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/mailer/Transport/AbstractTransport.php(68): Symfony\\Component\\Mailer\\SentMessage->__construct()\n#3 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send()\n#4 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(573): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send()\n#5 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(335): Illuminate\\Mail\\Mailer->sendSymfonyMessage()\n#6 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(205): Illuminate\\Mail\\Mailer->send()\n#7 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#8 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale()\n#9 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Mail/SendQueuedMailable.php(83): Illuminate\\Mail\\Mailable->send()\n#10 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Mail\\SendQueuedMailable->handle()\n#11 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#12 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#13 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#14 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#15 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#16 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#17 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#19 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#20 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#21 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#23 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#24 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call()\n#25 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#26 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(389): Illuminate\\Queue\\Worker->process()\n#27 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(333): Illuminate\\Queue\\Worker->runJob()\n#28 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(137): Illuminate\\Queue\\Worker->runNextJob()\n#29 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#30 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#31 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#32 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#33 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#34 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#35 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Console/Command.php(211): Illuminate\\Container\\Container->call()\n#36 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/console/Command/Command.php(326): Illuminate\\Console\\Command->execute()\n#37 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Console/Command.php(180): Symfony\\Component\\Console\\Command\\Command->run()\n#38 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/console/Application.php(1078): Illuminate\\Console\\Command->run()\n#39 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/console/Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand()\n#40 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/symfony/console/Application.php(175): Symfony\\Component\\Console\\Application->doRun()\n#41 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Console/Application.php(162): Symfony\\Component\\Console\\Application->run()\n#42 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(400): Illuminate\\Console\\Application->call()\n#43 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Support/Facades/Facade.php(355): Illuminate\\Foundation\\Console\\Kernel->call()\n#44 /home/amirex128/projects_linux/self/hamyargpt.com/app/Providers/AppServiceProvider.php(104): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#45 /home/amirex128/projects_linux/self/hamyargpt.com/app/Providers/AppServiceProvider.php(77): App\\Providers\\AppServiceProvider->jobRuns()\n#46 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Providers\\AppServiceProvider->boot()\n#47 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#48 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#49 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#50 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Container/Container.php(662): Illuminate\\Container\\BoundMethod::call()\n#51 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1034): Illuminate\\Container\\Container->call()\n#52 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1015): Illuminate\\Foundation\\Application->bootProvider()\n#53 [internal function]: Illuminate\\Foundation\\Application->Illuminate\\Foundation\\{closure}()\n#54 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(1014): array_walk()\n#55 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/BootProviders.php(17): Illuminate\\Foundation\\Application->boot()\n#56 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Application.php(263): Illuminate\\Foundation\\Bootstrap\\BootProviders->bootstrap()\n#57 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(186): Illuminate\\Foundation\\Application->bootstrapWith()\n#58 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(170): Illuminate\\Foundation\\Http\\Kernel->bootstrap()\n#59 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(144): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#60 /home/amirex128/projects_linux/self/hamyargpt.com/public/index.php(51): Illuminate\\Foundation\\Http\\Kernel->handle()\n#61 /home/amirex128/projects_linux/self/hamyargpt.com/vendor/laravel/framework/src/Illuminate/Foundation/resources/server.php(16): require_once(\'...\')\n#62 {main}','2024-05-11 13:39:25');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES
(1,'How does it generate responses?','MagicAI uses the most popular AI models such as GPT, Dall-E, Ada to create text, image, code and more within seconds. The process is simple. All you have to do is provide a topic or idea, and our AI-based generator will take care of the rest.',NULL,'2023-06-02 08:44:35','2023-06-02 08:44:35'),
(2,'Can i create templates or chat bots?','You can use pre-made templates and examples for various content types and industries to help you get started quickly. You can even create your own chatbot or custom prompt template for further customization.',NULL,'2023-06-02 08:45:43','2023-06-02 08:45:43'),
(3,'Should i buy regular or extended licence?','If you plan to charge end users for the final product or service. You should buy the extended license in compliance with Envato’s terms of service same as other projects https://codecanyon.net/licenses/standard',NULL,'2023-06-02 08:46:02','2023-06-02 08:46:02'),
(4,'Can i translate the script into another language?','Yes! MagicAI\'s multilingual capabilities apply to both content generation and dashboard language. You can easily translate it into other languages. A built-in translation tool is coming soon!',NULL,'2023-06-02 08:46:25','2023-06-02 08:46:25'),
(5,'Is there a mobile app for MagicAI?','MagicAI provides an almost native-app experience thanks to its mobile-first approach. The entire layout is responsive and works great on any device regardless of the size.',NULL,'2023-06-02 08:46:53','2023-06-02 08:46:53');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourite_list`
--

DROP TABLE IF EXISTS `favourite_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favourite_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourite_list`
--

LOCK TABLES `favourite_list` WRITE;
/*!40000 ALTER TABLE `favourite_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourite_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `folders_created_by_foreign` (`created_by`),
  CONSTRAINT `folders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_footer_settings`
--

DROP TABLE IF EXISTS `frontend_footer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_footer_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `header_title` varchar(191) NOT NULL DEFAULT 'Limited Offer',
  `header_text` varchar(191) NOT NULL DEFAULT 'Sign up and receive 20% bonus discount on checkout.',
  `hero_subtitle` varchar(191) NOT NULL DEFAULT 'Unleash the Power of AI',
  `hero_title` varchar(191) NOT NULL DEFAULT 'Ultimate AI',
  `hero_description` varchar(191) NOT NULL DEFAULT 'All-in-one platform to generate AI content and start making money in minutes.',
  `hero_scroll_text` varchar(191) NOT NULL DEFAULT 'Discover MagicAI',
  `hero_button` varchar(191) NOT NULL DEFAULT 'Start Making Money',
  `hero_button_url` varchar(191) DEFAULT NULL,
  `hero_button_type` int(11) NOT NULL DEFAULT 1,
  `footer_header` varchar(191) NOT NULL DEFAULT 'Start your free trial.',
  `footer_text_small` varchar(191) NOT NULL DEFAULT 'Pay once, own forever.',
  `footer_text` varchar(191) NOT NULL DEFAULT 'Unlock your business potential by letting the AI work and generate money for you.',
  `footer_button_text` varchar(191) NOT NULL DEFAULT 'Join our community',
  `footer_button_url` varchar(191) NOT NULL DEFAULT 'https://codecanyon.net/item/magicai-openai-content-text-image-chat-code-generator-as-saas/45408109',
  `footer_copyright` varchar(191) NOT NULL DEFAULT '2023 MagicAI. All images are for demo purposes.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hero_title_text_rotator` varchar(191) DEFAULT 'Generator,Chatbot,Assistant',
  `sign_in` varchar(191) NOT NULL DEFAULT 'Sign In',
  `join_hub` varchar(191) NOT NULL DEFAULT 'Join Hub',
  `floating_button_small_text` varchar(191) DEFAULT NULL,
  `floating_button_bold_text` varchar(191) DEFAULT NULL,
  `floating_button_link` varchar(191) DEFAULT NULL,
  `floating_button_active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_footer_settings`
--

LOCK TABLES `frontend_footer_settings` WRITE;
/*!40000 ALTER TABLE `frontend_footer_settings` DISABLE KEYS */;
INSERT INTO `frontend_footer_settings` VALUES
(1,'Limited Offer','Sign up and receive 20% bonus discount on checkout.','Unleash the Power of AI','Ultimate AI','All-in-one platform to generate AI content and start making money in minutes.','Discover MagicAI','Start Making Money',NULL,1,'Start your free trial.','Pay once, own forever.','Unlock your business potential by letting the AI work and generate money for you.','Join our community','https://codecanyon.net/item/magicai-openai-content-text-image-chat-code-generator-as-saas/45408109','2023 MagicAI. All images are for demo purposes.','2024-05-11 13:37:46','2024-05-11 13:37:46','Generator,Chatbot,Assistant','Sign In','Join Hub',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `frontend_footer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_future`
--

DROP TABLE IF EXISTS `frontend_future`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_future` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_future`
--

LOCK TABLES `frontend_future` WRITE;
/*!40000 ALTER TABLE `frontend_future` DISABLE KEYS */;
INSERT INTO `frontend_future` VALUES
(1,'AI Generator','Generate <strong>text, image, code, chat</strong> and even more with',' <svg width=\"20\" height=\"21\" viewBox=\"0 0 20 21\" fill=\"none\" stroke=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M2.333 14.204L14.571 1.966C15.0509 1.48609 15.7018 1.21648 16.3805 1.21648C16.7166 1.21648 17.0493 1.28267 17.3598 1.41127C17.6703 1.53988 17.9524 1.72837 18.19 1.966C18.4276 2.20363 18.6161 2.48573 18.7447 2.79621C18.8733 3.10668 18.9395 3.43944 18.9395 3.7755C18.9395 4.11156 18.8733 4.44432 18.7447 4.75479C18.6161 5.06527 18.4276 5.34737 18.19 5.585L5.952 17.823C5.6728 18.1022 5.31719 18.2926 4.93 18.37L1 19.156L1.786 15.226C1.86345 14.8388 2.05378 14.4832 2.333 14.204Z\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n                                <path d=\"M12.5 4.656L15.5 7.656\" stroke-width=\"2\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56'),
(2,'Advanced Dashboard','Access to valuable user insight, analytics and activity.','  <svg width=\"16\" height=\"18\" viewBox=\"0 0 16 18\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M3.46 13.838H5.19V3.46H3.46V13.838ZM6.92 17.298H8.65V0H6.92V17.298ZM0 10.379H1.73V6.919H0V10.379ZM10.379 13.839H12.109V3.46H10.379V13.839ZM13.839 6.92V10.38H15.569V6.92H13.839Z\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56'),
(3,'Payment Gateways','Securely process credit card, debit card, or other methods.',' <svg width=\"19\" height=\"19\" viewBox=\"0 0 19 19\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M3.421 -6.80448e-08L3.267 0.643L0.231 14.636L0 15.636H4.013L3.524 17.925L3.293 18.925H9.029L9.158 18.256L10.007 14.295H12.219C13.7458 14.318 15.2324 13.8059 16.4212 12.8475C17.6099 11.8891 18.4257 10.5449 18.727 9.048C18.9117 8.34466 18.9335 7.60848 18.7909 6.89542C18.6483 6.18237 18.345 5.51122 17.904 4.933C17.2726 4.18389 16.4149 3.66026 15.46 3.441C15.303 2.67914 14.9378 1.97574 14.405 1.409C13.9537 0.955562 13.416 0.597241 12.8237 0.355227C12.2315 0.113213 11.5967 -0.00757721 10.957 -6.80448e-08H3.421ZM4.758 1.646H10.958C11.8009 1.63923 12.613 1.96222 13.221 2.546C13.563 2.92723 13.7979 3.39222 13.9019 3.89369C14.0059 4.39516 13.9752 4.91523 13.813 5.401C13.6186 6.54221 13.0154 7.57362 12.116 8.30255C11.2167 9.03148 10.0827 9.40808 8.926 9.362H5.376L5.25 10.006L4.401 13.993H2.058L4.758 1.646ZM6.841 2.855L6.687 3.498L5.839 7.3L5.608 8.3H8.515C9.23308 8.28426 9.92567 8.0308 10.4843 7.57932C11.0429 7.12783 11.436 6.50381 11.602 5.805H11.628C11.628 5.789 11.628 5.77 11.628 5.754C11.7218 5.41549 11.7405 5.06056 11.6828 4.71406C11.6252 4.36756 11.4924 4.03785 11.294 3.748C11.0809 3.46596 10.8048 3.23768 10.4878 3.0814C10.1707 2.92513 9.82147 2.8452 9.468 2.848L6.841 2.855ZM8.15 4.5H9.462C9.55438 4.48894 9.64804 4.50213 9.73378 4.53824C9.81952 4.57436 9.89438 4.63218 9.951 4.706C10.0148 4.80392 10.055 4.91532 10.0683 5.03143C10.0817 5.14753 10.0679 5.26515 10.028 5.375V5.4C9.92453 5.73467 9.72591 6.032 9.45637 6.25573C9.18682 6.47947 8.858 6.61993 8.51 6.66H7.661L8.15 4.5ZM15.506 5.22C15.9416 5.37924 16.3307 5.64457 16.638 5.992C16.9265 6.37171 17.1192 6.81536 17.1998 7.28537C17.2804 7.75537 17.2465 8.23787 17.101 8.692C16.9066 9.83321 16.3034 10.8646 15.404 11.5935C14.5047 12.3225 13.3707 12.6991 12.214 12.653H8.664L8.535 13.296L7.686 17.283H5.35L5.71 15.637H5.736L5.865 14.968L6.714 11.007H8.926C10.4528 11.03 11.9394 10.5179 13.1282 9.55954C14.3169 8.60115 15.1327 7.25692 15.434 5.76C15.472 5.575 15.488 5.4 15.51 5.221L15.506 5.22Z\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56'),
(4,'Multi-Lingual','Ability to understand and generate content in different languages',' <svg width=\"22\" height=\"22\" viewBox=\"0 0 22 22\" fill=\"none\" stroke=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M10.85 20.85C16.3728 20.85 20.85 16.3728 20.85 10.85C20.85 5.32715 16.3728 0.85 10.85 0.85C5.32715 0.85 0.85 5.32715 0.85 10.85C0.85 16.3728 5.32715 20.85 10.85 20.85Z\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n                                <path d=\"M6.85 10.85C6.85 16.3728 8.64086 20.85 10.85 20.85C13.0591 20.85 14.85 16.3728 14.85 10.85C14.85 5.32715 13.0591 0.85 10.85 0.85C8.64086 0.85 6.85 5.32715 6.85 10.85Z\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n                                <path d=\"M0.85 10.85H20.85\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56'),
(5,'Custom Templates','Add unlimited number of custom prompts for your customers.','  <svg width=\"19\" height=\"16\" viewBox=\"0 0 19 16\" fill=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M14.84 6.509H7.29C6.571 6.509 6.509 7.091 6.509 7.809C6.509 8.527 6.571 9.109 7.29 9.109H14.84C15.559 9.109 15.621 8.527 15.621 7.809C15.621 7.091 15.558 6.509 14.84 6.509ZM17.44 13.018H7.29C6.571 13.018 6.509 13.6 6.509 14.318C6.509 15.036 6.571 15.618 7.29 15.618H17.443C18.162 15.618 18.224 15.036 18.224 14.318C18.224 13.6 18.162 13.018 17.443 13.018H17.44ZM7.29 2.6H17.443C18.162 2.6 18.224 2.018 18.224 1.3C18.224 0.582 18.162 0 17.443 0H7.29C6.571 0 6.509 0.582 6.509 1.3C6.509 2.018 6.571 2.6 7.29 2.6ZM3.124 6.509H0.781C0.0619999 6.509 0 7.091 0 7.809C0 8.527 0.0619999 9.109 0.781 9.109H3.124C3.843 9.109 3.905 8.527 3.905 7.809C3.905 7.091 3.843 6.509 3.124 6.509ZM3.124 13.018H0.781C0.0619999 13.018 0 13.6 0 14.318C0 15.036 0.0619999 15.618 0.781 15.618H3.124C3.843 15.618 3.905 15.036 3.905 14.318C3.905 13.6 3.843 13.018 3.124 13.018ZM3.124 0H0.781C0.0619999 0 0 0.582 0 1.3C0 2.018 0.0619999 2.6 0.781 2.6H3.124C3.843 2.6 3.905 2.018 3.905 1.3C3.905 0.582 3.843 0 3.124 0Z\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56'),
(6,'Support Platform','Access and manage your support tickets from your dashboard.','<svg width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" xmlns=\"http://www.w3.org/2000/svg\">\n                                <path d=\"M9.217 1.068L9.635 7.968M13.818 7.968L14.236 1.068M9.217 22.191L9.635 15.291M13.818 15.291L14.236 22.191M22.287 9.121L15.387 9.539M15.387 13.722L22.287 14.14M1.164 9.121L8.064 9.539M8.064 13.722L1.164 14.14M22.85 11.85C22.85 17.9251 17.9251 22.85 11.85 22.85C5.77487 22.85 0.849998 17.9251 0.849998 11.85C0.849998 5.77487 5.77487 0.849998 11.85 0.849998C17.9251 0.849998 22.85 5.77487 22.85 11.85ZM15.85 11.85C15.85 14.0591 14.0591 15.85 11.85 15.85C9.64086 15.85 7.85 14.0591 7.85 11.85C7.85 9.64086 9.64086 7.85 11.85 7.85C14.0591 7.85 15.85 9.64086 15.85 11.85Z\" stroke-width=\"1.7\" stroke-linecap=\"round\" stroke-linejoin=\"round\"/>\n                            </svg>','2023-06-02 12:02:56','2023-06-02 12:02:56');
/*!40000 ALTER TABLE `frontend_future` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_generators`
--

DROP TABLE IF EXISTS `frontend_generators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_generators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(191) DEFAULT NULL,
  `subtitle_one` varchar(191) DEFAULT NULL,
  `subtitle_two` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `image_title` varchar(191) DEFAULT NULL,
  `image_subtitle` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_generators`
--

LOCK TABLES `frontend_generators` WRITE;
/*!40000 ALTER TABLE `frontend_generators` DISABLE KEYS */;
INSERT INTO `frontend_generators` VALUES
(1,'AI Text Generator','Say goodbye to writer’s block','AI','Intelligent Writing Assistant','Writer is designed to help you <strong>generate high-quality texts instantly</strong>, without breaking a sweat. With our intuitive interface and powerful features, you can easily edit, export or publish your AI-generated result.','assets/img/site/text-generator.jpg','Generate, edit, export.','Powered by OpenAI.','#EADDF9','2023-06-02 12:03:09','2023-06-02 12:03:09'),
(2,'AI Image Generator','Unleash your creativity','AI','Create eye-catching images and graphics.','Generate high qualtity images for a wide range of applications','assets/img/site/image-generator.jpg','Imagine, Genearate, Publish.','Powered by Dall-E.','#DFE5EB','2023-06-02 12:03:09','2023-06-02 12:03:09'),
(3,'AI Code Generator','he future of development\'','AI','Generate high quality code in no time.','MagicAI is designed to make coding faster, easier, and more efficient than ever before. Whether you’re a seasoned developer or a coding newbie, our tool will help you streamline your coding process and get your projects up and running in no time.','assets/img/site/code-generator.jpg','Fix. Improve. Generate.','Fix. Improve. Generate.','#DDE6FF','2023-06-02 12:03:09','2023-06-02 12:03:09'),
(4,'AI Chat Bot','Intuitive / Humanlike Chatbot ','AI','Meet your next virtual assistant.','Get instant answers to your questions, no matter the topic. Whether you’re looking to book a reservation, get product recommendations, or just chat about the weather, MagicAI is always ready and willing to help.','assets/img/site/ai-chat.jpg','Chat, Solve, Repeat.','Powered by OpenAI.','#F9DDDF','2023-06-02 12:03:09','2023-06-02 12:03:09'),
(5,'AI Speech To Text','Say goodbye to writer’s block','AI','Transcribe your speech into text.','Accurately transcribe your recordings in just minutes. With our user-friendly interface, you can upload your files and have them transcribed in a matter of clicks.','assets/img/site/ai-speech.jpg','Upload, Analyze, Generate.','Powered by OpenAI.','#FFF8EB','2023-06-02 12:03:09','2023-06-02 12:03:09'),
(6,'Empower Your Message with AI','Say goodbye to writer’s block','AI','Transcribe your speech into text.','From captivating commercials to engaging narrations, our AI voice will bring your words to life. With its seamless delivery, natural intonation, and unrivaled versatility, our AI VoiceOver is the perfect choice for any project. Effortlessly choose from a variety of voices and languages while adjusting the pace to your preference.','assets/img/site/voiceover.jpg','Upload, Analyze, Generate.','Powered by OpenAI.','#FFF8EB','2023-06-02 12:03:09','2023-06-02 12:03:09');
/*!40000 ALTER TABLE `frontend_generators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_sections_statuses_titles`
--

DROP TABLE IF EXISTS `frontend_sections_statuses_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_sections_statuses_titles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `features_active` tinyint(1) NOT NULL DEFAULT 1,
  `features_title` varchar(191) NOT NULL DEFAULT 'The future of AI.',
  `features_description` text DEFAULT NULL,
  `generators_active` tinyint(1) NOT NULL DEFAULT 1,
  `who_is_for_active` tinyint(1) NOT NULL DEFAULT 1,
  `custom_templates_active` tinyint(1) NOT NULL DEFAULT 1,
  `custom_templates_subtitle_one` varchar(191) NOT NULL DEFAULT 'Custom',
  `custom_templates_subtitle_two` varchar(191) NOT NULL DEFAULT 'Prompts',
  `custom_templates_title` varchar(191) NOT NULL DEFAULT 'Custom Templates.',
  `custom_templates_description` text DEFAULT NULL,
  `tools_active` tinyint(1) NOT NULL DEFAULT 1,
  `tools_title` varchar(191) NOT NULL DEFAULT 'Magic Tools.',
  `tools_description` text DEFAULT NULL,
  `how_it_works_active` tinyint(1) NOT NULL DEFAULT 1,
  `how_it_works_title` varchar(191) NOT NULL DEFAULT 'So, how does it work?',
  `testimonials_active` tinyint(1) NOT NULL DEFAULT 1,
  `testimonials_title` varchar(191) NOT NULL DEFAULT 'Trusted by millions.',
  `testimonials_subtitle_one` varchar(191) NOT NULL DEFAULT 'Testimonials',
  `testimonials_subtitle_two` varchar(191) NOT NULL DEFAULT 'Trustpilot',
  `pricing_active` tinyint(1) NOT NULL DEFAULT 1,
  `pricing_title` varchar(191) NOT NULL DEFAULT 'Flexible Pricing.',
  `pricing_description` text DEFAULT NULL,
  `pricing_save_percent` varchar(191) NOT NULL DEFAULT 'Save 30%',
  `faq_active` tinyint(1) NOT NULL DEFAULT 1,
  `faq_title` varchar(191) NOT NULL DEFAULT 'Have a question?',
  `faq_subtitle` varchar(191) NOT NULL DEFAULT 'Our support team will get assistance from AI-powered suggestions, making it quicker than ever to handle support requests.',
  `faq_text_one` varchar(191) NOT NULL DEFAULT 'FAQ',
  `faq_text_two` varchar(191) NOT NULL DEFAULT 'Help Center',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `preheader_active` tinyint(1) NOT NULL DEFAULT 1,
  `blog_active` tinyint(1) NOT NULL DEFAULT 0,
  `blog_title` varchar(191) NOT NULL DEFAULT 'Latest News',
  `blog_subtitle` varchar(191) NOT NULL DEFAULT 'Stay up-to-date',
  `blog_posts_per_page` int(11) NOT NULL DEFAULT 3,
  `blog_button_text` varchar(191) NOT NULL DEFAULT 'Show more',
  `blog_a_title` varchar(191) NOT NULL DEFAULT 'Blog Posts',
  `blog_a_subtitle` varchar(191) NOT NULL DEFAULT 'Latest News',
  `blog_a_description` varchar(191) NOT NULL DEFAULT 'Welcome to our cozy corner of the internet, where you will find a delightful collection of our heartfelt and thought-provoking blog posts.',
  `blog_a_posts_per_page` int(11) NOT NULL DEFAULT 6,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_sections_statuses_titles`
--

LOCK TABLES `frontend_sections_statuses_titles` WRITE;
/*!40000 ALTER TABLE `frontend_sections_statuses_titles` DISABLE KEYS */;
INSERT INTO `frontend_sections_statuses_titles` VALUES
(1,1,'The future of AI.',NULL,1,1,1,'Custom','Prompts','Custom Templates.',NULL,1,'Magic Tools.',NULL,1,'So, how does it work?',1,'Trusted by millions.','Testimonials','Trustpilot',1,'Flexible Pricing.',NULL,'Save 30%',1,'Have a question?','Our support team will get assistance from AI-powered suggestions, making it quicker than ever to handle support requests.','FAQ','Help Center','2024-05-11 13:37:46','2024-05-11 13:37:46',1,0,'Latest News','Stay up-to-date',3,'Show more','Blog Posts','Latest News','Welcome to our cozy corner of the internet, where you will find a delightful collection of our heartfelt and thought-provoking blog posts.',6);
/*!40000 ALTER TABLE `frontend_sections_statuses_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_tools`
--

DROP TABLE IF EXISTS `frontend_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_tools` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_tools`
--

LOCK TABLES `frontend_tools` WRITE;
/*!40000 ALTER TABLE `frontend_tools` DISABLE KEYS */;
INSERT INTO `frontend_tools` VALUES
(1,'Advanced Dashboard','Track a wide range of data points, including user traffic and sales.','upload/images/frontent/tools/v6sP-test.png','2023-05-29 10:48:13','2023-05-29 10:48:31'),
(2,'Payment Gateways','Securely process credit card or other electronic payment methods.','upload/images/frontent/tools/Payments100.jpg','2023-05-29 10:49:49','2023-05-29 10:49:49'),
(3,'Multilingual','Ability to understand and generate content in different languages.','upload/images/frontent/tools/NZBW-multilingual.png','2023-05-29 10:50:18','2023-05-29 10:50:18'),
(4,'Affiliate System','Ability to invite friends, and earn commission from their first purchase.','upload/images/frontent/tools/RAhq-affiliate-system.png','2023-05-29 10:50:49','2023-05-29 10:50:49'),
(5,'Easy Export','Export generated content as plain text, PDF, Word or HTML easily.','upload/images/frontent/tools/mPWB-easy-export.png','2023-05-29 10:51:05','2023-05-29 10:51:05'),
(6,'Support Platform','Access and mage support tickets from your dashboard.','upload/images/frontent/tools/rIwa-support-platform.png','2023-05-29 10:51:21','2023-05-29 10:51:21');
/*!40000 ALTER TABLE `frontend_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frontend_who_is_for`
--

DROP TABLE IF EXISTS `frontend_who_is_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frontend_who_is_for` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frontend_who_is_for`
--

LOCK TABLES `frontend_who_is_for` WRITE;
/*!40000 ALTER TABLE `frontend_who_is_for` DISABLE KEYS */;
INSERT INTO `frontend_who_is_for` VALUES
(1,'Digital Agencies','orange','2023-06-02 09:46:34','2023-06-02 07:08:34'),
(2,'Product Designers','purple','2023-06-02 09:46:34','2023-06-02 09:46:34'),
(3,'Enterpreneurs','teal','2023-06-02 09:46:34','2023-06-02 09:46:34'),
(4,'Copywriters','blue','2023-06-02 09:46:34','2023-06-02 09:46:34'),
(5,'Digital Marketers','green','2023-06-02 09:46:34','2023-06-02 09:46:34'),
(6,'Developers','red','2023-06-02 09:46:34','2023-06-02 09:46:34');
/*!40000 ALTER TABLE `frontend_who_is_for` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gatewayproducts`
--

DROP TABLE IF EXISTS `gatewayproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gatewayproducts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `plan_name` varchar(191) DEFAULT NULL,
  `gateway_code` varchar(191) DEFAULT NULL,
  `gateway_title` varchar(191) DEFAULT NULL,
  `product_id` varchar(191) DEFAULT NULL,
  `price_id` varchar(191) DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gatewayproducts`
--

LOCK TABLES `gatewayproducts` WRITE;
/*!40000 ALTER TABLE `gatewayproducts` DISABLE KEYS */;
INSERT INTO `gatewayproducts` VALUES
(1,1,'Starter','freeservice','Free','FPP-XGPO3IGYJDOFT','Not Needed',NULL,'2024-05-11 14:19:40','2024-05-11 14:19:40');
/*!40000 ALTER TABLE `gatewayproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `mode` varchar(191) DEFAULT NULL,
  `sandbox_client_id` varchar(191) DEFAULT NULL,
  `sandbox_client_secret` varchar(191) DEFAULT NULL,
  `sandbox_app_id` varchar(191) DEFAULT NULL,
  `live_client_id` varchar(191) DEFAULT NULL,
  `live_client_secret` varchar(191) DEFAULT NULL,
  `live_app_id` varchar(191) DEFAULT NULL,
  `payment_action` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `currency_locale` varchar(191) DEFAULT NULL,
  `notify_url` varchar(191) DEFAULT NULL,
  `base_url` varchar(191) DEFAULT NULL,
  `sandbox_url` varchar(191) DEFAULT NULL,
  `locale` varchar(191) DEFAULT NULL,
  `validate_ssl` varchar(191) DEFAULT NULL,
  `webhook_secret` varchar(191) DEFAULT NULL,
  `logger` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `webhook_id` varchar(191) DEFAULT NULL,
  `tax` varchar(191) DEFAULT '0',
  `bank_account_details` text DEFAULT NULL,
  `bank_account_other` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateways`
--

LOCK TABLES `gateways` WRITE;
/*!40000 ALTER TABLE `gateways` DISABLE KEYS */;
INSERT INTO `gateways` VALUES
(1,'stripe','Stripe',1,'sandbox',NULL,NULL,NULL,'x','x',NULL,NULL,'124',NULL,NULL,'https://api.stripe.com',NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:17:39','2024-05-11 14:17:53',NULL,'0',NULL,NULL);
/*!40000 ALTER TABLE `gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `health_check_result_history_items`
--

DROP TABLE IF EXISTS `health_check_result_history_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `health_check_result_history_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `check_name` varchar(255) NOT NULL,
  `check_label` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `notification_message` text DEFAULT NULL,
  `short_summary` varchar(255) DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`meta`)),
  `ended_at` timestamp NOT NULL,
  `batch` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `health_check_result_history_items_created_at_index` (`created_at`),
  KEY `health_check_result_history_items_batch_index` (`batch`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `health_check_result_history_items`
--

LOCK TABLES `health_check_result_history_items` WRITE;
/*!40000 ALTER TABLE `health_check_result_history_items` DISABLE KEYS */;
INSERT INTO `health_check_result_history_items` VALUES
(17,'DebugMode','Debug Mode','failed','The debug mode was expected to be `false`, but actually was `true`','true','{\"actual\":true,\"expected\":false}','2024-05-11 13:47:01','2750d30f-3290-47c0-949e-d62b0a2e7c9c','2024-05-11 13:47:01','2024-05-11 13:47:01'),
(18,'Environment','Environment','failed','The environment was expected to be `production`, but actually was `development`','development','{\"actual\":\"development\",\"expected\":\"production\"}','2024-05-11 13:47:01','2750d30f-3290-47c0-949e-d62b0a2e7c9c','2024-05-11 13:47:01','2024-05-11 13:47:01'),
(19,'Database','Database','ok','','Ok','{\"connection_name\":\"mysql\"}','2024-05-11 13:47:01','2750d30f-3290-47c0-949e-d62b0a2e7c9c','2024-05-11 13:47:01','2024-05-11 13:47:01'),
(20,'MemoryLimit','Memory Limit','ok','Unlimited','Ok','[]','2024-05-11 13:47:01','2750d30f-3290-47c0-949e-d62b0a2e7c9c','2024-05-11 13:47:01','2024-05-11 13:47:01'),
(21,'DebugMode','Debug Mode','failed','The debug mode was expected to be `false`, but actually was `true`','true','{\"actual\":true,\"expected\":false}','2024-05-11 14:09:26','46a87679-1fdd-43bd-bdbc-46a1f5a5be52','2024-05-11 14:09:26','2024-05-11 14:09:26'),
(22,'Environment','Environment','failed','The environment was expected to be `production`, but actually was `development`','development','{\"actual\":\"development\",\"expected\":\"production\"}','2024-05-11 14:09:26','46a87679-1fdd-43bd-bdbc-46a1f5a5be52','2024-05-11 14:09:26','2024-05-11 14:09:26'),
(23,'Database','Database','ok','','Ok','{\"connection_name\":\"mysql\"}','2024-05-11 14:09:26','46a87679-1fdd-43bd-bdbc-46a1f5a5be52','2024-05-11 14:09:26','2024-05-11 14:09:26'),
(24,'MemoryLimit','Memory Limit','ok','Unlimited','Ok','[]','2024-05-11 14:09:26','46a87679-1fdd-43bd-bdbc-46a1f5a5be52','2024-05-11 14:09:26','2024-05-11 14:09:26');
/*!40000 ALTER TABLE `health_check_result_history_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `howitworks`
--

DROP TABLE IF EXISTS `howitworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `howitworks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `howitworks`
--

LOCK TABLES `howitworks` WRITE;
/*!40000 ALTER TABLE `howitworks` DISABLE KEYS */;
INSERT INTO `howitworks` VALUES
(1,1,'Simply explain what your content is about and adjust settings according to your needs.','2023-06-02 05:11:26','2023-06-02 05:11:26'),
(2,2,'Simply input some basic information or keywords about your brand or product, and let our AI algorithms do the rest.','2023-06-02 05:11:34','2023-06-02 05:11:34'),
(3,3,'View, edit or export your result with a few clicks. And you’re done!','2023-06-02 05:11:41','2023-06-02 05:11:41');
/*!40000 ALTER TABLE `howitworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations`
--

DROP TABLE IF EXISTS `integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `integrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations`
--

LOCK TABLES `integrations` WRITE;
/*!40000 ALTER TABLE `integrations` DISABLE KEYS */;
INSERT INTO `integrations` VALUES
(1,'Wordpress','Wordpress integration','images/integrations/wordpress.png','wordpress',0,'2024-03-08 19:58:43','2024-05-11 13:47:52');
/*!40000 ALTER TABLE `integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2017_08_24_000000_create_app_settings_table',1),
(4,'2019_05_02_122941_create_plans_table',1),
(5,'2019_05_03_000001_create_customer_columns',1),
(6,'2019_05_03_000002_create_subscriptions_table',1),
(7,'2019_05_03_000003_create_subscription_items_table',1),
(8,'2019_08_19_000000_create_failed_jobs_table',1),
(9,'2019_12_14_000001_create_personal_access_tokens_table',1),
(10,'2023_03_01_113559_create_jobs_table',1),
(11,'2023_03_01_113611_create_settings_table',1),
(12,'2023_03_01_134013_create_user_orders_table',1),
(13,'2023_03_01_134144_create_user_support_table',1),
(14,'2023_03_01_134254_create_user_support_messages_table',1),
(15,'2023_03_10_100433_create_openai_table',1),
(16,'2023_03_14_073839_create_user_openai_table',1),
(17,'2023_03_20_115202_add_user_id_to_user_orders_table',1),
(18,'2023_03_20_134019_add_type_to_user_orders_table',1),
(19,'2023_03_21_123416_add_additional_fields_to_user_support_table',1),
(20,'2023_03_22_101116_add_paths_to_settings_table',1),
(21,'2023_03_22_104952_add_openai_settings_to_settings_table',1),
(22,'2023_03_30_000547_add_workbook_items_to_user_openai_table',1),
(23,'2023_04_01_235507_add_custom_template_fields_to_openai_table',1),
(24,'2023_04_12_223330_add_affiliate_to_users_table',1),
(25,'2023_04_13_175439_create_user_affiliates_table',1),
(26,'2023_04_13_175939_add_affiliate_to_settings_table',1),
(27,'2023_04_13_180614_add_affiliate_to_user_orders_table',1),
(28,'2023_04_24_115420_create_cache_table',1),
(29,'2023_04_24_144953_create_activity_table',1),
(30,'2023_04_28_110404_create_currencies_table',1),
(31,'2023_05_01_205543_add_frontend_fields_to_settings_table',1),
(32,'2023_05_03_103134_add_color_to_openai_table',1),
(33,'2023_05_03_103903_add_additional_fields_to_activity_table',1),
(34,'2023_05_03_105011_create_user_favorites_table',1),
(35,'2023_05_04_190611_add_version_to_settings_table',1),
(36,'2023_05_10_120704_create_openai_filters_table',1),
(37,'2023_05_10_120716_add_filters_to_openai_table',1),
(38,'2023_05_15_133018_create_openai_chat_category_table',1),
(39,'2023_05_15_140015_create_user_openai_chat_table',1),
(40,'2023_05_15_145853_create_user_openai_chat_messages_table',1),
(41,'2023_05_24_134923_add_collapsed_logo_path_to_settings_table',1),
(42,'2023_05_25_182410_add_email_confirmation_to_users_table',1),
(43,'2023_05_26_134701_add_stripe_status_for_now_to_settings_table',1),
(44,'2023_05_29_122817_create_faq_table',1),
(45,'2023_05_29_130259_create_testimonials_table',1),
(46,'2023_05_29_165555_create_frontend_tools_table',1),
(47,'2023_05_30_110811_create_howitworks_table',1),
(48,'2023_05_31_090418_create_customsettings_table',1),
(49,'2023_05_31_151447_create_clients_table',1),
(50,'2023_05_31_153647_add_new_logo_type_options',1),
(51,'2023_06_01_124212_create_frontend_footer_settings_table',1),
(52,'2023_06_01_140509_create_frontend_future_table',1),
(53,'2023_06_01_145426_create_gateways_table',1),
(54,'2023_06_02_124117_create_frontend_sections_statuses_titles_table',1),
(55,'2023_06_02_124736_create_frontend_who_is_for_table',1),
(56,'2023_06_02_124908_create_frontend_generators_table',1),
(57,'2023_06_05_131107_add_settings_columns_to_settings_table',1),
(58,'2023_06_06_094535_add_new_logo_options',1),
(59,'2023_06_06_100350_add_paid_with_to_subscriptions',1),
(60,'2023_06_06_133614_add_new_field_for_chat',1),
(61,'2023_06_07_124125_create_gatewayproducts_table',1),
(62,'2023_06_08_122900_add_hero_title_text_rotator_to_frontend_footer_settings_table',1),
(63,'2023_06_09_091144_add_keywords_columns_to_settings_table',1),
(64,'2023_06_09_102154_create_pages_table',1),
(65,'2023_06_12_091546_add_gdpr_option_to_settings_table',1),
(66,'2023_06_12_135232_add_menu_option_to_settings_table',1),
(67,'2023_06_14_104251_add_token_field_to_users_table',1),
(68,'2023_06_14_113746_add_google_refresh_token_to_users_table',1),
(69,'2023_06_14_114054_add_trial_days_field_to_plans_table',1),
(70,'2023_06_15_104503_create_oldgatewayproducts_table',1),
(71,'2023_06_15_110436_add_privacy_and_terms_column_to_settings_table',1),
(72,'2023_06_19_140133_add_login_without_confirmation_to_settings_table',1),
(73,'2023_06_20_084825_add_old_product_id_to_oldgatewayproducts',1),
(74,'2023_06_20_125836_add_header_buttons_to_frontend_footer_settings_table',1),
(75,'2023_06_21_135415_add_additional_option_to_settings_table',1),
(76,'2023_06_22_115805_add_customcode_to_settings_table',1),
(77,'2023_06_22_124915_add_free_plan_to_settings_table',1),
(78,'2023_06_22_133908_add_webhooks_to_gateways',1),
(79,'2023_06_23_091003_create_email_templates_table',1),
(80,'2023_06_23_141415_create_webhookhistory_table',1),
(81,'2023_06_26_140101_create_bad_words_table',1),
(82,'2023_07_01_080909_create_advertis_table',1),
(83,'2023_07_03_082326_add_column_to_frontend_sections_statuses_titles_table',1),
(84,'2023_07_07_103442_create_blogs_table',1),
(85,'2023_07_08_205833_create_settings_two_table',1),
(86,'2023_07_11_200235_add_license_type_to_settings_two',1),
(87,'2023_07_11_200310_add_liquid_license_domain_key_to_settings_two',1),
(88,'2023_07_13_133729_add_stream_server_option_to_settings_two_table',1),
(89,'2023_07_13_143413_add_blog_options_to_frontend_sections_statuses_titles',1),
(90,'2023_07_18_222043_add_image_storage_field_to_settings_two_table',1),
(91,'2023_07_19_105519_add_package_column_to_openai_table',1),
(92,'2023_07_21_121324_options_to_settingstwo_table',1),
(93,'2023_07_24_103747_create_subscriptions_yokassa_table',1),
(94,'2023_08_11_125732_create_paystack_payment_infos_table',1),
(95,'2023_08_14_073857_add_storage_to_user_openai_table',1),
(96,'2023_08_22_143604_add_iyzico_id_column_to_users',1),
(97,'2023_08_30_162502_create_ads_table',1),
(98,'2023_08_31_135312_change_facebook_token_type',1),
(99,'2023_09_11_130128_change_github_and_google_token_type',1),
(100,'2023_09_13_075321_add_stablediffusion_default_model_to_settings_two_table',1),
(101,'2023_09_19_064148_create_article_wizard_table',1),
(102,'2023_09_19_151726_create_coupons_table',1),
(103,'2023_09_20_140329_add_feature_ai_article_wizard_to_settings_table',1),
(104,'2023_09_20_174744_create_coupon_users_table',1),
(105,'2023_09_26_134837_create_privacy_terms_table',1),
(106,'2023_09_28_173820_add_hero_button_type_column_to_frontend_footer_settings',1),
(107,'2023_09_29_075552_add_floating_button_to_frontend_footer_settings',1),
(108,'2023_10_03_080002_add_unsplash_api_key_to_settings_two',1),
(109,'2023_11_17_051523_add_dalle_setting_to_settings_two',1),
(110,'2023_11_17_155039_create_folders_table',1),
(111,'2023_11_17_155940_add_folder_id_to_user_openai',1),
(112,'2023_11_27_052529_create_prompt_library_table',1),
(113,'2023_11_28_130925_add_favorite_plan_to_openai_chat_category_table',1),
(114,'2023_11_28_141010_create_chat_category_table',1),
(115,'2023_11_28_160244_add_category_to_openai_chat_category_table',1),
(116,'2023_11_29_060800_create_favourite_list_table',1),
(117,'2023_11_29_122715_create_rate_limits_table',1),
(118,'2023_11_30_084646_add_user_id_to_prompt_library',1),
(119,'2023_12_07_093902_add_display_to_plans',1),
(120,'2023_12_12_063333_add_feature_ai_vision_to_settings_table',1),
(121,'2023_12_13_071818_add_allowed_images_count_to_settings_two',1),
(122,'2023_12_13_124801_add_image_field_to_chat_messages',1),
(123,'2023_12_14_075424_change_content_column_in_pages_table',1),
(124,'2023_12_14_093837_create_pdf_data_table',1),
(125,'2023_12_15_003956_update_users_change_avatar_length',1),
(126,'2023_12_18_142047_add_pdf_info_to_chat_messages',1),
(127,'2023_12_18_145013_add_ai_pdf_to_chat_to_settings_table',1),
(128,'2023_12_19_085351_add_tax_to_gateways_table',1),
(129,'2023_12_21_080109_add_type_column_to_rate_limits_table',1),
(130,'2023_12_21_080333_add_allowed_voice_count_to_settings_two',1),
(131,'2023_12_22_085010_add_bot_output_image',1),
(132,'2023_12_25_212630_add_bank_details_to_gateways_table',1),
(133,'2023_12_28_021338_add_new_fields_to_subscriptions_table',1),
(134,'2023_12_28_040900_add_new_fields_to_user_orders_table',1),
(135,'2023_12_28_143354_add_ai_chat_image_field_to_settings_table',1),
(136,'2024_01_02_071044_add_auto_renewal_colmn_to_plans_table',1),
(137,'2024_01_04_073526_add_mobile_payment_active_column_to_settings_table',1),
(138,'2024_01_06_123827_add_revenuecat_id_column_to_users',1),
(139,'2024_01_11_091958_create_table_revenuecatproducts',1),
(140,'2024_01_15_152651_add_serperapi_colmn_to_settings_two_table',1),
(141,'2024_01_16_053948_add_tts_settings_to_settings_two_table',1),
(142,'2024_01_16_063552_add_realtime_colmn_to_user_openai_chat_messages_table',1),
(143,'2024_01_17_072456_create_extensions_table',1),
(144,'2024_01_17_075234_add_image_url_to_extensions',1),
(145,'2024_01_18_001456_add_detail_to_extensions',1),
(146,'2024_01_18_001457_add_licensed_to_extensions',1),
(147,'2024_01_22_074920_add_prize_to_table',1),
(148,'2024_01_22_134905_add_columns_to_subscriptions_yokassa_table',1),
(149,'2024_01_23_052857_add_ai_rewriter_to_table',1),
(150,'2024_01_23_143224_feature_ai_youtube_option',1),
(151,'2024_01_24_105005_feature_ai_rss_option',1),
(152,'2024_01_25_113135_fine_tune_list_data',1),
(153,'2024_01_25_120049_update_helps_with_column_in_openai_chat_category_table',1),
(154,'2024_01_26_110443_add_chatbot_table',1),
(155,'2024_01_29_081000_chatbot_settings',1),
(156,'2024_01_29_110158_add_apple_columns_to_user_table',1),
(157,'2024_01_29_143656_create_teams_table',1),
(158,'2024_01_29_143721_create_team_members_table',1),
(159,'2024_01_29_150757_chatbot_message_data',1),
(160,'2024_01_30_063632_add_team_id_to_users_table',1),
(161,'2024_01_30_064148_add_is_team_plan_and_plan_allow_seat_to_plans_table',1),
(162,'2024_01_30_081601_chatbot_chat_data',1),
(163,'2024_01_30_084904_chatbot_history',1),
(164,'2024_01_30_130737_add_team_function_add_settings_to_table',1),
(165,'2024_01_30_134710_add_team_id_to_user_openai_table',1),
(166,'2024_01_30_134807_add_team_id_to_user_openai_chat_table',1),
(167,'2024_01_30_135358_add_team_id_to_user_folders_table',1),
(168,'2024_02_01_130945_add_user_count_to_settings_table',1),
(169,'2024_02_06_095920_create_payment_proofs_table',1),
(170,'2024_02_06_172558_add_system_to_email_templates_table',1),
(171,'2024_02_08_192853_create_custom_biling_plans_table',1),
(172,'2024_02_09_064724_add_ai_advanced_editor_to_settings_table',1),
(173,'2024_02_14_085457_add_razorpay_id_column_to_users_table',1),
(174,'2024_02_14_124404_add_titlebar_status_to_pages_table',1),
(175,'2024_02_15_085457_add_url_to_user_openai_chat',1),
(176,'2024_02_15_100430_add_payload_to_gatewayproducts_table',1),
(177,'2024_02_15_111859_add_coingate_subscriber_id_to_users_table',1),
(178,'2024_02_15_132142_add_payload_to_user_orders_table',1),
(179,'2024_02_16_163955_create_elevenlab_voices_table',1),
(180,'2024_02_19_074856_add_payload_to_table_user_openai',1),
(181,'2024_02_19_172005_add_voice_clone_settings_table',1),
(182,'2024_02_19_175115_add_user_id_to_elevenlab_voices_table',1),
(183,'2024_02_20_101928_add_open_ai_items_to_plans_table',1),
(184,'2024_02_21_051626_add_free_open_ai_items_to_settings_table',1),
(185,'2024_02_21_064451_update_apple_token_column_from_user_table',1),
(186,'2024_02_21_100405_add_theme_column_to_settings_table',1),
(187,'2024_02_21_163100_add_chatbot_interests_to_chatbot_table',1),
(188,'2024_02_21_180426_add_status_to_chatbot_table',1),
(189,'2024_02_22_065844_create_chatbot_data_table',1),
(190,'2024_02_22_120600_create_chatbot_data_vectors_table',1),
(191,'2024_02_22_150925_add_chatbot_id_to_openai_chat_category_table',1),
(192,'2024_02_23_061429_add_chatbot_id_to_user_openai_chat_table',1),
(193,'2024_02_23_111745_add_user_api_option_to_settings_table',1),
(194,'2024_02_23_111834_add_api_keys_to_users_table',1),
(195,'2024_02_26_013354_add_ai_video_to_settings_two',1),
(196,'2024_02_26_184945_create_companies_table',1),
(197,'2024_02_26_185155_create_products_table',1),
(198,'2024_02_27_080913_add_reference_url_to_user_openai_chat',1),
(199,'2024_02_27_120732_add_is_custom_column_to_pages_table',1),
(200,'2024_02_27_134353_add_tone_of_voice_to_companies_table',1),
(201,'2024_02_28_084232_add_target_audience_column_to_companies_table',1),
(202,'2024_02_28_130323_add_user_id_to_chatbot_table',1),
(203,'2024_02_29_074747_chatbot_timestamp',1),
(204,'2024_03_04_070314_create_usage_table',1),
(205,'2024_03_05_085748_add_version_to_extensions_table',1),
(206,'2024_03_07_152339_create_intagrations_table',1),
(207,'2024_03_08_082441_create_user_integrations_table',1),
(208,'2024_03_08_112315_add_face_price_to_extensions_table',1),
(209,'2024_03_12_143138_add_auth_view_options_column_to_settings_table',1),
(210,'2024_03_14_061720_add_user_id_to_openai_filters_table',1),
(211,'2024_03_14_062605_add_user_id_to_openai_table',1),
(212,'2024_03_19_142411_add_instructions_to_openai_chat_category_table',1),
(213,'2024_03_19_151400_add_first_message_to_openai_chat_category_table',1),
(214,'2024_03_25_085453_add_theme_columns_to_extension_table',1),
(215,'2024_03_28_002018_create_user_docs_favorite_table',1),
(216,'2024_03_28_134851_add_to_token_to_users_table',1),
(217,'2024_03_29_212039_delete_column_from_extensions_table',1),
(218,'2024_04_02_063345_add_anthropic_api_keys_to_users_table',1),
(219,'2024_04_06_014025_change_columns_in_privacy_terms_table',1),
(220,'2024_05_01_082729_add_gemini_api_keys_colmn_to_users_table',1),
(221,'2024_05_01_111455_add_google2fa_secret_to_users_table',1),
(222,'2024_05_03_094207_add_show_page_on_footer_to_pages_table',1),
(223,'2024_04_09_191525_add_affiliate_status_to_users_table',2),
(224,'2024_04_18_121537_add_defi_setting_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oldgatewayproducts`
--

DROP TABLE IF EXISTS `oldgatewayproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldgatewayproducts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` int(11) NOT NULL DEFAULT 0,
  `plan_name` varchar(191) DEFAULT NULL,
  `gateway_code` varchar(191) DEFAULT NULL,
  `product_id` varchar(191) DEFAULT NULL,
  `old_price_id` varchar(191) DEFAULT NULL,
  `new_price_id` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `old_product_id` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldgatewayproducts`
--

LOCK TABLES `oldgatewayproducts` WRITE;
/*!40000 ALTER TABLE `oldgatewayproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oldgatewayproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openai`
--

DROP TABLE IF EXISTS `openai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `questions` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL DEFAULT 'text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `prompt` text DEFAULT NULL,
  `custom_template` tinyint(1) NOT NULL DEFAULT 0,
  `tone_of_voice` tinyint(1) NOT NULL DEFAULT 0,
  `color` varchar(191) DEFAULT NULL,
  `filters` text DEFAULT NULL,
  `package` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openai`
--

LOCK TABLES `openai` WRITE;
/*!40000 ALTER TABLE `openai` DISABLE KEYS */;
INSERT INTO `openai` VALUES
(1,NULL,'Post Title Generator','Get captivating post titles instantly with our title generator. Boost engagement and save time.','post_title_generator',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M430 896V356H200V256h560v100H530v540H430Z\"/></svg>',0,'text','2023-03-11 04:56:49','2023-03-11 04:56:49',NULL,0,0,'#A3D6C2','blog',NULL),
(2,NULL,'Summarize Text','Effortlessly condense large text into shorter summaries. Save time and increase productivity.','summarize_text',1,'[{\"name\":\"text_to_summary\",\"type\":\"textarea\",\"question\":\"Text to summary\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M120 816v-60h480v60H120Zm0-210v-60h720v60H120Zm0-210v-60h720v60H120Z\"/></svg>',0,'text','2023-03-11 06:55:43','2023-03-11 06:55:43',NULL,0,0,'#CCD9B8','blog',NULL),
(3,NULL,'Product Description','Easily create compelling product descriptions that sell. Increase conversions and boost sales.','product_description',1,'[{\"name\":\"product_name\",\"type\":\"text\",\"question\":\"Product Name\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Short Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M319 806h322v-60H319v60Zm0-170h322v-60H319v60Zm-99 340q-24 0-42-18t-18-42V236q0-24 18-42t42-18h361l219 219v521q0 24-18 42t-42 18H220Zm331-554h189L551 236v186Z\"/></svg>',0,'text','2023-03-11 07:00:40','2023-03-11 07:00:40',NULL,0,0,'#C2DEDD','ecommerce',NULL),
(4,NULL,'Article Generator','Instantly create unique articles on any topic. Boost engagement, improve SEO, and save time.','article_generator',1,'[{\"name\":\"article_title\",\"type\":\"text\",\"question\":\"Article Title\",\"select\":\"\"},{\"name\":\"focus_keywords\",\"type\":\"text\",\"question\":\"Focus Keywords (Seperate with Comma)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M140 936q-24.75 0-42.375-17.625T80 876V216l67 67 66-67 67 67 67-67 66 67 67-67 67 67 66-67 67 67 67-67 66 67 67-67v660q0 24.75-17.625 42.375T820 936H140Zm0-60h310V596H140v280Zm370 0h310V766H510v110Zm0-170h310V596H510v110ZM140 536h680V416H140v120Z\"/></svg>',0,'text','2023-03-11 07:06:10','2023-03-11 07:06:10',NULL,0,0,'#A3D6C2','blog',NULL),
(5,NULL,'Product Name Generator','Create catchy product names with ease. Attract customers and boost sales effortlessly.','product_name',1,'[{\"name\":\"seed_words\",\"type\":\"text\",\"question\":\"Seed Words (Seperate With Comma)\",\"select\":\"\"},{\"name\":\"product_description\",\"type\":\"textarea\",\"question\":\"Product Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M290 896V356H80V256h520v100H390v540H290Zm360 0V556H520V456h360v100H750v340H650Z\"/></svg>',0,'text','2023-03-11 07:07:56','2023-03-11 07:07:56',NULL,0,0,'#C2DEDD','ecommerce',NULL),
(6,NULL,'Testimonial Review','Instantly generate authentic testimonials. Build trust and credibility with genuine reviews.','testimonial_review',1,'[{\"name\":\"subject\",\"type\":\"textarea\",\"question\":\"Subject\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"40\" viewBox=\"0 96 960 960\" width=\"40\"><path d=\"m233 976 65-281L80 506l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Z\"/></svg>',0,'text','2023-03-11 07:09:00','2023-03-11 07:09:00',NULL,0,0,'#A3A7D6','ecommerce',NULL),
(7,NULL,'Problem Agitate Solution','Identify and solve problems efficiently. Streamline solutions and increase productivity.','problem_agitate_solution',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"m772 421-43-100-104-46 104-45 43-95 43 95 104 45-104 46-43 100Zm0 595-43-96-104-45 104-45 43-101 43 101 104 45-104 45-43 96ZM333 862l-92-197-201-90 201-90 92-196 93 196 200 90-200 90-93 197Zm0-148 48-96 98-43-98-43-48-96-47 96-99 43 99 43 47 96Zm0-139Z\"/></svg>',0,'text','2023-03-11 07:09:56','2023-03-11 07:09:56',NULL,0,0,'#E0BFC9','development',NULL),
(8,NULL,'Blog Section','Effortlessly create blog sections with AI. Get unique, engaging content and save time.','blog_section',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M180 936q-24.75 0-42.375-17.625T120 876V276q0-24.75 17.625-42.375T180 216h600q24.75 0 42.375 17.625T840 276v600q0 24.75-17.625 42.375T780 936H180Zm0-60h600V356H180v520Zm100-310v-60h390v60H280Zm0 160v-60h230v60H280Z\"/></svg>',0,'text','2023-03-11 07:10:50','2023-03-11 07:10:50',NULL,0,0,'#A3D6C2','blog',NULL),
(9,NULL,'Blog Post Ideas','Unlock your creativity with unique blog post ideas. Generate endless inspiration and take your content to the next level.','blog_post_ideas',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M360 896q-134 0-227-93T40 576q0-134 93-227t227-93q134 0 227 93t93 227q0 134-93 227t-227 93Zm-.235-60Q468 836 544 760.235q76-75.764 76-184Q620 468 544.235 392q-75.764-76-184-76Q252 316 176 391.765q-76 75.764-76 184Q100 684 175.765 760q75.764 76 184 76ZM330 706h60V506h80v-40H250v40h80v200Zm454-298-42-94-94-42 94-42 42-94 42 94 94 42-94 42-42 94Zm0 608-42-94-94-42 94-42 42-94 42 94 94 42-94 42-42 94ZM360 576Z\"/></svg>',0,'text','2023-03-11 07:11:31','2023-03-11 07:11:31',NULL,0,0,'#A3D6C2','blog',NULL),
(10,NULL,'Blog Intros','Set the tone for your blog post with captivating intros. Grab readers\' attention and keep them engaged.','blog_intros',1,'[{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title of blog text\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description of your need\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M80 976v-60h800v60H80Zm210-450V426h380v100H290Zm0 240V666h380v100H290Z\"/></svg>',0,'text','2023-03-14 08:13:57','2023-03-14 08:13:57',NULL,0,0,'#A3D6C2','blog',NULL),
(11,NULL,'Blog Conclusion','End your blog posts on a high note. Craft memorable conclusions that leave a lasting impact.','blog_conclusion',1,'[{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title of the blog text\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M80 236v-60h800v60H80Zm210 250V386h380v100H290Zm0 240V626h380v100H290Z\"/></svg>',0,'text','2023-03-14 08:14:49','2023-03-14 08:14:49',NULL,0,0,'#A3D6C2','blog',NULL),
(12,NULL,'Facebook Ads','Create high-converting Facebook ads that grab attention. Drive sales and grow your business.','facebook_ads',1,'[{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg width=\"9\" height=\"16\" viewBox=\"0 0 9 16\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.66016 15.2383H2.88281V8.41797H0.5625V5.74609H2.88281V3.77734C2.88281 2.65234 3.19922 1.78516 3.83203 1.17578C4.46484 0.566406 5.30859 0.261719 6.36328 0.261719C7.20703 0.261719 7.89844 0.296875 8.4375 0.367188V2.72266L6.99609 2.75781C6.48047 2.75781 6.12891 2.86328 5.94141 3.07422C5.75391 3.28516 5.66016 3.60156 5.66016 4.02344V5.74609H8.33203L7.98047 8.41797H5.66016V15.2383Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 08:16:23','2023-03-14 08:16:23',NULL,0,0,'#E8CEC3','advertisement',NULL),
(13,NULL,'Youtube Video Description','Elevate your YouTube content with compelling video descriptions. Generate engaging descriptions effortlessly and increase views.','youtube_video_description',1,'[{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"}]','<svg width=\"17\" height=\"11\" viewBox=\"0 0 17 11\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.8301 2.76172C15.9473 3.58203 16.0059 4.39062 16.0059 5.1875V6.3125L15.8301 8.73828C15.7363 9.41797 15.5371 9.91016 15.2324 10.2148C14.9043 10.543 14.4121 10.7539 13.7559 10.8477C13.123 10.8945 12.3613 10.9297 11.4707 10.9531C10.6035 10.9766 9.88867 10.9883 9.32617 10.9883H8.48242C5.88086 10.9648 4.18164 10.918 3.38477 10.8477C3.38477 10.8477 3.29102 10.8359 3.10352 10.8125C2.91602 10.7891 2.76367 10.7656 2.64648 10.7422C2.5293 10.7188 2.37695 10.6602 2.18945 10.5664C2.02539 10.4727 1.87305 10.3555 1.73242 10.2148C1.61523 10.0742 1.49805 9.88672 1.38086 9.65234C1.28711 9.39453 1.22852 9.17188 1.20508 8.98438L1.13477 8.73828C1.04102 7.91797 0.994141 7.10938 0.994141 6.3125V5.1875L1.13477 2.76172C1.22852 2.08203 1.42773 1.58984 1.73242 1.28516C2.06055 0.933594 2.56445 0.722656 3.24414 0.652344C3.87695 0.605469 4.62695 0.570313 5.49414 0.546875C6.36133 0.523437 7.07617 0.511719 7.63867 0.511719H8.48242C10.5918 0.511719 12.3496 0.558594 13.7559 0.652344C14.4121 0.722656 14.9043 0.933594 15.2324 1.28516C15.3262 1.37891 15.4082 1.49609 15.4785 1.63672C15.5488 1.75391 15.6074 1.88281 15.6543 2.02344C15.7012 2.14062 15.7363 2.25781 15.7598 2.375C15.7832 2.49219 15.8066 2.58594 15.8301 2.65625V2.76172ZM10.5215 5.85547L11.0137 5.60938L6.9707 3.5V7.71875L10.5215 5.85547Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 08:17:17','2023-03-14 08:17:17',NULL,0,0,'#E4CD9F','social media',NULL),
(14,NULL,'Youtube Video Title','Get more views with attention-grabbing video titles. Create unique, catchy titles that entice viewers.','youtube_video_title',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg width=\"17\" height=\"11\" viewBox=\"0 0 17 11\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.8301 2.76172C15.9473 3.58203 16.0059 4.39062 16.0059 5.1875V6.3125L15.8301 8.73828C15.7363 9.41797 15.5371 9.91016 15.2324 10.2148C14.9043 10.543 14.4121 10.7539 13.7559 10.8477C13.123 10.8945 12.3613 10.9297 11.4707 10.9531C10.6035 10.9766 9.88867 10.9883 9.32617 10.9883H8.48242C5.88086 10.9648 4.18164 10.918 3.38477 10.8477C3.38477 10.8477 3.29102 10.8359 3.10352 10.8125C2.91602 10.7891 2.76367 10.7656 2.64648 10.7422C2.5293 10.7188 2.37695 10.6602 2.18945 10.5664C2.02539 10.4727 1.87305 10.3555 1.73242 10.2148C1.61523 10.0742 1.49805 9.88672 1.38086 9.65234C1.28711 9.39453 1.22852 9.17188 1.20508 8.98438L1.13477 8.73828C1.04102 7.91797 0.994141 7.10938 0.994141 6.3125V5.1875L1.13477 2.76172C1.22852 2.08203 1.42773 1.58984 1.73242 1.28516C2.06055 0.933594 2.56445 0.722656 3.24414 0.652344C3.87695 0.605469 4.62695 0.570313 5.49414 0.546875C6.36133 0.523437 7.07617 0.511719 7.63867 0.511719H8.48242C10.5918 0.511719 12.3496 0.558594 13.7559 0.652344C14.4121 0.722656 14.9043 0.933594 15.2324 1.28516C15.3262 1.37891 15.4082 1.49609 15.4785 1.63672C15.5488 1.75391 15.6074 1.88281 15.6543 2.02344C15.7012 2.14062 15.7363 2.25781 15.7598 2.375C15.7832 2.49219 15.8066 2.58594 15.8301 2.65625V2.76172ZM10.5215 5.85547L11.0137 5.60938L6.9707 3.5V7.71875L10.5215 5.85547Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 08:19:10','2023-03-14 08:19:10',NULL,0,0,'#E4CD9F','social media',NULL),
(15,NULL,'Youtube Video Tag','Improve your YouTube video\'s discoverability with relevant video tags. Boost views and engagement.','youtube_video_tag',1,'[{\"name\":\"title\",\"type\":\"textarea\",\"question\":\"Title\",\"select\":\"\"}]','<svg width=\"17\" height=\"11\" viewBox=\"0 0 17 11\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M15.8301 2.76172C15.9473 3.58203 16.0059 4.39062 16.0059 5.1875V6.3125L15.8301 8.73828C15.7363 9.41797 15.5371 9.91016 15.2324 10.2148C14.9043 10.543 14.4121 10.7539 13.7559 10.8477C13.123 10.8945 12.3613 10.9297 11.4707 10.9531C10.6035 10.9766 9.88867 10.9883 9.32617 10.9883H8.48242C5.88086 10.9648 4.18164 10.918 3.38477 10.8477C3.38477 10.8477 3.29102 10.8359 3.10352 10.8125C2.91602 10.7891 2.76367 10.7656 2.64648 10.7422C2.5293 10.7188 2.37695 10.6602 2.18945 10.5664C2.02539 10.4727 1.87305 10.3555 1.73242 10.2148C1.61523 10.0742 1.49805 9.88672 1.38086 9.65234C1.28711 9.39453 1.22852 9.17188 1.20508 8.98438L1.13477 8.73828C1.04102 7.91797 0.994141 7.10938 0.994141 6.3125V5.1875L1.13477 2.76172C1.22852 2.08203 1.42773 1.58984 1.73242 1.28516C2.06055 0.933594 2.56445 0.722656 3.24414 0.652344C3.87695 0.605469 4.62695 0.570313 5.49414 0.546875C6.36133 0.523437 7.07617 0.511719 7.63867 0.511719H8.48242C10.5918 0.511719 12.3496 0.558594 13.7559 0.652344C14.4121 0.722656 14.9043 0.933594 15.2324 1.28516C15.3262 1.37891 15.4082 1.49609 15.4785 1.63672C15.5488 1.75391 15.6074 1.88281 15.6543 2.02344C15.7012 2.14062 15.7363 2.25781 15.7598 2.375C15.7832 2.49219 15.8066 2.58594 15.8301 2.65625V2.76172ZM10.5215 5.85547L11.0137 5.60938L6.9707 3.5V7.71875L10.5215 5.85547Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 08:20:15','2023-03-14 08:20:15',NULL,0,0,'#E4CD9F','social media',NULL),
(16,NULL,'Instagram Captions','Elevate your Instagram game with captivating captions. Generate unique captions that engage followers and increase your reach.','instagram_captions',1,'[{\"name\":\"title\",\"type\":\"textarea\",\"question\":\"Title\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" data-name=\"Layer 1\" viewBox=\"0 0 24 24\" id=\"instagram\"><path d=\"M17.34,5.46h0a1.2,1.2,0,1,0,1.2,1.2A1.2,1.2,0,0,0,17.34,5.46Zm4.6,2.42a7.59,7.59,0,0,0-.46-2.43,4.94,4.94,0,0,0-1.16-1.77,4.7,4.7,0,0,0-1.77-1.15,7.3,7.3,0,0,0-2.43-.47C15.06,2,14.72,2,12,2s-3.06,0-4.12.06a7.3,7.3,0,0,0-2.43.47A4.78,4.78,0,0,0,3.68,3.68,4.7,4.7,0,0,0,2.53,5.45a7.3,7.3,0,0,0-.47,2.43C2,8.94,2,9.28,2,12s0,3.06.06,4.12a7.3,7.3,0,0,0,.47,2.43,4.7,4.7,0,0,0,1.15,1.77,4.78,4.78,0,0,0,1.77,1.15,7.3,7.3,0,0,0,2.43.47C8.94,22,9.28,22,12,22s3.06,0,4.12-.06a7.3,7.3,0,0,0,2.43-.47,4.7,4.7,0,0,0,1.77-1.15,4.85,4.85,0,0,0,1.16-1.77,7.59,7.59,0,0,0,.46-2.43c0-1.06.06-1.4.06-4.12S22,8.94,21.94,7.88ZM20.14,16a5.61,5.61,0,0,1-.34,1.86,3.06,3.06,0,0,1-.75,1.15,3.19,3.19,0,0,1-1.15.75,5.61,5.61,0,0,1-1.86.34c-1,.05-1.37.06-4,.06s-3,0-4-.06A5.73,5.73,0,0,1,6.1,19.8,3.27,3.27,0,0,1,5,19.05a3,3,0,0,1-.74-1.15A5.54,5.54,0,0,1,3.86,16c0-1-.06-1.37-.06-4s0-3,.06-4A5.54,5.54,0,0,1,4.21,6.1,3,3,0,0,1,5,5,3.14,3.14,0,0,1,6.1,4.2,5.73,5.73,0,0,1,8,3.86c1,0,1.37-.06,4-.06s3,0,4,.06a5.61,5.61,0,0,1,1.86.34A3.06,3.06,0,0,1,19.05,5,3.06,3.06,0,0,1,19.8,6.1,5.61,5.61,0,0,1,20.14,8c.05,1,.06,1.37.06,4S20.19,15,20.14,16ZM12,6.87A5.13,5.13,0,1,0,17.14,12,5.12,5.12,0,0,0,12,6.87Zm0,8.46A3.33,3.33,0,1,1,15.33,12,3.33,3.33,0,0,1,12,15.33Z\"></path></svg>',0,'text','2023-03-14 08:20:52','2023-03-14 08:20:52',NULL,0,0,'#E49FE1','social media',NULL),
(17,NULL,'Instagram Hashtags','Boost your Instagram reach with relevant hashtags. Generate optimal, trending hashtags and increase your visibility.','instagram_hashtag',1,'[{\"name\":\"keywords\",\"type\":\"textarea\",\"question\":\"Keywords (Separate with comma.)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" data-name=\"Layer 1\" viewBox=\"0 0 24 24\" id=\"instagram\"><path d=\"M17.34,5.46h0a1.2,1.2,0,1,0,1.2,1.2A1.2,1.2,0,0,0,17.34,5.46Zm4.6,2.42a7.59,7.59,0,0,0-.46-2.43,4.94,4.94,0,0,0-1.16-1.77,4.7,4.7,0,0,0-1.77-1.15,7.3,7.3,0,0,0-2.43-.47C15.06,2,14.72,2,12,2s-3.06,0-4.12.06a7.3,7.3,0,0,0-2.43.47A4.78,4.78,0,0,0,3.68,3.68,4.7,4.7,0,0,0,2.53,5.45a7.3,7.3,0,0,0-.47,2.43C2,8.94,2,9.28,2,12s0,3.06.06,4.12a7.3,7.3,0,0,0,.47,2.43,4.7,4.7,0,0,0,1.15,1.77,4.78,4.78,0,0,0,1.77,1.15,7.3,7.3,0,0,0,2.43.47C8.94,22,9.28,22,12,22s3.06,0,4.12-.06a7.3,7.3,0,0,0,2.43-.47,4.7,4.7,0,0,0,1.77-1.15,4.85,4.85,0,0,0,1.16-1.77,7.59,7.59,0,0,0,.46-2.43c0-1.06.06-1.4.06-4.12S22,8.94,21.94,7.88ZM20.14,16a5.61,5.61,0,0,1-.34,1.86,3.06,3.06,0,0,1-.75,1.15,3.19,3.19,0,0,1-1.15.75,5.61,5.61,0,0,1-1.86.34c-1,.05-1.37.06-4,.06s-3,0-4-.06A5.73,5.73,0,0,1,6.1,19.8,3.27,3.27,0,0,1,5,19.05a3,3,0,0,1-.74-1.15A5.54,5.54,0,0,1,3.86,16c0-1-.06-1.37-.06-4s0-3,.06-4A5.54,5.54,0,0,1,4.21,6.1,3,3,0,0,1,5,5,3.14,3.14,0,0,1,6.1,4.2,5.73,5.73,0,0,1,8,3.86c1,0,1.37-.06,4-.06s3,0,4,.06a5.61,5.61,0,0,1,1.86.34A3.06,3.06,0,0,1,19.05,5,3.06,3.06,0,0,1,19.8,6.1,5.61,5.61,0,0,1,20.14,8c.05,1,.06,1.37.06,4S20.19,15,20.14,16ZM12,6.87A5.13,5.13,0,1,0,17.14,12,5.12,5.12,0,0,0,12,6.87Zm0,8.46A3.33,3.33,0,1,1,15.33,12,3.33,3.33,0,0,1,12,15.33Z\"></path></svg>',0,'text','2023-03-14 08:22:48','2023-03-14 08:22:48',NULL,0,0,'#E49FE1','social media',NULL),
(18,NULL,'Social Media Post Tweet','Make an impact with every tweet. Generate attention-grabbing social media posts and increase engagement.','social_media_post_tweet',1,'[{\"name\":\"title\",\"type\":\"textarea\",\"question\":\"Title\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" data-name=\"Layer 1\" viewBox=\"0 0 24 24\" id=\"twitter\"><path d=\"M22,5.8a8.49,8.49,0,0,1-2.36.64,4.13,4.13,0,0,0,1.81-2.27,8.21,8.21,0,0,1-2.61,1,4.1,4.1,0,0,0-7,3.74A11.64,11.64,0,0,1,3.39,4.62a4.16,4.16,0,0,0-.55,2.07A4.09,4.09,0,0,0,4.66,10.1,4.05,4.05,0,0,1,2.8,9.59v.05a4.1,4.1,0,0,0,3.3,4A3.93,3.93,0,0,1,5,13.81a4.9,4.9,0,0,1-.77-.07,4.11,4.11,0,0,0,3.83,2.84A8.22,8.22,0,0,1,3,18.34a7.93,7.93,0,0,1-1-.06,11.57,11.57,0,0,0,6.29,1.85A11.59,11.59,0,0,0,20,8.45c0-.17,0-.35,0-.53A8.43,8.43,0,0,0,22,5.8Z\"></path></svg>',0,'text','2023-03-14 08:25:37','2023-03-14 08:25:37',NULL,0,0,'#C2DEDE','social media',NULL),
(19,NULL,'Social Media Post Business','Generate a text for your business social media networks. Maximize your social media presence with impactful business posts.','social_media_post_business',1,'[{\"name\":\"company_name\",\"type\":\"text\",\"question\":\"Company Name\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Company Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M180 936q-24 0-42-18t-18-42V276q0-24 18-42t42-18h600q24 0 42 18t18 42v600q0 24-18 42t-42 18H180Zm100-160h200v-80H280v80Zm40-171 160-80 160 80V276H320v329Z\"/></svg>',0,'text','2023-03-14 08:34:56','2023-03-14 08:34:56',NULL,0,0,'#E3E49F','social media',NULL),
(20,NULL,'Facebook Headlines','Get noticed with attention-grabbing Facebook headlines. Generate unique, clickable headlines that increase engagement and drive traffic.','facebook_headlines',1,'[{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg width=\"9\" height=\"16\" viewBox=\"0 0 9 16\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M5.66016 15.2383H2.88281V8.41797H0.5625V5.74609H2.88281V3.77734C2.88281 2.65234 3.19922 1.78516 3.83203 1.17578C4.46484 0.566406 5.30859 0.261719 6.36328 0.261719C7.20703 0.261719 7.89844 0.296875 8.4375 0.367188V2.72266L6.99609 2.75781C6.48047 2.75781 6.12891 2.86328 5.94141 3.07422C5.75391 3.28516 5.66016 3.60156 5.66016 4.02344V5.74609H8.33203L7.98047 8.41797H5.66016V15.2383Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 08:36:05','2023-03-14 08:36:05',NULL,0,0,'#E8CEC3','social media',NULL),
(21,NULL,'Google Ads Headlines','Create high-converting Google ads with captivating headlines. Generate unique, clickable ads that drive traffic and boost sales.','google_ads_headlines',1,'[{\"name\":\"product_name\",\"type\":\"text\",\"question\":\"Product Name\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"audience\",\"type\":\"select\",\"question\":\"Audience\",\"select\":\"\\n        <option value=\'everyone\'> Everyone </option>\\n        <option value=\'man\'> Man </option>\\n        <option value=\'woman\'> Woman </option>\\n        <option value=\'children\'> Children </option>\\n        <option value=\'teenager\'> Teenager </option>\\n        \"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" enable-background=\"new 0 0 32 32\" viewBox=\"0 0 32 32\" id=\"adwords\"><path fill=\"#263238\" d=\"M2.066 23.314c-.082 0-.166-.021-.242-.063-.242-.135-.329-.438-.194-.681L9.278 8.803c.134-.24.439-.326.68-.194.242.135.329.438.194.681L2.503 23.058C2.412 23.222 2.242 23.314 2.066 23.314zM9.933 27.686c-.082 0-.166-.021-.242-.063-.242-.135-.329-.438-.194-.681l4.796-8.634c.133-.24.438-.326.68-.194.242.135.329.438.194.681l-4.796 8.634C10.279 27.593 10.109 27.686 9.933 27.686z\"></path><path fill=\"#263238\" d=\"M15.709,15.761L9.497,26.942c-0.705,1.27-2.046,2.059-3.5,2.059c-0.674,0-1.345-0.175-1.939-0.505 c-1.928-1.07-2.625-3.511-1.554-5.438l7.578-13.639c0.134-0.241,0.047-0.546-0.194-0.681c-0.24-0.133-0.545-0.046-0.68,0.194 L1.629,22.571c-1.339,2.41-0.468,5.46,1.942,6.8c0.742,0.412,1.58,0.63,2.424,0.63c1.817,0,3.493-0.985,4.375-2.572 l5.921-10.658L15.709,15.761z\"></path><path fill=\"#263238\" d=\"M6 30c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5S8.757 30 6 30zM6 21c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4S8.206 21 6 21zM26.004 30.001c-1.817 0-3.493-.985-4.375-2.572l-10-18c-1.339-2.41-.468-5.46 1.942-6.8.742-.412 1.581-.631 2.425-.631 1.816 0 3.492.986 4.374 2.573l10 18c1.339 2.41.468 5.46-1.942 6.8C27.687 29.783 26.848 30.001 26.004 30.001zM15.997 2.998c-.675 0-1.345.175-1.94.506-1.928 1.07-2.625 3.511-1.554 5.438l10 18c.705 1.27 2.046 2.059 3.5 2.059.674 0 1.345-.175 1.939-.505 1.928-1.07 2.625-3.511 1.554-5.438l-10-18C18.792 3.787 17.451 2.998 15.997 2.998z\"></path></svg>',0,'text','2023-03-14 08:40:42','2023-03-14 08:40:42',NULL,0,0,'#D6C0A3','advertisement',NULL),
(22,NULL,'Google Ads Description','Step up your Google ad game, Craft high-converting ad copy that grabs attention and drives sales.','google_ads_description',1,'[{\"name\":\"product_name\",\"type\":\"text\",\"question\":\"Product Name\",\"select\":\"\"},{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"audience\",\"type\":\"select\",\"question\":\"Audience\",\"select\":\"\\n        <option value=\'everyone\'> Everyone </option>\\n        <option value=\'man\'> Man </option>\\n        <option value=\'woman\'> Woman </option>\\n        <option value=\'children\'> Children </option>\\n        <option value=\'teenager\'> Teenager </option>\\n        \"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"32\" height=\"32\" enable-background=\"new 0 0 32 32\" viewBox=\"0 0 32 32\" id=\"adwords\"><path fill=\"#263238\" d=\"M2.066 23.314c-.082 0-.166-.021-.242-.063-.242-.135-.329-.438-.194-.681L9.278 8.803c.134-.24.439-.326.68-.194.242.135.329.438.194.681L2.503 23.058C2.412 23.222 2.242 23.314 2.066 23.314zM9.933 27.686c-.082 0-.166-.021-.242-.063-.242-.135-.329-.438-.194-.681l4.796-8.634c.133-.24.438-.326.68-.194.242.135.329.438.194.681l-4.796 8.634C10.279 27.593 10.109 27.686 9.933 27.686z\"></path><path fill=\"#263238\" d=\"M15.709,15.761L9.497,26.942c-0.705,1.27-2.046,2.059-3.5,2.059c-0.674,0-1.345-0.175-1.939-0.505 c-1.928-1.07-2.625-3.511-1.554-5.438l7.578-13.639c0.134-0.241,0.047-0.546-0.194-0.681c-0.24-0.133-0.545-0.046-0.68,0.194 L1.629,22.571c-1.339,2.41-0.468,5.46,1.942,6.8c0.742,0.412,1.58,0.63,2.424,0.63c1.817,0,3.493-0.985,4.375-2.572 l5.921-10.658L15.709,15.761z\"></path><path fill=\"#263238\" d=\"M6 30c-2.757 0-5-2.243-5-5s2.243-5 5-5 5 2.243 5 5S8.757 30 6 30zM6 21c-2.206 0-4 1.794-4 4s1.794 4 4 4 4-1.794 4-4S8.206 21 6 21zM26.004 30.001c-1.817 0-3.493-.985-4.375-2.572l-10-18c-1.339-2.41-.468-5.46 1.942-6.8.742-.412 1.581-.631 2.425-.631 1.816 0 3.492.986 4.374 2.573l10 18c1.339 2.41.468 5.46-1.942 6.8C27.687 29.783 26.848 30.001 26.004 30.001zM15.997 2.998c-.675 0-1.345.175-1.94.506-1.928 1.07-2.625 3.511-1.554 5.438l10 18c.705 1.27 2.046 2.059 3.5 2.059.674 0 1.345-.175 1.939-.505 1.928-1.07 2.625-3.511 1.554-5.438l-10-18C18.792 3.787 17.451 2.998 15.997 2.998z\"></path></svg>',0,'text','2023-03-14 08:41:58','2023-03-14 08:41:58',NULL,0,0,'#D6C0A3','advertisement',NULL),
(23,NULL,'Paragraph Generator','Generate a paragraph with keywords and description. Never struggle with writer\'s block again. Generate flawless paragraphs that captivate readers.','paragraph_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"keywords\",\"type\":\"textarea\",\"question\":\"Keywords (Separate with comma.)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M160 684v-60h640v60H160Zm0 160v-60h640v60H160Zm0-316v-60h640v60H160Zm0-160v-60h640v60H160Z\"/></svg>',0,'text','2023-03-14 08:47:21','2023-03-14 08:47:21',NULL,0,0,'#A3D6C2','blog',NULL),
(24,NULL,'Pros & Cons','Make informed decisions with ease. Generate unbiased pros and cons lists that help you weigh options and make better choices.','pros_cons',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M443 936q-17 0-32-6.5T385 912L203 719l32-33q11-11 25-13.5t29 .5l114 25V276q0-26 17-43t43-17q26 0 43 17t17 43v240h36q11 0 19 1.5t17 6.5l163 82q24 12 36 35t8 49l-26 180q-5 29-28 47.5T696 936H443Zm-26-60h281l43-249-183-91h-55V316q0-18-11-29t-29-11q-18 0-29 11t-11 29v399l-154-33-23 23 171 171Zm0 0L246 705l23-23 154 33V316q0-18 11-29t29-11q18 0 29 11t11 29v220h55l183 91-43 249H417Z\"/></svg>',0,'text','2023-03-14 08:51:00','2023-03-14 08:51:00',NULL,0,0,'#E0BFC9','development',NULL),
(25,NULL,'Meta Description','Get more clicks with compelling meta descriptions. Generate unique, SEO-friendly meta descriptions that attract customers and boost traffic.','meta_description',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"},{\"name\":\"keywords\",\"type\":\"text\",\"question\":\"Keywords (Separate with comma)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M319 806h322v-60H319v60Zm0-170h322v-60H319v60Zm-99 340q-24 0-42-18t-18-42V236q0-24 18-42t42-18h361l219 219v521q0 24-18 42t-42 18H220Zm331-554V236H220v680h520V422H551ZM220 236v186-186 680-680Z\"/></svg>',0,'text','2023-03-14 09:47:43','2023-03-14 09:47:43',NULL,0,0,'#A3D6C2','development',NULL),
(26,NULL,'FAQ Generator (All Datas)','Quickly create helpful FAQs. Our AI-powered generator provides custom responses to common questions in seconds.','faq_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title (Faq Question)\",\"select\":\"\"}]','<svg width=\"13\" height=\"13\" viewBox=\"0 0 13 13\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M8.62695 5.87109C8.04102 6.45703 7.32617 6.75 6.48242 6.75C5.66211 6.75 4.95898 6.45703 4.37305 5.87109C3.78711 5.28516 3.49414 4.58203 3.49414 3.76172C3.49414 2.91797 3.78711 2.20313 4.37305 1.61719C4.95898 1.03125 5.66211 0.738281 6.48242 0.738281C7.32617 0.738281 8.04102 1.03125 8.62695 1.61719C9.21289 2.20313 9.50586 2.91797 9.50586 3.76172C9.50586 4.58203 9.21289 5.28516 8.62695 5.87109ZM4.05664 8.57812C4.94727 8.36719 5.75586 8.26172 6.48242 8.26172C7.23242 8.26172 8.05273 8.36719 8.94336 8.57812C9.83398 8.78906 10.6426 9.14062 11.3691 9.63281C12.1191 10.1016 12.4941 10.6406 12.4941 11.25V12.7617H0.505859V11.25C0.505859 10.6406 0.869141 10.1016 1.5957 9.63281C2.3457 9.14062 3.16602 8.78906 4.05664 8.57812Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 09:49:40','2023-03-14 09:49:40',NULL,0,0,'#D6D2A3','development',NULL),
(27,NULL,'Email Generator','Generate an email with your subject and description. Streamline your inbox and save time.','email_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"subject\",\"type\":\"text\",\"question\":\"Subject of Email\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M140 896q-24 0-42-18t-18-42V316q0-24 18-42t42-18h680q24 0 42 18t18 42v520q0 24-18 42t-42 18H140Zm340-302 340-223v-55L480 534 140 316v55l340 223Z\"/></svg>',0,'text','2023-03-14 09:52:21','2023-03-14 09:52:21',NULL,0,0,'#D1C5DE','email',NULL),
(28,NULL,'Email Answer Generator','Effortlessly tackle your overflowing inbox with custom, accurate responses to common queries, freeing you up to focus on what matters most.','email_answer_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description (Receieved Email)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M140 896q-24 0-42-18t-18-42V316q0-24 18-42t42-18h680q24 0 42 18t18 42v520q0 24-18 42t-42 18H140Zm340-302 340-223v-55L480 534 140 316v55l340 223Z\"/></svg>',0,'text','2023-03-14 09:54:20','2023-03-14 09:54:20',NULL,0,0,'#D1C5DE','email',NULL),
(29,NULL,'Newsletter Generator','Generate engaging newsletters easily with personalized content that resonates with your audience, driving growth and engagement.','newsletter_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"},{\"name\":\"title\",\"type\":\"text\",\"question\":\"Title\",\"select\":\"\"},{\"name\":\"subject\",\"type\":\"text\",\"question\":\"Subject\",\"select\":\"\"}]','<svg width=\"17\" height=\"14\" viewBox=\"0 0 17 14\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M0.625 13.5V8.26172L11.875 6.75L0.625 5.23828V0L16.375 6.75L0.625 13.5Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 09:56:49','2023-03-14 09:56:49',NULL,0,0,'#E1D5F4','email',NULL),
(30,NULL,'Grammar Correction','Eliminate grammar errors and enhance your writing with ease. Our tool offers seamless grammar correction for flawless content.','grammar_correction',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg width=\"17\" height=\"18\" viewBox=\"0 0 17 18\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\">\n<path d=\"M4.75586 8.01172V9.48828H0.255859V8.01172H4.75586ZM6.37305 5.58594L5.31836 6.64062L3.73633 5.02344L4.79102 3.96875L6.37305 5.58594ZM9.25586 0.488281V4.98828H7.74414V0.488281H9.25586ZM13.2637 5.02344L11.6816 6.64062L10.627 5.58594L12.209 3.96875L13.2637 5.02344ZM12.2441 8.01172H16.7441V9.48828H12.2441V8.01172ZM6.90039 7.16797C7.3457 6.72266 7.87305 6.5 8.48242 6.5C9.11523 6.5 9.6543 6.72266 10.0996 7.16797C10.5449 7.58984 10.7676 8.11719 10.7676 8.75C10.7676 9.38281 10.5449 9.92188 10.0996 10.3672C9.6543 10.7891 9.11523 11 8.48242 11C7.87305 11 7.3457 10.7891 6.90039 10.3672C6.47852 9.92188 6.26758 9.38281 6.26758 8.75C6.26758 8.11719 6.47852 7.58984 6.90039 7.16797ZM10.627 11.9141L11.6816 10.8594L13.2637 12.4766L12.209 13.5312L10.627 11.9141ZM3.73633 12.4766L5.31836 10.8594L6.37305 11.9141L4.79102 13.5312L3.73633 12.4766ZM7.74414 17.0117V12.5117H9.25586V17.0117H7.74414Z\" fill=\"#23344D\"/>\n</svg>',0,'text','2023-03-14 09:59:15','2023-03-14 09:59:15',NULL,0,0,'#D6C0A3','blog',NULL),
(31,NULL,'TL;DR Summarization','Automatically summarize long texts into bite-sized summaries with this TL;DR generator.','tldr_summarization',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M160 666v-60h389v60H160Zm0-120v-60h640v60H160Z\"/></svg>',0,'text','2023-03-14 10:00:44','2023-03-14 10:00:44',NULL,0,0,'#A3D6C2','blog',NULL),
(32,NULL,'AI Image Generator','Create stunning images in seconds.','ai_image_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Describe the Image\",\"select\":\"\"},{\"name\":\"size\",\"type\":\"select\",\"question\":\"Image Resolution\",\"select\":\"<option value=\'256x256\'>256x256</option><option value=\'512x512\'>512x512</option><option value=\'1024x1024\'>1024x1024</option>\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M180 936q-24 0-42-18t-18-42V276q0-24 18-42t42-18h600q24 0 42 18t18 42v600q0 24-18 42t-42 18H180Zm56-157h489L578 583 446 754l-93-127-117 152Z\"/></svg>',0,'image','2023-03-20 09:52:02','2024-05-11 13:46:47',NULL,0,0,'#D1C5DE','development',NULL),
(33,NULL,'Custom Generation','Create your own custom generator with AI! Our app allows you to quickly and easily generate unique content in any language.','custom-generation-eQao5n',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Description\",\"description\":\"Description for prompt\"},{\"name\":\"description-second\",\"type\":\"textarea\",\"question\":\"Description Second\",\"description\":\"Description Second for prompt\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"40\" viewBox=\"0 96 960 960\" width=\"40\"><path d=\"M424 962.333V705h93.666v83H860v93.666H517.666v80.667H424ZM99.667 881.666V788H372v93.666H99.667Zm178.667-178.333V622H99.667v-92.666h178.667v-82H372v255.999h-93.666ZM424 622v-92.666h436V622H424Zm163.667-175.667V189h93.666v81.334H860V364H681.333v82.333h-93.666ZM99.667 364v-93.666h436V364h-436Z\"/></svg>',0,'text','2023-04-04 18:19:28','2023-05-12 11:19:22','write a text about   **description**  and  **description-second**',1,0,'#F4E8A4','Custom',NULL),
(34,NULL,'AI Speech to Text','The AI app that turns audio speech into text with ease.','ai_speech_to_text',1,'[{\"name\":\"file\",\"type\":\"file\",\"question\":\"Upload an Audio File (mp3, mp4, mpeg, mpga, m4a, wav, and webm)(Max: 25Mb)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M140 976q-24.75 0-42.375-17.625T80 916V236q0-24.75 17.625-42.375T140 176h380l-60 60H140v680h480V776h60v140q0 24.75-17.625 42.375T620 976H140Zm100-170v-60h280v60H240Zm0-120v-60h200v60H240Zm380 10L460 536H320V336h140l160-160v520Zm60-92V258q56 21 88 74t32 104q0 51-35 101t-85 67Zm0 142v-62q70-25 125-90t55-158q0-93-55-158t-125-90v-62q102 27 171 112.5T920 436q0 112-69 197.5T680 746Z\"/></svg>',0,'audio','2023-04-08 16:00:04','2024-05-11 13:46:47',NULL,0,0,'#DEFF81','blog',NULL),
(35,NULL,'AI Code Generator','Create custom code in seconds! Leverage our state-of-the-art AI technology to quickly and easily generate code in any language.','ai_code_generator',1,'[{\"name\":\"description\",\"type\":\"textarea\",\"question\":\"Describe What Kind of Code You Need\",\"select\":\"\"},{\"name\":\"code_language\",\"type\":\"text\",\"question\":\"Coding Language (Java, PHP etc.)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"40\" viewBox=\"0 96 960 960\" width=\"40\"><path d=\"M196.666 965.333q-43.824 0-74.912-31.087-31.087-31.088-31.087-74.912V701.667h105.999v157.667h157.667v105.999H196.666Zm409.001 0V859.334h157.667V701.667H870v157.667q0 43.824-31.284 74.912-31.283 31.087-75.382 31.087H605.667ZM344 739.333 180.667 576 344 412.667 418.333 489l-86 87 86 87L344 739.333Zm272 0L541.667 663l86-87-86-87L616 412.667 779.333 576 616 739.333Zm-525.333-289V292.666q0-44.099 31.087-75.382Q152.842 186 196.666 186h157.667v106.666H196.666v157.667H90.667Zm672.667 0V292.666H605.667V186h157.667q44.099 0 75.382 31.284Q870 248.567 870 292.666v157.667H763.334Z\"/></svg>',0,'code','2023-04-12 16:28:19','2024-05-11 13:46:47',NULL,0,0,'#81FFC2','development',NULL),
(36,NULL,'AI Article Wizard Generator','Create custom article instantly with our article wizard generator. Boost engagement and save time.','ai_article_wizard_generator',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M430 896V356H200V256h560v100H530v540H430Z\"/></svg>',0,'text','2023-09-20 04:56:49','2024-05-11 13:46:47',NULL,0,0,'#A3D6C2','blog',NULL),
(37,NULL,'AI Vision','Elevate your visual analytics with our AI Vision platform. Harness the power of machine learning for real-time image recognition and data insights. Enhance efficiency and decision-making.','ai_vision',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" \n width=\"48\" height=\"48\" stroke-width=\"2\" stroke=\"black\" fill=\"none\" viewBox=\"0 0 24 24\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M6 4l6 16l6 -16\" /></svg>',0,'text','2023-09-20 04:56:49','2024-05-11 13:46:47',NULL,0,0,'#A3D6C2','blog',NULL),
(38,NULL,'File Analyzer','Simply upload a file (PDF, CSV, .doc or .docx) and extract key insights or summarize the entire document.','ai_pdf',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" \n width=\"48\" height=\"48\" stroke-width=\"2\" stroke=\"black\" fill=\"none\" viewBox=\"0 0 24 24\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M6 4l6 16l6 -16\" /></svg>',0,'text','2023-09-20 04:56:49','2024-05-11 13:46:47',NULL,0,0,'#A3D6C2','blog',NULL),
(39,NULL,'Chat Image','Generate Image by user input','ai_chat_image',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" \n width=\"48\" height=\"48\" stroke-width=\"2\" stroke=\"black\" fill=\"none\" viewBox=\"0 0 24 24\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M6 4l6 16l6 -16\" /></svg>',0,'text','2023-09-20 04:56:49','2024-05-11 13:46:47',NULL,0,0,'#A3D6C2','blog',NULL),
(40,NULL,'AI ReWriter','Rewrite more professional and detailed content instantly with our ai rewriter. Boost engagement and save time.','ai_rewriter',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M430 896V356H200V256h560v100H530v540H430Z\"/></svg>',0,'text','2023-09-20 04:56:49','2024-05-11 13:46:47',NULL,0,0,'#A3D6C2','blog',NULL),
(41,NULL,'AI Web Chat','Analyze web page content with url','ai_webchat',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" \n width=\"48\" height=\"48\" stroke-width=\"2\" stroke=\"black\" fill=\"none\" viewBox=\"0 0 24 24\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M6 4l6 16l6 -16\" /></svg>',0,'text','2023-09-20 04:56:49','2023-09-20 04:56:49',NULL,0,0,'#A3D6C2','blog',NULL),
(42,NULL,'AI Video','Bring your static images to life and create visually compelling videos effortlessly.','ai_video',1,'[{\"name\":\"your_description\",\"type\":\"textarea\",\"question\":\"Description\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" \n width=\"48\" height=\"48\" stroke-width=\"2\" stroke=\"black\" fill=\"none\" viewBox=\"0 0 24 24\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M6 4l6 16l6 -16\" /></svg>',0,'video','2023-09-20 04:56:49','2023-09-20 04:56:49',NULL,0,0,'#A3D6C2','video',NULL),
(43,NULL,'AI Voiceover','The AI app that turns text into audio speech with ease. Get ready to generate custom audios from texts quickly and accurately.','ai_voiceover',1,'[{\"name\":\"file\",\"type\":\"file\",\"question\":\"Upload an Audio File (mp3, mp4, mpeg, mpga, m4a, wav, and webm)(Max: 25Mb)\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" height=\"48\" viewBox=\"0 96 960 960\" width=\"48\"><path d=\"M140 976q-24.75 0-42.375-17.625T80 916V236q0-24.75 17.625-42.375T140 176h380l-60 60H140v680h480V776h60v140q0 24.75-17.625 42.375T620 976H140Zm100-170v-60h280v60H240Zm0-120v-60h200v60H240Zm380 10L460 536H320V336h140l160-160v520Zm60-92V258q56 21 88 74t32 104q0 51-35 101t-85 67Zm0 142v-62q70-25 125-90t55-158q0-93-55-158t-125-90v-62q102 27 171 112.5T920 436q0 112-69 197.5T680 746Z\"/></svg>',0,'voiceover','2024-03-01 08:05:52','2024-05-11 13:46:47','',0,0,'#DEFF81','voiceover',NULL),
(44,NULL,'AI YouTube','Simply turn your Youtube videos into Blog post.','ai_youtube',1,'[{\"name\":\"url\",\"type\":\"url\",\"question\":\"YouTube Video URL\",\"select\":\"\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"44\" height=\"44\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#2c3e50\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M2 8a4 4 0 0 1 4 -4h12a4 4 0 0 1 4 4v8a4 4 0 0 1 -4 4h-12a4 4 0 0 1 -4 -4v-8z\" /><path d=\"M10 9l5 3l-5 3z\" /></svg>',0,'youtube','2024-03-01 08:29:52','2024-05-11 13:46:47','',0,0,'#FFB0B0','youtube',NULL),
(45,NULL,'AI RSS','Generate unique content with RSS Feed.','ai_rss',1,'[{\"name\":\"rss_feed\",\"type\":\"rss_feed\",\"question\":\"URL\",\"select\":\"\"},{\"name\":\"title\",\"type\":\"select\",\"question\":\"Fetched Post Title\",\"select\":\"<option value=\\\"\\\">Enter the Feed URL, please!</option>\"}]','<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"44\" height=\"44\" viewBox=\"0 0 24 24\" stroke-width=\"1.5\" stroke=\"#2c3e50\" fill=\"none\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path stroke=\"none\" d=\"M0 0h24v24H0z\" fill=\"none\"/><path d=\"M5 19m-1 0a1 1 0 1 0 2 0a1 1 0 1 0 -2 0\" /><path d=\"M4 4a16 16 0 0 1 16 16\" /><path d=\"M4 11a9 9 0 0 1 9 9\" /></svg>',0,'rss','2024-02-22 16:13:17','2024-05-11 13:46:47',NULL,0,0,'#FF9E4D','rss',NULL);
/*!40000 ALTER TABLE `openai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openai_chat_category`
--

DROP TABLE IF EXISTS `openai_chat_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openai_chat_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `chatbot_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `short_name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `first_message` text DEFAULT NULL,
  `role` varchar(191) DEFAULT NULL,
  `human_name` varchar(191) DEFAULT NULL,
  `helps_with` text DEFAULT NULL,
  `prompt_prefix` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `color` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `chat_completions` text DEFAULT NULL,
  `plan` varchar(191) DEFAULT NULL,
  `category` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openai_chat_category`
--

LOCK TABLES `openai_chat_category` WRITE;
/*!40000 ALTER TABLE `openai_chat_category` DISABLE KEYS */;
INSERT INTO `openai_chat_category` VALUES
(1,NULL,NULL,'Default AI Chat Bot','ACB','ai-chat-bot','Default',NULL,NULL,'default','','','','','#A3D6C2','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(2,NULL,NULL,'Finance Expert','FE','finance-expert','Personal Finance Expert',NULL,NULL,'Finance Expert','Allison Burgers','I can help you with managing your finance','As a personal finance expert,',NULL,'#DBD5F5','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(3,NULL,NULL,'Nutritionist','N','nutritionist','Personal Nutritionist',NULL,NULL,'Nutritionist','Employes Mustwashhands','I can assist you with nutrition-related information or questions','As a nutritionist,',NULL,'#EDBBBE','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(4,NULL,NULL,'Career Counselor','CC','career-counselor','Personal Career Counselor',NULL,NULL,'Career Counselor','Neil Feetstrong','I can assist you with your career-related inquiries or concerns','As a career counselor,',NULL,'#D4D4E2','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(5,NULL,NULL,'Time Management Consultant','TMC','time-management-consultant','Personal Time Management Consultant',NULL,NULL,'Time Management Consultant','Sarman Yellow','I can assist you with improving your time management skills or addressing any time management challenges you may be facing','As a time management consultant,',NULL,'#D6CBA3','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(6,NULL,NULL,'Language Tutor','LT','language-tutor','Personal Language Tutor',NULL,NULL,'Language Tutor','Sherlock Jonas','I can assist you with your language learning goals or provide guidance on language-related topics','As a language tutor,',NULL,'#EACCEB','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(7,NULL,NULL,'Cybersecurity Expert','CE','cybersecurity-expert','Cybersecurity Expert',NULL,NULL,'Cybersecurity Expert','Mr. Robot','I can assist you with your cybersecurity concerns or provide information and guidance related to cybersecurity','As a cybersecurity expert, ',NULL,'#BDE3E3','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(8,NULL,NULL,'Interior Designer','ID','interior-designer','Personal Interior Designer',NULL,NULL,'Interior Designer','Olivia Sinclair','I can assist you with your interior design needs or provide guidance on creating beautiful and functional spaces','As an interior designer, ',NULL,'#F0D1CD','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(9,NULL,NULL,'Parenting Coach','PC','parenting-coach','Personal Parenting Coach',NULL,NULL,'Parenting Coach','Alexandra Stevens','I can assist you with your parenting questions or provide guidance and support in raising children','As a parenting coach, ',NULL,'#A3D6C2','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(10,NULL,NULL,'Fitness Trainer','FT','fitness-trainer','Personal Fitness Trainer',NULL,NULL,'Fitness Trainer','Mert Karapinar','I can assist you with your fitness goals or provide guidance and advice on exercise, nutrition, and overall wellness','As a fitness trainer, ',NULL,'#D2D6DF','2023-05-16 00:04:57','2023-05-16 00:09:11',NULL,NULL,NULL),
(11,NULL,NULL,'Travel Advisor','TA','travel-advisor','Personal Travel Advisor',NULL,NULL,'Travel Advisor','Bilbo Harries','I can assist you with your travel plans, provide destination recommendations, or offer guidance on travel-related inquiries','As a travel advisor,',NULL,'#BFE3EB','2023-05-16 00:04:57','2023-05-16 00:04:57',NULL,NULL,NULL),
(12,NULL,NULL,'Sustainability Expert','SE','sustainability-expert','Sustainability Expert',NULL,NULL,'Sustainability Expert','Viabil Ity','I can assist you with your sustainability goals, provide information on sustainable practices, or offer guidance on living a more environmentally friendly lifestyle','As a sustainability expert',NULL,'#ECDBC1','2023-05-16 00:04:57','2023-05-16 00:04:57',NULL,NULL,NULL),
(13,NULL,NULL,'Event Planner','EP','event planner','Event Planner',NULL,NULL,'Event Planner','Jack Groomer','I can assist you with planning and organizing your upcoming event, providing advice on event management, or offering guidance on creating memorable and successful events','As an event planner,',NULL,'#E3E3BD','2023-05-16 00:04:57','2023-05-16 00:04:57',NULL,NULL,NULL),
(14,NULL,NULL,'VisionAI','VI','ai_vision','Image PDF Expert',NULL,NULL,'Image Expert','VisionAI','I can assist you with PDF or Images-related information or questions','As a VisionAI,','assets/img/vision.png','#EDBBBE','2023-05-16 00:04:57','2023-05-16 00:09:11','[{\"role\": \"system\", \"content\": \"You are a Vision AI assistant.\"}, {\"role\": \"user\", \"content\": \"What objects are present in this image?\"}, {\"role\": \"assistant\", \"content\": \"The image contains various objects, including a person, a car, and a building.\"}, {\"role\": \"user\", \"content\": \"Can you describe the color of the car?\"}, {\"role\": \"assistant\", \"content\": \"The car in the image appears to be red.\"}]',NULL,NULL),
(15,NULL,NULL,'File Analyzer','FA','ai_pdf','I can assist you with PDF, DOC, DOCX or CSV information or questions',NULL,NULL,'File Analyzer','File Analyzer','I can assist you with PDF, DOC, DOCX or CSV information or questions','As a File Analyzer','assets/img/vision.png','#EDBBBE','2023-05-16 00:04:57','2023-05-16 00:09:11','[{\"role\": \"system\", \"content\": \"You are a PDF AI assistant.\"}]',NULL,NULL),
(16,NULL,NULL,'Chat Image','CI','ai_chat_image','Image Generator',NULL,NULL,'Image Generator','Image Generator','I can assist to generate image by user input','As a Pdf AI,','assets/img/vision.png','#EDBBBE','2023-05-16 00:04:57','2023-05-16 00:09:11','[{\"role\": \"system\", \"content\": \"You are a Chat Image assistant.\"}]','',''),
(17,NULL,NULL,'WebChat','WC','ai_webchat','AI Web Chat',NULL,NULL,'Web Analyzer','AI Web Chat','I can assist you with web page content analyzation','As a WebPage analyzer,','assets/img/vision.png','#EDBBBE','2023-05-16 00:04:57','2023-05-16 00:09:11','[{\"role\": \"system\", \"content\": \"You are a Web Page Analyzer assistant.\"}]','','');
/*!40000 ALTER TABLE `openai_chat_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openai_filters`
--

DROP TABLE IF EXISTS `openai_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `openai_filters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openai_filters`
--

LOCK TABLES `openai_filters` WRITE;
/*!40000 ALTER TABLE `openai_filters` DISABLE KEYS */;
INSERT INTO `openai_filters` VALUES
(1,NULL,'blog'),
(2,NULL,'ecommerce'),
(3,NULL,'development'),
(4,NULL,'advertisement'),
(5,NULL,'Custom'),
(6,NULL,'social media'),
(7,NULL,'voiceover'),
(8,NULL,'youtube'),
(9,NULL,'rss');
/*!40000 ALTER TABLE `openai_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `titlebar_status` tinyint(4) NOT NULL DEFAULT 1,
  `is_custom` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_footer` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,'About','<p><img style=\"display: block; border-radius: 25px; margin-left: auto; margin-right: auto;\" src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/img-1.jpg\" alt=\"\" width=\"1450\" height=\"761\"></p>\r\n<p style=\"text-align: center;\"><span class=\"highlight\">About Us</span></p>\r\n<h1 style=\"text-align: center;\">Shaping the future 🏔️</h1>\r\n<p class=\"leading\" style=\"max-width: 80%; margin-left: auto; margin-right: auto; text-align: center;\">Whether&nbsp;you&rsquo;re&nbsp;a&nbsp;content&nbsp;creator,&nbsp;business&nbsp;owner,&nbsp;or&nbsp;student, <span style=\"color: #595959;\">our&nbsp;text&nbsp;generator&nbsp;is&nbsp;an&nbsp;essential&nbsp;tool&nbsp;for&nbsp;boosting&nbsp;your&nbsp;productivity.</span></p>\r\n<hr>\r\n<p>&nbsp;</p>\r\n<p><span class=\"highlight\">Who Are We<br></span></p>\r\n<p class=\"leading\">At MagicAI, we are passionate about harnessing the power of artificial intelligence to unlock limitless creativity and efficiency.<span style=\"color: #595959;\"> Our cutting-edge AI Generators are designed to revolutionize the way you create, streamline your workflows, and supercharge your productivity.</span></p>\r\n<p>Our mission is to empower individuals and businesses to unleash their creative potential and achieve extraordinary results.</p>\r\n<p>We believe that AI has the ability to augment human capabilities, enhance decision-making processes, and accelerate innovation.</p>\r\n<p>By developing state-of-the-art AI Generators, we aim to democratize access to advanced AI technologies, enabling users from all backgrounds to excel in their creative endeavors.</p>\r\n<p>&nbsp;</p>\r\n<hr>\r\n<p>&nbsp;</p>\r\n<p><span class=\"highlight\">Invite a Friend</span></p>\r\n<h3>Our Mission</h3>\r\n<p class=\"leading\">We pride ourselves on offering AI Generators that are unmatched in their quality, <span style=\"color: #595959;\">versatility, and ease of use. Here&rsquo;s what sets us apart from the competition:</span></p>\r\n<p>With our AI Generators, the possibilities are endless. From generating compelling marketing copy and designing stunning visuals to automating data analysis and creating personalized user experiences, our tools will transform the way you work and help you achieve remarkable outcomes.</p>\r\n<p>Join our community of innovators, creators, and forward-thinkers who are leveraging the power of AI to revolutionize their industries. Start your journey with MagicAI today and unlock the full potential of AI Generators.</p>\r\n<p>Ready to experience the future of creativity? Sign up now and embark on an exciting adventure of limitless possibilities.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span class=\"info-box\">Still have a question? <span style=\"color: #0835f8;\"><a style=\"color: #0835f8;\" href=\"#\">Browse documentation</a></span> or <span style=\"color: #0835f8;\"><a style=\"color: #0835f8;\" href=\"#\">submit a ticket</a></span>.</span></p>\r\n<p>&nbsp;</p>\r\n<hr>\r\n<p>&nbsp;</p>\r\n<table style=\"border-collapse: collapse; width: 100%; border-width: 0px; border-style: none;\" border=\"1\"><colgroup><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"><col style=\"width: 20%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"text-align: center;\">\r\n<td style=\"border-width: 0px; text-align: center;\"><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-143406.svg\" alt=\"\" width=\"79\" height=\"28\"></td>\r\n<td style=\"border-width: 0px; text-align: center;\"><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-159906.svg\" alt=\"\" width=\"48\" height=\"48\"></td>\r\n<td style=\"border-width: 0px; text-align: center;\"><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-159907.svg\" alt=\"\" width=\"55\" height=\"34\"></td>\r\n<td style=\"border-width: 0px; text-align: center;\"><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-159908.svg\" alt=\"\" width=\"47\" height=\"48\"></td>\r\n<td style=\"border-width: 0px; text-align: center;\"><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-159909.svg\" alt=\"\" width=\"80\" height=\"20\"></td>\r\n</tr>\r\n</tbody>\r\n</table>','custom-about',0,'2024-02-13 00:16:38','2024-05-11 14:15:11',0,1,0),
(2,'Privacy and Policy','<p style=\"text-align: center;\"><span class=\"highlight\">Privacy Policy</span></p>\r\n<h1 style=\"text-align: center;\">Privacy and Policy</h1>\r\n<p class=\"leading\" style=\"max-width: 80%; margin-left: auto; margin-right: auto; text-align: center;\">With our tool, you can generate text in seconds, freeing up your <span style=\"color: rgb(89, 89, 89);\">time to focus on other important tasks that matter the most.</span></p>\r\n<p><img style=\"display: block; border-radius: 25px; margin-left: auto; margin-right: auto;\" src=\"https://gcdnb.pbrd.co/images/D92RJsyqJdHy.png?o=1\" alt=\"\" width=\"1450\" height=\"761\"></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"highlight\">Privacy Policy</span></p>\r\n<p class=\"leading\">Our newest theme update brings modern and clean design templates to Hub Collection which is already one of the biggest template collections ever built. <span style=\"color: rgb(89, 89, 89);\">These layouts are designed in a simple and unique style that can improve your daily workflow and save you an enormous amount of time.</span></p>\r\n<p>Test built the Liquid app as a Commercial app. This Service is provided by Test and is intended for use as is.</p>\r\n<p>If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.</p>\r\n<p>The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Liquid unless otherwise defined in this Privacy Policy.</p>\r\n<p>&nbsp;</p>\r\n<hr>\r\n<h5>&nbsp;</h5>\r\n<h5>Fair Use</h5>\r\n<p>For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Test. The information that we request will be retained by us and used as described in this privacy policy.</p>\r\n<p>The app does use third-party services that may collect information used to identify you.</p>\r\n<p>Link to the privacy policy of third-party service providers used by the app</p>\r\n<p>We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (&ldquo;IP&rdquo;) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.</p>\r\n<p>&nbsp;</p>\r\n<h5 class=\"lqd-text-el m-0 p-0\"><span class=\"lqd-text-item relative elementor-repeater-item-c3d0556\">Cookies</span></h5>\r\n<p>Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device&rsquo;s internal memory.</p>\r\n<p>This Service does not use these &ldquo;cookies&rdquo; explicitly. However, the app may use third-party code and libraries that use &ldquo;cookies&rdquo; to collect information and improve their services. You have the option to either accept or refuse</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span class=\"info-box\">Still have a question? <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">Browse documentation</a></span> or <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">submit a ticket</a>.</span></span></p>','custom-privacy-and-policy',0,'2024-02-13 00:18:09','2024-02-14 10:45:29',0,1,0),
(3,'How It Works','<p style=\"text-align: center;\">Trusted by these amazing companies</p>\r\n<table style=\"border-collapse: collapse; width: 100.068%; border-width: 0px;\" border=\"1\"><colgroup><col style=\"width: 25.0342%;\"><col style=\"width: 25.0342%;\"><col style=\"width: 25.0342%;\"><col style=\"width: 25.0342%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td style=\"border-width: 0px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/nike.svg\" alt=\"\" width=\"88\" height=\"32\"></td>\r\n<td style=\"border-width: 0px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-133531.svg\" alt=\"\" width=\"86\" height=\"37\"></td>\r\n<td style=\"border-width: 0px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/Path-46878.svg\" alt=\"\" width=\"49\" height=\"35\"></td>\r\n<td style=\"border-width: 0px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/volkswagen-1.svg\" alt=\"\" width=\"53\" height=\"53\"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"leading\" style=\"text-align: center;\">&nbsp;</p>\r\n<p class=\"leading\" style=\"text-align: center;\">At MagicAI, we are passionate about harnessing the power of artificial intelligence to unlock limitless creativity and efficiency.&nbsp;<span style=\"color: rgb(89, 89, 89);\">Our cutting-edge AI Generators are designed to revolutionize the way you create, streamline your workflows, and supercharge your productivity.</span></p>\r\n<p class=\"leading\" style=\"text-align: center;\">&nbsp;</p>\r\n<p><span class=\"num-block\">1</span></p>\r\n<h4>Select a Template</h4>\r\n<p>Our mission is to empower individuals and businesses to unleash their creative potential and achieve extraordinary results. We believe that AI has the ability to augment human capabilities, enhance decision-making processes, and accelerate innovation.</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"num-block\">2</span></p>\r\n<h4>Explain your idea</h4>\r\n<p>AI generators are sophisticated systems trained on vast amounts of data to learn patterns, understand context, and generate original content. They are designed to mimic human creativity by analyzing existing examples.</p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"num-block\">3</span></p>\r\n<h4>Done!</h4>\r\n<p>By developing state-of-the-art AI Generators, we aim to democratize access to advanced AI technologies, enabling users from all backgrounds to excel in their creative endeavors.</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span class=\"info-box\">Still have a question? <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">Browse documentation</a></span> or <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">submit a ticket</a>.</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><img style=\"border-radius: 25px;\" src=\"https://gcdnb.pbrd.co/images/OZmBXkQ5MQyH.png?o=1\" alt=\"How it works\" width=\"1620\" height=\"870\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"highlight\">Invite a Friend</span></p>\r\n<h4>Affiliate System.</h4>\r\n<p class=\"leading\">We pride ourselves on offering AI Generators that are unmatched in their quality, <span style=\"color: rgb(89, 89, 89);\">versatility, and ease of use. Here&rsquo;s what sets us apart from the competition:</span></p>\r\n<h5>Done!</h5>\r\n<p>Join our community of innovators, creators, and forward-thinkers who are leveraging the power of AI to revolutionize their industries. Start your journey with MagicAI today and unlock the full potential of AI Generators.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/icon-2.jpg\" alt=\"\" width=\"48\" height=\"48\"></p>\r\n<h5>Invite your Friend</h5>\r\n<p>With our AI Generators, the possibilities are endless. From generating compelling marketing copy and designing stunning visuals to automating data analysis and creating personalized user experiences.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"https://aidefault.liquid-themes.com/wp-content/uploads/2023/08/icon-3.jpg\" alt=\"\" width=\"48\" height=\"48\"></p>\r\n<h5>Make Money</h5>\r\n<p>Ready to experience the future of creativity? Sign up now and embark on an exciting adventure of limitless possibilities.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: center;\"><span class=\"info-box\">Still have a question? <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">Browse documentation</a></span> or <span style=\"color: rgb(8, 53, 248);\"><a style=\"color: rgb(8, 53, 248);\" href=\"#\">submit a ticket</a>.</span></span></p>','custom-how-it-works',0,'2024-02-13 00:19:08','2024-02-14 10:07:35',1,1,0),
(4,'Features','<p><img style=\"border-radius: 25px;\" src=\"https://gcdnb.pbrd.co/images/iTA0Xv7SHrVp.png?o=1\" alt=\"About us\" width=\"1526 &times;\" height=\"866\"></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"highlight\">Introducing</span></p>\r\n<h3 class=\"lqd-text-el m-0 p-0\"><span class=\"lqd-text-item relative elementor-repeater-item-eaff06a\">Custom Chatbots.</span></h3>\r\n<p class=\"leading\">We pride ourselves on offering AI Generators that are unmatched in their quality, <span style=\"color: rgb(89, 89, 89);\">versatility, and ease of use. Here&rsquo;s what sets us apart from the competition:</span></p>\r\n<p>With our AI Generators, the possibilities are endless. From generating compelling marketing copy and designing stunning visuals to automating data analysis and creating personalized user experiences, our tools will transform the way you work and help you achieve remarkable outcomes.</p>\r\n<p>Join our community of innovators, creators, and forward-thinkers who are leveraging the power of AI to revolutionize their industries. Start your journey with MagicAI today and unlock the full potential of AI Generators.</p>\r\n<p>Ready to experience the future of creativity? Sign up now and embark on an exciting adventure of limitless possibilities.</p>\r\n<ul style=\"list-style: disc; list-style-position: inside;\">\r\n<li><strong>New &mdash;</strong>&nbsp;AI Voiceover in 30 Languages</li>\r\n<li><strong>New &mdash;</strong>&nbsp;Custom Avatar for Chatbot</li>\r\n<li><strong>Improved &mdash;</strong>&nbsp;Auto Translate</li>\r\n</ul>','custom-features',0,'2024-02-14 08:57:38','2024-02-14 09:55:50',1,1,0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
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
-- Table structure for table `payment_proofs`
--

DROP TABLE IF EXISTS `payment_proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_proofs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `plan_id` bigint(20) unsigned NOT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `proof_image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_proofs_user_id_foreign` (`user_id`),
  KEY `payment_proofs_plan_id_foreign` (`plan_id`),
  CONSTRAINT `payment_proofs_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  CONSTRAINT `payment_proofs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_proofs`
--

LOCK TABLES `payment_proofs` WRITE;
/*!40000 ALTER TABLE `payment_proofs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_proofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paystack_payment_infos`
--

DROP TABLE IF EXISTS `paystack_payment_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paystack_payment_infos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `trans` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `transaction` varchar(191) DEFAULT NULL,
  `trxref` varchar(191) DEFAULT NULL,
  `amount` varchar(191) DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `plan_code` varchar(191) DEFAULT NULL,
  `customer_code` varchar(191) DEFAULT NULL,
  `other` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paystack_payment_infos_user_id_foreign` (`user_id`),
  CONSTRAINT `paystack_payment_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paystack_payment_infos`
--

LOCK TABLES `paystack_payment_infos` WRITE;
/*!40000 ALTER TABLE `paystack_payment_infos` DISABLE KEYS */;
/*!40000 ALTER TABLE `paystack_payment_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf_data`
--

DROP TABLE IF EXISTS `pdf_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdf_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `vector` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`vector`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf_data`
--

LOCK TABLES `pdf_data` WRITE;
/*!40000 ALTER TABLE `pdf_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `pdf_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `name` varchar(191) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `currency` varchar(191) NOT NULL DEFAULT 'USD',
  `frequency` varchar(191) NOT NULL DEFAULT 'monthly',
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_free` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_product_id` varchar(191) DEFAULT NULL,
  `total_words` varchar(191) DEFAULT NULL,
  `total_images` varchar(191) DEFAULT NULL,
  `ai_name` varchar(191) DEFAULT NULL,
  `max_tokens` bigint(20) DEFAULT NULL,
  `can_create_ai_images` tinyint(1) DEFAULT NULL,
  `plan_type` varchar(191) NOT NULL DEFAULT 'all',
  `features` text DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'subscription',
  `is_team_plan` tinyint(1) NOT NULL DEFAULT 0,
  `plan_allow_seat` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trial_days` int(11) NOT NULL DEFAULT 0,
  `display_imag_count` tinyint(1) NOT NULL DEFAULT 1,
  `display_word_count` tinyint(1) NOT NULL DEFAULT 1,
  `open_ai_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`open_ai_items`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES
(1,1,'Starter',0,'USD','monthly',0,0,NULL,'100','50','gpt-3.5-turbo-16k',NULL,1,'Regular','Starter','subscription',1,1,'2024-05-11 14:18:28','2024-05-11 14:18:28',0,1,1,'[\"post_title_generator\",\"summarize_text\",\"article_generator\",\"blog_section\",\"blog_post_ideas\",\"blog_intros\",\"blog_conclusion\",\"paragraph_generator\",\"grammar_correction\",\"tldr_summarization\",\"ai_speech_to_text\",\"ai_article_wizard_generator\",\"ai_vision\",\"ai_pdf\",\"ai_chat_image\",\"ai_rewriter\",\"ai_webchat\",\"product_description\",\"product_name\",\"testimonial_review\",\"problem_agitate_solution\",\"pros_cons\",\"meta_description\",\"faq_generator\",\"ai_image_generator\",\"ai_code_generator\",\"facebook_ads\",\"google_ads_headlines\",\"google_ads_description\",\"youtube_video_description\",\"youtube_video_title\",\"youtube_video_tag\",\"instagram_captions\",\"instagram_hashtag\",\"social_media_post_tweet\",\"social_media_post_business\",\"facebook_headlines\",\"email_generator\",\"email_answer_generator\",\"newsletter_generator\",\"custom-generation-eQao5n\",\"ai_video\",\"ai_voiceover\",\"ai_youtube\",\"ai_rss\"]'),
(2,1,'100 Worlds Token and 50 Image Token',0,'USD','monthly',0,0,NULL,'100','50',NULL,NULL,NULL,'all','100 Worlds Token,\r\n50 Image Token','prepaid',1,0,'2024-05-11 14:19:16','2024-05-11 14:19:23',0,1,1,'[\"post_title_generator\",\"summarize_text\",\"article_generator\",\"blog_section\",\"blog_post_ideas\",\"blog_intros\",\"blog_conclusion\",\"paragraph_generator\",\"grammar_correction\",\"tldr_summarization\",\"ai_speech_to_text\",\"ai_article_wizard_generator\",\"ai_vision\",\"ai_pdf\",\"ai_chat_image\",\"ai_rewriter\",\"ai_webchat\",\"product_description\",\"product_name\",\"testimonial_review\",\"problem_agitate_solution\",\"pros_cons\",\"meta_description\",\"faq_generator\",\"ai_image_generator\",\"ai_code_generator\",\"facebook_ads\",\"google_ads_headlines\",\"google_ads_description\",\"youtube_video_description\",\"youtube_video_title\",\"youtube_video_tag\",\"instagram_captions\",\"instagram_hashtag\",\"social_media_post_tweet\",\"social_media_post_business\",\"facebook_headlines\",\"email_generator\",\"email_answer_generator\",\"newsletter_generator\",\"custom-generation-eQao5n\",\"ai_video\",\"ai_voiceover\",\"ai_youtube\",\"ai_rss\"]');
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privacy_terms`
--

DROP TABLE IF EXISTS `privacy_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privacy_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) DEFAULT NULL,
  `lang` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privacy_terms`
--

LOCK TABLES `privacy_terms` WRITE;
/*!40000 ALTER TABLE `privacy_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `privacy_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `key_features` text DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `company_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  KEY `products_company_id_foreign` (`company_id`),
  CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prompt_library`
--

DROP TABLE IF EXISTS `prompt_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prompt_library` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) NOT NULL,
  `prompt` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prompt_library`
--

LOCK TABLES `prompt_library` WRITE;
/*!40000 ALTER TABLE `prompt_library` DISABLE KEYS */;
/*!40000 ALTER TABLE `prompt_library` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate_limits`
--

DROP TABLE IF EXISTS `rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate_limits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(191) NOT NULL,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'image',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate_limits`
--

LOCK TABLES `rate_limits` WRITE;
/*!40000 ALTER TABLE `rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revenuecat_products`
--

DROP TABLE IF EXISTS `revenuecat_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenuecat_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `gatewayproduct_id` bigint(20) unsigned DEFAULT NULL,
  `entitlement_id` varchar(191) DEFAULT NULL,
  `package_id` varchar(191) DEFAULT NULL,
  `google_id` varchar(191) DEFAULT NULL,
  `apple_id` varchar(191) DEFAULT NULL,
  `amazon_id` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revenuecat_products_plan_id_foreign` (`plan_id`),
  KEY `revenuecat_products_gatewayproduct_id_foreign` (`gatewayproduct_id`),
  CONSTRAINT `revenuecat_products_gatewayproduct_id_foreign` FOREIGN KEY (`gatewayproduct_id`) REFERENCES `gatewayproducts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `revenuecat_products_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revenuecat_products`
--

LOCK TABLES `revenuecat_products` WRITE;
/*!40000 ALTER TABLE `revenuecat_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `revenuecat_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_currency` varchar(191) DEFAULT NULL,
  `invoice_name` varchar(191) DEFAULT NULL,
  `invoice_website` varchar(191) DEFAULT NULL,
  `invoice_address` varchar(191) DEFAULT NULL,
  `invoice_city` varchar(191) DEFAULT NULL,
  `invoice_state` varchar(191) DEFAULT NULL,
  `invoice_postal` varchar(191) DEFAULT NULL,
  `invoice_country` varchar(191) DEFAULT NULL,
  `invoice_phone` varchar(191) DEFAULT NULL,
  `invoice_vat` varchar(191) DEFAULT NULL,
  `default_currency` varchar(191) NOT NULL DEFAULT '2',
  `tax_rate` varchar(191) DEFAULT NULL,
  `stripe_active` varchar(191) NOT NULL DEFAULT '0',
  `stripe_key` varchar(191) DEFAULT NULL,
  `stripe_secret` varchar(191) DEFAULT NULL,
  `stripe_base_url` varchar(191) NOT NULL DEFAULT 'https://api.stripe.com',
  `bank_transfer_active` varchar(191) NOT NULL DEFAULT '0',
  `bank_transfer_instructions` varchar(191) DEFAULT NULL,
  `bank_transfer_informations` varchar(191) DEFAULT NULL,
  `site_name` varchar(191) NOT NULL DEFAULT 'MagicAI',
  `site_url` varchar(191) NOT NULL DEFAULT 'https://liquid-themes.com',
  `site_email` varchar(191) DEFAULT NULL,
  `google_analytics_active` varchar(191) NOT NULL DEFAULT '0',
  `google_analytics_code` text DEFAULT NULL,
  `logo` varchar(191) NOT NULL DEFAULT 'magicAI-logo.svg',
  `favicon` varchar(191) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `facebook_active` tinyint(1) NOT NULL DEFAULT 0,
  `facebook_api_key` text DEFAULT NULL,
  `facebook_api_secret` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `github_active` tinyint(1) NOT NULL DEFAULT 0,
  `github_api_key` text DEFAULT NULL,
  `github_api_secret` text DEFAULT NULL,
  `github_redirect_url` text DEFAULT NULL,
  `google_active` tinyint(1) NOT NULL DEFAULT 0,
  `google_api_key` text DEFAULT NULL,
  `google_api_secret` text DEFAULT NULL,
  `google_redirect_url` text DEFAULT NULL,
  `twitter_active` tinyint(1) NOT NULL DEFAULT 0,
  `twitter_api_key` text DEFAULT NULL,
  `twitter_api_secret` text DEFAULT NULL,
  `twitter_redirect_url` text DEFAULT NULL,
  `register_active` tinyint(1) NOT NULL DEFAULT 1,
  `default_country` varchar(191) NOT NULL DEFAULT 'United States',
  `smtp_host` varchar(191) DEFAULT NULL,
  `smtp_port` varchar(191) DEFAULT NULL,
  `smtp_username` varchar(191) DEFAULT NULL,
  `smtp_password` varchar(191) DEFAULT NULL,
  `smtp_email` varchar(191) DEFAULT NULL,
  `smtp_sender_name` varchar(191) DEFAULT NULL,
  `smtp_encryption` varchar(191) NOT NULL DEFAULT 'TLS',
  `openai_api_secret` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo_path` varchar(191) NOT NULL DEFAULT 'assets/img/logo/magicAI-logo.svg',
  `favicon_path` varchar(191) DEFAULT NULL,
  `openai_default_model` varchar(191) NOT NULL DEFAULT 'gpt-3.5-turbo',
  `openai_default_language` varchar(191) NOT NULL DEFAULT 'en-US',
  `openai_default_tone_of_voice` varchar(191) NOT NULL DEFAULT 'professional',
  `openai_default_creativity` varchar(191) NOT NULL DEFAULT '0.75',
  `openai_max_input_length` varchar(191) NOT NULL DEFAULT '300',
  `openai_max_output_length` varchar(191) NOT NULL DEFAULT '200',
  `affiliate_minimum_withdrawal` varchar(191) NOT NULL DEFAULT '10',
  `affiliate_commission_percentage` varchar(191) NOT NULL DEFAULT '10',
  `frontend_pricing_section` tinyint(1) NOT NULL DEFAULT 1,
  `frontend_custom_templates_section` tinyint(1) NOT NULL DEFAULT 1,
  `frontend_business_partners_section` tinyint(1) NOT NULL DEFAULT 1,
  `frontend_additional_url` varchar(191) DEFAULT NULL,
  `frontend_custom_js` varchar(191) DEFAULT NULL,
  `frontend_custom_css` varchar(191) DEFAULT NULL,
  `frontend_footer_facebook` varchar(191) DEFAULT NULL,
  `frontend_footer_twitter` varchar(191) DEFAULT NULL,
  `frontend_footer_instagram` varchar(191) DEFAULT NULL,
  `script_version` double NOT NULL DEFAULT 5.8,
  `logo_collapsed` varchar(191) NOT NULL DEFAULT 'magicAI-logo-Collapsed.png',
  `logo_collapsed_path` varchar(191) NOT NULL DEFAULT 'assets/img/logo/magicAI-logo-Collapsed.png',
  `stripe_status_for_now` varchar(191) NOT NULL DEFAULT 'disabled',
  `logo_dark` varchar(191) NOT NULL DEFAULT 'magicAI-logo-dark.svg',
  `logo_dashboard` text DEFAULT NULL,
  `logo_dashboard_dark` text DEFAULT NULL,
  `logo_collapsed_dark` varchar(191) NOT NULL DEFAULT 'magicAI-logo-collapsed-dark.svg',
  `logo_2x` text DEFAULT NULL,
  `logo_dark_2x` text DEFAULT NULL,
  `logo_dashboard_2x` text DEFAULT NULL,
  `logo_dashboard_dark_2x` text DEFAULT NULL,
  `logo_collapsed_2x` text DEFAULT NULL,
  `logo_collapsed_dark_2x` text DEFAULT NULL,
  `logo_dark_path` varchar(191) NOT NULL DEFAULT 'assets/img/logo/magicAI-logo-dark.svg',
  `logo_dashboard_path` text DEFAULT NULL,
  `logo_dashboard_dark_path` text DEFAULT NULL,
  `logo_collapsed_dark_path` varchar(191) NOT NULL DEFAULT 'assets/img/logo/magicAI-logo-collapsed-dark.svg',
  `logo_2x_path` text DEFAULT NULL,
  `logo_dark_2x_path` text DEFAULT NULL,
  `logo_dashboard_2x_path` text DEFAULT NULL,
  `logo_dashboard_dark_2x_path` text DEFAULT NULL,
  `logo_collapsed_2x_path` text DEFAULT NULL,
  `logo_collapsed_dark_2x_path` text DEFAULT NULL,
  `feature_ai_writer` tinyint(1) NOT NULL DEFAULT 1,
  `feature_ai_image` tinyint(1) NOT NULL DEFAULT 1,
  `feature_ai_chat` tinyint(1) NOT NULL DEFAULT 1,
  `feature_ai_code` tinyint(1) NOT NULL DEFAULT 1,
  `feature_ai_voice_clone` tinyint(1) NOT NULL DEFAULT 0,
  `feature_ai_speech_to_text` tinyint(1) NOT NULL DEFAULT 1,
  `feature_affilates` tinyint(1) NOT NULL DEFAULT 1,
  `logo_sticky` text DEFAULT NULL,
  `logo_sticky_path` text DEFAULT NULL,
  `logo_sticky_2x` text DEFAULT NULL,
  `logo_sticky_2x_path` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `gdpr_status` tinyint(1) NOT NULL DEFAULT 0,
  `gdpr_button` varchar(191) NOT NULL DEFAULT 'Accept',
  `gdpr_content` varchar(191) DEFAULT 'This website uses cookies to improve your web experience.',
  `menu_options` text DEFAULT NULL,
  `privacy_enable` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_enable_login` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_content` text DEFAULT NULL,
  `terms_content` text DEFAULT NULL,
  `login_without_confirmation` tinyint(1) NOT NULL DEFAULT 1,
  `feature_ai_voiceover` tinyint(1) DEFAULT 1,
  `gcs_file` text DEFAULT NULL,
  `gcs_name` text DEFAULT NULL,
  `frontend_code_before_head` text DEFAULT NULL,
  `frontend_code_before_body` text DEFAULT NULL,
  `dashboard_code_before_head` text DEFAULT NULL,
  `dashboard_code_before_body` text DEFAULT NULL,
  `free_plan` varchar(100) NOT NULL DEFAULT '0,0',
  `feature_ai_article_wizard` tinyint(4) NOT NULL DEFAULT 1,
  `feature_ai_vision` tinyint(4) NOT NULL DEFAULT 1,
  `feature_ai_pdf` tinyint(4) NOT NULL DEFAULT 1,
  `feature_ai_chat_image` tinyint(4) NOT NULL DEFAULT 1,
  `mobile_payment_active` tinyint(1) NOT NULL DEFAULT 0,
  `feature_ai_rewriter` tinyint(4) NOT NULL DEFAULT 1,
  `feature_ai_youtube` tinyint(4) NOT NULL DEFAULT 1,
  `feature_ai_rss` tinyint(4) NOT NULL DEFAULT 1,
  `team_functionality` tinyint(1) NOT NULL DEFAULT 0,
  `feature_ai_advanced_editor` tinyint(1) NOT NULL DEFAULT 0,
  `user_count` int(11) NOT NULL DEFAULT 0,
  `free_open_ai_items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`free_open_ai_items`)),
  `user_api_option` tinyint(4) NOT NULL DEFAULT 0,
  `auth_view_options` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
(1,NULL,'HamyarGPT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'undefined','2',NULL,'0',NULL,NULL,'https://api.stripe.com','0',NULL,NULL,'HamyarGPT','http://localhost:7000/','amirex1dev@gmail.com','0',NULL,'magicAI-logo.svg',NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL,NULL,NULL,1,'United States','smtp.gmail.com','587','amirex1dev','q6766581','amirex1dev@gmail.com','Amir Shirdel','TLS',NULL,NULL,'2024-05-11 14:12:11','assets/img/logo/magicAI-logo.svg',NULL,'gpt-3.5-turbo','en-US','professional','0.75','300','200','10','10',1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,5.9,'magicAI-logo-Collapsed.png','assets/img/logo/magicAI-logo-Collapsed.png','disabled','magicAI-logo-dark.svg',NULL,NULL,'magicAI-logo-collapsed-dark.svg',NULL,NULL,NULL,NULL,NULL,NULL,'assets/img/logo/magicAI-logo-dark.svg',NULL,NULL,'assets/img/logo/magicAI-logo-collapsed-dark.svg',NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1,1,1,1,NULL,NULL,NULL,NULL,NULL,1,'Accept','This website uses cookies to improve your web experience.',NULL,0,0,NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,NULL,'10',1,1,1,1,0,1,1,1,1,1,0,'[\"post_title_generator\",\"summarize_text\",\"product_description\",\"article_generator\",\"product_name\",\"testimonial_review\",\"problem_agitate_solution\",\"blog_section\",\"blog_post_ideas\",\"blog_intros\",\"blog_conclusion\",\"facebook_ads\",\"youtube_video_description\",\"youtube_video_title\",\"youtube_video_tag\",\"instagram_captions\",\"instagram_hashtag\",\"social_media_post_tweet\",\"social_media_post_business\",\"facebook_headlines\",\"google_ads_headlines\",\"google_ads_description\",\"paragraph_generator\",\"pros_cons\",\"meta_description\",\"faq_generator\",\"email_generator\",\"email_answer_generator\",\"newsletter_generator\",\"grammar_correction\",\"tldr_summarization\",\"ai_image_generator\",\"custom-generation-eQao5n\",\"ai_speech_to_text\",\"ai_code_generator\",\"ai_article_wizard_generator\",\"ai_vision\",\"ai_pdf\",\"ai_chat_image\",\"ai_rewriter\",\"ai_webchat\",\"ai_video\",\"ai_voiceover\",\"ai_youtube\",\"ai_rss\"]',0,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings_two`
--

DROP TABLE IF EXISTS `settings_two`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings_two` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `theme` varchar(191) NOT NULL DEFAULT 'default',
  `stable_diffusion_api_key` varchar(191) DEFAULT NULL,
  `stable_diffusion_default_model` varchar(191) DEFAULT NULL,
  `google_recaptcha_status` tinyint(1) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(191) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(191) DEFAULT NULL,
  `languages` varchar(191) DEFAULT 'en',
  `languages_default` varchar(191) NOT NULL DEFAULT 'en',
  `liquid_license_type` text DEFAULT NULL,
  `liquid_license_domain_key` text DEFAULT NULL,
  `openai_default_stream_server` varchar(191) NOT NULL DEFAULT 'frontend',
  `ai_image_storage` varchar(191) NOT NULL DEFAULT 'public',
  `stablediffusion_default_language` varchar(191) NOT NULL DEFAULT 'en-US',
  `stablediffusion_default_model` varchar(191) NOT NULL DEFAULT 'stable-diffusion-xl-beta-v2-2-2',
  `unsplash_api_key` text DEFAULT NULL,
  `dalle` varchar(191) DEFAULT 'dalle3',
  `daily_limit_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_images_count` int(11) NOT NULL DEFAULT 2,
  `daily_voice_limit_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_voice_count` int(11) NOT NULL DEFAULT 1,
  `serper_api_key` text DEFAULT NULL,
  `elevenlabs_api_key` varchar(191) DEFAULT NULL,
  `feature_tts_google` tinyint(1) NOT NULL DEFAULT 1,
  `feature_tts_openai` tinyint(1) NOT NULL DEFAULT 1,
  `feature_tts_elevenlabs` tinyint(1) NOT NULL DEFAULT 0,
  `fine_tune_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fine_tune_list`)),
  `chatbot_status` varchar(191) DEFAULT 'disabled',
  `chatbot_template` int(11) DEFAULT NULL,
  `chatbot_position` varchar(191) DEFAULT 'bottom-left',
  `chatbot_login_require` tinyint(4) NOT NULL DEFAULT 1,
  `chatbot_rate_limit` int(11) DEFAULT 10,
  `feature_ai_video` tinyint(1) NOT NULL DEFAULT 1,
  `chatbot_show_timestamp` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings_two`
--

LOCK TABLES `settings_two` WRITE;
/*!40000 ALTER TABLE `settings_two` DISABLE KEYS */;
INSERT INTO `settings_two` VALUES
(1,'default',NULL,NULL,0,NULL,NULL,'en,fa','en','Extended License','xxx','backend','public','en-US','stable-diffusion-xl-beta-v2-2-2',NULL,'dalle3',1,20,1,20,NULL,NULL,1,1,0,NULL,'disabled',NULL,'bottom-left',1,10,1,0);
/*!40000 ALTER TABLE `settings_two` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strings`
--

DROP TABLE IF EXISTS `strings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strings` (
  `code` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `en` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `ar` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `da` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `de` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `el` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `es` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fr` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `id` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `it` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `nl` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pt_BR` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `sv` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `th` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `edit` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `fa` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2476 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strings`
--

LOCK TABLES `strings` WRITE;
/*!40000 ALTER TABLE `strings` DISABLE KEYS */;
INSERT INTO `strings` VALUES
(1,'(Cheapest &amp; Fastest)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(2,'(Default Language)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(3,'(Most Expensive &amp; Most Capable)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(4,'(New)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(5,'(Only jpg, png, webp will be accepted)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(6,'*You can use HTML in Step Title and Bottom Line.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(7,', and I\'m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(8,', and I\'m here to answer all your questions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(9,'2-Factor Auth.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(10,'2023 MagicAI. All images are for demo purposes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(11,'23 Languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(12,'30+ Languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(13,'30+ Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(14,'3D Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(15,'3D Render',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(16,'404 Not Found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(17,'419 Token Missmatch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(18,'500 Critical Server Error',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(19,'500 Server Error',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(20,'503 Maintenance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(21,'<span class=\'text-white\'>Simply explain</span> what your content is about and adjust settings according to your needs.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(22,'<span class=\'text-white\'>Simply input some basic information</span> or keywords about your brand or product, and let our AI algorithms do the rest.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(23,'<span class=\'text-white\'>View, edit or export</span> your result with a few clicks. And you’re done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(24,'<strong>Safe Payment:</strong> Use Stripe or Credit Card.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(25,'<strong>Safe Payment:</strong> Use Stripe, ApplePay, AmazonPay, PayPal or Credit Card.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(26,'<strong>They subscribe</strong> to a paid plan by using your referral link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(27,'<strong>They subscribe</strong> to a paid plan by using your referral link.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(28,'A description for the input',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(29,'A description for the input.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(30,'A newer version of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(31,'A role for the chatbot that can define what it can help with. For example Finance Expert.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(32,'A short description about what this template do.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(33,'A short description of what this chat template can help with for SEO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(34,'A short description of what this chat template can help with.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(35,'A title for the template that will show in templates list and in search results',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(36,'AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(37,'AI Article Wizard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(38,'AI Chat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(39,'AI Chat Bot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(40,'AI Chat Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(41,'AI Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(42,'AI Code Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(43,'AI Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(44,'AI Hub works great with your favorite platforms. Contact us if you can’t see your platform here. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(45,'AI Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(46,'AI Image Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(47,'AI Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(48,'AI PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(49,'AI Powered',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(50,'AI Speech To Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(51,'AI Speech to Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(52,'AI Text Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(53,'AI Vision',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(54,'AI Voiceover',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(55,'AI Writer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(56,'AI Writer Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(57,'AI-Powered Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(58,'APP_DEBUG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(59,'APP_ENV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(60,'APP_LOG_LEVEL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(61,'APP_STATUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(62,'AWS S3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(63,'Ability to invite friends, and earn commission from their first purchase.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(64,'Ability to understand and generate content in different languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(65,'Ability to understand and generate content in different languages.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(66,'Accept button text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(67,'Access',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(68,'Access and mage support tickets from your dashboard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(69,'Access and manage your support tickets from your dashboard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(70,'Access to Support Tickets from your dashboard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(71,'Access to valuable user insight, analytics and activity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(72,'Accurately transcribe your recordings in just minutes. With our user-friendly interface, you can upload your files and have them transcribed in a matter of clicks.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(73,'Action',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(74,'Actions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(75,'Activate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(76,'Activate MagicAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(77,'Activate header section to view ads',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(78,'Activate you license',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(79,'Activate your license',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(80,'Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(81,'Activity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(82,'Ada (Cheapest &amp; Fastest)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(83,'Add',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(84,'Add +',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(85,'Add Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(86,'Add Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(87,'Add Keyword',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(88,'Add Menu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(89,'Add More',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(90,'Add More User Input',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(91,'Add New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(92,'Add New Coupon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(93,'Add New Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(94,'Add Outline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(95,'Add Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(96,'Add Post',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(97,'Add Slug for SEO. Example: my-post',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(98,'Add Slug for SEO. Example: privaciy-policy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(99,'Add Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(100,'Add Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(101,'Add a page title. Example: Privacy Policy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(102,'Add a post title.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(103,'Add custom prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(104,'Add new language ↓',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(105,'Add new string. Ex. Hello',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(106,'Add or Edit Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(107,'Add or Edit Chat Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(108,'Add or Edit Custom Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(109,'Add or Edit Email Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(110,'Add or Edit Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(111,'Add or Edit Post',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(112,'Add or Edit Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(113,'Add unlimited number of custom prompts for your customers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(114,'Additional Landing Page URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(115,'Address',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(116,'Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(117,'Admin Panel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(118,'Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(119,'Adsense Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(120,'Adsense Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(121,'Adsense Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(122,'Advanced Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(123,'Advanced Options',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(124,'Advanced Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(125,'Advertis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(126,'Advertis Edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(127,'Affilates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(128,'Affiliate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(129,'Affiliate Comission Percentage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(130,'Affiliate Link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(131,'Affiliate Minimum Withdrawal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(132,'Affiliate Requests',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(133,'Affiliate Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(134,'Affiliate System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(135,'Affiliates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(136,'Affiliation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(137,'Afghanistan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(138,'Afrikaans (South Africa)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(139,'After Saving Setting, Click Here to Test Your Api Keys',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(140,'After Saving Setting, Click Here to Test Your api key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(141,'Aggressive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(142,'Albania',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(143,'Algeria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(144,'All',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(145,'All Locations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(146,'All Purchases',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(147,'All rights reserved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(148,'All-in-one platform to generate AI content and start making money in minutes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(149,'Alloy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(150,'Already Subscribed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(151,'Also please note that Chat models works with ChatGPT and GPT-4 models. So if you choose below it will automatically use ChatGPT.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(152,'Also, please do not set both identifiers identical. For instance, you can use _ent and _pac at the end of ids.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(153,'Alt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(154,'Amazon Pay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(155,'Ambient',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(156,'American Samoa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(157,'Amount',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(158,'An environment name is required.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(159,'An error occurred while clearing the cache.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(160,'An error occurred while clearing the log.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(161,'Analog Film',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(162,'Analytics',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(163,'Andorra',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(164,'Android 12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(165,'Angola',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(166,'Angry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(167,'Anguilla',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(168,'Angular JS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(169,'Anime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(170,'Annual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(171,'Annual Billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(172,'Answer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(173,'Antarctica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(174,'Antigua and Barbuda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(175,'Api Key / Client Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(176,'Api Secret / Secret Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(177,'App Debug',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(178,'App Environment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(179,'App ID / App Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(180,'App Log Level',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(181,'App Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(182,'App URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(183,'Application',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(184,'Application Console Output:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(185,'Application has been successfully installed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(186,'Application\'s database has been successfully updated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(187,'Apply',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(188,'Apply daily limit on image generation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(189,'Apply daily limit on voice generation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(190,'Arabic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(191,'Archived Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(192,'Are you sure you want to change default language?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(193,'Are you sure you want to clear the cache?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(194,'Are you sure you want to clear the log?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(195,'Are you sure you want to create a new language?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(196,'Are you sure? This is permanent and will delete all documents related to user.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(197,'Are you sure? This is permanent.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(198,'Argentina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(199,'Armenia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(200,'Art Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(201,'Article Wizard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(202,'Aruba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(203,'Assign the role to the AI. You are a Finance Expert.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(204,'Australia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(205,'Austria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(206,'Author',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(207,'Auto Generate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(208,'Automated Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(209,'Available Languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(210,'Avatar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(211,'Avatar will shown in chat page.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(212,'Average',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(213,'Azerbaijan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(214,'Azerbaijani (Azerbaijan)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(215,'Babbage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(216,'Back',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(217,'Back to All Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(218,'Back to Clients',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(219,'Back to Home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(220,'Back to How it Works',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(221,'Back to Manage Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(222,'Back to Payment Gateways',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(223,'Back to Testimonials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(224,'Back to User Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(225,'Back to dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(226,'Back to site health',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(227,'Backend',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(228,'Backlight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(229,'Bahamas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(230,'Bahrain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(231,'Balance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(232,'Ballpoint Pen Drawing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(233,'Bangladesh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(234,'Bank Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(235,'Bank of America - 2382372329 3843749 2372379',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(236,'Barbados',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(237,'Base URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(238,'Basque',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(239,'Basque (Spain)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(240,'Bauhaus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(241,'Belarus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(242,'Belgium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(243,'Belize',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(244,'Benin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(245,'Bermuda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(246,'Beware of that order is important. First set mode then save gateway settings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(247,'Bhutan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(248,'Billing Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(249,'Blog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(250,'Blog Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(251,'Blog Archive Options',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(252,'Blog Button Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(253,'Blog Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(254,'Blog Post',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(255,'Blog Post Length',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(256,'Blog Posts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(257,'Blog Posts Per Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(258,'Blog Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(259,'Blog Subtitle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(260,'Blog Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(261,'Blue Hour',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(262,'Bold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(263,'Bolivia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(264,'Boring',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(265,'Bosnia and Herzegovina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(266,'Botswana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(267,'Bottom Line Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(268,'Bouvet Island',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(269,'Brazil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(270,'Bright',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(271,'British Indian Ocean Territory',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(272,'Broadcast Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(273,'Broadcasting, Caching, Session, &amp; Queue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(274,'Browse all features or ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(275,'Browse all features or visit the product page.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(276,'Browse prompt library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(277,'Brunei Darussalam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(278,'Built-in Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(279,'Bulgaria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(280,'Bulgarian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(281,'Bulgarian (Bulgaria)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(282,'Burkina Faso',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(283,'Burundi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(284,'Button',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(285,'Buy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(286,'Buy on Envato',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(287,'By proceeding, you acknowledge and accept our',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(288,'By purchase you confirm our',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(289,'COMPANY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(290,'Cache Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(291,'Calm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(292,'Cambodia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(293,'Cameroon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(294,'Can AI copywriting be customized to my brand and audience?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(295,'Can Create AI Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(296,'Canada',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(297,'Cancel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(298,'Cancel My Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(299,'Cancel Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(300,'Cancel all old subscriptions. Acquired amounts do not reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(301,'Cannot access premium plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(302,'Can’t see your favorite platform? Let us know by submitting a ticket.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(303,'Cape Verde',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(304,'Card Holder Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(305,'Card Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(306,'Cartoon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(307,'Casual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(308,'Catalan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(309,'Catalan (Spain) ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(310,'Categories of the post. Useful for filtering in the blog posts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(311,'Categories of the template. Useful for filtering in the templates list.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(312,'Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(313,'Category Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(314,'Category name for Custom AI Writers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(315,'Cayman Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(316,'Central African Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(317,'Chad',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(318,'Change Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(319,'Change Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(320,'Change-log',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(321,'Changelog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(322,'Chat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(323,'Chat Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(324,'Chat Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(325,'Chat PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(326,'Chat Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(327,'Chat models take a list of messages as input and return a model-generated message as output. Although the chat format is designed to make multi-turn conversations easy, it’s just as useful for single-turn tasks without any conversation. Add your custom JSON data.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(328,'Chat, Solve, Repeat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(329,'ChatGPT (Most Expensive & Fastest & Most Capable)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(330,'ChatGPT, AI Writer, AI Image Generator, AI Chat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(331,'ChatGPT-4 (Most Expensive & Fastest & Most Capable)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(332,'ChatGTP (3.5-turbo-16k)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(333,'Chatbot Training',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(334,'Check Permissions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(335,'Check Requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(336,'Check all membership plans for this gateway.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(337,'Check all subscriptions for this plan.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(338,'Check documentations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(339,'Check our documentation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(340,'Check the documentation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(341,'Cheerful',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(342,'Chile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(343,'Chilling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(344,'China',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(345,'Chinese (Hong Kong)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(346,'Chinese (Mandarin)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(347,'Chinese (Simplified)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(348,'Chinese (Traditional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(349,'Choose a Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(350,'Choose a pre-defined prompt or create your own template.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(351,'Choose pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(352,'Choose package type for which plans accessible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(353,'Choose plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(354,'Choose your enviroment:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(355,'Christmas Island',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(356,'Cinematic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(357,'City',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(358,'Cityscape at sunset in retro vector illustration',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(359,'Classic Environment Editor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(360,'Classic Text Editor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(361,'Clay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(362,'Clean Up Cache',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(363,'Clear Log File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(364,'Click here to exit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(365,'Click on each item to get the dynamic data from users input.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(366,'Client',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(367,'Clients',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(368,'Clients Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(369,'Clip Guidance Preset',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(370,'Close',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(371,'Cocos (Keeling) Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(372,'Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(373,'Code before </body>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(374,'Code before </body> (Dashboard)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(375,'Code before </head>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(376,'Code before </head> (Dashboard)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(377,'Coding',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(378,'Cold',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(379,'Colombia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(380,'Color',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(381,'Color Code (Please enter like code. For example: #FFFFFF)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(382,'Color Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(383,'Colorful',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(384,'Comic Book',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(385,'Coming soon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(386,'Comission Rate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(387,'Comoros',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(388,'Configure Environment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(389,'Confirm Your New Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(390,'Confirm Your Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(391,'Confirmation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(392,'Congo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(393,'Congo, The Democratic Republic of The',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(394,'Connect to Liquid Portal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(395,'Contact Us',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(396,'Contemporary',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(397,'Content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(398,'Content copied to clipboard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(399,'Continue to Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(400,'Continue with',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(401,'Cook Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(402,'Copied',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(403,'Copy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:23','2024-05-11 14:14:23',NULL,NULL),
(404,'Copy to clipboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(405,'Copyright',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(406,'Copywriters',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(407,'Cost',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(408,'Cost-effective solution to generate text in seconds and increasing your conversion rate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(409,'Costa Rica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(410,'Cote D\'ivoire',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(411,'Could not connect to the database.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(412,'Country',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(413,'Coupon Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(414,'Coupon Users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(415,'Coupons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(416,'Create',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(417,'Create New Client',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(418,'Create New Step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(419,'Create New Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(420,'Create New Support Request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(421,'Create New Testimonial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(422,'Create New Token Pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(423,'Create New User',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(424,'Create Workbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(425,'Create example input',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(426,'Create eye-catching images and graphics.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(427,'Create high-quality newsletters that resonate with your audience.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(428,'Create your own template or use pre-made templates and examples for various content types and industries to help you get started quickly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(429,'Created At',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(430,'Created By',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(431,'Created Inputs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(432,'Creativity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(433,'Credit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(434,'Credits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(435,'Critical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(436,'Croatia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(437,'Croatian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(438,'Croatian (Croatia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(439,'Crop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(440,'Cuba',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(441,'Cubism',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(442,'Curie',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(443,'Currency Locale',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(444,'Current plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(445,'Custom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(446,'Custom CSS URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(447,'Custom JS URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(448,'Custom Landing Page URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(449,'Custom Prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(450,'Custom Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(451,'Custom Templates Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(452,'Custom Templates Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(453,'Custom Templates Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(454,'Custom Templates Subtitle One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(455,'Custom Templates Subtitle Two',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(456,'Custom Templates Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(457,'Custom Templates.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(458,'Customer could not set',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(459,'Cyberpunk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(460,'Cyprus',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(461,'Czech',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(462,'Czech (Czech Republic)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(463,'Czech Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(464,'DALL-E-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(465,'DALL-E-3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(466,'DDIM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(467,'DDPM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(468,'Daily Image Limit Count',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(469,'Daily Voice Limit Count',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(470,'Dall-E-2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(471,'Dall-E-3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(472,'Danish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(473,'Danish (Denmark)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(474,'Dark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(475,'Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(476,'Dashboard Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(477,'Dashboard Logo (Dark)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(478,'Dashboard Logo Collapsed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(479,'Dashboard Logo Collapsed (Dark)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(480,'Database',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(481,'Database Connection',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(482,'Database Host',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(483,'Database Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(484,'Database Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(485,'Database Port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(486,'Database Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(487,'Database User Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(488,'Date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(489,'Davinci (Expensive &amp; Capable)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(490,'Davinci (Most Expensive &amp; Most Capable)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(491,'Days Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(492,'Days of free trial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(493,'Days.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(494,'Deactivate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(495,'Debug mode is enabled. If this is your production site, it is recommended to disable it.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(496,'Default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(497,'Default Country',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(498,'Default Creativity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(499,'Default Currency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(500,'Default Dall-E Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(501,'Default Logos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(502,'Default Openai Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(503,'Default Openai Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(504,'Default Storage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(505,'Default Stream Server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(506,'Default Tone of Voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(507,'Default stablediffusion Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(508,'Define a human name for the chatbot to give it more personality.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(509,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(510,'Delete all files',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(511,'Delicious pizza with all the toppings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(512,'Denmark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(513,'Deprecated inputs are editable now.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(514,'Describe what this chatbot can help with. It shows when starting a conversation and the chatbot introducing itself.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(515,'Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(516,'Designer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(517,'Designers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(518,'Developers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(519,'Development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(520,'Digital Agencies',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(521,'Digital Art',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(522,'Digital Marketers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(523,'Disable Login Without Confirmation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(524,'Discount',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(525,'Discount (%)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(526,'Discover',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(527,'Discover MagicAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(528,'Display Bottom Line',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(529,'Djibouti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(530,'Do you want to delete all files inside the folder?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(531,'Do you want to delete this client? This is irreversible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(532,'Do you want to delete this step? This is irreversible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(533,'Do you want to delete this testimonial? This is irreversible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(534,'Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(535,'Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(536,'Dominica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(537,'Dominican Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(538,'Don\'t have account yet?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(539,'Done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(540,'Download',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(541,'Download for iOS Devices',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(542,'Download html code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(543,'Draft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(544,'Dramatic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(545,'Drop your image here or browse',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(546,'Dutch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(547,'Dutch (Belgium)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(548,'Dutch (Netherlands)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(549,'ENVIRONMENT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(550,'Earnings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(551,'Easy Export',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(552,'Easy Installation and Setup Wizard.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(553,'Easy Integration.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(554,'Easy to <span>use.</span>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(555,'Echo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(556,'Economic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(557,'Ecuador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(558,'Edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(559,'Edit Client',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(560,'Edit Coupon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(561,'Edit Google Adsense Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(562,'Edit Step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(563,'Edit Strings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(564,'Edit Testimonial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(565,'Edit default strings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(566,'Edit your generations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(567,'Editing Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(568,'Editing Main Strings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(569,'Egypt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(570,'El Salvador',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(571,'ElevenLabs API Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(572,'Elevenlabs TTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(573,'Email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(574,'Email Address',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(575,'Email Subject',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(576,'Email Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(577,'Email address',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(578,'Enable GDPR Alert Box',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(579,'Enable Gateway',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(580,'Enable Privacy Policy and Terms',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(581,'Enable Stripe for payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(582,'Enable dark mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(583,'Enable light mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(584,'Engaging and shareable social media posts, including captions and hashtags.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(585,'English',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(586,'English (Australia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(587,'English (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(588,'English (UK)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(589,'English (US)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(590,'English (USA)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(591,'Enhance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(592,'Enter -1 for unlimited usage.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(593,'Enter Description Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(594,'Enter Name Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(595,'Enter your email address',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(596,'Enter your environment...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(597,'Enterpreneurs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(598,'Enterprise',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(599,'Entrepreneurs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(600,'Environment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(601,'Environment Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(602,'Equatorial Guinea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(603,'Eritrea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(604,'Error Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(605,'Error deleting folder:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(606,'Error updating folder name:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(607,'Estonia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(608,'Estonian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(609,'Estonian (Estonia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(610,'Ethiopia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(611,'Excited',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(612,'Explain Your Image(Optional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(613,'Explain an Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(614,'Explain your idea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(615,'Explore MagicAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(616,'Export generated content as plain text, PDF, Word or HTML easily.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(617,'Export generated copy as plain  text, PDF, Word, CSV or HTML.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(618,'Extensions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(619,'F.A.Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(620,'FAQ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(621,'FAQ Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(622,'FAQ Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(623,'FAQ Subtitle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(624,'FAQ Text One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(625,'FAQ Text Two',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(626,'FAQ Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(627,'FAST BLUE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(628,'FAST GREEN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(629,'FREE UPDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(630,'Fable',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(631,'Facebook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(632,'Failed to calculate. Your server configuration is preventing this feature from being calculated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(633,'Falkland Islands (Malvinas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(634,'Falkland Islands (Malvinas)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(635,'False',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(636,'Fantasy Art',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(637,'Faroe Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(638,'Fast',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(639,'Favorite Generator List',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(640,'Favorite Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(641,'Favorites',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(642,'Favourites',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(643,'Featured Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(644,'Features',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(645,'Features (Comma Seperated)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(646,'Features Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(647,'Features Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(648,'Features Section Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(649,'Features Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(650,'Feedback',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(651,'Female',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(652,'Feminine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(653,'Fiji',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(654,'File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(655,'Filipino (Philippines)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(656,'Fill an example',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(657,'Filter strings...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(658,'Final .env File:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(659,'Finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(660,'Finished',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(661,'Finland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(662,'Finnish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(663,'Finnish (Finland)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(664,'Firefox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(665,'Fix. Improve. Generate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(666,'Flexible Pricing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(667,'Flexible and affording plans tailored to your needs. Save up to %20 for a limited time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(668,'Floating Button',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(669,'Floating Button Bold Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(670,'Floating Button Small Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(671,'Floating Button URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(672,'Foggy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(673,'Follow Us on Twitter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(674,'Footer Button Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(675,'Footer Button URL (Please enter full url)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(676,'Footer Copyright',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(677,'Footer Header',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(678,'Footer Header Small Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(679,'Footer Social Media Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(680,'Footer Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(681,'For Who Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(682,'For Who Section Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(683,'Forgot Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(684,'Forgot Password?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(685,'Form Wizard Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(686,'France',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(687,'Free Usage Upon Registration (words,images)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(688,'Free support, Free updates, Free plugins.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(689,'French',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(690,'French (Canada)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(691,'French (France)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(692,'French Guiana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(693,'French Polynesia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(694,'French Southern Territories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(695,'From industry news and trends to product reviews and how-to guides.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(696,'From simple conversations and dialogue to more complex movie scripts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(697,'From their first purchase, you will begin <strong>earning recurring commissions</strong>.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(698,'Frontend',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(699,'Frontend Section Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(700,'Frontend Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(701,'Full API Integration',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(702,'Full Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(703,'Funny',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(704,'Future of AI Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(705,'GCS File (JSON) path',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(706,'GCS Project Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(707,'GDPR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(708,'GDPR Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(709,'GDPR alert text. You can use HTML tags.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(710,'GENERAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(711,'GPT-4 Turbo (Updated Knowleddge cutoff of April 2023, 128k)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(712,'GPT-4 Turbo with vision (Understand images, in addition to all other GPT-4 Turbo capabilites)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(713,'Gabon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(714,'Galician',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(715,'Galician (Spain)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(716,'Gambia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(717,'Gateway',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(718,'Gateway Mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(719,'Gateway is set to use sandbox. Please set mode to development!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(720,'General',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(721,'General Inquiry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(722,'General Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(723,'Generate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(724,'Generate <strong>text, image, code, chat</strong> and even more with MagicAI.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(725,'Generate Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(726,'Generate JSON File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(727,'Generate Keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(728,'Generate Outline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(729,'Generate Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(730,'Generate Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(731,'Generate Workbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(732,'Generate example prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(733,'Generate high quality code in no time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(734,'Generate high quality code in seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(735,'Generate high qualtity images for a wide range of applications, including web design, advertising, and social media. Whether you’re looking to create eye-catching graphics for your business or simply want to experiment with different design concepts, MagicAI is the perfect solution.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(736,'Generate new price definitions in your gateway accounts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(737,'Generate new price definitions in your new gateway account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(738,'Generate new product definitions in your gateway accounts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(739,'Generate new product definitions in your new gateway account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(740,'Generate new support request. We will answer as soon as possible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(741,'Generate the Article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(742,'Generate, edit, export.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(743,'Generated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(744,'Generated Content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(745,'Generated Successfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(746,'Generating is aborted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(747,'Generating the article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(748,'Generation Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(749,'Generation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(750,'Generators Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(751,'Generators List',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(752,'Generators List Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(753,'Generators Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(754,'Georgia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(755,'German',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(756,'German (Germany)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(757,'Germany',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(758,'Get Serper Api Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(759,'Get instant answers to your questions, no matter the topic. Whether you’re looking to book a reservation, get product recommendations, or just chat about the weather, MagicAI is always ready and willing to help. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(760,'Ghana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(761,'Gibraltar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(762,'GitHub Repo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(763,'Github',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(764,'Glitchcore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(765,'Global Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(766,'Go',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(767,'Go to',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(768,'Go to dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(769,'Golden Hour',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(770,'Good',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(771,'Google',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(772,'Google Adsense',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(773,'Google Adsense Edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(774,'Google Adsense List',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(775,'Google Analytics Tracking ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(776,'Google Analytics Tracking ID (UA-1xxxxx)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(777,'Google TTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(778,'Greece',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(779,'Greek',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(780,'Greek (Greece)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(781,'Greenland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(782,'Grenada',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(783,'Group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(784,'Grumpy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(785,'Guadeloupe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(786,'Guam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(787,'Guatemala',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(788,'Guernsey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(789,'Guided <code>.env</code> Wizard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(790,'Guinea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(791,'Guinea-bissau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(792,'Guyana',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(793,'Haiti',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(794,'Hard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(795,'Have a question?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(796,'Have an account?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(797,'Having trouble?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(798,'Header Banner Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(799,'Header Banner Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(800,'Heard Island and Mcdonald Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(801,'Hebrew',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(802,'Hebrew (Israel)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(803,'Hello',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(804,'Help Center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(805,'Helps With',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(806,'Hero Button',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(807,'Hero Button Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(808,'Hero Button URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(809,'Hero Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(810,'Hero Scroll Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(811,'Hero Subtitle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(812,'Hero Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(813,'Hero Title Text Rotator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(814,'Hi! I am',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(815,'Hide Alert',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(816,'High',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(817,'Hindi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(818,'Hindi (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(819,'Holy See (Vatican City State',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(820,'Holy See (Vatican City State)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(821,'Home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(822,'Honduras',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(823,'Hong Kong',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(824,'Hours Saved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(825,'How It Works Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(826,'How It Works Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(827,'How It Works Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(828,'How do you handle my data?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(829,'How does it generate responses?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(830,'How it Works',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(831,'How it Works Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(832,'Human Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(833,'Hungarian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(834,'Hungarian (Hungary)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(835,'Hungary',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(836,'Iceland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(837,'Icelandic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(838,'Icelandic (Iceland)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(839,'Icon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(840,'Identity Number',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(841,'If error persist, please contact with us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(842,'If this is an error it will be logged and our technic team will resolve it shortly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(843,'If this is enabled users cannot login unless they confirm their emails.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(844,'If you do not set the required minimum value, you may get possible errors during the update.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(845,'If you have previously created or edited a language file (JSON), the Generate process will overwrite those files.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(846,'If you will leave empty: using the post title for the SEO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(847,'If you will use SVG, you do not need the Retina (2x) option.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(848,'Illustration of a cat sitting on a couch in a living room with a coffee mug in its hand.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(849,'Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(850,'Image (optional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(851,'Image Count',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(852,'Image Credits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(853,'Image Diffusion Samples',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(854,'Image Resolution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(855,'Image Storage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(856,'Image Storage Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(857,'Image Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(858,'Image Subtitl',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(859,'Image Subtitle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(860,'Image Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(861,'Image Tokens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(862,'Image resolution',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(863,'Image-to-Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(864,'Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(865,'Images Generated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(866,'Images Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(867,'Imagine, Genearate, Publish.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(868,'Important:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(869,'Impressionism',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(870,'Improvement Idea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(871,'In Characters',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(872,'In RevenueCat dashboard, create only one instance of offerings and set it as default. Mobile app checks for default offering and searches given package and entity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(873,'In Words. OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length is capped at 1500 words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(874,'In Words. OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length is capped at 2000 words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(875,'In Words. OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(876,'India',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(877,'Indonesia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(878,'Indonesian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(879,'Indonesian (Indonesia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(880,'Info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(881,'Input Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(882,'Input Field',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(883,'Input Groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(884,'Input Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(885,'Input fields for short texts and Textarea fields are good for long text.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(886,'Input is empty!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(887,'Instagram',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(888,'Install',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(889,'Install Updates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(890,'Installation Completed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(891,'Installation Finished',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(892,'Installation Log Entry:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(893,'Intelligent Writing Assistant.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(894,'Intuitive / Humanlike Chatbot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(895,'Invalid coupon code. Please try again',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(896,'Invite',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(897,'Invite your friend and get',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(898,'Invite your friends and earn lifelong recurring commissions from every purchase they make',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(899,'Invoice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(900,'Invoice Address',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(901,'Invoice City',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(902,'Invoice Country',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(903,'Invoice Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(904,'Invoice Phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(905,'Invoice Postal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(906,'Invoice Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(907,'Invoice State',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(908,'Invoice VAT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(909,'Invoice Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(910,'Iran, Islamic Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(911,'Iraq',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(912,'Ireland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(913,'Is AI copywriting more cost-effective than hiring human writers?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(914,'Isle of Man',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(915,'Isometric',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(916,'Israel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(917,'It should be minimum',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(918,'Italian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(919,'Italian (Italy)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(920,'Italy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(921,'Items:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(922,'Jamaica',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(923,'Japan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(924,'Japanese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(925,'Japanese (Japan)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(926,'Jersey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(927,'Job Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(928,'Join',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(929,'Join Hub',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(930,'Join Magic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(931,'Join hub',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(932,'Join our community',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(933,'Join the Community',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(934,'Jordan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(935,'Jump to:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(936,'Just choose your topic, and watch AI whip up SEO-optimized blog content in a matter of seconds!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(937,'K_DPMPP_2M',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(938,'K_DPM_2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(939,'K_DPM_2_ANCESTRAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(940,'K_EULER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(941,'K_EULER_ANCESTRAL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(942,'K_HEUN',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(943,'K_LMS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(944,'Kannada (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(945,'Kazakh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(946,'Kazakh (Kazakhstan)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(947,'Kazakhstan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(948,'Keep your site up-to-date with a single click.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(949,'Kenya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(950,'Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(951,'Keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(952,'Kiribati',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(953,'Know that all defined products and prices will reset.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(954,'Korea, Democratic People\'s Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(955,'Korea, Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(956,'Korean',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(957,'Korean (South Korea)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(958,'Kuwait',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(959,'Kyrgyzstan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(960,'LOGS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(961,'Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(962,'Languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(963,'Lao People\'s Democratic Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(964,'Laravel Installer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(965,'Laravel Installer successfully INSTALLED on ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(966,'Laravel Installer successfully UPDATED on ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(967,'Laravel Version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(968,'Last Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(969,'Last Updated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(970,'Latest Transactions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(971,'Latest news and updates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(972,'Latvia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(973,'Latvian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(974,'Latvian (Latvia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(975,'Learn more',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(976,'Lebanon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(977,'Lesotho',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(978,'Let’s start.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(979,'Liberia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(980,'Libyan Arab Jamahiriya',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(981,'License',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(982,'Liechtenstein',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(983,'Lightning Style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(984,'Limit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(985,'Limited Offer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(986,'Line Art',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(987,'Links',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(988,'Lithuania',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(989,'Lithuanian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(990,'Lithuanian (Lithuania)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(991,'Local',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(992,'Local Storage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(993,'Login Successful, Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(994,'Login with Facebook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(995,'Login with Github',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(996,'Login with Google',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(997,'Login with Twitter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(998,'Logo Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(999,'Logout',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1000,'Logs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1001,'Low',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1002,'Low Poly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1003,'Luxembourg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1004,'Macao',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1005,'Macedonia, The Former Yugoslav Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1006,'Madagascar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1007,'Magento',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1008,'Magic AI helps you write code faster, efficiently and error-free.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1009,'Magic Tools.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1010,'MagicAI has all the tools you need to create and manage your SaaS platform.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1011,'MagicAI is designed to help you generate high-quality content instantly, without breaking a sweat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1012,'MagicAI is up to date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1013,'Mail',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1014,'Mail Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1015,'Mail Encryption',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1016,'Mail Host',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1017,'Mail Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1018,'Mail Port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1019,'Mail SMTP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1020,'Mail Username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1021,'MailChimp',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1022,'Maintenance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1023,'Malawi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1024,'Malay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1025,'Malay (Malaysia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1026,'Malayalam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1027,'Malayalam (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1028,'Malaysia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1029,'Maldives',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1030,'Male',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1031,'Mali',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1032,'Malta',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1033,'Manage AI Writer Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1034,'Manage Blog Posts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1035,'Manage Built-in Prompts and Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1036,'Manage Chat Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1037,'Manage Chat Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1038,'Manage Clients',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1039,'Manage Coupons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:24','2024-05-11 14:14:24',NULL,NULL),
(1040,'Manage Custom Pages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1041,'Manage Custom Prompts and Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1042,'Manage Email Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1043,'Manage How it Works',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1044,'Manage How it Works Steps',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1045,'Manage Languages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1046,'Manage Mobile Subscription and Token Packs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1047,'Manage Payment Gateways',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1048,'Manage Subscription and Pay to Go Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1049,'Manage Subscription and Token Packs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1050,'Manage Testimonials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1051,'Manage the Features',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1052,'Manage the features you want to activate for users.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1053,'Mandarin Chinese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1054,'Mandarin Chinese (T)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1055,'Manual Generate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1056,'Marathi (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1057,'Marketers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1058,'Marshall Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1059,'Martinique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1060,'Masculine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1061,'Mauritania',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1062,'Mauritius',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1063,'Max Input Vars',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1064,'Max Tokens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1065,'Maximum Input Length',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1066,'Maximum Length',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1067,'Maximum Output Length',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1068,'Maximum Title length',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1069,'Maximum character length of text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1070,'Mayotte',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1071,'Medium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1072,'Meet your next virtual assistant.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1073,'Membership Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1074,'Memphis style painting of a flower vase on a kitchen table with a window in the backdrop.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1075,'Menu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1076,'Menu Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1077,'Menu Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1078,'Marketplace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1079,'Mermory Limit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1080,'Message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1081,'Meta Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1082,'Meta Keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1083,'Meta Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1084,'Method',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1085,'Mexico',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1086,'Micronesia, Federated States of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1087,'Migration &amp; Seed Console Output:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1088,'Minimalism',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1089,'Minimum Withdrawal Amount is',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1090,'Mobile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1091,'Mobile Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1092,'Mobile Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1093,'Mobile Subscriptions and Packs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1094,'Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1095,'Modeling Compound',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1096,'Modern',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1097,'Moldova, Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1098,'Monaco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1099,'Mongolia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1100,'Montenegro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1101,'Monthly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1102,'Monthly Billing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1103,'Montserrat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1104,'Mood',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1105,'More Info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1106,'Morocco',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1107,'Move',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1108,'Move File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1109,'Mozambique',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1110,'Multi-Lingual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1111,'Multi-Prompting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1112,'Multilingual',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1113,'Must be between 0 and 1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1114,'Must be between 0 and 1 (1 Most Creative, 0.1 Not creative)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1115,'My Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1116,'My Orders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1117,'Myanmar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1118,'Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1119,'Name On Card',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1120,'Namibia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1121,'Natural',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1122,'Nauru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1123,'Need help?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1124,'Negative Prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1125,'Negative Prompts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1126,'Neon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1127,'Neon Punk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1128,'Nepal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1129,'Netherlands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1130,'Netherlands Antilles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1131,'Neutral',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1132,'New',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1133,'New Caledonia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1134,'New Conversation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1135,'New File Name:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1136,'New Folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1137,'New Folder Name:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1138,'New Keyword',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1139,'New Outline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1140,'New Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1141,'New Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1142,'New Zealand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1143,'New users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1144,'Newsletter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1145,'Next',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1146,'Next Article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1147,'Next Step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1148,'Nicaragua',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1149,'Niger',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1150,'Nigeria',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1151,'Niue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1152,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1153,'No Active Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1154,'No Prompts, Please input new one',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1155,'No Tokens Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1156,'No activity logged yet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1157,'No entries created yet.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1158,'No logged any data.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1159,'No new notifications',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1160,'No results.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1161,'None',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1162,'Norfolk Island',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1163,'Normal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1164,'Northern Mariana Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1165,'Norway',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1166,'Norwegian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1167,'Norwegian (Norway)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1168,'Not Needed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1169,'Not Set',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1170,'Note that we do not store old keys. So every save action is new.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1171,'Note that, we do not collect or store any personal data. All information above are sent to iyzico directly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1172,'Nova',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1173,'Number of Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1174,'Number of Keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1175,'Number of Outlines',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1176,'Number of Results',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1177,'Number of Subtitles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1178,'Number of Titles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1179,'Number of images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1180,'Number of keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1181,'Number of outlines',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1182,'Number of results',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1183,'Number of titles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1184,'ON to display (0) image count in plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1185,'ON to display (0) word count in plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1186,'ON to display image count in plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1187,'ON to display word count in plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1188,'Old Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1189,'Oman',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1190,'One Click Update',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1191,'One time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1192,'Only accepts javascript code wrapped with <script> tags and HTML markup that is valid inside the </body> tag.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1193,'Only accepts javascript code wrapped with <script> tags and HTML markup that is valid inside the </head> tag.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1194,'Onyx',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1195,'Oops… You just found an error page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1196,'Open In New Tab',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1197,'Open Source',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1198,'OpenAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1199,'OpenAI Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1200,'OpenAI TTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1201,'OpenAi API Secret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1202,'Openai Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1203,'Operating System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1204,'Optimize your content for search engines and reach more customers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1205,'Options',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1206,'Order',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1207,'Order Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1208,'Orders',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1209,'Origami',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1210,'Other',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1211,'Our support team will get assistance from AI-powered suggestions, making it quicker than ever to handle support requests.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1212,'Outline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1213,'Outline Topic(Optional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1214,'Output',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1215,'Overview',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1216,'PAYMENTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1217,'PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1218,'PHP Version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1219,'PRO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1220,'Pace',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1221,'Package',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1222,'Package Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1223,'Page Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1224,'Page Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1225,'Pages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1226,'Pagination Navigation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1227,'Painting of a flower vase on a kitchen table with a window in the backdrop.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1228,'Pakistan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1229,'Palau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1230,'Palestinian Territory, Occupied',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1231,'Panama',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1232,'Papua New Guinea',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1233,'Paraguay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1234,'Passive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1235,'Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1236,'Password confirmation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1237,'Password reset link sent succesfully. Please also check your spam folder.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1238,'Password succesfully changed.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1239,'Paste the svg code you get from the Tabler Icons or any other icon sets',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1240,'Pause',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1241,'Pay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1242,'Pay once, own forever.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1243,'Pay with 2checkout',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1244,'PayPal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1245,'Payment Failed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1246,'Payment Gateways',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1247,'Payment ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1248,'Payment Stripe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1249,'Payment Stripe Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1250,'Payment Success',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1251,'Payment is incomplete. Please try again',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1252,'Payments secured via Stripe.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1253,'Paypal Save cancelled! Please set mode to development!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1254,'Pencil Drawing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1255,'Per month',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1256,'Permissions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1257,'Personal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1258,'Personality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1259,'Peru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1260,'Philippines',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1261,'Phone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1262,'Pick a category for the template.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1263,'Pick a color for for the icon container shape. Color is in HEX format.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1264,'Pick a name for the template.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1265,'Pitcairn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1266,'Pixel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1267,'Pixel Art',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1268,'Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1269,'Plan / Price ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1270,'Plan Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1271,'Plan Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1272,'Play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1273,'Please Wait...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1274,'Please ask system administrator to add API key to the system.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1275,'Please connect to',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1276,'Please do not enter / at the end of the url. For Example; https://liquid-themes.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1277,'Please enable Stripe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1278,'Please enable a payment gateway',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1279,'Please enable at least one gateway!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1280,'Please enable this to activate turbo writer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1281,'Please ensure that your OpenAI API key is fully functional and billing defined on your OpenAI account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1282,'Please ensure that your Serper api key is fully functional and billing defined on your Serper account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1283,'Please ensure that your Unsplash api key is fully functional and billing defined on your Unsplash account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1284,'Please ensure that your stable diffusion API key is fully functional and billing defined on your stable diffusion account.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1285,'Please enter Entitlement Identifier',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1286,'Please enter Package Identifier',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1287,'Please enter Product Identifier',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1288,'Please enter a coupon code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1289,'Please enter subject of the support request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1290,'Please enter your billing details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1291,'Please enter your email address.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1292,'Please enter your message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1293,'Please enter your password.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1294,'Please fill all fields.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1295,'Please fill the stripe settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1296,'Please leave empty if you don\'t want to change your password.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1297,'Please leave empty if you don’t want to change your password.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1298,'Please note GPT-4 is not working with every api_key. You have to have an api key which can work with GPT-4.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1299,'Please provide full URL with http:// or https://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1300,'Please save payment ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1301,'Please save reference ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1302,'Please save setting with the mode you want.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1303,'Please select how you want to configure the apps <code>.env</code> file.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1304,'Please try with another word.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1305,'Please upload your file to the /public_html/storage folder within your project and provide the file name in the space provided.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1306,'Please use comma seperated like; Generator,Chatbot,Assistant',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1307,'Please wait...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1308,'Plugins',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1309,'Pointillism',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1310,'Poland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1311,'Polish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1312,'Polish (Poland)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1313,'Pop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1314,'Popular pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1315,'Popular plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1316,'Popularity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1317,'Portugal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1318,'Portuguese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1319,'Portuguese (Brazil)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1320,'Portuguese (Portugal)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1321,'Post Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1322,'Post Max Size',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1323,'Post Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1324,'Post Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1325,'Powered by ChatGPT 4, Babbage, Ada and Dall-E.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1326,'Powered by Dall-E.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1327,'Powered by OpenAI.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1328,'Pre-Paid Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1329,'PreHeader Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1330,'PreHeader Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1331,'PreHeader Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1332,'Premium',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1333,'Prepaid Plan Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1334,'Prepaid Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1335,'Prepare Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1336,'Prev',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1337,'Prevent unauthorized access by  adding an extra layer of protection.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1338,'Preview',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1339,'Previous',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1340,'Previus Article',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1341,'Price',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1342,'Price ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1343,'Pricing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1344,'Pricing Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1345,'Pricing Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1346,'Pricing Save Percent',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1347,'Pricing Save Percent\'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1348,'Pricing Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1349,'Pricing Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1350,'Print Invoice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1351,'Priority',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1352,'Privacy Policy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1353,'Privacy Policy and Terms',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1354,'Privacy Policy and Terms Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1355,'Product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1356,'Product Designers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1357,'Product ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1358,'Product ID and Price ID of all membership plans are generated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1359,'Product ID is not set!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1360,'Product ID is not set! Please save Membership Plan again.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1361,'Production',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1362,'Professional',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1363,'Prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1364,'Prompt Library',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1365,'Prompts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1366,'Publish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1367,'Publish All JSON Files',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1368,'Publish All Json Files',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1369,'Published',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1370,'Puerto Rico',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1371,'Punjabi (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1372,'Pusher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1373,'Pusher App Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1374,'Pusher App Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1375,'Pusher App Secret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1376,'Qa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1377,'Qatar',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1378,'Qnt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1379,'Quality of Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1380,'Question',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1381,'Queue Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1382,'RC Apple Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1383,'RC Entitlement Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1384,'RC Google Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1385,'RC Package Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1386,'Read More',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1387,'Realistic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1388,'Recently Launched',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1389,'Record audio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1390,'Redis Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1391,'Redis Host',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1392,'Redis Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1393,'Redis Port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1394,'Redo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1395,'Reference ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1396,'Referral Program',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1397,'Regenerate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1398,'Register',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1399,'Registration Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1400,'Registration is currently unavailable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1401,'Regular',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1402,'Reinstall Language Files',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1403,'Remaining',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1404,'Remaining Credits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1405,'Remaining Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1406,'Remaining Words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1407,'Remember Your Password?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1408,'Remember me',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1409,'Remove',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1410,'Remove all products and prices defined before for old settings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1411,'Remove all webhooks defined before and create new webhook.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1412,'Renaissance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1413,'Rename',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1414,'Rename File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1415,'Rename Folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1416,'Reset Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1417,'Responsive Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1418,'Result',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1419,'Retina Logos (2x) - Optional',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1420,'Retro',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1421,'Reunion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1422,'Revenue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1423,'RevenueCat Apple Product Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1424,'RevenueCat Entitlement Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1425,'RevenueCat Google Product Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1426,'RevenueCat Package Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1427,'Role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1428,'Romania',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1429,'Romanian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1430,'Romanian (Romania)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1431,'Russian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1432,'Russian (Russia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1433,'Russian Federation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1434,'Rwanda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1435,'SEO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1436,'SEO Copywriting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1437,'SEO Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1438,'SEO Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1439,'SIMPLE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1440,'SLOW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1441,'SLOWER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1442,'SLOWEST',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1443,'SMTP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1444,'SMTP Encryption',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1445,'SMTP Host',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1446,'SMTP Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1447,'SMTP Port',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1448,'SMTP Sender Email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1449,'SMTP Sender Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1450,'SMTP Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1451,'SMTP Test',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1452,'SMTP Username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1453,'Saint Helena',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1454,'Saint Kitts and Nevis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1455,'Saint Lucia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1456,'Saint Pierre and Miquelon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1457,'Saint Vincent and The Grenadines',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1458,'Samoa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1459,'San Marino',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1460,'Sandbox',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1461,'Sao Tome and Principe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1462,'Sarcastic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1463,'Saudi Arabia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1464,'Save',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1465,'Save .env',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1466,'Save and Install',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1467,'Save changes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1468,'Save gateway settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1469,'Save your settings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1470,'Saved to',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1471,'Saved. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1472,'Say goodbye to writer’s block',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1473,'Say goodbye to writer’s block and get more done with our revolutionary tool.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1474,'Seamlessly generate and craft a diverse array of images without ever leaving your chat environment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1475,'Seamlessly upload any image you want to explore and get insightful conversations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1476,'Search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1477,'Search Result for',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1478,'Search for templates and documents...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1479,'Search in website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1480,'Search results',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1481,'Secretive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1482,'Securely process credit card or other electronic payment methods by using payment gateways.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1483,'Securely process credit card or other electronic payment methods.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1484,'Securely process credit card, debit card, or other methods.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1485,'See how it works',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1486,'Select',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1487,'Select All',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1488,'Select Default Language ↓',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1489,'Select Folder:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1490,'Select Input Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1491,'Select Keywords',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1492,'Select a Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1493,'Select a pre-defined template or create your own.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1494,'Select a voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1495,'Select speech language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1496,'Send',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1497,'Send Instructions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1498,'Send Request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1499,'Senegal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1500,'Seo Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1501,'Serbia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1502,'Serbian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1503,'Serbian (Cyrillic)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1504,'Serper API',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1505,'Serper API Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1506,'Serper API Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1507,'Server Details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1508,'Server Error. This error is logged and our technic team will resolve this issue in short time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1509,'Server Requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1510,'Session Driver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1511,'Set as Sent',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1512,'Set mode to Development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1513,'Set mode to Production',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1514,'Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1515,'Setup',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1516,'Setup Application',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1517,'Setup Database',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1518,'Seychelles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1519,'Share on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1520,'Shortened name of the template or human name. Maximum 3 letters is suggested.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1521,'Show',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1522,'Show More',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1523,'Show more',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1524,'Show on the Login Page',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1525,'Show password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1526,'Showing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1527,'Sierra Leone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1528,'Sign In',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1529,'Sign In Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1530,'Sign Up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1531,'Sign Up Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1532,'Sign in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1533,'Sign up',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1534,'Sign up and receive 20% bonus discount on checkout.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1535,'Simple Pricing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1536,'Simply input some basic information or keywords about your brand.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1537,'Simply upload a file (PDF, CSV, .doc or .docx) and extract key insights or summarize the entire document.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1538,'Singapore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1539,'Site Email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1540,'Site Favicon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1541,'Site Health',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1542,'Site Logo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1543,'Site Logo (Dark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1544,'Site Logo (Dark)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1545,'Site Logo Sticky',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1546,'Site Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1547,'Site URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1548,'Size (Optional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1549,'Skip this step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1550,'Slovak',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1551,'Slovak (Slovakia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1552,'Slovakia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1553,'Slovenia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1554,'Slovenian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1555,'Slovenian (Slovenia)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1556,'Slow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1557,'Slug',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1558,'So, how does it work?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1559,'Social Login',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1560,'Social Media',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1561,'Solomon Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1562,'Somalia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1563,'Some of the inputs were deprecated. Show them and edit.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1564,'Sort by:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1565,'South Africa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1566,'South Georgia and The South Sandwich Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1567,'Spain',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1568,'Spanish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1569,'Spanish (Mexico)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1570,'Spanish (Spain)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1571,'Spanish (US)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1572,'Speech speed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1573,'Speeches',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1574,'Sri Lanka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1575,'Stable Diffusion 1.6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1576,'Stable Diffusion 2.2.2 Beta',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1577,'Stable Diffusion Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1578,'Stable Diffusion XL 0.9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1579,'Stable Diffusion XL 1.0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1580,'StableDiffusion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1581,'StableDiffusion API Secret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1582,'StableDiffusion Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:25','2024-05-11 14:14:25',NULL,NULL),
(1583,'Stablediffusion default model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1584,'Start Making Money',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1585,'Start your free trial.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1586,'Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1587,'Steampunk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1588,'Step 1 | Server Requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1589,'Step 2 | Permissions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1590,'Step 3 | Environment Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1591,'Step 3 | Environment Settings | Classic Editor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1592,'Step 3 | Environment Settings | Guided Wizard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1593,'Sticker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1594,'Stop',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1595,'Stop recording',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1596,'Storage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1597,'String',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1598,'Strings saved successfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1599,'Stripe Api Key (Stripe Key)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1600,'Stripe Base URL (https://api.stripe.com)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1601,'Stripe Price Id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1602,'Stripe Secret Key (Stripe Secret)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1603,'Stripe Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1604,'Studio',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1605,'Subject',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1606,'Subscribe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1607,'Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1608,'Subscription Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1609,'Subscription Plan Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1610,'Subscription Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1611,'Subscription is ACTIVE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1612,'Subscription status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1613,'Subscriptions and Packs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1614,'Subtitle One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1615,'Subtitle Two',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1616,'Subtotal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1617,'Succesfull Withdrawal Requests',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1618,'Success',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1619,'Successfully Generated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1620,'Sudan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1621,'Summarize a book for Research',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1622,'Support',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1623,'Support Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1624,'Support Platform',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1625,'Support Priority',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1626,'Support Request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1627,'Support Requests',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1628,'Suriname',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1629,'Surname',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1630,'Svalbard and Jan Mayen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1631,'Swahili (Kenya)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1632,'Swaziland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1633,'Sweden',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1634,'Swedish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1635,'Swedish (Sweden)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1636,'Swift',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1637,'Switzerland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1638,'Syrian Arab Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1639,'TTS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1640,'TTS Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1641,'TTS-1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1642,'TTS-1-HD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1643,'Tag',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1644,'Tags:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1645,'Taiwan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1646,'Tajikistan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1647,'Take a backup before process!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1648,'Take me home',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1649,'Tamil',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1650,'Tamil (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1651,'Tanzania, United Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1652,'Technical Issue',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1653,'Telegram Channel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1654,'Telugu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1655,'Telugu (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1656,'Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1657,'Template Access',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1658,'Template Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1659,'Template Color',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1660,'Template Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1661,'Template Icon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1662,'Template Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1663,'Template Role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1664,'Template Short Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1665,'Template Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1666,'Template title.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1667,'Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1668,'Terms & Conditions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1669,'Terms and Conditions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1670,'Test Credentials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1671,'Test Email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1672,'Testimonial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1673,'Testimonial Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1674,'Testimonials',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1675,'Testimonials Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1676,'Testimonials Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1677,'Testimonials Subtitle One',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1678,'Testimonials Subtitle Two',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1679,'Testimonials Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1680,'Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1681,'Text Generator & AI Copywriting Assistant',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1682,'Text-to-Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1683,'Textarea Field',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1684,'Thai',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1685,'Thai (Thailand)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1686,'Thailand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1687,'Thank you for your payment!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1688,'Thank you very much for doing business with us. We look forward to working with you again!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1689,'Thanks for purchashing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1690,'Thanks for purchasing MagicAI! You can now install your product in seconds and unlock the magic of AI. Let\'s get you started!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1691,'Thanks for purchasing MagicAI! You can now install your product in seconds and unlock the magic of AI. Let’s get you started!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1692,'Thanks for your purchase...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1693,'The Following errors occurred:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1694,'The Future of Copy.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1695,'The future of AI.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1696,'The future of development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1697,'The maximum output length is set above 2000. Are you sure you want to continue?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1698,'The maximum output length refers to the point at which the AI-generated response will stop. It can occur when the response reaches 4096 bytes or when the generat...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1699,'The process is simple. All you have to do is provide a topic or idea, and our AI-based text generator will take care of the rest.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1700,'The system has maintenance! We will back in short time!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1701,'There is 1 update.|There are :number updates.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1702,'There is a mistake for you purchaes. Please try again',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1703,'There is no coupons yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1704,'There is no succesfull withdrawal request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1705,'There is no users used the coupon yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1706,'There is no withdrawal request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1707,'These values are generated for you',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1708,'This feature is disabled in Demo version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1709,'This process will take time. So, please be patient and wait until success message appears.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1710,'This setting is in early alpha stage. Please do not activate until offically released.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1711,'This will affect the button style',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1712,'Ticked ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1713,'Ticket',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1714,'Ticket Category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1715,'Ticket Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1716,'Ticket Subject',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1717,'Tile Texture',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1718,'Timor-leste',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1719,'Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1720,'Title Topic(Optional)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1721,'To access this page, you should upgrade to Extended License.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1722,'To use live settings:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1723,'To use sandbox settings:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1724,'Togo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1725,'Tokelau',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1726,'Token Pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1727,'Token Packs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1728,'Token is missing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1729,'Tokens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1730,'Tone of Voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1731,'Tonga',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1732,'Tools Active',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1733,'Tools Description',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1734,'Tools Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1735,'Tools Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1736,'Top Button Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1737,'Top Button URL (Please enter full url)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1738,'Top Countries',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1739,'Topic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1740,'Total',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1741,'Total Due',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1742,'Total Images',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1743,'Total Sales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1744,'Total Words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1745,'Total sales',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1746,'Track a wide range of data points, including user traffic and sales.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1747,'Track, analyze and access.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1748,'Transcribe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1749,'Transcribe your speech into text.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1750,'Transcription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1751,'Translate a book',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1752,'Translation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1753,'Trial Days',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1754,'Trinidad and Tobago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1755,'True',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1756,'Trusted by millions.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1757,'Trustpilot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1758,'Tunisia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1759,'Turbo Writer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1760,'Turkey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1761,'Turkish',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1762,'Turkish (Turkey)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1763,'Turkmenistan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1764,'Turks and Caicos Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1765,'Tuvalu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1766,'Twitter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1767,'Txt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1768,'Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1769,'Type a message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1770,'Type your image title or description what you are looking for',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1771,'Type your image title or description what you are looking for.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1772,'Typing',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1773,'UPDATE 1.30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1774,'UPDATE 1.35',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1775,'URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1776,'Uganda',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1777,'Ukiyo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1778,'Ukraine',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1779,'Ukrainian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1780,'Ukrainian (Ukraine)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1781,'Ultimate AI Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1782,'Ultra Fast',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1783,'Unable to save the .env file, Please create it manually.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1784,'Undo',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1785,'Unique input name that you can use in your prompts later.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1786,'Unit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1787,'United Arab Emirates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1788,'United Kingdom',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1789,'United States',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1790,'United States Minor Outlying Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1791,'Unleash the Power of AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1792,'Unleash your creativity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1793,'Unlimited',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1794,'Unlimited Words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1795,'Unlock your business potential by letting the AI work and generate money for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1796,'Unselect All',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1797,'Unsplash API',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1798,'Unsplash API Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1799,'Unsplash API Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1800,'Untitled Document...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1801,'Update',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1802,'Update Now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1803,'Update Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1804,'Update the memory_limit value',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1805,'Updated At',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1806,'Updated On',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1807,'Upgrade',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1808,'Upgrade License',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1809,'Upload Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1810,'Upload a document or image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1811,'Upload an image and ask me anything',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1812,'Upload, Analyze, Generate.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1813,'Upscaling',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1814,'Urdu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1815,'Uruguay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1816,'Use Form Wizard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1817,'Use Real-Time Data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1818,'Used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1819,'User',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1820,'User Access',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1821,'User Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1822,'User Input Groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1823,'User Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1824,'Users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1825,'Using Date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1826,'Uzbekistan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1827,'VIP Support',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1828,'Valuable insight and analytics, monitor user activity and manage site settings.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1829,'Vanuatu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1830,'Vaporwave',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1831,'Vat Due',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1832,'Vat Rate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1833,'Vector',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1834,'Venezuela',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1835,'Version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1836,'Very Slow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1837,'Video',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1838,'Video Script',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1839,'Viet Nam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1840,'Vietnamese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1841,'Vietnamese (Vietnam)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1842,'View',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1843,'View Log File',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1844,'View and edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1845,'View, edit or export your result with a few clicks. And you’re done!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1846,'Virgin Islands, British',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1847,'Virgin Islands, U.S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1848,'Virgin Islands, U.S.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1849,'Vision AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1850,'Visit App Store',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1851,'Voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1852,'Volume Based Pricing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1853,'Wait x seconds after the speech. Represents the time before the next sentence.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1854,'Wallis and Futuna',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1855,'Warm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1856,'Warning',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1857,'Watercolor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1858,'We are sorry but the page you are looking for was not found',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1859,'Website',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1860,'Welcome',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1861,'Western Sahara',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1862,'What happens when you save?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1863,'What is this article about?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1864,'What kind of support is available for AI copywriting tools?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1865,'When you make online payments, your data is securely transmitted through a protected socket layer to a payment processor. The payment processor uses tokenization',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1866,'While saving, all active membership plans\' keys will be created. So, please be patient and wait until success message appears.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1867,'Who Can Use Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1868,'Who is script for section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1869,'Will refill automatically in',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1870,'Window closed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1871,'With our intuitive interface and powerful features, you can easily edit, export or publish your AI-generated result.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1872,'Withdrawal Form',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1873,'Withdrawal Requests',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1874,'Witty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1875,'Word',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1876,'Word Credits',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1877,'Word Tokens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1878,'Word Tokens Used',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1879,'Words',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1880,'Words Generated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1881,'Words Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1882,'Workbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1883,'Workbooks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1884,'Writer is designed to help you <strong>generate high-quality texts instantly</strong>, without breaking a sweat. With our intuitive interface and powerful features, you can easily edit, export or publish your AI-generated result.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1885,'Xbox Play',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1886,'Yearly',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1887,'Yemen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1888,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1889,'You <strong>send your invitation link</strong> to your friends.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1890,'You <strong>start earning commision</strong> from their first purchase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1891,'You are in Trial time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1892,'You can add more filters, just add a filter and hit enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1893,'You can add more, just add a filter and hit enter.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1894,'You can copy the below info as simple text with Ctrl+C / Ctrl+V:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1895,'You can disable or enable this page. When this option is disabled, the page cannot be accessible to users.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1896,'You can edit your article in documents once it is generated.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1897,'You can enter as much API KEY as you want. Click \"Enter\" after each api key.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1898,'You can enter as much api key as you want. Click \"Enter\" after each api key.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1899,'You can select speech model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1900,'You can select speech voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1901,'You can select speech voice. Female, Male, and type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1902,'You can use HTML. Not: All html elements not competible for mails.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1903,'You can use this tags',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1904,'You have an active subscription.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1905,'You have completed the smart installation. You can now register your product in 10 seconds unlock exclusive features.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1906,'You have currently',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1907,'You have no message... Please start typing.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1908,'You have no subscription at the moment. Please select a subscription plan or a token pack.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1909,'You have no subscription at the moment. Please select a subscription plan or prepaid plan.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1910,'You have no withdrawal request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1911,'You have subscribed and may have some usage left from your subscription. With this payment it will add more usage to your remaining words and images. And they w',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1912,'You have subscribed and may have some usage left from your subscription. With this payment it will add more usage to your remaining words and images. And they will be reset after your subscription end. Please cancel your subscription first otherwise you accept this issue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1913,'You may also like',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1914,'Your .env file settings have been saved.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1915,'Your Bank Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1916,'Your Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1917,'Your Last Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1918,'Your Message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1919,'Your Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1920,'You are using Extended License.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1921,'Your are using Regular License. Please upgrade to Extended License.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1922,'Your changes will override en.json file!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1923,'Your password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1924,'Your security is of utmost importance to us. We want to assure you that we do not store your credit card information.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1925,'Your server memory_limit is',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1926,'Your token has been expired. Please go previous page and reload.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1927,'Zambia',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1928,'Zimbabwe',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1929,'Zip Code',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1930,'alert',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1931,'an astronaut riding a horse on mars, hd, dramatic lighting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1932,'and',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1933,'and create your Liquid account before activating',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1934,'and increase your productivity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1935,'bleep',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1936,'cardinal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1937,'characters',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1938,'critical',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1939,'currency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1940,'date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1941,'debug',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1942,'emergency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1943,'enter string',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1944,'error',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1945,'fraction',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1946,'hours ago',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1947,'iOS Development',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1948,'image tokens left.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1949,'in Workbook',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1950,'in format',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1951,'info',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1952,'is available.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1953,'is designed to make coding faster, easier, and more efficient than ever before. Whether you’re a seasoned developer or a coding newbie, our tool will help you streamline your coding process and get your projects up and running in no time.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1954,'is up to date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1955,'martin-kopecky',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1956,'my-project-123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1957,'notice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1958,'of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1959,'on all their purchases.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1960,'or',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1961,'ordinal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1962,'pagination.next',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1963,'pagination.previous',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1964,'per month',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1965,'per year',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1966,'plan.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1967,'preview',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1968,'required',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1969,'results',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1970,'riding horse on mars',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1971,'say-as',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1972,'shimmer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1973,'telephone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1974,'text generator is designed to help you generate high-quality texts instantly, without breaking a sweat.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1975,'the product page.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1976,'time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1977,'to',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1978,'to verify your purchase.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1979,'tokens left.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1980,'unit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1981,'verbatim',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1982,'version',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1983,'visit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1984,'warning',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1985,'with',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1986,'word and',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1987,'write something...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1988,'your@email.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1989,'Åland Islands',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1990,'“Not only did it save me time, but it also helped me produce content that was more engaging and effective than what I had been creating on my own.”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1991,'AI ReWriter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1992,'AI Chat Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1993,'AI Chat PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1994,'AI YouTube',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1995,'Join Now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1996,'7 Day Free Trial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1997,'No Credit Card',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1998,'Live Support',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(1999,'Powered by',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2000,'Read More Blog Posts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2001,'AI-Powered Content Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2002,'Try it now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2003,'Get more done',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2004,'in seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2005,'Meet your',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2006,'co-pilot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2007,'Next-gen automation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2008,'We pride ourselves on offering AI Generators that are unmatched in their quality, versatility, and ease of use. Here’s what sets us apart from the competition:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2009,'One Time Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2010,'Build for everyone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2011,'“\' . $entry->words . \'”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2012,'Get started for free',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2013,'Download on AppStore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2014,'Coming Soon',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2015,'Download from PlayStore',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2016,'Follow on X',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2017,'Facebook Group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2018,'Refund',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2019,'Contact',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2020,'Your Documents Values',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2021,'Active Workspace:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2022,'a super detailed infographic of a working time machine 8k',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2023,'hedgehog smelling a flower',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2024,'Freeform ferrofluids, beautiful dark chaos',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2025,'a home built in a huge Soap bubble, windows',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2026,'photo of an extremely cute alien fish swimming an alien habitable underwater planet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2027,'DALL-E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2028,'Stable Diffusion',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2029,'Loading more',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2030,'All images loaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2031,'Image Details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2032,'Copied prompt',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2033,'Remove item',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2034,'Read more',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2035,'Robot hand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2036,'technology.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2037,'Lates news & articles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2038,'<strong>We\\\'ve brought together</strong> the exciting developments for you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2039,'Custom promt templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2040,'Robot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2041,'The future of AI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2042,'LET’S MEET',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2043,'We offer a wide range of content creation capabilities, <span class=\"text-heading-foreground\">from text to images, videos to audio files.</span>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2044,'Step by step',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2045,'FELXIBLE. Versatile.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2046,'Flexible pricing options that allow you to choose the best fit for your requirements',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2047,'Lifetime',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2048,'Pre-Paid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2049,'“\' . $item->words . \'”',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2050,'Build for everyone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2051,'High potential',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2052,'While making content creation effortless for users, it maximizes the quality of the results.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2053,'This feature is disabled in Demo version.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2054,'Move Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2055,'Move to folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2056,'Favorite',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2057,'Hold cmd(on mac) or ctrl(on pc) to select multiple items.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2058,'New value',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2059,'Toggle dark/light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2060,'Skip to content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2061,'AI Editor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2062,'AI Video',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2063,'AI File Chat',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2064,'AI RSS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2065,'AI Voice Clone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:26','2024-05-11 14:14:26',NULL,NULL),
(2066,'Team',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2067,'Brand Voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2068,'API Keys',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2069,'Integration',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2070,'Themes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2071,'Chat Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2072,'Floating Chat Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2073,'Auth Settings',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2074,'Bank Transactions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2075,'Trial Features',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2076,'ChatBot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2077,'Premium Support',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2078,'Looks like you’re lost.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2079,'We can’t seem to find the page you’re looking for.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2080,'If this is an error it will be logged and our technic team will resolve it shortly.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2081,'Take me back to the homepage',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2082,'No ads created yet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2083,'My Advertis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2084,'Order ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2085,'Proof Of Purchase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2086,'One Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2087,'User:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2088,'Email:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2089,'Plan name:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2090,'Plan price:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2091,'Tax Rate:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2092,'Tax:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2093,'Total:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2094,'Change Order Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2095,'Current Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2096,'Select Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2097,'Waiting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2098,'Approved',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2099,'Rejected',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2100,'Save Changes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2101,'You have the ability to provide directives to your personalized GPT and tailor it according to your preferences, ensuring it aligns seamlessly with your brand and tone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2102,'Train MagicAI on your own data (website or PDF) and make your AI content exclusive.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2103,'Add New Chatbot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2104,'Created',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2105,'Are you sure you want to delete the chatbot?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2106,'UPLOAD PDF',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2107,'Upload a PDF File (Max: 25Mb)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2108,'Add Q/A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2109,'Type your question here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2110,'Type your answer here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2111,'Manage Content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2112,'Add Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2113,'Type your title here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2114,'Type your text here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2115,'Add URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2116,'Select Pages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2117,'Show ChatBot Ballon on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2118,'Disabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2119,'Both',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2120,'Position',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2121,'Top Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2122,'Top Right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2123,'Bottom Right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2124,'Bottom Left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2125,'Message Limit per day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2126,'First Message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2127,'Instructions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2128,'You can provide instructions to your GPT-3 model to ensure it aligns with your brand and tone.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2129,'Disable if user not logged in?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2130,'Show timestamp?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2131,'Q&A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2132,'You can deploy your trained chatbot to an existing AI Chat template. Simply navigate to Chat Templates select Edit Template, and assign your chatbot there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2133,'Trial Feature',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2134,'Inactive',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2135,'Tax Setting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2136,'Tax Rate (%)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2137,'Editing the tax will have no impact on existing users or lead to cancellations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2138,'Payment Intructions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2139,'Bank Account Details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2140,'In RevenueCat dashboard, create only one instance of offerings and set it as default. Mobile app checks for default offering and searches given package and entitlement ids in there.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2141,'Congate or Razorpay subscriptions require you to set up cron jobs on your server. You can find detailed instructions in ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2142,'the documentation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2143,'If you use razorpay, don\\\'t forget to add a webhook. \' . \\App\\Helpers\\Classes\\Helper::setting(\'site_url',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2144,'Choose Available Templates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2145,'documentation',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2146,'Trial days cannot be set for free and lifetime plans.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2147,'7 Days',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2148,'14 Days',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2149,'0 - No Trial',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2150,'1 Day',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2151,'$i Days',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2152,'Renewal Type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2153,'Lifetime - Monthly Renewal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2154,'Lifetime - Yearly Renewal',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2155,'Is team plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2156,'A team will be create in this plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2157,'Number of Seats',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2158,'Davinci',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2159,'ChatGPT 3.5',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2160,'ChatGPT 4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2161,'Frequency',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2162,'Sign Pages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2163,'ْuse custom image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2164,'Login Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2165,'Edit F.A.Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2166,'Add New F.A.Q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2167,'Edit Feature',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2168,'Add New Feature',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2169,'Edit Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2170,'Add Generator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2171,'Deprecated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2172,'Edit Tool',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2173,'Add New Tool',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2174,'Site Logs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2175,'Bottom Line Text',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2176,'Bottom line text. Accepts <a> tags for links',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2177,'Update License',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2178,'How can i upgrade?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2179,'Select a payment method',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2180,'How do you want to pay? Select a payment method to confirm your order',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2181,'Theme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2182,'Add-on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2183,'Tax included. Your payment is secured vis SSL.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2184,'Search for add-ons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2185,'Manage Addons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2186,'Browse Add-ons',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2187,'Installed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2188,'Tested with MagicAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2189,'Recently Updated',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2190,'About this add-on',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2191,'For a limited time only',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2192,'Free',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2193,'Price is in US dollars. Tax included.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2194,'Buy Now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2195,'Install Now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2196,'Details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2197,'View details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2198,'Not Installed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2199,'Uninstall',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2200,'System',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2201,'Allison Burgers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2202,'Finance Expert',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2203,'I can help you with managing your finance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2204,'Choose any trained chatbot. If you need to train a new chatbot, visit the Chatbot Training',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2205,'Edit Custom Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2206,'Add Custom Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2207,'Enter Title Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2208,'Enter Category Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2209,'Selectlist Field',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2210,'Select List Inputs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2211,'Enter Inputs Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2212,'Select list inputs for the template.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2213,'Enter Prompt Here',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2214,'Cote D\\\'ivoire',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2215,'Korea, Democratic People\\\'s Republic of',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2216,'Lao People\\\'s Democratic Republic',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2217,'AI advanced editor',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2218,'AI Rewriter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2219,'AI voice clone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2220,'Team Functionality',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2221,'Chat setting (extension)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2222,'Users API Key Option',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2223,'Upon activating this feature, the admin API key will be deactivated, and users will need to input their own API keys for continued functionality.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2224,'Convert To Users Api',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2225,'Kazakh (Kazakhistan)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2226,'In Words. OpenAI has a hard limit based on Token limits for each model. Refer to OpenAI documentation to learn more. As a recommended by OpenAI, max result length is capped at 2000 tokens',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2227,'The maximum output length refers to the point at which the AI-generated response will stop. It can occur when the response reaches 4096 bytes or when the generated content is considered sufficient for the given context.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2228,'Fine Tune',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2229,'Add Fine Tune',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2230,'Custom Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2231,'File ID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2232,'Bytes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2233,'Base Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2234,'Fine Tuned Model',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2235,'Enter name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2236,'Purpose',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2237,'Select File (JSON)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2238,'Fine Tune Created!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2239,'Are you sure?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2240,'Model under on process. Reload the page before delete!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2241,'Fine Tune Deleted!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2242,'Cloudflare R2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2243,'Themes and skins',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2244,'Back to themes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2245,'About this theme',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2246,'Finance Management',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2247,'No users found.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2248,'User Informations are hidden in demo due to GDPR. See',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2249,'What is GDPR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2250,'Re-Password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2251,'Repeat password',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2252,'User Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2253,'Username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2254,'User Since',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2255,'Manage Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2256,'Current Subscription',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2257,'Assign or delete user subscription.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2258,'Assign Pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2259,'Assign token pack.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2260,'word',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2261,'image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2262,'Are you sure you want to cancel the plan?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2263,'Select Subscription Plan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2264,'Please note: Only Free and Lifetime plans are currently available.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2265,'Add new user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2266,'Search users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2267,'Add voice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2268,'Voice training',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2269,'Voice id',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2270,'Tags of the post. Useful for filtering in the blog posts.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2271,'MagicAI Bot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2272,'I am AI Assistant. How can I help you?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2273,'You are a assistant and your name is MagicAI.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2274,'Custom Width',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2275,'Custom Height',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2276,'Manage ChatBot',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2277,'Your message',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2278,'now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2279,'Email Title',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2280,'Send email',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2281,'Receiver',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2282,'Please only include users available in the system, and if you have used {user_name} in the template, you should be mindful of this.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2283,'All customers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2284,'Registration is complete. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2285,'New conversation created successfully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2286,'Conversation deleted successfully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2287,'Analyzing uploaded file.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2288,'Analyzing file is done. You can start the conversation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2289,'Titlebar Status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2290,'New Support Request',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2291,'Create new support request. We will answer as soon as possible.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2292,'Affilated Users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2293,'<strong>They subscribe</strong> to a paid plan by using your refferral link.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2294,'Affiliated Users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2295,'Search for username',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2296,'Start Date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2297,'End Date',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2298,'You have no affiliate users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2299,'Integrate your own personal OpenAI API Key and generate AI content.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2300,'Api Keys Setting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2301,'Api Keys Secret',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2302,'Riding horse on mars',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2303,'New Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2304,'Manage Voices',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2305,'New Company',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2306,'Company',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2307,'Company Name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2308,'Enter the name of your company or organization.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2309,'The official name of your business entity.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2310,'Industry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2311,'The field or sector of business activity your company primarily belongs to.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2312,'A concise summary describing your company, its mission, and what sets it apart.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2313,'Provide a brief description of your company.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2314,'Please provide the full web address (URL) of your company’s official website.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2315,'Enter the URL of your company’s website.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2316,'Tagline',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2317,'A memorable and succinct phrase encapsulating your company’s mission or value proposition.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2318,'Write a catchy tagline for your company.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2319,'Target Audience',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2320,'Describe the primary demographic or audience your company is targeting.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2321,'Brand Color',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2322,'Products or Services',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2323,'The primary item or service your company provides to its customers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2324,'Service',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2325,'Explain the features of your Product/Service.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2326,'Key Features',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2327,'Describe the key services your company offers to its clients or customers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2328,'Have a coupon?',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2329,'Tax',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2330,'Team allow seats',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2331,'Bank transfer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2332,'Upon confirmation, your application will be promptly submitted. Following successful payment verification, your plan will be activated. For seamless transactions, please utilize the order ID number as a reference when making payments in the upcoming months.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2333,'Confirm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2334,'Payment',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2335,'Upon confirmation, your application will be promptly submitted.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2336,'Free Token Pack',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2337,'This pack alredy purchased',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2338,'Buy for free now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2339,'Payment Succesful',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2340,'Thanks for your purchase! Now, you can explore our AI tools and start generating content in seconds.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2341,'Generate New Content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2342,' Token Packs ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2343,'Payment for token packs ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2344,'Pay now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2345,'Start free trial ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2346,'Upload Proof of Purchase',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2347,'Upon confirmation, your application will be promptly submitted. Following successful payment verification, your plan will be activated. To ensure the continuous activation of your plan in the subsequent months, kindly make payments by the end of each recurring payment date. For seamless transactions, please utilize the order ID number as a reference when making payments in the upcoming months.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2348,'Subscribe for free now',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2349,'Continue to Payment with',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2350,'When you make online payments, your data is securely transmitted through a protected socket layer to a payment processor. The payment processor uses tokenization, which means your information is replaced by a random number to represent your payment.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2351,'Plans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2352,'Back to Dashboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2353,'Print',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2354,'MagicAI Doc',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2355,'Add New Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2356,'Keep writing the next paragraph...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2357,'You haven\\\'t created any content',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2358,'Fetch RSS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2359,'Choose a Template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2360,'Add Information',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2361,'Share post your integrations.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2362,'Share',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2363,'Integration Edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2364,'Integrations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2365,'Send blog posts directly to your CMS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2366,'Source Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2367,'Drop your image here or browse. 1024x576, 576x1024, 768x768 images are avaiable.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2368,'(Only jpg, png will be accepted)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2369,'Seed',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2370,'A specific value from 0 to 4294967294 that is used to guide the randomness of the generation.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2371,'Fidelity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2372,'A specific value from 0 to 10 to express how strongly the video sticks to the original image.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2373,'Motion intensity',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2374,'Lower values generally result in less motion in the output video, while higher values generally result in more motion. The range is 0 ~ 255',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2375,'All videos loaded',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2376,'Video Details',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2377,'Delete Video',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2378,'Untitled Voice...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2379,'Afrikaans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2380,'Armenian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2381,'Azerbaijani',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2382,'Belarusian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2383,'Bosnian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2384,'Chinese',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2385,'Kannada',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2386,'Macedonian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2387,'Marathi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2388,'Maori',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2389,'Nepali',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2390,'Persian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2391,'Swahili',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2392,'Tagalog',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2393,'Welsh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2394,'Bengali (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2395,'Gujarati (India)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2396,'Audio Files',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2397,'Write something...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2398,'Error deleting folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2399,'Folder deleted successfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2400,'Delete all files inside the folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2401,'Error updating folder name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2402,'Folder name updated successfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2403,'Folder new name:',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2404,'Folder: $currfolder?->name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2405,'Back to documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2406,'You don\'t have any documents.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2407,'Start generating texts by adding a document.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2408,'Include Your Brand',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2409,'Select Company',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2410,'Select Product/Service',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2411,'Select Product',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2412,'Enter the RSS URL!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2413,'RSS Fetched Successifuly!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2414,'Effortlessly reshape and elevate your pre-existing content with a single click.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2415,'Mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2416,'Output Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2417,'Drafts',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2418,'Simply upload a PDF, find specific information. extract key insights or summarize the entire document.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2419,'(Only jpg, png, webp and pdf will be accepted)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2420,'Upload Document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2421,'Add the template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2422,'Order Ref',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2423,'Order Date/Time',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2424,'My Account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2425,'Displays the number of words generated by this team member.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2426,'Displays the number of images generated by this team member.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2427,'Set unlimited or limited credits for this user.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2428,'Image Credit Limit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2429,'Set a specific image credit limit for this user. This function works only if unlimited credits are disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2430,'Word Credit Limit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2431,'Set a specific word credit limit for this user. This function works only if unlimited credits are disabled.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2432,'Team Members',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2433,'unknown',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2434,'Power Elite Author',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2435,'Favorite Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2436,'Recently Launched Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2437,'Auto Translate (Each click will translate the next 100 key)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2438,'Please Active The MagicAI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2439,'Please enter the URL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2440,'You cannot withdrawal with this amount. Please check',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2441,'Error while sending information. Please contact us.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2442,'Please fill the message field',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2443,'Api Connection Error. You hit the rate limites of openai requests. Please check your Openai API Key',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2444,'Api Connection Error. Please contact system administrator via Support Ticket. Error is: API Connection failed due to API keys',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2445,'Invalid extension. Accepted extensions are mp3, mp4, mpeg, mpga, m4a, wav, and webm',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2446,'This file exceed the limit of file upload',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2447,'Something went wrong. Please reload the page and try it again',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2448,'Please fill all fields in User Group Input areas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2449,'Workbook Error',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2450,'Settings saved successfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2451,'Request Sent Succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2452,'Invitation Sent Succesfully!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2453,'Page Saved Succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2454,'Template Saved Succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2455,'Saved Succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2456,'Client Saved Succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2457,'Plan Saved Succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2458,'How it Works Step Saved Succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2459,'How it Works Bottom Line updated successfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:27','2024-05-11 14:14:27',NULL,NULL),
(2460,'Add-on installed succesfully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2461,'Add-on uninstalled succesfully.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2462,'Status changed succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2463,'Chat Template Saved Succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2464,'Settings saved succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2465,'Settings saved succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2466,'Faq saved succesfully. Redirecting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2467,'Item saved succesfully. Redirecting',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2468,'Support Ticket Created Succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2469,'Message sent succesfully. Please Wait',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2470,'Testimonial Saved Succesfully. Redirecting...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2471,'User saved succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2472,'Workbook saved succesfully',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2473,'Code copied to clipboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2474,'Content copied to clipboard',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL),
(2475,'(Only jpg, png and webp will be accepted)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 14:14:28','2024-05-11 14:14:28',NULL,NULL);
/*!40000 ALTER TABLE `strings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription_items`
--

DROP TABLE IF EXISTS `subscription_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` bigint(20) unsigned NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_product` varchar(191) NOT NULL,
  `stripe_price` varchar(191) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription_items`
--

LOCK TABLES `subscription_items` WRITE;
/*!40000 ALTER TABLE `subscription_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `stripe_status` varchar(191) NOT NULL,
  `stripe_price` varchar(191) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_with` varchar(191) NOT NULL DEFAULT 'stripe',
  `tax_rate` varchar(191) DEFAULT NULL,
  `tax_value` varchar(191) DEFAULT NULL,
  `coupon` varchar(191) DEFAULT NULL,
  `total_amount` varchar(191) DEFAULT NULL,
  `auto_renewal` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  KEY `subscriptions_plan_id_foreign` (`plan_id`),
  KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`),
  CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES
(1,1,1,'1','FPS-DJBWD8UHT6EOV','free_canceled','Not Needed',1,NULL,'2024-06-11 14:19:42','2024-05-11 14:19:42','2024-05-11 14:25:41','freeservice','0','0',NULL,'0',1);
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions_yokassa`
--

DROP TABLE IF EXISTS `subscriptions_yokassa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions_yokassa` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `payment_method_id` varchar(191) NOT NULL,
  `subscription_status` varchar(191) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `next_pay_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_rate` varchar(191) DEFAULT NULL,
  `tax_value` varchar(191) DEFAULT NULL,
  `coupon` varchar(191) DEFAULT NULL,
  `total_amount` varchar(191) DEFAULT NULL,
  `auto_renewal` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `subscriptions_yokassa_plan_id_foreign` (`plan_id`),
  KEY `subscriptions_yokassa_user_id_subscription_status_index` (`user_id`,`subscription_status`),
  CONSTRAINT `subscriptions_yokassa_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions_yokassa`
--

LOCK TABLES `subscriptions_yokassa` WRITE;
/*!40000 ALTER TABLE `subscriptions_yokassa` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions_yokassa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_members`
--

DROP TABLE IF EXISTS `team_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `role` varchar(191) NOT NULL DEFAULT 'member',
  `email` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT 'waiting',
  `allow_unlimited_credits` tinyint(1) NOT NULL DEFAULT 1,
  `remaining_images` int(11) DEFAULT NULL,
  `remaining_words` int(11) DEFAULT NULL,
  `used_image_credit` int(11) NOT NULL DEFAULT 0,
  `used_word_credit` int(11) NOT NULL DEFAULT 0,
  `joined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `team_members_team_id_foreign` (`team_id`),
  KEY `team_members_user_id_foreign` (`user_id`),
  CONSTRAINT `team_members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  CONSTRAINT `team_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_members`
--

LOCK TABLES `team_members` WRITE;
/*!40000 ALTER TABLE `team_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `team_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `allow_seats` int(11) NOT NULL DEFAULT 0,
  `used_image_credit` int(11) NOT NULL DEFAULT 0,
  `word_credit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_foreign` (`user_id`),
  CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(191) NOT NULL DEFAULT 'assets/img/auth/default-avatar.png',
  `full_name` varchar(191) DEFAULT NULL,
  `job_title` varchar(191) DEFAULT NULL,
  `words` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES
(1,'202306020840avatar-1.jpg','Peline Jan','Entrepreneur','“Not only did it save me time, but it also helped me \nproduce content that was more engaging and \neffective than what I had been creating on my own.”','2023-05-29 16:00:53','2023-06-02 05:10:35'),
(2,'202306020840avatar-3.jpg','Tom Daniel','Writer','As a freelance writer, I was looking for a tool that could help me generate ideas and write faster. This AI Text website has done that and more.','2023-05-30 04:22:22','2023-06-02 05:10:47'),
(3,'202306020840avatar-2.jpg','Eric Sanchez','UX Designer','The customer support team has been incredibly helpful whenever I’ve had any questions. I can’t imagine going back to my old content-creation methods!','2023-05-30 04:23:14','2023-06-02 05:10:58');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage`
--

DROP TABLE IF EXISTS `usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total_user_count` int(10) unsigned NOT NULL DEFAULT 0,
  `this_week_user_count` int(10) unsigned NOT NULL DEFAULT 0,
  `last_week_user_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_word_count` int(10) unsigned NOT NULL DEFAULT 0,
  `this_week_word_count` int(10) unsigned NOT NULL DEFAULT 0,
  `last_week_word_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_image_count` int(10) unsigned NOT NULL DEFAULT 0,
  `this_week_image_count` int(10) unsigned NOT NULL DEFAULT 0,
  `last_week_image_count` int(10) unsigned NOT NULL DEFAULT 0,
  `total_sales` int(10) unsigned NOT NULL DEFAULT 0,
  `this_week_sales` int(10) unsigned NOT NULL DEFAULT 0,
  `last_week_sales` int(10) unsigned NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage`
--

LOCK TABLES `usage` WRITE;
/*!40000 ALTER TABLE `usage` DISABLE KEYS */;
INSERT INTO `usage` VALUES
(1,2,2,0,0,0,0,0,0,0,0,0,0,'2024-05-11 13:37:45','2024-05-11 13:39:23');
/*!40000 ALTER TABLE `usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_affiliates`
--

DROP TABLE IF EXISTS `user_affiliates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_affiliates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `amount` double NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Waiting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_affiliates_user_id_foreign` (`user_id`),
  CONSTRAINT `user_affiliates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_affiliates`
--

LOCK TABLES `user_affiliates` WRITE;
/*!40000 ALTER TABLE `user_affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_docs_favorite`
--

DROP TABLE IF EXISTS `user_docs_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_docs_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_openai_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_docs_favorite_user_id_foreign` (`user_id`),
  KEY `user_docs_favorite_user_openai_id_foreign` (`user_openai_id`),
  CONSTRAINT `user_docs_favorite_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_docs_favorite_user_openai_id_foreign` FOREIGN KEY (`user_openai_id`) REFERENCES `user_openai` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_docs_favorite`
--

LOCK TABLES `user_docs_favorite` WRITE;
/*!40000 ALTER TABLE `user_docs_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_docs_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorites`
--

DROP TABLE IF EXISTS `user_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favorites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `openai_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorites_user_id_foreign` (`user_id`),
  KEY `user_favorites_openai_id_foreign` (`openai_id`),
  CONSTRAINT `user_favorites_openai_id_foreign` FOREIGN KEY (`openai_id`) REFERENCES `openai` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorites`
--

LOCK TABLES `user_favorites` WRITE;
/*!40000 ALTER TABLE `user_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_integrations`
--

DROP TABLE IF EXISTS `user_integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_integrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `integration_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `credentials` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`credentials`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_integrations`
--

LOCK TABLES `user_integrations` WRITE;
/*!40000 ALTER TABLE `user_integrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_openai`
--

DROP TABLE IF EXISTS `user_openai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_openai` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `openai_id` bigint(20) unsigned DEFAULT NULL,
  `input` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `output` text DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `credits` varchar(191) DEFAULT NULL,
  `words` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `storage` varchar(191) DEFAULT NULL,
  `folder_id` bigint(20) unsigned DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  PRIMARY KEY (`id`),
  KEY `user_openai_user_id_foreign` (`user_id`),
  KEY `user_openai_openai_id_foreign` (`openai_id`),
  KEY `user_openai_folder_id_foreign` (`folder_id`),
  CONSTRAINT `user_openai_folder_id_foreign` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_openai_openai_id_foreign` FOREIGN KEY (`openai_id`) REFERENCES `openai` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_openai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_openai`
--

LOCK TABLES `user_openai` WRITE;
/*!40000 ALTER TABLE `user_openai` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_openai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_openai_chat`
--

DROP TABLE IF EXISTS `user_openai_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_openai_chat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `chatbot_id` bigint(20) DEFAULT NULL,
  `openai_chat_category_id` bigint(20) unsigned DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `total_credits` varchar(191) DEFAULT NULL,
  `total_words` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_chatbot` tinyint(4) NOT NULL DEFAULT 0,
  `website_url` varchar(191) DEFAULT '',
  `reference_url` varchar(191) NOT NULL DEFAULT '',
  `doc_name` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_openai_chat_user_id_foreign` (`user_id`),
  KEY `user_openai_chat_openai_chat_category_id_foreign` (`openai_chat_category_id`),
  CONSTRAINT `user_openai_chat_openai_chat_category_id_foreign` FOREIGN KEY (`openai_chat_category_id`) REFERENCES `openai_chat_category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_openai_chat_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_openai_chat`
--

LOCK TABLES `user_openai_chat` WRITE;
/*!40000 ALTER TABLE `user_openai_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_openai_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_openai_chat_messages`
--

DROP TABLE IF EXISTS `user_openai_chat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_openai_chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_openai_chat_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `input` text DEFAULT NULL,
  `response` text DEFAULT NULL,
  `output` text DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `credits` varchar(191) DEFAULT NULL,
  `words` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text DEFAULT NULL,
  `pdfName` text DEFAULT NULL,
  `pdfPath` text DEFAULT NULL,
  `outputImage` varchar(191) DEFAULT NULL,
  `realtime` tinyint(1) NOT NULL DEFAULT 0,
  `is_chatbot` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_openai_chat_messages_user_openai_chat_id_foreign` (`user_openai_chat_id`),
  KEY `user_openai_chat_messages_user_id_foreign` (`user_id`),
  CONSTRAINT `user_openai_chat_messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_openai_chat_messages_user_openai_chat_id_foreign` FOREIGN KEY (`user_openai_chat_id`) REFERENCES `user_openai_chat` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_openai_chat_messages`
--

LOCK TABLES `user_openai_chat_messages` WRITE;
/*!40000 ALTER TABLE `user_openai_chat_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_openai_chat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(191) DEFAULT NULL,
  `plan_id` bigint(20) unsigned DEFAULT NULL,
  `payment_type` varchar(191) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Waiting',
  `country` varchar(191) NOT NULL DEFAULT 'United States of America',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'subscription',
  `affiliate_earnings` double NOT NULL DEFAULT 0,
  `tax_rate` varchar(191) DEFAULT NULL,
  `tax_value` varchar(191) DEFAULT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payload`)),
  PRIMARY KEY (`id`),
  KEY `user_orders_plan_id_foreign` (`plan_id`),
  KEY `user_orders_user_id_foreign` (`user_id`),
  CONSTRAINT `user_orders_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE SET NULL,
  CONSTRAINT `user_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_orders`
--

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;
INSERT INTO `user_orders` VALUES
(1,'FPS-DJBWD8UHT6EOV',1,'freeservice',0,'Approved','Unknown','2024-05-11 14:19:42','2024-05-11 14:19:42',1,'subscription',0,'0','0',NULL);
/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_support`
--

DROP TABLE IF EXISTS `user_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_support` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `subject` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'Waiting for answer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ticket_id` varchar(191) NOT NULL,
  `priority` varchar(191) NOT NULL DEFAULT 'Low',
  `category` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_support_user_id_foreign` (`user_id`),
  CONSTRAINT `user_support_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_support`
--

LOCK TABLES `user_support` WRITE;
/*!40000 ALTER TABLE `user_support` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_support_messages`
--

DROP TABLE IF EXISTS `user_support_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_support_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_support_id` bigint(20) unsigned DEFAULT NULL,
  `sender` varchar(191) NOT NULL DEFAULT 'user',
  `message` text NOT NULL,
  `attachment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_support_messages_user_support_id_foreign` (`user_support_id`),
  CONSTRAINT `user_support_messages_user_support_id_foreign` FOREIGN KEY (`user_support_id`) REFERENCES `user_support` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_support_messages`
--

LOCK TABLES `user_support_messages` WRITE;
/*!40000 ALTER TABLE `user_support_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_support_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `coingate_subscriber_id` varchar(191) DEFAULT NULL,
  `team_id` bigint(20) unsigned DEFAULT NULL,
  `team_manager_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `surname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'user',
  `password` varchar(191) NOT NULL,
  `avatar` varchar(1055) NOT NULL DEFAULT 'assets/img/auth/default-avatar.png',
  `company_name` varchar(191) DEFAULT NULL,
  `company_website` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postal` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remaining_words` int(11) NOT NULL DEFAULT 0,
  `remaining_images` int(11) NOT NULL DEFAULT 0,
  `last_seen` date DEFAULT NULL,
  `github_id` varchar(191) DEFAULT NULL,
  `github_token` text DEFAULT NULL,
  `google_id` varchar(191) DEFAULT NULL,
  `google_token` text DEFAULT NULL,
  `facebook_id` varchar(191) DEFAULT NULL,
  `facebook_token` text DEFAULT NULL,
  `twitter_id` varchar(191) DEFAULT NULL,
  `twitter_token` varchar(191) DEFAULT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(191) DEFAULT NULL,
  `pm_type` varchar(191) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `affiliate_code` varchar(191) DEFAULT NULL,
  `affiliate_earnings` varchar(191) NOT NULL DEFAULT '0',
  `affiliate_bank_account` text DEFAULT NULL,
  `affiliate_id` bigint(20) unsigned DEFAULT NULL,
  `email_confirmation_code` text DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `password_reset_code` text DEFAULT NULL,
  `github_refresh_token` varchar(191) DEFAULT NULL,
  `google_refresh_token` varchar(191) DEFAULT NULL,
  `iyzico_id` varchar(191) DEFAULT NULL,
  `revenuecat_id` varchar(191) DEFAULT NULL,
  `apple_id` varchar(191) DEFAULT NULL,
  `apple_token` text DEFAULT NULL,
  `apple_refresh_token` varchar(191) DEFAULT NULL,
  `razorpay_id` varchar(191) DEFAULT NULL,
  `api_keys` text DEFAULT NULL,
  `gemini_api_keys` text DEFAULT NULL,
  `anthropic_api_keys` varchar(191) DEFAULT '',
  `remember_token` varchar(100) DEFAULT NULL,
  `defi_setting` text DEFAULT NULL,
  `affiliate_status` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_stripe_id_index` (`stripe_id`),
  KEY `users_affiliate_id_foreign` (`affiliate_id`),
  KEY `users_razorpay_id_index` (`razorpay_id`),
  CONSTRAINT `users_affiliate_id_foreign` FOREIGN KEY (`affiliate_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,NULL,NULL,NULL,'Admin','Admin','admin@admin.com','5555555555','admin','$2y$10$4bNWP3OcvawvwHIXcXmGXOQahYmJECquxxtPSbgHt374OoqMH0nyy','assets/img/auth/default-avatar.png',NULL,NULL,NULL,NULL,NULL,1,3000000,3000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 13:37:46','2024-05-11 14:25:41',NULL,NULL,NULL,NULL,'P60NPGHAAFGD','0',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,1),
(2,NULL,NULL,NULL,'Amir','Shirdel','amirex128@gmail.com',NULL,'user','$2y$10$4bNWP3OcvawvwHIXcXmGXOQahYmJECquxxtPSbgHt374OoqMH0nyy','assets/img/auth/default-avatar.png',NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2024-05-11 13:39:23','2024-05-11 13:39:23',NULL,NULL,NULL,NULL,'WIUXULGHPYBB','0',NULL,NULL,'OncDH1RtEfs2HtJW1se6JA5xlahX6P3gPcftjbELLjJL4Svaq0GyxbSWdhqLIxApInH',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhookhistory`
--

DROP TABLE IF EXISTS `webhookhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhookhistory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gatewaycode` varchar(191) DEFAULT NULL,
  `webhook_id` varchar(191) DEFAULT NULL,
  `create_time` varchar(191) DEFAULT NULL,
  `resource_type` varchar(191) DEFAULT NULL,
  `event_type` varchar(191) DEFAULT NULL,
  `summary` varchar(191) DEFAULT NULL,
  `resource_id` varchar(191) DEFAULT NULL,
  `resource_state` varchar(191) DEFAULT NULL,
  `parent_payment` varchar(191) DEFAULT NULL,
  `amount_total` varchar(191) DEFAULT NULL,
  `amount_currency` varchar(191) DEFAULT NULL,
  `incoming_json` text DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhookhistory`
--

LOCK TABLES `webhookhistory` WRITE;
/*!40000 ALTER TABLE `webhookhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhookhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-11 21:29:24
