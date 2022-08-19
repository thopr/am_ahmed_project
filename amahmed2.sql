-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: amahmed
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` int NOT NULL DEFAULT '1',
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `purchase_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons`
--

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
INSERT INTO `addons` VALUES (1,'OTP','otp_system','1.7',1,'otp_system.png','a373706d-a62a-4630-9e8d-6b4f9fe7890c','2021-12-26 18:58:30','2022-01-09 23:42:39');
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `state_id` int NOT NULL,
  `city_id` int DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `postal_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addresstext` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,12,'العمارية بجانب البقالة',191,3147,37410,NULL,NULL,'١٣٢٣','0537266754',0,'2022-01-02 17:50:11','2022-01-02 17:50:11',NULL),(2,15,'hg',191,3146,48357,39.1948,21.5905,'33333','0555555555',0,'2022-01-10 20:50:38','2022-01-22 10:51:16','7198 Prince Majid Rd, Ar Rabwah, Jeddah 23448, Saudi Arabia'),(3,17,'jeddah',191,3155,37420,39.1909,21.5947,'42422','5555555',0,'2022-01-14 13:40:26','2022-01-18 08:54:49','AR Rabwah District 7655, الربوة، جدة 23448, Saudi Arabia'),(4,17,'jeddah',191,3155,37420,NULL,NULL,'42422','5555555',0,'2022-01-14 13:40:27','2022-01-14 13:40:27',NULL),(5,19,'هلع',191,3146,48357,NULL,NULL,'ملت','548545',0,'2022-01-16 14:54:21','2022-01-16 14:54:21',NULL),(6,14,'test',191,3155,48358,NULL,NULL,'88555','966537266754',0,'2022-01-17 21:22:31','2022-01-17 21:22:31',NULL),(7,30,'jeddah',191,3155,48358,NULL,NULL,'0','+9668888889',1,'2022-01-18 10:09:31','2022-01-18 10:09:31',NULL),(8,31,'jeddah',191,3155,48358,NULL,NULL,'0','+9668888885',1,'2022-01-18 10:09:52','2022-01-18 10:09:52',NULL),(9,32,'jeddah',191,3155,48358,NULL,NULL,'0','+966333331212',1,'2022-01-18 10:12:26','2022-01-18 10:12:26',NULL),(10,33,'jeddah',191,3155,48358,39.1949,21.59,'0','+966537266754',1,'2022-01-18 12:42:09','2022-01-22 11:30:17','7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448 5627, Saudi Arabia'),(11,35,'jeddah',191,3155,48358,39.1554,21.5227,'0','+966537266754',1,'2022-01-22 15:38:00','2022-01-23 14:50:22','2601 Al Misk, Al Hamra District, Jeddah 23321 6458, Saudi Arabia'),(12,36,'jeddah',191,3155,48358,39.1948,21.5903,'0','+966552176584',1,'2022-01-22 16:11:39','2022-02-05 04:11:56','7186 الامير ماجد فرعي، حي الربوة، Jeddah 23448 5616, Saudi Arabia'),(13,37,'jeddah',191,3155,48358,NULL,NULL,'0','+96653766754',1,'2022-01-22 17:34:29','2022-01-22 17:34:29',NULL),(14,39,'jeddah',191,3155,48358,NULL,NULL,'0','+966',1,'2022-01-24 05:59:02','2022-01-24 05:59:02',NULL),(15,40,'jeddah',191,3155,48358,NULL,NULL,'0','+213',1,'2022-01-24 05:59:45','2022-01-24 05:59:45',NULL),(16,41,'jeddah',191,3155,48358,NULL,NULL,'0','+93',1,'2022-01-24 06:01:02','2022-01-24 06:01:02',NULL),(17,42,'jeddah',191,3155,48358,NULL,NULL,'0','+244',1,'2022-01-24 06:01:08','2022-01-24 06:01:08',NULL),(18,43,'jeddah',191,3155,48358,NULL,NULL,'0','+358',1,'2022-01-24 06:02:09','2022-01-24 06:02:09',NULL),(19,44,'jeddah',191,3155,48358,NULL,NULL,'0','+1684',1,'2022-01-24 06:04:10','2022-01-24 06:04:10',NULL),(20,45,'jeddah',191,3155,48358,NULL,NULL,'0','+376',1,'2022-01-25 05:27:39','2022-01-25 05:27:39',NULL),(21,46,'jeddah',191,3155,48358,NULL,NULL,'0','+1264',1,'2022-01-25 05:28:17','2022-01-25 05:28:17',NULL),(22,47,'jeddah',191,3155,48358,NULL,NULL,'0','+966568042000',1,'2022-02-04 23:15:28','2022-02-04 23:15:28',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_translations`
--

DROP TABLE IF EXISTS `app_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=877 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_translations`
--

LOCK TABLES `app_translations` WRITE;
/*!40000 ALTER TABLE `app_translations` DISABLE KEYS */;
INSERT INTO `app_translations` VALUES (1,'en','common_login_warning','You need to log in','2022-01-02 16:06:29','2022-01-02 16:06:29'),(2,'en','common_nothing_to_pay','Nothing to pay','2022-01-02 16:06:29','2022-01-02 16:06:29'),(3,'en','common_see_details','see details','2022-01-02 16:06:29','2022-01-02 16:06:29'),(4,'en','common_no_payment_method_added','No payment method is added','2022-01-02 16:06:29','2022-01-02 16:06:29'),(5,'en','common_payment_choice_warning','Please choose one option to pay','2022-01-02 16:06:29','2022-01-02 16:06:29'),(6,'en','common_no_data_available','No data is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(7,'en','common_no_address_added','No Addresses is added','2022-01-02 16:06:29','2022-01-02 16:06:29'),(8,'en','common_loading_more_products','Loading More Products ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(9,'en','common_no_more_products','No More Products','2022-01-02 16:06:29','2022-01-02 16:06:29'),(10,'en','common_no_product_is_available','No product is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(11,'en','common_loading_more_brands','Loading More Brands ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(12,'en','common_no_more_brands','No More Brands','2022-01-02 16:06:29','2022-01-02 16:06:29'),(13,'en','common_no_brand_is_available','No brand is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(14,'en','common_loading_more_items','Loading More Items ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(15,'en','common_no_more_items','No More Items','2022-01-02 16:06:29','2022-01-02 16:06:29'),(16,'en','common_no_item_is_available','No item is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(17,'en','common_loading_more_shops','Loading More Shops ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(18,'en','common_no_more_shops','No More Shops','2022-01-02 16:06:29','2022-01-02 16:06:29'),(19,'en','common_no_shop_is_available','No shop is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(20,'en','common_loading_more_histories','Loading More Histories ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(21,'en','common_no_more_histories','No More Histories','2022-01-02 16:06:29','2022-01-02 16:06:29'),(22,'en','common_no_history_is_available','No history is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(23,'en','common_loading_more_categories','Loading More Categories ...','2022-01-02 16:06:29','2022-01-02 16:06:29'),(24,'en','common_no_more_categories','No More Categories','2022-01-02 16:06:29','2022-01-02 16:06:29'),(25,'en','common_no_category_is_available','No category is available','2022-01-02 16:06:29','2022-01-02 16:06:29'),(26,'en','common_coming_soon','Coming soon','2022-01-02 16:06:29','2022-01-02 16:06:29'),(27,'en','common_close_in_all_capital','CLOSE','2022-01-02 16:06:29','2022-01-02 16:06:29'),(28,'en','common_close_in_all_lower','close','2022-01-02 16:06:29','2022-01-02 16:06:29'),(29,'en','common_close_ucfirst','Close','2022-01-02 16:06:29','2022-01-02 16:06:29'),(30,'en','common_cancel_in_all_capital','CANCEL','2022-01-02 16:06:29','2022-01-02 16:06:29'),(31,'en','common_cancel_in_all_lower','cancel','2022-01-02 16:06:29','2022-01-02 16:06:29'),(32,'en','common_cancel_ucfirst','Cancel','2022-01-02 16:06:29','2022-01-02 16:06:29'),(33,'en','common_confirm_in_all_capital','CONFIRM','2022-01-02 16:06:29','2022-01-02 16:06:29'),(34,'en','common_confirm_in_all_lower','confirm','2022-01-02 16:06:29','2022-01-02 16:06:29'),(35,'en','common_confirm_ucfirst','Confirm','2022-01-02 16:06:29','2022-01-02 16:06:29'),(36,'en','common_update_in_all_capital','UPDATE','2022-01-02 16:06:29','2022-01-02 16:06:29'),(37,'en','common_update_in_all_lower','update','2022-01-02 16:06:29','2022-01-02 16:06:29'),(38,'en','common_update_ucfirst','Update','2022-01-02 16:06:29','2022-01-02 16:06:29'),(39,'en','common_send_in_all_capital','SEND','2022-01-02 16:06:30','2022-01-02 16:06:30'),(40,'en','common_send_in_all_lower','send','2022-01-02 16:06:30','2022-01-02 16:06:30'),(41,'en','common_send_ucfirst','Send','2022-01-02 16:06:30','2022-01-02 16:06:30'),(42,'en','common_clear_in_all_capital','CLEAR','2022-01-02 16:06:30','2022-01-02 16:06:30'),(43,'en','common_clear_in_all_lower','clear','2022-01-02 16:06:30','2022-01-02 16:06:30'),(44,'en','common_clear_ucfirst','Clear','2022-01-02 16:06:30','2022-01-02 16:06:30'),(45,'en','common_apply_in_all_capital','APPLY','2022-01-02 16:06:30','2022-01-02 16:06:30'),(46,'en','common_apply_in_all_lower','apply','2022-01-02 16:06:30','2022-01-02 16:06:30'),(47,'en','common_apply_ucfirst','Apply','2022-01-02 16:06:30','2022-01-02 16:06:30'),(48,'en','common_add_in_all_capital','ADD','2022-01-02 16:06:30','2022-01-02 16:06:30'),(49,'en','common_add_in_all_lower','add','2022-01-02 16:06:30','2022-01-02 16:06:30'),(50,'en','common_add_ucfirst','Add','2022-01-02 16:06:30','2022-01-02 16:06:30'),(51,'en','common_copied','Copied','2022-01-02 16:06:30','2022-01-02 16:06:30'),(52,'en','common_proceed','Proceed','2022-01-02 16:06:30','2022-01-02 16:06:30'),(53,'en','common_proceed_in_all_caps','PROCEED','2022-01-02 16:06:30','2022-01-02 16:06:30'),(54,'en','common_submit','Submit','2022-01-02 16:06:30','2022-01-02 16:06:30'),(55,'en','common_view_more','View More','2022-01-02 16:06:30','2022-01-02 16:06:30'),(56,'en','common_show_less','Show Less','2022-01-02 16:06:30','2022-01-02 16:06:30'),(57,'en','common_selected','Selected','2022-01-02 16:06:30','2022-01-02 16:06:30'),(58,'en','common_creating_order','Creating order ...','2022-01-02 16:06:30','2022-01-02 16:06:30'),(59,'en','common_payment_cancelled','Payment Cancelled','2022-01-02 16:06:30','2022-01-02 16:06:30'),(60,'en','common_photo_permission','Photo Permission','2022-01-02 16:06:30','2022-01-02 16:06:30'),(61,'en','common_app_needs_permission','This app needs permission','2022-01-02 16:06:30','2022-01-02 16:06:30'),(62,'en','common_deny','Deny','2022-01-02 16:06:30','2022-01-02 16:06:30'),(63,'en','common_settings','Settings','2022-01-02 16:06:30','2022-01-02 16:06:30'),(64,'en','common_give_photo_permission','Go to your application settings and give photo permission','2022-01-02 16:06:30','2022-01-02 16:06:30'),(65,'en','common_no_file_chosen','No file is chosen','2022-01-02 16:06:30','2022-01-02 16:06:30'),(66,'en','main_drawer_not_logged_in','Not Logged In','2022-01-02 16:06:30','2022-01-02 16:06:30'),(67,'en','main_drawer_change_language','Change Language','2022-01-02 16:06:30','2022-01-02 16:06:30'),(68,'en','main_drawer_home','Home','2022-01-02 16:06:30','2022-01-02 16:06:30'),(69,'en','main_drawer_profile','Profile','2022-01-02 16:06:30','2022-01-02 16:06:30'),(70,'en','main_drawer_orders','Orders','2022-01-02 16:06:30','2022-01-02 16:06:30'),(71,'en','main_drawer_my_wishlist','My Wishlist','2022-01-02 16:06:30','2022-01-02 16:06:30'),(72,'en','main_drawer_messages','Messages','2022-01-02 16:06:30','2022-01-02 16:06:30'),(73,'en','main_drawer_wallet','Wallet','2022-01-02 16:06:30','2022-01-02 16:06:30'),(74,'en','main_drawer_login','Login','2022-01-02 16:06:30','2022-01-02 16:06:30'),(75,'en','main_drawer_logout','Logout','2022-01-02 16:06:30','2022-01-02 16:06:30'),(76,'en','home_screen_top_categories','Top Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(77,'en','home_screen_brands','Brands','2022-01-02 16:06:30','2022-01-02 16:06:30'),(78,'en','home_screen_top_sellers','Top Sellers','2022-01-02 16:06:30','2022-01-02 16:06:30'),(79,'en','home_screen_todays_deal','Todays Deal','2022-01-02 16:06:30','2022-01-02 16:06:30'),(80,'en','home_screen_flash_deal','Flash Deal','2022-01-02 16:06:30','2022-01-02 16:06:30'),(81,'en','home_screen_featured_categories','Featured Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(82,'en','home_screen_featured_products','Featured Products','2022-01-02 16:06:30','2022-01-02 16:06:30'),(83,'en','home_screen_search','Search','2022-01-02 16:06:30','2022-01-02 16:06:30'),(84,'en','home_screen_no_carousel_image_found','No carousel image found','2022-01-02 16:06:30','2022-01-02 16:06:30'),(85,'en','home_screen_no_category_found','No category found','2022-01-02 16:06:30','2022-01-02 16:06:30'),(86,'en','category_list_screen_top_categories','Top Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(87,'en','category_list_screen_categories','Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(88,'en','category_list_screen_view_products','View Products','2022-01-02 16:06:30','2022-01-02 16:06:30'),(89,'en','category_list_screen_view_subcategories','View Sub-Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(90,'en','category_list_screen_no_subcategories','No sub categories available','2022-01-02 16:06:30','2022-01-02 16:06:30'),(91,'en','category_list_screen_all_products_of','All Products of','2022-01-02 16:06:30','2022-01-02 16:06:30'),(92,'en','cart_screen_cannot_order_more_than','Cannot order more than','2022-01-02 16:06:30','2022-01-02 16:06:30'),(93,'en','cart_screen_items_of_this','item(s) of this','2022-01-02 16:06:30','2022-01-02 16:06:30'),(94,'en','cart_screen_sure_remove_item','Are you sure to remove this item ?','2022-01-02 16:06:30','2022-01-02 16:06:30'),(95,'en','cart_screen_cancel','Cancel','2022-01-02 16:06:30','2022-01-02 16:06:30'),(96,'en','cart_screen_confirm','Confirm','2022-01-02 16:06:30','2022-01-02 16:06:30'),(97,'en','cart_screen_cart_empty','Cart is empty','2022-01-02 16:06:30','2022-01-02 16:06:30'),(98,'en','cart_screen_total_amount','Total Amount','2022-01-02 16:06:30','2022-01-02 16:06:30'),(99,'en','cart_screen_update_cart','UPDATE CART','2022-01-02 16:06:30','2022-01-02 16:06:30'),(100,'en','cart_screen_proceed_to_shipping','PROCEED TO SHIPPING','2022-01-02 16:06:30','2022-01-02 16:06:30'),(101,'en','cart_screen_shopping_cart','Shopping Cart','2022-01-02 16:06:30','2022-01-02 16:06:30'),(102,'en','cart_screen_please_log_in','Please log in to see the cart items','2022-01-02 16:06:30','2022-01-02 16:06:30'),(103,'en','profile_screen_please_log_in','Please log in to see the profile','2022-01-02 16:06:30','2022-01-02 16:06:30'),(104,'en','profile_screen_orders','Orders','2022-01-02 16:06:30','2022-01-02 16:06:30'),(105,'en','profile_screen_profile','Profile','2022-01-02 16:06:30','2022-01-02 16:06:30'),(106,'en','profile_screen_address','Address','2022-01-02 16:06:30','2022-01-02 16:06:30'),(107,'en','profile_screen_notification','Notification','2022-01-02 16:06:30','2022-01-02 16:06:30'),(108,'en','profile_screen_purchase_history','Purchase History','2022-01-02 16:06:30','2022-01-02 16:06:30'),(109,'en','profile_screen_earning_points','Earning Points History','2022-01-02 16:06:30','2022-01-02 16:06:30'),(110,'en','profile_screen_refund_requests','Refund Requests','2022-01-02 16:06:30','2022-01-02 16:06:30'),(111,'en','profile_screen_in_your_cart','In your cart','2022-01-02 16:06:30','2022-01-02 16:06:30'),(112,'en','profile_screen_in_wishlist','In wishlist','2022-01-02 16:06:30','2022-01-02 16:06:30'),(113,'en','profile_screen_in_ordered','In Ordered','2022-01-02 16:06:30','2022-01-02 16:06:30'),(114,'en','profile_screen_check_balance','Check Balance','2022-01-02 16:06:30','2022-01-02 16:06:30'),(115,'en','profile_screen_account','Account','2022-01-02 16:06:30','2022-01-02 16:06:30'),(116,'en','flash_deal_list_screen_flash_deal_has_ended','Flashdeal has ended','2022-01-02 16:06:30','2022-01-02 16:06:30'),(117,'en','flash_deal_list_screen_ended','Ended','2022-01-02 16:06:30','2022-01-02 16:06:30'),(118,'en','flash_deal_list_flash_deals','Flash Deals','2022-01-02 16:06:30','2022-01-02 16:06:30'),(119,'en','todays_deal_products_screen_todays_deal','Today\'s Deal','2022-01-02 16:06:30','2022-01-02 16:06:30'),(120,'en','top_selling_products_screen_top_selling_products','Top Selling Products','2022-01-02 16:06:30','2022-01-02 16:06:30'),(121,'en','filter_screen_product','Product','2022-01-02 16:06:30','2022-01-02 16:06:30'),(122,'en','filter_screen_products','Products','2022-01-02 16:06:30','2022-01-02 16:06:30'),(123,'en','filter_screen_sellers','Sellers','2022-01-02 16:06:30','2022-01-02 16:06:30'),(124,'en','filter_screen_brands','Brands','2022-01-02 16:06:30','2022-01-02 16:06:30'),(125,'en','filter_screen_categories','Categories','2022-01-02 16:06:30','2022-01-02 16:06:30'),(126,'en','filter_screen_filter_warning','You can use filters while searching for products.','2022-01-02 16:06:30','2022-01-02 16:06:30'),(127,'en','filter_screen_filter','Filter','2022-01-02 16:06:30','2022-01-02 16:06:30'),(128,'en','filter_screen_sort_products_by','Sort Products By','2022-01-02 16:06:30','2022-01-02 16:06:30'),(129,'en','filter_screen_price_high_to_low','Price high to low','2022-01-02 16:06:30','2022-01-02 16:06:30'),(130,'en','filter_screen_price_low_to_high','Price low to high','2022-01-02 16:06:30','2022-01-02 16:06:30'),(131,'en','filter_screen_price_new_arrival','New Arrival','2022-01-02 16:06:30','2022-01-02 16:06:30'),(132,'en','filter_screen_popularity','Popularity','2022-01-02 16:06:30','2022-01-02 16:06:30'),(133,'en','filter_screen_top_rated','Top Rated','2022-01-02 16:06:30','2022-01-02 16:06:30'),(134,'en','filter_screen_maximum','Maximum','2022-01-02 16:06:30','2022-01-02 16:06:30'),(135,'en','filter_screen_minimum','Minimum','2022-01-02 16:06:30','2022-01-02 16:06:30'),(136,'en','filter_screen_price_range','Price Range','2022-01-02 16:06:30','2022-01-02 16:06:30'),(137,'en','filter_screen_search_here','Search here ?','2022-01-02 16:06:30','2022-01-02 16:06:30'),(138,'en','filter_screen_no_suggestion_available','No suggestion is available','2022-01-02 16:06:30','2022-01-02 16:06:30'),(139,'en','filter_screen_searched_for','searched for','2022-01-02 16:06:30','2022-01-02 16:06:30'),(140,'en','filter_screen_times','time(s)','2022-01-02 16:06:30','2022-01-02 16:06:30'),(141,'en','filter_screen_found','found','2022-01-02 16:06:30','2022-01-02 16:06:30'),(142,'en','filter_screen_loading_suggestions','Loading suggestions...','2022-01-02 16:06:30','2022-01-02 16:06:30'),(143,'en','filter_screen_sort','Sort','2022-01-02 16:06:30','2022-01-02 16:06:30'),(144,'en','filter_screen_default','Default','2022-01-02 16:06:30','2022-01-02 16:06:30'),(145,'en','filter_screen_sort_warning','You can use sorting while searching for products.','2022-01-02 16:06:30','2022-01-02 16:06:30'),(146,'en','filter_screen_min_max_warning','Min price cannot be larger than max price','2022-01-02 16:06:31','2022-01-02 16:06:31'),(147,'en','product_details_screen_copy_product_link','Copy Product Link','2022-01-02 16:06:31','2022-01-02 16:06:31'),(148,'en','product_details_screen_share_options','Share Options','2022-01-02 16:06:31','2022-01-02 16:06:31'),(149,'en','product_details_screen_seller_chat_title','Title','2022-01-02 16:06:31','2022-01-02 16:06:31'),(150,'en','product_details_screen_seller_chat_enter_title','Enter Title','2022-01-02 16:06:31','2022-01-02 16:06:31'),(151,'en','product_details_screen_seller_chat_messasge','Message','2022-01-02 16:06:31','2022-01-02 16:06:31'),(152,'en','product_details_screen_seller_chat_enter_messasge','Enter Message','2022-01-02 16:06:31','2022-01-02 16:06:31'),(153,'en','product_details_screen_seller_chat_title_message_empty_warning','Title or message cannot be empty','2022-01-02 16:06:31','2022-01-02 16:06:31'),(154,'en','product_details_screen_seller_chat_creation_unable_warning','Could not create conversation','2022-01-02 16:06:31','2022-01-02 16:06:31'),(155,'en','product_details_screen_snackbar_added_to_cart','Added to cart','2022-01-02 16:06:31','2022-01-02 16:06:31'),(156,'en','product_details_screen_snackbar_show_cart','SHOW CART','2022-01-02 16:06:31','2022-01-02 16:06:31'),(157,'en','product_details_screen_description','Description:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(158,'en','product_details_screen_brand','Brand:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(159,'en','product_details_screen_total_price','Total Price:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(160,'en','product_details_screen_price','Price:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(161,'en','product_details_screen_color','Color:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(162,'en','product_details_screen_seller','Seller','2022-01-02 16:06:31','2022-01-02 16:06:31'),(163,'en','product_details_screen_club_point','Club Point:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(164,'en','product_details_screen_quantity','Quantity:','2022-01-02 16:06:31','2022-01-02 16:06:31'),(165,'en','product_details_screen_video_not_available','Video not available','2022-01-02 16:06:31','2022-01-02 16:06:31'),(166,'en','product_details_screen_video','Video','2022-01-02 16:06:31','2022-01-02 16:06:31'),(167,'en','product_details_screen_reviews','Reviews','2022-01-02 16:06:31','2022-01-02 16:06:31'),(168,'en','product_details_screen_seller_policy','Seller Policy','2022-01-02 16:06:31','2022-01-02 16:06:31'),(169,'en','product_details_screen_return_policy','Return Policy','2022-01-02 16:06:31','2022-01-02 16:06:31'),(170,'en','product_details_screen_support_policy','Support Policy','2022-01-02 16:06:31','2022-01-02 16:06:31'),(171,'en','product_details_screen_products_may_like','Products you may also like','2022-01-02 16:06:31','2022-01-02 16:06:31'),(172,'en','product_details_screen_top_selling_products_from_seller','Top Selling Products from this seller','2022-01-02 16:06:31','2022-01-02 16:06:31'),(173,'en','product_details_screen_chat_with_seller','Chat with seller','2022-01-02 16:06:31','2022-01-02 16:06:31'),(174,'en','product_details_screen_available','available','2022-01-02 16:06:31','2022-01-02 16:06:31'),(175,'en','product_details_screen_button_add_to_cart','Add to Cart','2022-01-02 16:06:31','2022-01-02 16:06:31'),(176,'en','product_details_screen_button_buy_now','Buy Now','2022-01-02 16:06:31','2022-01-02 16:06:31'),(177,'en','product_details_screen_no_top_selling_product','No top selling products from this seller','2022-01-02 16:06:31','2022-01-02 16:06:31'),(178,'en','product_details_screen_no_related_product','No related products','2022-01-02 16:06:31','2022-01-02 16:06:31'),(179,'en','order_list_screen_all','All','2022-01-02 16:06:31','2022-01-02 16:06:31'),(180,'en','order_list_screen_paid','Paid','2022-01-02 16:06:31','2022-01-02 16:06:31'),(181,'en','order_list_screen_unpaid','Unpaid','2022-01-02 16:06:31','2022-01-02 16:06:31'),(182,'en','order_list_screen_confirmed','Confirmed','2022-01-02 16:06:31','2022-01-02 16:06:31'),(183,'en','order_list_screen_on_delivery','On Delivery','2022-01-02 16:06:31','2022-01-02 16:06:31'),(184,'en','order_list_screen_delivered','Delivered','2022-01-02 16:06:31','2022-01-02 16:06:31'),(185,'en','order_list_screen_no_more_orders','No More Orders','2022-01-02 16:06:31','2022-01-02 16:06:31'),(186,'en','order_list_screen_loading_more_orders','Loading More order ...','2022-01-02 16:06:31','2022-01-02 16:06:31'),(187,'en','order_list_screen_purchase_history','Purchase History','2022-01-02 16:06:31','2022-01-02 16:06:31'),(188,'en','order_list_screen_payment_status','Payment Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(189,'en','order_list_screen_delivery_status','Delivery Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(190,'en','order_details_screen_refund_product_name','Product Name','2022-01-02 16:06:31','2022-01-02 16:06:31'),(191,'en','order_details_screen_refund_order_code','Order Code','2022-01-02 16:06:31','2022-01-02 16:06:31'),(192,'en','order_details_screen_refund_reason','Reason','2022-01-02 16:06:31','2022-01-02 16:06:31'),(193,'en','order_details_screen_refund_reason_empty_warning','Reason cannot be empty','2022-01-02 16:06:31','2022-01-02 16:06:31'),(194,'en','order_details_screen_refund_enter_reason','Enter Reason','2022-01-02 16:06:31','2022-01-02 16:06:31'),(195,'en','order_details_screen_refund_snackbar_show_request_list','Show Request List','2022-01-02 16:06:31','2022-01-02 16:06:31'),(196,'en','order_details_screen_ordered_product','Ordered Product','2022-01-02 16:06:31','2022-01-02 16:06:31'),(197,'en','order_details_screen_no_item_ordered','No items are ordered','2022-01-02 16:06:31','2022-01-02 16:06:31'),(198,'en','order_details_screen_sub_total','SUB TOTAL','2022-01-02 16:06:31','2022-01-02 16:06:31'),(199,'en','order_details_screen_tax','TAX','2022-01-02 16:06:31','2022-01-02 16:06:31'),(200,'en','order_details_screen_shipping_cost','SHIPPING COST','2022-01-02 16:06:31','2022-01-02 16:06:31'),(201,'en','order_details_screen_discount','DISCOUNT','2022-01-02 16:06:31','2022-01-02 16:06:31'),(202,'en','order_details_screen_grand_total','GRAND TOTAL','2022-01-02 16:06:31','2022-01-02 16:06:31'),(203,'en','order_details_screen_timeline_tile_order_placed','Order placed','2022-01-02 16:06:31','2022-01-02 16:06:31'),(204,'en','order_details_screen_timeline_tile_confirmed','Confirmed','2022-01-02 16:06:31','2022-01-02 16:06:31'),(205,'en','order_details_screen_timeline_tile_on_delivery','On Delivery','2022-01-02 16:06:31','2022-01-02 16:06:31'),(206,'en','order_details_screen_timeline_tile_delivered','Delivered','2022-01-02 16:06:31','2022-01-02 16:06:31'),(207,'en','order_details_screen_order_code','Order Code','2022-01-02 16:06:31','2022-01-02 16:06:31'),(208,'en','order_details_screen_shipping_method','Shipping Method','2022-01-02 16:06:31','2022-01-02 16:06:31'),(209,'en','order_details_screen_order_date','Order Date','2022-01-02 16:06:31','2022-01-02 16:06:31'),(210,'en','order_details_screen_payment_method','Payment Method','2022-01-02 16:06:31','2022-01-02 16:06:31'),(211,'en','order_details_screen_payment_status','Payment Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(212,'en','order_details_screen_delivery_status','Delivery Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(213,'en','order_details_screen_shipping_address','Shipping Address','2022-01-02 16:06:31','2022-01-02 16:06:31'),(214,'en','order_details_screen_total_amount','Total Amount','2022-01-02 16:06:31','2022-01-02 16:06:31'),(215,'en','order_details_screen_name','Name','2022-01-02 16:06:31','2022-01-02 16:06:31'),(216,'en','order_details_screen_email','Email','2022-01-02 16:06:31','2022-01-02 16:06:31'),(217,'en','order_details_screen_address','Address','2022-01-02 16:06:31','2022-01-02 16:06:31'),(218,'en','order_details_screen_city','City','2022-01-02 16:06:31','2022-01-02 16:06:31'),(219,'en','order_details_screen_state','State','2022-01-02 16:06:31','2022-01-02 16:06:31'),(220,'en','order_details_screen_country','Country','2022-01-02 16:06:31','2022-01-02 16:06:31'),(221,'en','order_details_screen_phone','Phone','2022-01-02 16:06:31','2022-01-02 16:06:31'),(222,'en','order_details_screen_postal_code','Postal code','2022-01-02 16:06:31','2022-01-02 16:06:31'),(223,'en','order_details_screen_item','item','2022-01-02 16:06:31','2022-01-02 16:06:31'),(224,'en','order_details_screen_ask_for_refund','Ask For Refund','2022-01-02 16:06:31','2022-01-02 16:06:31'),(225,'en','order_details_screen_refund_status','Refund Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(226,'en','order_details_screen_order_details','Order Details','2022-01-02 16:06:31','2022-01-02 16:06:31'),(227,'en','order_details_screen_make_offline_payment','Make Offline Payment','2022-01-02 16:06:31','2022-01-02 16:06:31'),(228,'en','shipping_info_screen_address_choice_warning','Choose an address','2022-01-02 16:06:31','2022-01-22 10:09:38'),(229,'en','shipping_info_screen_country_warning','Select a country','2022-01-02 16:06:31','2022-01-02 16:06:31'),(230,'en','shipping_info_screen_go_to_address','To add or edit addresses, Go to address page','2022-01-02 16:06:31','2022-01-02 16:06:31'),(231,'en','shipping_info_screen_address','Address','2022-01-02 16:06:31','2022-01-02 16:06:31'),(232,'en','shipping_info_screen_city','City','2022-01-02 16:06:31','2022-01-02 16:06:31'),(233,'en','shipping_info_screen_enter_city','Enter City','2022-01-02 16:06:31','2022-01-02 16:06:31'),(234,'en','shipping_info_screen_postal_code','Postal Code','2022-01-02 16:06:31','2022-01-02 16:06:31'),(235,'en','shipping_info_screen_country','Country','2022-01-02 16:06:31','2022-01-02 16:06:31'),(236,'en','shipping_info_screen_state','State','2022-01-02 16:06:31','2022-01-02 16:06:31'),(237,'en','shipping_info_screen_phone','Phone','2022-01-02 16:06:31','2022-01-02 16:06:31'),(238,'en','shipping_info_screen_shipping_cost','Shipping Cost','2022-01-02 16:06:31','2022-01-02 16:06:31'),(239,'en','shipping_info_screen_btn_proceed_to_checkout','PROCEED TO CHECKOUT','2022-01-02 16:06:31','2022-01-02 16:06:31'),(240,'en','messenger_list_screen_messages','Messages','2022-01-02 16:06:31','2022-01-02 16:06:31'),(241,'en','chat_screen_btn_load_more','Load More','2022-01-02 16:06:31','2022-01-02 16:06:31'),(242,'en','chat_screen_type_message_here','Type your message here ...','2022-01-02 16:06:31','2022-01-02 16:06:31'),(243,'en','wallet_screen_amount_warning','Amount cannot be empty','2022-01-02 16:06:31','2022-01-02 16:06:31'),(244,'en','wallet_screen_my_wallet','My Wallet','2022-01-02 16:06:31','2022-01-02 16:06:31'),(245,'en','wallet_screen_no_recharges_yet','No recharges yet','2022-01-02 16:06:31','2022-01-02 16:06:31'),(246,'en','wallet_screen_payment_method','Payment Method','2022-01-02 16:06:31','2022-01-02 16:06:31'),(247,'en','wallet_screen_approval_status','Approval Status','2022-01-02 16:06:31','2022-01-02 16:06:31'),(248,'en','wallet_screen_wallet_balance','Wallet Balance','2022-01-02 16:06:32','2022-01-02 16:06:32'),(249,'en','wallet_screen_last_recharged','Last recharged','2022-01-02 16:06:32','2022-01-02 16:06:32'),(250,'en','wallet_screen_wallet_recharge_history','Wallet Recharge History','2022-01-02 16:06:32','2022-01-02 16:06:32'),(251,'en','wallet_screen_amount','Amount','2022-01-02 16:06:32','2022-01-02 16:06:32'),(252,'en','wallet_screen_enter_amount','Enter Amount','2022-01-02 16:06:32','2022-01-02 16:06:32'),(253,'en','recharge_wallet_screen_recharge_wallet','Recharge Wallet','2022-01-02 16:06:32','2022-01-02 16:06:32'),(254,'en','checkout_screen_enter_coupon_code','Enter coupon code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(255,'en','checkout_screen_coupon_code_warning','Enter coupon code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(256,'en','checkout_screen_subtotal','SUB TOTAL','2022-01-02 16:06:32','2022-01-02 16:06:32'),(257,'en','checkout_screen_tax','TAX','2022-01-02 16:06:32','2022-01-02 16:06:32'),(258,'en','checkout_screen_shipping_cost','SHIPPING COST','2022-01-02 16:06:32','2022-01-02 16:06:32'),(259,'en','checkout_screen_discount','DISCOUNT','2022-01-02 16:06:32','2022-01-02 16:06:32'),(260,'en','checkout_screen_grand_total','GRAND TOTAL','2022-01-02 16:06:32','2022-01-02 16:06:32'),(261,'en','checkout_screen_total_amount','Total Amount','2022-01-02 16:06:32','2022-01-02 16:06:32'),(262,'en','checkout_screen_coupon_code','Coupon Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(263,'en','checkout_screen_apply_coupon','APPLY COUPON','2022-01-02 16:06:32','2022-01-02 16:06:32'),(264,'en','checkout_screen_place_my_order','PLACE MY ORDER','2022-01-02 16:06:32','2022-01-02 16:06:32'),(265,'en','checkout_screen_remove','Remove','2022-01-02 16:06:32','2022-01-02 16:06:32'),(266,'en','checkout_screen_checkout','Checkout','2022-01-02 16:06:32','2022-01-02 16:06:32'),(267,'en','wishlist_screen_login_warning','Please log in to see the wishlist items','2022-01-02 16:06:32','2022-01-02 16:06:32'),(268,'en','wishlist_screen_my_wishlist','My Wishlist','2022-01-02 16:06:32','2022-01-02 16:06:32'),(269,'en','login_screen_email_warning','Enter email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(270,'en','login_screen_phone_warning','Enter phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(271,'en','login_screen_password_warning','Enter password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(272,'en','login_screen_login_to','Login to','2022-01-02 16:06:32','2022-01-02 16:06:32'),(273,'en','login_screen_or_login_with_phone','or, Login with a phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(274,'en','login_screen_or_login_with_email','or, Login with an email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(275,'en','login_screen_email','Email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(276,'en','login_screen_password','Password','2022-01-02 16:06:32','2022-01-22 10:09:38'),(277,'en','login_screen_phone','Phone','2022-01-02 16:06:32','2022-01-22 10:09:38'),(278,'en','login_screen_forgot_password','Forgot Password?','2022-01-02 16:06:32','2022-01-02 16:06:32'),(279,'en','login_screen_log_in','Log in','2022-01-02 16:06:32','2022-01-02 16:06:32'),(280,'en','login_screen_or_create_new_account','or, create a new account ?','2022-01-02 16:06:32','2022-01-02 16:06:32'),(281,'en','login_screen_sign_up','Sign up','2022-01-02 16:06:32','2022-01-02 16:06:32'),(282,'en','login_screen_login_with','Login with','2022-01-02 16:06:32','2022-01-02 16:06:32'),(283,'en','registration_screen_name_warning','Enter your name','2022-01-02 16:06:32','2022-01-02 16:06:32'),(284,'en','registration_screen_email_warning','Enter email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(285,'en','registration_screen_phone_warning','Enter phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(286,'en','registration_screen_password_warning','Enter password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(287,'en','registration_screen_password_confirm_warning','Confirm your password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(288,'en','registration_screen_password_length_warning','Password must contain atleast 6 characters','2022-01-02 16:06:32','2022-01-02 16:06:32'),(289,'en','registration_screen_password_length_recommendation','Password must contain at least 6 characters','2022-01-02 16:06:32','2022-01-02 16:06:32'),(290,'en','registration_screen_password_match_warning','Passwords do not match','2022-01-02 16:06:32','2022-01-02 16:06:32'),(291,'en','registration_screen_join','Join','2022-01-02 16:06:32','2022-01-02 16:06:32'),(292,'en','registration_screen_name','Name','2022-01-02 16:06:32','2022-01-02 16:06:32'),(293,'en','registration_screen_email','Email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(294,'en','registration_screen_phone','Phone','2022-01-02 16:06:32','2022-01-02 16:06:32'),(295,'en','registration_screen_password','Password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(296,'en','registration_screen_retype_password','Retype Password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(297,'en','registration_screen_or_register_with_phone','or, Register with a phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(298,'en','registration_screen_or_register_with_email','or, Register with an email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(299,'en','registration_screen_register_sign_up','Sign Up','2022-01-02 16:06:32','2022-01-02 16:06:32'),(300,'en','registration_screen_already_have_account','Already have an Account ?','2022-01-02 16:06:32','2022-01-02 16:06:32'),(301,'en','registration_screen_log_in','Log in','2022-01-02 16:06:32','2022-01-02 16:06:32'),(302,'en','password_forget_screen_email','Email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(303,'en','password_forget_screen_phone','Phone','2022-01-02 16:06:32','2022-01-02 16:06:32'),(304,'en','password_forget_screen_email_warning','Enter email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(305,'en','password_forget_screen_phone_warning','Enter phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(306,'en','password_forget_screen_forget_password','Forget Password ?','2022-01-02 16:06:32','2022-01-02 16:06:32'),(307,'en','password_forget_screen_send_code_via_phone','or, send code via phone number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(308,'en','password_forget_screen_send_code_via_email','or, send code via email','2022-01-02 16:06:32','2022-01-02 16:06:32'),(309,'en','otp_screen_btn_send_code','Send Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(310,'en','otp_screen_verification_code_warning','Enter verification code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(311,'en','otp_screen_verify_your','Verify your','2022-01-02 16:06:32','2022-01-02 16:06:32'),(312,'en','otp_screen_email_account','Email Account','2022-01-02 16:06:32','2022-01-02 16:06:32'),(313,'en','otp_screen_phone_number','Phone Number','2022-01-02 16:06:32','2022-01-02 16:06:32'),(314,'en','otp_screen_enter_verification_code_to_email','Enter the verification code that sent to your email recently.','2022-01-02 16:06:32','2022-01-02 16:06:32'),(315,'en','otp_screen_enter_verification_code_to_phone','Enter the verification code that sent to your phone recently.','2022-01-02 16:06:32','2022-01-02 16:06:32'),(316,'en','otp_screen_confirm','Confirm','2022-01-02 16:06:32','2022-01-02 16:06:32'),(317,'en','otp_screen_resend_code','Resend Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(318,'en','password_otp_screen_code_warning','Enter the code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(319,'en','password_otp_screen_password_warning','Enter password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(320,'en','password_otp_screen_password_confirm_warning','Confirm your password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(321,'en','password_otp_screen_password_length_warning','Password must contain at least 6 characters','2022-01-02 16:06:32','2022-01-02 16:06:32'),(322,'en','password_otp_screen_password_length_recommendation','Password must contain at least 6 characters','2022-01-02 16:06:32','2022-01-02 16:06:32'),(323,'en','password_otp_screen_password_match_warning','Passwords do not match','2022-01-02 16:06:32','2022-01-02 16:06:32'),(324,'en','password_otp_screen_enter_the_code_sent','Enter the code sent','2022-01-02 16:06:32','2022-01-02 16:06:32'),(325,'en','password_otp_screen_enter_verification_code_to_email','Enter the verification code that sent to your email recently.','2022-01-02 16:06:32','2022-01-02 16:06:32'),(326,'en','password_otp_screen_enter_verification_code_to_phone','Enter the verification code that sent to your phone recently.','2022-01-02 16:06:32','2022-01-02 16:06:32'),(327,'en','password_otp_screen_password','Password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(328,'en','password_otp_screen_retype_password','Retype Password','2022-01-02 16:06:32','2022-01-02 16:06:32'),(329,'en','password_otp_screen_confirm','Confirm','2022-01-02 16:06:32','2022-01-02 16:06:32'),(330,'en','password_otp_screen_resend_code','Resend Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(331,'en','address_screen_address_warning','Enter Address','2022-01-02 16:06:32','2022-01-02 16:06:32'),(332,'en','address_screen_back_to_shipping_info','Back to shipping info','2022-01-02 16:06:32','2022-01-02 16:06:32'),(333,'en','address_screen_city_warning','Select a city','2022-01-02 16:06:32','2022-01-02 16:06:32'),(334,'en','address_screen_state_warning','Select a state','2022-01-02 16:06:32','2022-01-02 16:06:32'),(335,'en','address_screen_country_warning','Select a country','2022-01-02 16:06:32','2022-01-02 16:06:32'),(336,'en','address_screen_address','Address','2022-01-02 16:06:32','2022-01-02 16:06:32'),(337,'en','address_screen_enter_address','Enter Address','2022-01-02 16:06:32','2022-01-02 16:06:32'),(338,'en','address_screen_city','City','2022-01-02 16:06:32','2022-01-02 16:06:32'),(339,'en','address_screen_select_city','Select a city','2022-01-02 16:06:32','2022-01-02 16:06:32'),(340,'en','address_screen_enter_city','Enter City','2022-01-02 16:06:32','2022-01-02 16:06:32'),(341,'en','address_screen_postal_code','Postal Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(342,'en','address_screen_enter_postal_code','Enter Postal Code','2022-01-02 16:06:32','2022-01-02 16:06:32'),(343,'en','address_screen_country','Country','2022-01-02 16:06:32','2022-01-02 16:06:32'),(344,'en','address_screen_select_country','Select a country','2022-01-02 16:06:32','2022-01-02 16:06:32'),(345,'en','address_screen_enter_country','Enter Country','2022-01-02 16:06:32','2022-01-02 16:06:32'),(346,'en','address_screen_state','State','2022-01-02 16:06:32','2022-01-02 16:06:32'),(347,'en','address_screen_select_state','Select a state','2022-01-02 16:06:32','2022-01-02 16:06:32'),(348,'en','address_screen_enter_state','Enter State','2022-01-02 16:06:32','2022-01-02 16:06:32'),(349,'en','address_screen_phone','Phone','2022-01-02 16:06:32','2022-01-02 16:06:32'),(350,'en','address_screen_enter_phone','Enter Phone','2022-01-02 16:06:32','2022-01-02 16:06:32'),(351,'en','address_screen_address_remove_warning','Are you sure to remove this address ?','2022-01-02 16:06:32','2022-01-02 16:06:32'),(352,'en','address_screen_addresses_of_user','Addresses of user','2022-01-02 16:06:32','2022-01-02 16:06:32'),(353,'en','address_screen_addresses_to_make_default','Double tap on an address to make it default','2022-01-02 16:06:32','2022-01-02 16:06:32'),(354,'en','address_screen_no_country_available','No country available','2022-01-02 16:06:32','2022-01-02 16:06:32'),(355,'en','address_screen_no_state_available','No state available','2022-01-02 16:06:32','2022-01-02 16:06:32'),(356,'en','address_screen_no_city_available','No city available','2022-01-02 16:06:32','2022-01-02 16:06:32'),(357,'en','address_screen_loading_countries','Loading Countries ...','2022-01-02 16:06:32','2022-01-02 16:06:32'),(358,'en','address_screen_loading_states','Loading States ...','2022-01-02 16:06:32','2022-01-02 16:06:32'),(359,'en','address_screen_loading_cities','Loading Cities ...','2022-01-02 16:06:32','2022-01-02 16:06:32'),(360,'en','address_screen_select_a_country_first','Select a country first','2022-01-02 16:06:32','2022-01-02 16:06:32'),(361,'en','address_screen_select_a_state_first','Select a state first','2022-01-02 16:06:32','2022-01-02 16:06:32'),(362,'en','main_screen_bottom_navigation_home','Home','2022-01-02 16:06:32','2022-01-02 16:06:32'),(363,'en','main_screen_bottom_navigation_categories','Categories','2022-01-02 16:06:32','2022-01-02 16:06:32'),(364,'en','main_screen_bottom_navigation_cart','Cart','2022-01-02 16:06:33','2022-01-02 16:06:33'),(365,'en','main_screen_bottom_navigation_profile','Profile','2022-01-02 16:06:33','2022-01-02 16:06:33'),(366,'en','bkash_screen_fetching_bkash_url','Fetching bkash url ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(367,'en','bkash_screen_pay_with_bkash','Pay with Bkash','2022-01-02 16:06:33','2022-01-02 16:06:33'),(368,'en','nagad_screen_fetching_nagad_url','Fetching nagad url ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(369,'en','nagad_screen_pay_with_nagad','Pay with Nagad','2022-01-02 16:06:33','2022-01-02 16:06:33'),(370,'en','iyzico_screen_pay_with_iyzico','Pay with Iyzico','2022-01-02 16:06:33','2022-01-02 16:06:33'),(371,'en','paypal_screen_fetching_paypal_url','Fetching paypal url ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(372,'en','paypal_screen_pay_with_paypal','Pay with Paypal','2022-01-02 16:06:33','2022-01-02 16:06:33'),(373,'en','paystack_screen_pay_with_paystack','Pay with Paystack','2022-01-02 16:06:33','2022-01-02 16:06:33'),(374,'en','paytm_screen_pay_with_paytm','Pay with Paytm','2022-01-02 16:06:33','2022-01-02 16:06:33'),(375,'en','razorpay_screen_pay_with_razorpay','Pay with Razorpay','2022-01-02 16:06:33','2022-01-02 16:06:33'),(376,'en','sslcommerz_screen_fetching_sslcommerz_url','Fetching sslcommerz url ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(377,'en','sslcommerz_screen_pay_with_sslcommerz','Pay with Sslcommerz','2022-01-02 16:06:33','2022-01-02 16:06:33'),(378,'en','stripe_screen_pay_with_stripe','Pay with Stripe','2022-01-02 16:06:33','2022-01-02 16:06:33'),(379,'en','brand_products_screen_search_product_of_brand','Search products of brand','2022-01-02 16:06:33','2022-01-02 16:06:33'),(380,'en','category_products_screen_search_products_from','Search products from','2022-01-02 16:06:33','2022-01-02 16:06:33'),(381,'en','flash_deal_products_screen_search_products_from','Search products from','2022-01-02 16:06:33','2022-01-02 16:06:33'),(382,'en','change_language_change_language','Change Language','2022-01-02 16:06:33','2022-01-02 16:06:33'),(383,'en','change_language_no_language_is_added','No language is Added','2022-01-02 16:06:33','2022-01-02 16:06:33'),(384,'en','club_point_screen_snackbar_points_converted','Points converted to wallet','2022-01-02 16:06:33','2022-01-02 16:06:33'),(385,'en','club_point_screen_snackbar_show_wallet','SHOW WALLET','2022-01-02 16:06:33','2022-01-02 16:06:33'),(386,'en','club_point_screen_earned_points','Earned Points','2022-01-02 16:06:33','2022-01-02 16:06:33'),(387,'en','club_point_screen_converted_question','Converted ?','2022-01-02 16:06:33','2022-01-02 16:06:33'),(388,'en','club_point_screen_done','DONE','2022-01-02 16:06:33','2022-01-02 16:06:33'),(389,'en','club_point_screen_convert','Convert','2022-01-02 16:06:33','2022-01-02 16:06:33'),(390,'en','map_location_screen_your_delivery_location','Your delivery location . . .','2022-01-02 16:06:33','2022-01-02 16:06:33'),(391,'en','map_location_screen_calculating','Calculating...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(392,'en','map_location_screen_pick_here','Pick Here','2022-01-02 16:06:33','2022-01-02 16:06:33'),(393,'en','offline_screen_amount_name_trxid_warning','Amount,Name and Transaction Id are necessary','2022-01-02 16:06:33','2022-01-02 16:06:33'),(394,'en','offline_screen_photo_warning','Photo proof is necessary','2022-01-02 16:06:33','2022-01-02 16:06:33'),(395,'en','offline_screen_offline_payment','Offline Payment','2022-01-02 16:06:33','2022-01-02 16:06:33'),(396,'en','offline_screen_fields_mandatory','All * marked fields are mandatory','2022-01-02 16:06:33','2022-01-02 16:06:33'),(397,'en','offline_screen_fill_up_necessary_info','Correctly fill-up the necessary information. Later you cannot edit or re-submit the form','2022-01-02 16:06:33','2022-01-02 16:06:33'),(398,'en','offline_screen_amount','Amount','2022-01-02 16:06:33','2022-01-02 16:06:33'),(399,'en','offline_screen_name','Name','2022-01-02 16:06:33','2022-01-02 16:06:33'),(400,'en','offline_screen_transaction_id','Transaction Id','2022-01-02 16:06:33','2022-01-02 16:06:33'),(401,'en','offline_screen_photo_proof','Photo Proof','2022-01-02 16:06:33','2022-01-02 16:06:33'),(402,'en','offline_screen_only_image_file_allowed','only image file allowed','2022-01-02 16:06:33','2022-01-02 16:06:33'),(403,'en','product_reviews_screen_type_your_review_here','Type your review here ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(404,'en','product_reviews_screen_no_more_reviews','No More Reviews','2022-01-02 16:06:33','2022-01-02 16:06:33'),(405,'en','product_reviews_screen_loading_more_reviews','Loading More Reviews ...','2022-01-02 16:06:33','2022-01-02 16:06:33'),(406,'en','product_reviews_screen_no_reviews_yet','No reviews yet. Be the first one to review this product','2022-01-02 16:06:33','2022-01-02 16:06:33'),(407,'en','product_reviews_screen_reviews','Reviews','2022-01-02 16:06:33','2022-01-02 16:06:33'),(408,'en','product_reviews_screen_login_warning','You need to login to give a review','2022-01-02 16:06:33','2022-01-02 16:06:33'),(409,'en','product_reviews_screen_review_empty_warning','Review cannot be empty','2022-01-02 16:06:33','2022-01-02 16:06:33'),(410,'en','product_reviews_screen_star_warning','At least one star must be given','2022-01-02 16:06:33','2022-01-02 16:06:33'),(411,'en','profile_edit_screen_name_warning','Enter your name','2022-01-02 16:06:33','2022-01-02 16:06:33'),(412,'en','profile_edit_screen_email_warning','Enter email','2022-01-02 16:06:33','2022-01-02 16:06:33'),(413,'en','profile_edit_screen_phone_warning','Enter phone number','2022-01-02 16:06:33','2022-01-02 16:06:33'),(414,'en','profile_edit_screen_password_warning','Enter password','2022-01-02 16:06:33','2022-01-02 16:06:33'),(415,'en','profile_edit_screen_password_confirm_warning','Confirm your password','2022-01-02 16:06:33','2022-01-02 16:06:33'),(416,'en','profile_edit_screen_password_length_warning','Password must contain atleast 6 characters','2022-01-02 16:06:33','2022-01-02 16:06:33'),(417,'en','profile_edit_screen_password_match_warning','Passwords do not match','2022-01-02 16:06:33','2022-01-02 16:06:33'),(418,'en','profile_edit_screen_password_length_recommendation','Password must contain at least 6 characters','2022-01-02 16:06:33','2022-01-02 16:06:33'),(419,'en','profile_edit_screen_login_warning','Please log in to see the profile','2022-01-02 16:06:33','2022-01-02 16:06:33'),(420,'en','profile_edit_screen_basic_information','Basic Information','2022-01-02 16:06:33','2022-01-02 16:06:33'),(421,'en','profile_edit_screen_name','Name','2022-01-02 16:06:33','2022-01-02 16:06:33'),(422,'en','profile_edit_screen_password','Password','2022-01-02 16:06:33','2022-01-02 16:06:33'),(423,'en','profile_edit_screen_retype_password','Retype Password','2022-01-02 16:06:33','2022-01-02 16:06:33'),(424,'en','profile_edit_screen_btn_update_profile','Update Profile','2022-01-02 16:06:33','2022-01-02 16:06:33'),(425,'en','profile_edit_screen_edit_profile','Edit Profile','2022-01-02 16:06:33','2022-01-02 16:06:33'),(426,'en','refund_request_screen_refund_requests','Refund Requests','2022-01-02 16:06:33','2022-01-02 16:06:33'),(427,'en','refund_request_screen_refund_status','Refund Status','2022-01-02 16:06:33','2022-01-02 16:06:33'),(428,'en','seller_details_screen_top_selling_products','Top Selling Products','2022-01-02 16:06:33','2022-01-02 16:06:33'),(429,'en','seller_details_screen_featured_products','Featured Products','2022-01-02 16:06:33','2022-01-02 16:06:33'),(430,'en','seller_details_screen_new_arrivals','New Arrivals','2022-01-02 16:06:33','2022-01-02 16:06:33'),(431,'en','seller_details_screen_no_featured_porducts','No featured product is available from this seller','2022-01-02 16:06:33','2022-01-02 16:06:33'),(432,'en','seller_details_screen_no_top_selling_products','No top selling products from this seller','2022-01-02 16:06:33','2022-01-02 16:06:33'),(433,'en','seller_details_screen_no_new_arrival','No new arrivals','2022-01-02 16:06:33','2022-01-02 16:06:33'),(434,'en','seller_details_screen_btn_view_all_products','View All Products From This Seller','2022-01-02 16:06:33','2022-01-02 16:06:33'),(435,'en','seller_products_screen_search_products_of_shop','Search products of shop','2022-01-02 16:06:33','2022-01-02 16:06:33'),(436,'ar','common_login_warning','تحتاج إلى تسجيل الدخول','2022-01-02 16:15:39','2022-01-02 16:19:16'),(437,'ar','common_nothing_to_pay','لا شيء مضاف  للدفع','2022-01-02 16:15:39','2022-01-02 16:25:16'),(438,'ar','common_see_details','التفاصيل','2022-01-02 16:15:39','2022-01-02 16:25:16'),(439,'ar','common_no_payment_method_added','لم يتم إضافة طريقة الدفع','2022-01-02 16:15:39','2022-01-02 16:19:16'),(440,'ar','common_payment_choice_warning','الرجاء اختيار خيار واحد للدفع','2022-01-02 16:15:39','2022-01-02 16:19:16'),(441,'ar','common_no_data_available','لا توجد بيانات متاحة','2022-01-02 16:15:39','2022-01-02 16:19:16'),(442,'ar','common_no_address_added','لم تتم إضافة أي عناوين','2022-01-02 16:15:39','2022-01-02 16:19:16'),(443,'ar','common_loading_more_products','جارٍ تحميل المزيد من المنتجات ...','2022-01-02 16:15:39','2022-01-02 16:19:16'),(444,'ar','common_no_more_products','لا مزيد من المنتجات','2022-01-02 16:15:39','2022-01-02 16:19:16'),(445,'ar','common_no_product_is_available','لا يوجد منتج متاح','2022-01-02 16:15:39','2022-01-02 16:19:16'),(446,'ar','common_loading_more_brands','جارٍ تحميل المزيد من العلامات التجارية ...','2022-01-02 16:15:39','2022-01-02 16:19:16'),(447,'ar','common_no_more_brands','لا مزيد من العلامات التجارية','2022-01-02 16:15:39','2022-01-02 16:19:16'),(448,'ar','common_no_brand_is_available','لا توجد علامة تجارية متاحة','2022-01-02 16:15:39','2022-01-02 16:19:16'),(449,'ar','common_loading_more_items','جارٍ تحميل المزيد من العناصر ...','2022-01-02 16:15:39','2022-01-02 16:19:16'),(450,'ar','common_no_more_items','لا مزيد من العناصر','2022-01-02 16:15:39','2022-01-02 16:19:16'),(451,'ar','common_no_item_is_available','لا يوجد عنصر متاح','2022-01-02 16:15:39','2022-01-02 16:19:16'),(452,'ar','common_loading_more_shops','تحميل المزيد من المتاجر ...','2022-01-02 16:15:39','2022-01-02 16:19:16'),(453,'ar','common_no_more_shops','لا مزيد من المتاجر','2022-01-02 16:15:39','2022-01-02 16:19:16'),(454,'ar','common_no_shop_is_available','لا يوجد متجر متاح','2022-01-02 16:15:39','2022-01-02 16:19:16'),(455,'ar','common_loading_more_histories','جارٍ تحميل المزيد من السجلات ...','2022-01-02 16:15:39','2022-01-02 16:19:16'),(456,'ar','common_no_more_histories','لا مزيد من التاريخ','2022-01-02 16:15:39','2022-01-02 16:19:16'),(457,'ar','common_no_history_is_available','لا يوجد سجل متاح','2022-01-02 16:15:39','2022-01-02 16:19:16'),(458,'ar','common_loading_more_categories','تحميل المزيد من التصنيفات...','2022-01-02 16:15:39','2022-01-02 16:25:16'),(459,'ar','common_no_more_categories','لا مزيد من التصنيفات','2022-01-02 16:15:39','2022-01-02 16:25:16'),(460,'ar','common_no_category_is_available','لا توجد تصنيف متاحة','2022-01-02 16:15:39','2022-01-02 16:25:16'),(461,'ar','common_coming_soon','قريبا','2022-01-02 16:15:39','2022-01-02 16:19:16'),(462,'ar','common_close_in_all_capital','أغلق','2022-01-02 16:15:39','2022-01-02 16:19:16'),(463,'ar','common_close_in_all_lower','أغلق','2022-01-02 16:15:39','2022-01-02 16:19:16'),(464,'ar','common_close_ucfirst','إغلاق','2022-01-02 16:15:39','2022-01-02 16:25:16'),(465,'ar','common_cancel_in_all_capital','إلغاء','2022-01-02 16:15:39','2022-01-02 16:19:16'),(466,'ar','common_cancel_in_all_lower','إلغاء','2022-01-02 16:15:39','2022-01-02 16:19:16'),(467,'ar','common_cancel_ucfirst','إلغاء','2022-01-02 16:15:39','2022-01-02 16:25:16'),(468,'ar','common_confirm_in_all_capital','تأكيد','2022-01-02 16:15:39','2022-01-02 16:25:16'),(469,'ar','common_confirm_in_all_lower','تأكيد','2022-01-02 16:15:39','2022-01-02 16:25:16'),(470,'ar','common_confirm_ucfirst','تأكيد','2022-01-02 16:15:39','2022-01-02 16:25:16'),(471,'ar','common_update_in_all_capital','تحديث','2022-01-02 16:15:39','2022-01-02 16:19:16'),(472,'ar','common_update_in_all_lower','تحديث','2022-01-02 16:15:39','2022-01-02 16:19:16'),(473,'ar','common_update_ucfirst','تحديث','2022-01-02 16:15:39','2022-01-02 16:19:16'),(474,'ar','common_send_in_all_capital','إرسال','2022-01-02 16:15:39','2022-01-02 16:19:16'),(475,'ar','common_send_in_all_lower','إرسال','2022-01-02 16:15:39','2022-01-02 16:19:16'),(476,'ar','common_send_ucfirst','إرسال','2022-01-02 16:15:39','2022-01-02 16:19:16'),(477,'ar','common_clear_in_all_capital','تصفية','2022-01-02 16:15:39','2022-01-02 16:25:16'),(478,'ar','common_clear_in_all_lower','تصفية','2022-01-02 16:15:39','2022-01-02 16:25:16'),(479,'ar','common_clear_ucfirst','تصفية','2022-01-02 16:15:39','2022-01-02 16:25:16'),(480,'ar','common_apply_in_all_capital','تحديث','2022-01-02 16:15:39','2022-01-02 16:25:16'),(481,'ar','common_apply_in_all_lower','تحديث','2022-01-02 16:15:39','2022-01-02 16:25:16'),(482,'ar','common_apply_ucfirst','تحديث','2022-01-02 16:15:39','2022-01-02 16:25:16'),(483,'ar','common_add_in_all_capital','إضافة','2022-01-02 16:15:39','2022-01-02 16:25:16'),(484,'ar','common_add_in_all_lower','إضافة','2022-01-02 16:15:39','2022-01-02 16:25:16'),(485,'ar','common_add_ucfirst','إضافة','2022-01-02 16:15:39','2022-01-02 16:25:16'),(486,'ar','common_copied','نسخ','2022-01-02 16:19:40','2022-01-02 16:19:40'),(487,'ar','common_proceed','التالي','2022-01-02 16:19:40','2022-01-02 16:30:09'),(488,'ar','common_proceed_in_all_caps','التالي','2022-01-02 16:19:40','2022-01-02 16:30:09'),(489,'ar','common_submit','إرسال','2022-01-02 16:19:40','2022-01-02 16:19:40'),(490,'ar','common_view_more','عرض المزيد','2022-01-02 16:19:40','2022-01-02 16:19:40'),(491,'ar','common_show_less','عرض أقل','2022-01-02 16:19:40','2022-01-02 16:19:40'),(492,'ar','common_selected','المحدد','2022-01-02 16:19:40','2022-01-02 16:19:40'),(493,'ar','common_creating_order','إنشاء طلب...','2022-01-02 16:19:40','2022-01-02 16:30:09'),(494,'ar','common_payment_cancelled','تم إلغاء الدفع','2022-01-02 16:19:40','2022-01-02 16:19:40'),(495,'ar','common_photo_permission','إذن الصور','2022-01-02 16:19:40','2022-01-02 16:19:40'),(496,'ar','common_app_needs_permission','هذا التطبيق يحتاج إلى إذن','2022-01-02 16:19:40','2022-01-02 16:19:40'),(497,'ar','common_deny','رفض','2022-01-02 16:19:40','2022-01-02 16:30:09'),(498,'ar','common_settings','إعدادات','2022-01-02 16:19:40','2022-01-02 16:19:40'),(499,'ar','common_give_photo_permission','انتقل إلى إعدادات التطبيق الخاص بك وامنح الإذن بالصور','2022-01-02 16:19:40','2022-01-02 16:19:40'),(500,'ar','common_no_file_chosen','لم يتم اختيار ملف','2022-01-02 16:19:40','2022-01-02 16:19:40'),(501,'ar','main_drawer_not_logged_in','لم تقم بتسجيل الدخول','2022-01-02 16:19:40','2022-01-02 16:19:40'),(502,'ar','main_drawer_change_language','تغيير اللغة','2022-01-02 16:19:40','2022-01-02 16:19:40'),(503,'ar','main_drawer_home','الصفحة الرئيسية','2022-01-02 16:19:40','2022-01-02 16:30:09'),(504,'ar','main_drawer_profile','الملف الشخصي','2022-01-02 16:19:40','2022-01-02 16:19:40'),(505,'ar','main_drawer_orders','الطلبات','2022-01-02 16:19:40','2022-01-02 16:30:09'),(506,'ar','main_drawer_my_wishlist','قائمة المفضلة','2022-01-02 16:19:40','2022-01-02 16:30:09'),(507,'ar','main_drawer_messages','رسائل','2022-01-02 16:19:40','2022-01-02 16:19:40'),(508,'ar','main_drawer_wallet','المحفظة','2022-01-02 16:19:40','2022-01-02 16:30:09'),(509,'ar','main_drawer_login','تسجيل الدخول','2022-01-02 16:19:40','2022-01-02 16:19:40'),(510,'ar','main_drawer_logout','تسجيل الخروج','2022-01-02 16:19:40','2022-01-02 16:30:09'),(511,'ar','home_screen_top_categories','أعلى التصنيفات','2022-01-02 16:19:40','2022-01-02 16:30:09'),(512,'ar','home_screen_brands','العلامات التجارية','2022-01-02 16:19:40','2022-01-02 16:19:40'),(513,'ar','home_screen_top_sellers','أفضل البائعين','2022-01-02 16:19:40','2022-01-02 16:19:40'),(514,'ar','home_screen_todays_deal','صفقة اليوم','2022-01-02 16:19:40','2022-01-02 16:19:40'),(515,'ar','home_screen_flash_deal','صفقة فلاش','2022-01-02 16:19:40','2022-01-02 16:19:40'),(516,'ar','home_screen_featured_categories','تصنيفات مميزة','2022-01-02 16:19:40','2022-01-02 16:30:09'),(517,'ar','home_screen_featured_products','منتجات مميزة','2022-01-02 16:19:40','2022-01-02 16:19:40'),(518,'ar','home_screen_search','بحث','2022-01-02 16:19:40','2022-01-02 16:19:40'),(519,'ar','home_screen_no_carousel_image_found','لم يتم العثور على السلايدير','2022-01-02 16:19:40','2022-01-02 16:30:09'),(520,'ar','home_screen_no_category_found','لم يتم العثور على التصنيف','2022-01-02 16:19:40','2022-01-02 16:30:09'),(521,'ar','category_list_screen_top_categories','أعلى التصنيفات','2022-01-02 16:19:40','2022-01-02 16:30:09'),(522,'ar','category_list_screen_categories','التصنيفات','2022-01-02 16:19:40','2022-01-02 16:19:40'),(523,'ar','category_list_screen_view_products','مشاهدة المنتجات','2022-01-02 16:19:40','2022-01-02 16:19:40'),(524,'ar','category_list_screen_view_subcategories','عرض التصنيفات الفرعية','2022-01-02 16:19:40','2022-01-02 16:30:09'),(525,'ar','category_list_screen_no_subcategories','لا توجد التصنيفات فرعية متاحة','2022-01-02 16:19:40','2022-01-02 16:30:09'),(526,'ar','category_list_screen_all_products_of','جميع منتجات','2022-01-02 16:19:41','2022-01-02 16:19:41'),(527,'ar','cart_screen_cannot_order_more_than','لا يمكن طلب أكثر من','2022-01-02 16:19:41','2022-01-02 16:19:41'),(528,'ar','cart_screen_items_of_this','عنصر (عناصر) من هذا','2022-01-02 16:19:41','2022-01-02 16:19:41'),(529,'ar','cart_screen_sure_remove_item','هل أنت متأكد من إزالة هذا العنصر؟','2022-01-02 16:19:41','2022-01-02 16:19:41'),(530,'ar','cart_screen_cancel','إلغاء','2022-01-02 16:19:41','2022-01-02 16:30:09'),(531,'ar','cart_screen_confirm','تأكيد','2022-01-02 16:19:41','2022-01-02 16:30:09'),(532,'ar','cart_screen_cart_empty','السلة خاليه','2022-01-02 16:19:41','2022-01-02 16:30:09'),(533,'ar','cart_screen_total_amount','المبلغ الإجمالي','2022-01-02 16:19:41','2022-01-02 16:19:41'),(534,'ar','cart_screen_update_cart','تحديث السلة','2022-01-02 16:19:41','2022-01-02 16:30:09'),(535,'ar','cart_screen_proceed_to_shipping','انتفال إلى الشحن','2022-01-02 16:19:41','2022-01-02 16:30:09'),(536,'ar','cart_screen_shopping_cart','سلة التسوق','2022-01-02 16:19:53','2022-01-02 16:36:32'),(537,'ar','cart_screen_please_log_in','الرجاء تسجيل الدخول لرؤية عناصر سلة التسوق','2022-01-02 16:19:53','2022-01-02 16:20:09'),(538,'ar','profile_screen_please_log_in','الرجاء تسجيل الدخول لرؤية الملف الشخصي','2022-01-02 16:19:53','2022-01-02 16:20:09'),(539,'ar','profile_screen_orders','الطلبات','2022-01-02 16:19:53','2022-01-02 16:36:32'),(540,'ar','profile_screen_profile','الملف الشخصي','2022-01-02 16:19:53','2022-01-02 16:20:09'),(541,'ar','profile_screen_address','العناوين','2022-01-02 16:19:53','2022-01-02 16:36:32'),(542,'ar','profile_screen_notification','تنبيه','2022-01-02 16:19:53','2022-01-02 16:20:09'),(543,'ar','profile_screen_purchase_history','تاريخ الشراء','2022-01-02 16:19:53','2022-01-02 16:36:32'),(544,'ar','profile_screen_earning_points','تاريخ كسب النقاط','2022-01-02 16:19:53','2022-01-02 16:20:09'),(545,'ar','profile_screen_refund_requests','طلبات الإسترجاع','2022-01-02 16:19:53','2022-01-02 16:36:32'),(546,'ar','profile_screen_in_your_cart','في السلة الخاصة بك','2022-01-02 16:19:53','2022-01-02 16:36:32'),(547,'ar','profile_screen_in_wishlist','في المفضلة','2022-01-02 16:19:54','2022-01-02 16:36:32'),(548,'ar','profile_screen_in_ordered','في الطلبات','2022-01-02 16:19:54','2022-01-02 16:36:32'),(549,'ar','profile_screen_check_balance','رؤية الرصيد','2022-01-02 16:19:54','2022-01-02 16:36:32'),(550,'ar','profile_screen_account','الحساب','2022-01-02 16:19:54','2022-01-02 16:36:32'),(551,'ar','flash_deal_list_screen_flash_deal_has_ended','عرض فلاش قد انتهت','2022-01-02 16:19:54','2022-01-02 16:36:32'),(552,'ar','flash_deal_list_screen_ended','منتهية','2022-01-02 16:19:54','2022-01-02 16:36:32'),(553,'ar','flash_deal_list_flash_deals','عروض فلاش','2022-01-02 16:19:54','2022-01-02 16:36:32'),(554,'ar','todays_deal_products_screen_todays_deal','عروض اليوم','2022-01-02 16:19:54','2022-01-02 16:36:32'),(555,'ar','top_selling_products_screen_top_selling_products','المنتجات الأكثر مبيعا','2022-01-02 16:19:54','2022-01-02 16:36:32'),(556,'ar','filter_screen_product','منتج','2022-01-02 16:19:54','2022-01-02 16:36:32'),(557,'ar','filter_screen_products','منتجات','2022-01-02 16:19:54','2022-01-02 16:36:32'),(558,'ar','filter_screen_sellers','بائع','2022-01-02 16:19:54','2022-01-02 16:36:32'),(559,'ar','filter_screen_brands','علامات تجارية','2022-01-02 16:19:54','2022-01-02 16:36:32'),(560,'ar','filter_screen_categories','تصنيفات','2022-01-02 16:19:54','2022-01-02 16:36:32'),(561,'ar','filter_screen_filter_warning','يمكنك استخدام الفلاتر بالبحث عن المنتجات','2022-01-02 16:19:54','2022-01-02 16:36:32'),(562,'ar','filter_screen_filter','فلترة','2022-01-02 16:19:54','2022-01-02 16:36:32'),(563,'ar','filter_screen_sort_products_by','ترتيب المنتجات','2022-01-02 16:19:54','2022-01-02 16:36:32'),(564,'ar','filter_screen_price_high_to_low','السعر الاعلى الى الادنى','2022-01-02 16:19:54','2022-01-02 16:20:09'),(565,'ar','filter_screen_price_low_to_high','السعر من الادنى للاعلى','2022-01-02 16:19:54','2022-01-02 16:36:32'),(566,'ar','filter_screen_price_new_arrival','منتجات جديدة','2022-01-02 16:19:54','2022-01-02 16:36:32'),(567,'ar','filter_screen_popularity','الأكثر شعبية','2022-01-02 16:19:54','2022-01-02 16:36:32'),(568,'ar','filter_screen_top_rated','الأعلى تقيما','2022-01-02 16:19:54','2022-01-02 16:36:32'),(569,'ar','filter_screen_maximum','أقصى','2022-01-02 16:19:54','2022-01-02 16:20:09'),(570,'ar','filter_screen_minimum','الحد الأدنى','2022-01-02 16:19:54','2022-01-02 16:20:09'),(571,'ar','filter_screen_price_range','نطاق السعر','2022-01-02 16:19:54','2022-01-02 16:20:09'),(572,'ar','filter_screen_search_here','ابحث هنا ؟','2022-01-02 16:19:54','2022-01-02 16:20:09'),(573,'ar','filter_screen_no_suggestion_available','لا يوجد اقتراح متاح','2022-01-02 16:19:54','2022-01-02 16:20:09'),(574,'ar','filter_screen_searched_for','بحثت عن','2022-01-02 16:19:54','2022-01-02 16:20:09'),(575,'ar','filter_screen_times','الوقت (مرات)','2022-01-02 16:19:54','2022-01-02 16:20:09'),(576,'ar','filter_screen_found','وجدت','2022-01-02 16:19:54','2022-01-02 16:20:09'),(577,'ar','filter_screen_loading_suggestions','جارٍ تحميل الاقتراحات ...','2022-01-02 16:19:54','2022-01-02 16:20:09'),(578,'ar','filter_screen_sort','ترتيب','2022-01-02 16:19:54','2022-01-02 16:36:32'),(579,'ar','filter_screen_default','الإفتراضي','2022-01-02 16:19:54','2022-01-02 16:36:32'),(580,'ar','filter_screen_sort_warning','يمكنك استخدام الفرز أثناء البحث عن المنتجات.','2022-01-02 16:19:54','2022-01-02 16:20:10'),(581,'ar','filter_screen_min_max_warning','لا يمكن أن يكون الحد الأدنى للسعر أكبر من الحد الأقصى للسعر','2022-01-02 16:19:54','2022-01-02 16:20:10'),(582,'ar','product_details_screen_copy_product_link','انسخ رابط المنتج','2022-01-02 16:19:54','2022-01-02 16:20:10'),(583,'ar','product_details_screen_share_options','خيارات المشاركة','2022-01-02 16:19:54','2022-01-02 16:36:32'),(584,'ar','product_details_screen_seller_chat_title','عنوان','2022-01-02 16:19:54','2022-01-02 16:20:10'),(585,'ar','product_details_screen_seller_chat_enter_title','أدخل العنوان','2022-01-02 16:19:54','2022-01-02 16:20:10'),(586,'ar','product_details_screen_seller_chat_messasge','رسالة','2022-01-02 16:20:21','2022-01-02 16:20:21'),(587,'ar','product_details_screen_seller_chat_enter_messasge','أدخل رسالة','2022-01-02 16:20:21','2022-01-02 16:20:21'),(588,'ar','product_details_screen_seller_chat_title_message_empty_warning','لا يمكن أن يكون العنوان أو الرسالة فارغين','2022-01-02 16:20:21','2022-01-02 16:20:21'),(589,'ar','product_details_screen_seller_chat_creation_unable_warning','تعذر إنشاء محادثة','2022-01-02 16:20:21','2022-01-02 16:20:21'),(590,'ar','product_details_screen_snackbar_added_to_cart','تمت الإضافة إلى سلة التسوق','2022-01-02 16:20:21','2022-01-02 16:39:57'),(591,'ar','product_details_screen_snackbar_show_cart','عرض السلة','2022-01-02 16:20:21','2022-01-02 16:39:57'),(592,'ar','product_details_screen_description','الوصف:','2022-01-02 16:20:21','2022-01-02 16:39:57'),(593,'ar','product_details_screen_brand','ماركة:','2022-01-02 16:20:21','2022-01-02 16:20:21'),(594,'ar','product_details_screen_total_price','السعر الكلي:','2022-01-02 16:20:21','2022-01-02 16:20:21'),(595,'ar','product_details_screen_price','السعر:','2022-01-02 16:20:21','2022-01-02 16:20:21'),(596,'ar','product_details_screen_color','اللون:','2022-01-02 16:20:21','2022-01-02 16:20:21'),(597,'ar','product_details_screen_seller','بائع','2022-01-02 16:20:21','2022-01-02 16:39:57'),(598,'ar','product_details_screen_club_point','كلوب بوينت:','2022-01-02 16:20:21','2022-01-02 16:20:21'),(599,'ar','product_details_screen_quantity','الكمية:','2022-01-02 16:20:21','2022-01-02 16:39:57'),(600,'ar','product_details_screen_video_not_available','الفيديو غير متوفر','2022-01-02 16:20:21','2022-01-02 16:20:21'),(601,'ar','product_details_screen_video','فيديو','2022-01-02 16:20:21','2022-01-02 16:20:21'),(602,'ar','product_details_screen_reviews','المراجعات','2022-01-02 16:20:21','2022-01-02 16:20:21'),(603,'ar','product_details_screen_seller_policy','سياسة البائع','2022-01-02 16:20:21','2022-01-02 16:20:21'),(604,'ar','product_details_screen_return_policy','سياسة الإسترجاع','2022-01-02 16:20:21','2022-01-02 16:39:57'),(605,'ar','product_details_screen_support_policy','سياسة الدعم','2022-01-02 16:20:21','2022-01-02 16:20:21'),(606,'ar','product_details_screen_products_may_like','المنتجات التي قد تعجبك أيضا','2022-01-02 16:20:21','2022-01-02 16:20:21'),(607,'ar','product_details_screen_top_selling_products_from_seller','المنتجات الأكثر مبيعًا من هذا البائع','2022-01-02 16:20:21','2022-01-02 16:20:21'),(608,'ar','product_details_screen_chat_with_seller','الدردشة مع البائع','2022-01-02 16:20:21','2022-01-02 16:20:21'),(609,'ar','product_details_screen_available','متوفرة','2022-01-02 16:20:22','2022-01-02 16:20:22'),(610,'ar','product_details_screen_button_add_to_cart','أضف إلى السلة','2022-01-02 16:20:22','2022-01-02 16:20:22'),(611,'ar','product_details_screen_button_buy_now','اشتري الآن','2022-01-02 16:20:22','2022-01-02 16:20:22'),(612,'ar','product_details_screen_no_top_selling_product','لا توجد منتجات الأكثر مبيعا من هذا البائع','2022-01-02 16:20:22','2022-01-02 16:39:57'),(613,'ar','product_details_screen_no_related_product','لا توجد منتجات ذات صلة','2022-01-02 16:20:22','2022-01-02 16:20:22'),(614,'ar','order_list_screen_all','الجميع','2022-01-02 16:20:22','2022-01-02 16:20:22'),(615,'ar','order_list_screen_paid','دفع','2022-01-02 16:20:22','2022-01-02 16:20:22'),(616,'ar','order_list_screen_unpaid','غير مدفوعة','2022-01-02 16:20:22','2022-01-02 16:20:22'),(617,'ar','order_list_screen_confirmed','مؤكد','2022-01-02 16:20:22','2022-01-02 16:20:22'),(618,'ar','order_list_screen_on_delivery','قيد الشحن','2022-01-02 16:20:22','2022-01-02 16:39:57'),(619,'ar','order_list_screen_delivered','تم التوصيل','2022-01-02 16:20:22','2022-01-02 16:20:22'),(620,'ar','order_list_screen_no_more_orders','لا مزيد من الطلبات','2022-01-02 16:20:22','2022-01-02 16:20:22'),(621,'ar','order_list_screen_loading_more_orders','جارٍ تحميل المزيد من الطلبات ...','2022-01-02 16:20:22','2022-01-02 16:20:22'),(622,'ar','order_list_screen_purchase_history','تاريخ شراء','2022-01-02 16:20:22','2022-01-02 16:20:22'),(623,'ar','order_list_screen_payment_status','حالة السداد','2022-01-02 16:20:22','2022-01-02 16:20:22'),(624,'ar','order_list_screen_delivery_status','حالة التوصيل','2022-01-02 16:20:22','2022-01-02 16:20:22'),(625,'ar','order_details_screen_refund_product_name','اسم المنتج','2022-01-02 16:20:22','2022-01-02 16:20:22'),(626,'ar','order_details_screen_refund_order_code','رمز الطلب','2022-01-02 16:20:22','2022-01-02 16:20:22'),(627,'ar','order_details_screen_refund_reason','سبب','2022-01-02 16:20:22','2022-01-02 16:20:22'),(628,'ar','order_details_screen_refund_reason_empty_warning','لا يمكن أن يكون السبب فارغًا','2022-01-02 16:20:22','2022-01-02 16:20:22'),(629,'ar','order_details_screen_refund_enter_reason','أدخل السبب','2022-01-02 16:20:22','2022-01-02 16:20:22'),(630,'ar','order_details_screen_refund_snackbar_show_request_list','إظهار قائمة الطلبات','2022-01-02 16:20:22','2022-01-02 16:20:22'),(631,'ar','order_details_screen_ordered_product','المنتج المطلوب','2022-01-02 16:20:22','2022-01-02 16:20:22'),(632,'ar','order_details_screen_no_item_ordered','لم يتم طلب أي عناصر','2022-01-02 16:20:22','2022-01-02 16:20:22'),(633,'ar','order_details_screen_sub_total','المجموع الفرعي','2022-01-02 16:20:22','2022-01-02 16:20:22'),(634,'ar','order_details_screen_tax','ضريبة','2022-01-02 16:20:22','2022-01-02 16:20:22'),(635,'ar','order_details_screen_shipping_cost','تكلفة الشحن','2022-01-02 16:20:22','2022-01-02 16:20:22'),(636,'ar','order_details_screen_discount','خصم','2022-01-02 16:20:31','2022-01-02 16:20:31'),(637,'ar','order_details_screen_grand_total','المجموع الإجمالي','2022-01-02 16:20:31','2022-01-02 16:20:31'),(638,'ar','order_details_screen_timeline_tile_order_placed','تم الطلب','2022-01-02 16:20:31','2022-01-02 16:20:31'),(639,'ar','order_details_screen_timeline_tile_confirmed','مؤكد','2022-01-02 16:20:31','2022-01-02 16:20:31'),(640,'ar','order_details_screen_timeline_tile_on_delivery','قيد الشحن','2022-01-02 16:20:31','2022-01-02 16:44:00'),(641,'ar','order_details_screen_timeline_tile_delivered','تم التوصيل','2022-01-02 16:20:31','2022-01-02 16:20:31'),(642,'ar','order_details_screen_order_code','رمز الطلب','2022-01-02 16:20:31','2022-01-02 16:20:31'),(643,'ar','order_details_screen_shipping_method','طريقة الشحن','2022-01-02 16:20:31','2022-01-02 16:20:31'),(644,'ar','order_details_screen_order_date','تاريخ الطلب','2022-01-02 16:20:31','2022-01-02 16:20:31'),(645,'ar','order_details_screen_payment_method','طريقة الدفع او السداد','2022-01-02 16:20:31','2022-01-02 16:20:31'),(646,'ar','order_details_screen_payment_status','حالة السداد','2022-01-02 16:20:31','2022-01-02 16:20:31'),(647,'ar','order_details_screen_delivery_status','حالة التوصيل','2022-01-02 16:20:31','2022-01-02 16:20:31'),(648,'ar','order_details_screen_shipping_address','عنوان الشحن','2022-01-02 16:20:31','2022-01-02 16:20:31'),(649,'ar','order_details_screen_total_amount','المبلغ الإجمالي','2022-01-02 16:20:31','2022-01-02 16:20:31'),(650,'ar','order_details_screen_name','الإسم','2022-01-02 16:20:31','2022-01-02 16:44:00'),(651,'ar','order_details_screen_email','البريد الالكتروني','2022-01-02 16:20:31','2022-01-02 16:44:00'),(652,'ar','order_details_screen_address','العنوان','2022-01-02 16:20:31','2022-01-02 16:44:00'),(653,'ar','order_details_screen_city','المدينة','2022-01-02 16:20:31','2022-01-02 16:44:00'),(654,'ar','order_details_screen_state','المنطقه','2022-01-02 16:20:31','2022-01-02 16:44:00'),(655,'ar','order_details_screen_country','الدولة','2022-01-02 16:20:31','2022-01-02 16:44:00'),(656,'ar','order_details_screen_phone','الجوال','2022-01-02 16:20:31','2022-01-02 16:44:00'),(657,'ar','order_details_screen_postal_code','الرمز البريدي','2022-01-02 16:20:31','2022-01-02 16:20:31'),(658,'ar','order_details_screen_item','العنصر','2022-01-02 16:20:31','2022-01-02 16:20:31'),(659,'ar','order_details_screen_ask_for_refund','طلب إسترجاع','2022-01-02 16:20:31','2022-01-02 16:44:00'),(660,'ar','order_details_screen_refund_status','حالة الإسترجاع','2022-01-02 16:20:31','2022-01-02 16:44:00'),(661,'ar','order_details_screen_order_details','تفاصيل الطلب','2022-01-02 16:20:31','2022-01-02 16:20:31'),(662,'ar','order_details_screen_make_offline_payment','حوالة بنكية','2022-01-02 16:20:31','2022-01-02 16:44:00'),(663,'ar','shipping_info_screen_address_choice_warning','اختر عنوانًا','2022-01-02 16:20:31','2022-01-02 16:20:31'),(664,'ar','shipping_info_screen_country_warning','اختر دولة','2022-01-02 16:20:31','2022-01-02 16:20:31'),(665,'ar','shipping_info_screen_go_to_address','لإضافة العناوين أو تحريرها ، انتقل إلى صفحة العنوان','2022-01-02 16:20:31','2022-01-02 16:20:31'),(666,'ar','shipping_info_screen_address','العنوان','2022-01-02 16:20:31','2022-01-02 16:44:00'),(667,'ar','shipping_info_screen_city','المدينة','2022-01-02 16:20:31','2022-01-02 16:44:00'),(668,'ar','shipping_info_screen_enter_city','أدخل المدينة','2022-01-02 16:20:31','2022-01-02 16:20:31'),(669,'ar','shipping_info_screen_postal_code','رمز بريدي','2022-01-02 16:20:31','2022-01-02 16:20:31'),(670,'ar','shipping_info_screen_country','الدولة','2022-01-02 16:20:31','2022-01-02 16:44:00'),(671,'ar','shipping_info_screen_state','المنطقة','2022-01-02 16:20:31','2022-01-02 16:44:00'),(672,'ar','shipping_info_screen_phone','الجوال','2022-01-02 16:20:31','2022-01-02 16:44:00'),(673,'ar','shipping_info_screen_shipping_cost','تكلفة الشحن','2022-01-02 16:20:31','2022-01-02 16:20:31'),(674,'ar','shipping_info_screen_btn_proceed_to_checkout','الإنتقال الى الدفع','2022-01-02 16:20:31','2022-01-02 16:44:00'),(675,'ar','messenger_list_screen_messages','رسائل','2022-01-02 16:20:31','2022-01-02 16:20:31'),(676,'ar','chat_screen_btn_load_more','تحميل المزيد','2022-01-02 16:20:31','2022-01-02 16:20:31'),(677,'ar','chat_screen_type_message_here','اكتب رسالتك هنا ...','2022-01-02 16:20:31','2022-01-02 16:20:31'),(678,'ar','wallet_screen_amount_warning','لا يمكن أن يكون المبلغ فارغًا','2022-01-02 16:20:31','2022-01-02 16:20:31'),(679,'ar','wallet_screen_my_wallet','محفظتي','2022-01-02 16:20:31','2022-01-02 16:20:31'),(680,'ar','wallet_screen_no_recharges_yet','لا توجد عمليات إعادة شحن حتى الآن','2022-01-02 16:20:31','2022-01-02 16:20:31'),(681,'ar','wallet_screen_payment_method','طريقة الدفع او السداد','2022-01-02 16:20:31','2022-01-02 16:20:31'),(682,'ar','wallet_screen_approval_status','حالة القبول','2022-01-02 16:20:31','2022-01-02 16:20:31'),(683,'ar','wallet_screen_wallet_balance','رصيد المحفظة','2022-01-02 16:20:31','2022-01-02 16:20:31'),(684,'ar','wallet_screen_last_recharged','آخر عملية إعادة شحن','2022-01-02 16:20:31','2022-01-02 16:44:00'),(685,'ar','wallet_screen_wallet_recharge_history','سجل شحن المحفظة','2022-01-02 16:20:31','2022-01-02 16:20:31'),(686,'ar','wallet_screen_amount','المبلغ','2022-01-02 16:20:56','2022-01-02 16:46:32'),(687,'ar','wallet_screen_enter_amount','أدخل المبلغ','2022-01-02 16:20:56','2022-01-02 16:20:56'),(688,'ar','recharge_wallet_screen_recharge_wallet','إعادة شحن المحفظة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(689,'ar','checkout_screen_enter_coupon_code','أدخل رمز القسيمة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(690,'ar','checkout_screen_coupon_code_warning','أدخل رمز القسيمة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(691,'ar','checkout_screen_subtotal','المجموع الفرعي','2022-01-02 16:20:56','2022-01-02 16:20:56'),(692,'ar','checkout_screen_tax','ضريبة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(693,'ar','checkout_screen_shipping_cost','تكلفة الشحن','2022-01-02 16:20:56','2022-01-02 16:20:56'),(694,'ar','checkout_screen_discount','خصم','2022-01-02 16:20:56','2022-01-02 16:20:56'),(695,'ar','checkout_screen_grand_total','المجموع الإجمالي','2022-01-02 16:20:56','2022-01-02 16:20:56'),(696,'ar','checkout_screen_total_amount','المبلغ الإجمالي','2022-01-02 16:20:56','2022-01-02 16:20:56'),(697,'ar','checkout_screen_coupon_code','رمز الكوبون','2022-01-02 16:20:56','2022-01-02 16:20:56'),(698,'ar','checkout_screen_apply_coupon','تطبيق القسيمة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(699,'ar','checkout_screen_place_my_order','طلب الان','2022-01-02 16:20:56','2022-01-02 16:46:33'),(700,'ar','checkout_screen_remove','إزالة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(701,'ar','checkout_screen_checkout','الدفع','2022-01-02 16:20:56','2022-01-02 16:20:56'),(702,'ar','wishlist_screen_login_warning','الرجاء تسجيل الدخول لرؤية عناصر قائمة المفضلة','2022-01-02 16:20:56','2022-01-02 16:46:33'),(703,'ar','wishlist_screen_my_wishlist','قائمة المفضلة','2022-01-02 16:20:56','2022-01-02 16:46:33'),(704,'ar','login_screen_email_warning','أدخل البريد الإلكتروني','2022-01-02 16:20:56','2022-01-02 16:20:56'),(705,'ar','login_screen_phone_warning','أدخل رقم الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(706,'ar','login_screen_password_warning','أدخل كلمة المرور','2022-01-02 16:20:56','2022-01-02 16:20:56'),(707,'ar','login_screen_login_to','تسجيل الدخول إلى','2022-01-02 16:20:56','2022-01-02 16:20:56'),(708,'ar','login_screen_or_login_with_phone','أو تسجيل الدخول باستخدام رقم الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(709,'ar','login_screen_or_login_with_email','أو تسجيل الدخول بالبريد الإلكتروني','2022-01-02 16:20:56','2022-01-02 16:20:56'),(710,'ar','login_screen_email','بريد الالكتروني','2022-01-02 16:20:56','2022-01-02 16:20:56'),(711,'ar','login_screen_password','الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(712,'ar','login_screen_phone','كلمة المرور','2022-01-02 16:20:56','2022-01-02 16:20:56'),(713,'ar','login_screen_forgot_password','هل نسيت كلمة السر؟','2022-01-02 16:20:56','2022-01-02 16:20:56'),(714,'ar','login_screen_log_in','تسجيل الدخول','2022-01-02 16:20:56','2022-01-02 16:20:56'),(715,'ar','login_screen_or_create_new_account','أو إنشاء حساب جديد؟','2022-01-02 16:20:56','2022-01-02 16:20:56'),(716,'ar','login_screen_sign_up','التسجيل','2022-01-02 16:20:56','2022-01-02 16:46:33'),(717,'ar','login_screen_login_with','تسجيل الدخول عن طريق','2022-01-02 16:20:56','2022-01-02 16:46:33'),(718,'ar','registration_screen_name_warning','أدخل أسمك','2022-01-02 16:20:56','2022-01-02 16:20:56'),(719,'ar','registration_screen_email_warning','أدخل البريد الإلكتروني','2022-01-02 16:20:56','2022-01-02 16:20:56'),(720,'ar','registration_screen_phone_warning','أدخل رقم الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(721,'ar','registration_screen_password_warning','أدخل كلمة المرور','2022-01-02 16:20:56','2022-01-02 16:20:56'),(722,'ar','registration_screen_password_confirm_warning','أكد رقمك السري','2022-01-02 16:20:56','2022-01-02 16:20:56'),(723,'ar','registration_screen_password_length_warning','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:20:56','2022-01-02 16:20:56'),(724,'ar','registration_screen_password_length_recommendation','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:20:56','2022-01-02 16:20:56'),(725,'ar','registration_screen_password_match_warning','كلمة المرور غير مطابقة','2022-01-02 16:20:56','2022-01-02 16:20:56'),(726,'ar','registration_screen_join','انضم','2022-01-02 16:20:56','2022-01-02 16:20:56'),(727,'ar','registration_screen_name','الإسم','2022-01-02 16:20:56','2022-01-02 16:46:33'),(728,'ar','registration_screen_email','البريد الالكتروني','2022-01-02 16:20:56','2022-01-02 16:46:33'),(729,'ar','registration_screen_phone','الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(730,'ar','registration_screen_password','كلمة المرور','2022-01-02 16:20:56','2022-01-02 16:20:56'),(731,'ar','registration_screen_retype_password','أعد إدخال كلمة السر','2022-01-02 16:20:56','2022-01-02 16:20:56'),(732,'ar','registration_screen_or_register_with_phone','أو التسجيل برقم الجوال','2022-01-02 16:20:56','2022-01-02 16:46:33'),(733,'ar','registration_screen_or_register_with_email','أو التسجيل بالبريد الإلكتروني','2022-01-02 16:20:56','2022-01-02 16:20:56'),(734,'ar','registration_screen_register_sign_up','التسجيل','2022-01-02 16:20:56','2022-01-02 16:46:33'),(735,'ar','registration_screen_already_have_account','هل لديك حساب ؟','2022-01-02 16:20:56','2022-01-02 16:20:56'),(736,'ar','registration_screen_log_in','تسجيل الدخول','2022-01-02 16:21:09','2022-01-02 16:21:09'),(737,'ar','password_forget_screen_email','البريد الالكتروني','2022-01-02 16:21:09','2022-01-02 16:48:57'),(738,'ar','password_forget_screen_phone','الجوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(739,'ar','password_forget_screen_email_warning','أدخل البريد الإلكتروني','2022-01-02 16:21:09','2022-01-02 16:21:09'),(740,'ar','password_forget_screen_phone_warning','أدخل رقم الجوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(741,'ar','password_forget_screen_forget_password','نسيت كلمة المرور؟','2022-01-02 16:21:09','2022-01-02 16:21:09'),(742,'ar','password_forget_screen_send_code_via_phone','أو إرسال الرمز عبر رقم الجوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(743,'ar','password_forget_screen_send_code_via_email','أو إرسال رمز عبر البريد الإلكتروني','2022-01-02 16:21:09','2022-01-02 16:21:09'),(744,'ar','otp_screen_btn_send_code','أرسل الرمز','2022-01-02 16:21:09','2022-01-02 16:21:09'),(745,'ar','otp_screen_verification_code_warning','أدخل رمز التحقق','2022-01-02 16:21:09','2022-01-02 16:21:09'),(746,'ar','otp_screen_verify_your','التحقق من','2022-01-02 16:21:09','2022-01-02 16:48:57'),(747,'ar','otp_screen_email_account','حساب البريد الإلكتروني','2022-01-02 16:21:09','2022-01-02 16:21:09'),(748,'ar','otp_screen_phone_number','رقم الجوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(749,'ar','otp_screen_enter_verification_code_to_email','أدخل رمز التحقق الذي تم إرساله إلى بريدك الإلكتروني .','2022-01-02 16:21:09','2022-01-02 16:48:57'),(750,'ar','otp_screen_enter_verification_code_to_phone','أدخل رمز التحقق الذي تم إرساله إلى جوالك','2022-01-02 16:21:09','2022-01-02 16:48:57'),(751,'ar','otp_screen_confirm','تأكيد','2022-01-02 16:21:09','2022-01-02 16:48:57'),(752,'ar','otp_screen_resend_code','أعد إرسال الرمز','2022-01-02 16:21:09','2022-01-02 16:21:09'),(753,'ar','password_otp_screen_code_warning','ادخل الرمز','2022-01-02 16:21:09','2022-01-02 16:21:09'),(754,'ar','password_otp_screen_password_warning','أدخل كلمة المرور','2022-01-02 16:21:09','2022-01-02 16:21:09'),(755,'ar','password_otp_screen_password_confirm_warning','أكد رقمك السري','2022-01-02 16:21:09','2022-01-02 16:21:09'),(756,'ar','password_otp_screen_password_length_warning','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:21:09','2022-01-02 16:21:09'),(757,'ar','password_otp_screen_password_length_recommendation','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:21:09','2022-01-02 16:21:09'),(758,'ar','password_otp_screen_password_match_warning','كلمة المرور غير مطابقة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(759,'ar','password_otp_screen_enter_the_code_sent','أدخل الرمز المرسل','2022-01-02 16:21:09','2022-01-02 16:21:09'),(760,'ar','password_otp_screen_enter_verification_code_to_email','أدخل رمز التحقق الذي تم إرساله إلى بريدك الإلكتروني .','2022-01-02 16:21:09','2022-01-02 16:48:57'),(761,'ar','password_otp_screen_enter_verification_code_to_phone','أدخل رمز التحقق الذي تم إرساله إلى جوالك.','2022-01-02 16:21:09','2022-01-02 16:48:57'),(762,'ar','password_otp_screen_password','كلمة المرور','2022-01-02 16:21:09','2022-01-02 16:21:09'),(763,'ar','password_otp_screen_retype_password','أعد إدخال كلمة السر','2022-01-02 16:21:09','2022-01-02 16:21:09'),(764,'ar','password_otp_screen_confirm','تأكيد','2022-01-02 16:21:09','2022-01-02 16:48:57'),(765,'ar','password_otp_screen_resend_code','أعد إرسال الرمز','2022-01-02 16:21:09','2022-01-02 16:21:09'),(766,'ar','address_screen_address_warning','أدخل العنوان','2022-01-02 16:21:09','2022-01-02 16:21:09'),(767,'ar','address_screen_back_to_shipping_info','رجوع إلى معلومات الشحن','2022-01-02 16:21:09','2022-01-02 16:21:09'),(768,'ar','address_screen_city_warning','اختر مدينة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(769,'ar','address_screen_state_warning','اختر منطقة','2022-01-02 16:21:09','2022-01-02 16:48:57'),(770,'ar','address_screen_country_warning','اختر دولة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(771,'ar','address_screen_address','العنوان','2022-01-02 16:21:09','2022-01-02 16:48:57'),(772,'ar','address_screen_enter_address','أدخل العنوان','2022-01-02 16:21:09','2022-01-02 16:21:09'),(773,'ar','address_screen_city','مدينة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(774,'ar','address_screen_select_city','اختر مدينة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(775,'ar','address_screen_enter_city','أدخل المدينة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(776,'ar','address_screen_postal_code','رمز بريدي','2022-01-02 16:21:09','2022-01-02 16:21:09'),(777,'ar','address_screen_enter_postal_code','أدخل الرمز البريدي','2022-01-02 16:21:09','2022-01-02 16:21:09'),(778,'ar','address_screen_country','دولة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(779,'ar','address_screen_select_country','اختر دولة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(780,'ar','address_screen_enter_country','أدخل الدولة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(781,'ar','address_screen_state','منطقة','2022-01-02 16:21:09','2022-01-02 16:48:57'),(782,'ar','address_screen_select_state','اختر منطقة','2022-01-02 16:21:09','2022-01-02 16:48:57'),(783,'ar','address_screen_enter_state','إدخال الدولة','2022-01-02 16:21:09','2022-01-02 16:21:09'),(784,'ar','address_screen_phone','جوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(785,'ar','address_screen_enter_phone','أدخل الجوال','2022-01-02 16:21:09','2022-01-02 16:48:57'),(786,'ar','address_screen_address_remove_warning','هل أنت متأكد من إزالة هذا العنوان؟','2022-01-02 16:21:29','2022-01-02 16:21:29'),(787,'ar','address_screen_addresses_of_user','عناوين المستخدم','2022-01-02 16:21:29','2022-01-02 16:21:29'),(788,'ar','address_screen_addresses_to_make_default','انقر نقرًا مزدوجًا على عنوان لجعله افتراضيًا','2022-01-02 16:21:29','2022-01-02 16:21:29'),(789,'ar','address_screen_no_country_available','لا يوجد دولة متاحة','2022-01-02 16:21:29','2022-01-02 16:53:15'),(790,'ar','address_screen_no_state_available','لا توجد منطقة متاحة','2022-01-02 16:21:29','2022-01-02 16:53:15'),(791,'ar','address_screen_no_city_available','لا توجد مدينة متاحة','2022-01-02 16:21:29','2022-01-02 16:21:29'),(792,'ar','address_screen_loading_countries','تحميل الدول ...','2022-01-02 16:21:29','2022-01-02 16:53:15'),(793,'ar','address_screen_loading_states','تحميل المناطق...','2022-01-02 16:21:29','2022-01-02 16:53:15'),(794,'ar','address_screen_loading_cities','تحميل المدن ...','2022-01-02 16:21:29','2022-01-02 16:21:29'),(795,'ar','address_screen_select_a_country_first','حدد الدولة أولا','2022-01-02 16:21:29','2022-01-02 16:21:29'),(796,'ar','address_screen_select_a_state_first','حدد منطقه أولاً','2022-01-02 16:21:29','2022-01-02 16:53:15'),(797,'ar','main_screen_bottom_navigation_home','الرئيسية','2022-01-02 16:21:29','2022-01-02 16:53:15'),(798,'ar','main_screen_bottom_navigation_categories','التصنيفات','2022-01-02 16:21:29','2022-01-02 16:21:29'),(799,'ar','main_screen_bottom_navigation_cart','عربة التسوق','2022-01-02 16:21:29','2022-01-02 16:21:29'),(800,'ar','main_screen_bottom_navigation_profile','الملف الشخصي','2022-01-02 16:21:29','2022-01-02 16:21:29'),(801,'ar','bkash_screen_fetching_bkash_url','جارٍ إحضار عنوان url الخاص بـ bkash ...','2022-01-02 16:21:29','2022-01-02 16:21:29'),(802,'ar','bkash_screen_pay_with_bkash','ادفع مع بكاش','2022-01-02 16:21:29','2022-01-02 16:21:29'),(803,'ar','nagad_screen_fetching_nagad_url','إحضار رابط نجاد ...','2022-01-02 16:21:29','2022-01-02 16:21:29'),(804,'ar','nagad_screen_pay_with_nagad','ادفع مع نجاد','2022-01-02 16:21:29','2022-01-02 16:21:29'),(805,'ar','iyzico_screen_pay_with_iyzico','ادفع مع Iyzico','2022-01-02 16:21:29','2022-01-02 16:21:29'),(806,'ar','paypal_screen_fetching_paypal_url','جارٍ إحضار عنوان url الخاص بـ paypal ...','2022-01-02 16:21:29','2022-01-02 16:21:29'),(807,'ar','paypal_screen_pay_with_paypal','الدفع بواسط باى بال','2022-01-02 16:21:29','2022-01-02 16:21:29'),(808,'ar','paystack_screen_pay_with_paystack','الدفع باستخدام Paystack','2022-01-02 16:21:29','2022-01-02 16:21:29'),(809,'ar','paytm_screen_pay_with_paytm','الدفع باستخدام Paytm','2022-01-02 16:21:30','2022-01-02 16:21:30'),(810,'ar','razorpay_screen_pay_with_razorpay','ادفع مع Razorpay','2022-01-02 16:21:30','2022-01-02 16:21:30'),(811,'ar','sslcommerz_screen_fetching_sslcommerz_url','إحضار عنوان url sslcommerz ...','2022-01-02 16:21:30','2022-01-02 16:21:30'),(812,'ar','sslcommerz_screen_pay_with_sslcommerz','ادفع مع Sslcommerz','2022-01-02 16:21:30','2022-01-02 16:21:30'),(813,'ar','stripe_screen_pay_with_stripe','الدفع باستخدام Stripe','2022-01-02 16:21:30','2022-01-02 16:21:30'),(814,'ar','brand_products_screen_search_product_of_brand','البحث عن منتجات ذات علامة تجارية','2022-01-02 16:21:30','2022-01-02 16:21:30'),(815,'ar','category_products_screen_search_products_from','البحث عن منتجات من','2022-01-02 16:21:30','2022-01-02 16:21:30'),(816,'ar','flash_deal_products_screen_search_products_from','البحث عن منتجات من','2022-01-02 16:21:30','2022-01-02 16:21:30'),(817,'ar','change_language_change_language','تغيير اللغة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(818,'ar','change_language_no_language_is_added','لا توجد لغة مضافة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(819,'ar','club_point_screen_snackbar_points_converted','تم تحويل النقاط إلى المحفظة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(820,'ar','club_point_screen_snackbar_show_wallet','عرض المحفظة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(821,'ar','club_point_screen_earned_points','النقاط المكتسبة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(822,'ar','club_point_screen_converted_question','تحول؟','2022-01-02 16:21:30','2022-01-02 16:21:30'),(823,'ar','club_point_screen_done','تم','2022-01-02 16:21:30','2022-01-02 16:53:15'),(824,'ar','club_point_screen_convert','تحويل','2022-01-02 16:21:30','2022-01-02 16:53:15'),(825,'ar','map_location_screen_your_delivery_location','موقع التسليم الخاص بك. . .','2022-01-02 16:21:30','2022-01-02 16:21:30'),(826,'ar','map_location_screen_calculating','جاري الحساب ...','2022-01-02 16:21:30','2022-01-02 16:21:30'),(827,'ar','map_location_screen_pick_here','اختر هنا','2022-01-02 16:21:30','2022-01-02 16:21:30'),(828,'ar','offline_screen_amount_name_trxid_warning','المبلغ والاسم ومعرف المعاملة ضرورية','2022-01-02 16:21:30','2022-01-02 16:21:30'),(829,'ar','offline_screen_photo_warning','إثبات الصورة ضروري','2022-01-02 16:21:30','2022-01-02 16:21:30'),(830,'ar','offline_screen_offline_payment','حوالة بنكية','2022-01-02 16:21:30','2022-01-02 16:53:15'),(831,'ar','offline_screen_fields_mandatory','* جميع الحقول المعلمة إلزامية','2022-01-02 16:21:30','2022-01-02 16:21:30'),(832,'ar','offline_screen_fill_up_necessary_info','املأ المعلومات اللازمة بشكل صحيح. لا يمكنك تحرير أو إعادة إرسالة مرة اخرى','2022-01-02 16:21:30','2022-01-02 16:53:15'),(833,'ar','offline_screen_amount','المبلغ','2022-01-02 16:21:30','2022-01-02 16:53:15'),(834,'ar','offline_screen_name','الإسم','2022-01-02 16:21:30','2022-01-02 16:53:15'),(835,'ar','offline_screen_transaction_id','رقم المعاملة','2022-01-02 16:21:30','2022-01-02 16:21:30'),(836,'ar','offline_screen_photo_proof','إثبات الصورة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(837,'ar','offline_screen_only_image_file_allowed','يسمح فقط بملف الصورة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(838,'ar','product_reviews_screen_type_your_review_here','اكتب رأيك هنا ...','2022-01-02 16:21:41','2022-01-02 16:21:41'),(839,'ar','product_reviews_screen_no_more_reviews','لا مزيد من التعليقات','2022-01-02 16:21:41','2022-01-02 16:21:41'),(840,'ar','product_reviews_screen_loading_more_reviews','جارٍ تحميل المزيد من المراجعات ...','2022-01-02 16:21:41','2022-01-02 16:21:41'),(841,'ar','product_reviews_screen_no_reviews_yet','لا توجد تعليقات حتى الآن. كن أول من يراجع هذا المنتج','2022-01-02 16:21:41','2022-01-02 16:21:41'),(842,'ar','product_reviews_screen_reviews','المراجعات','2022-01-02 16:21:41','2022-01-02 16:21:41'),(843,'ar','product_reviews_screen_login_warning','تحتاج إلى تسجيل الدخول لإعطاء مراجعة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(844,'ar','product_reviews_screen_review_empty_warning','لا يمكن أن تكون المراجعة فارغة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(845,'ar','product_reviews_screen_star_warning','يجب إعطاء نجمة واحدة على الأقل','2022-01-02 16:21:41','2022-01-02 16:21:41'),(846,'ar','profile_edit_screen_name_warning','أدخل أسمك','2022-01-02 16:21:41','2022-01-02 16:21:41'),(847,'ar','profile_edit_screen_email_warning','أدخل البريد الإلكتروني','2022-01-02 16:21:41','2022-01-02 16:21:41'),(848,'ar','profile_edit_screen_phone_warning','أدخل رقم الجوال','2022-01-02 16:21:41','2022-01-02 16:55:16'),(849,'ar','profile_edit_screen_password_warning','أدخل كلمة المرور','2022-01-02 16:21:41','2022-01-02 16:21:41'),(850,'ar','profile_edit_screen_password_confirm_warning','أكد كلمة المرور','2022-01-02 16:21:41','2022-01-02 16:55:16'),(851,'ar','profile_edit_screen_password_length_warning','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:21:41','2022-01-02 16:21:41'),(852,'ar','profile_edit_screen_password_match_warning','كلمة المرور غير مطابقة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(853,'ar','profile_edit_screen_password_length_recommendation','يجب أن تحتوي كلمة المرور على 6 أحرف على الأقل','2022-01-02 16:21:41','2022-01-02 16:21:41'),(854,'ar','profile_edit_screen_login_warning','الرجاء تسجيل الدخول لرؤية الملف الشخصي','2022-01-02 16:21:41','2022-01-02 16:21:41'),(855,'ar','profile_edit_screen_basic_information','معلومات اساسية','2022-01-02 16:21:41','2022-01-02 16:21:41'),(856,'ar','profile_edit_screen_name','الإسم','2022-01-02 16:21:41','2022-01-02 16:55:16'),(857,'ar','profile_edit_screen_password','كلمة المرور','2022-01-02 16:21:41','2022-01-02 16:21:41'),(858,'ar','profile_edit_screen_retype_password','أعد إدخال كلمة المرور','2022-01-02 16:21:41','2022-01-02 16:55:16'),(859,'ar','profile_edit_screen_btn_update_profile','تحديث الملف','2022-01-02 16:21:41','2022-01-02 16:21:41'),(860,'ar','profile_edit_screen_edit_profile','تعديل الملف الشخصي','2022-01-02 16:21:41','2022-01-02 16:21:41'),(861,'ar','refund_request_screen_refund_requests','طلبات الإسترجاع','2022-01-02 16:21:41','2022-01-02 16:55:16'),(862,'ar','refund_request_screen_refund_status','حالة الإسترجاع','2022-01-02 16:21:41','2022-01-02 16:55:16'),(863,'ar','seller_details_screen_top_selling_products','المنتجات الأكثر مبيعًا','2022-01-02 16:21:41','2022-01-02 16:21:41'),(864,'ar','seller_details_screen_featured_products','منتجات مميزة','2022-01-02 16:21:41','2022-01-02 16:21:41'),(865,'ar','seller_details_screen_new_arrivals','المنتجات الجديدة','2022-01-02 16:21:41','2022-01-02 16:55:16'),(866,'ar','seller_details_screen_no_featured_porducts','لا يوجد منتج مميز متاح من هذا البائع','2022-01-02 16:21:41','2022-01-02 16:21:41'),(867,'ar','seller_details_screen_no_top_selling_products','لا توجد منتجات الأكثر مبيعا من هذا البائع','2022-01-02 16:21:41','2022-01-02 16:55:16'),(868,'ar','seller_details_screen_no_new_arrival','لا يوجد منتجات جديدة','2022-01-02 16:21:41','2022-01-02 16:55:16'),(869,'ar','seller_details_screen_btn_view_all_products','عرض جميع المنتجات من هذا البائع','2022-01-02 16:21:41','2022-01-02 16:21:41'),(870,'ar','seller_products_screen_search_products_of_shop','بحث عن منتجات المتجر','2022-01-02 16:21:41','2022-01-02 16:21:41'),(871,'en','shipping_info_screen_address_or_pickup_choice_warning','Choose an address or pickup point','2022-01-22 10:09:38','2022-01-22 10:09:38'),(872,'en','no_pickup_point','Pickup Point Is Unavailable','2022-01-22 10:09:38','2022-01-22 10:09:38'),(873,'en','pickup_point','Pickup Point','2022-01-22 10:09:38','2022-01-22 10:09:38'),(874,'ar','shipping_info_screen_address_or_pickup_choice_warning','اختر عنوان او نقطه إستلام','2022-01-22 10:10:53','2022-01-22 10:10:53'),(875,'ar','no_pickup_point','لا توجد نقاط استلام','2022-01-22 10:10:53','2022-01-22 10:10:53'),(876,'ar','pickup_point','نقطه استلام','2022-01-22 10:10:53','2022-01-22 10:10:53');
/*!40000 ALTER TABLE `app_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_category`
--

DROP TABLE IF EXISTS `attribute_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `attribute_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_category`
--

LOCK TABLES `attribute_category` WRITE;
/*!40000 ALTER TABLE `attribute_category` DISABLE KEYS */;
INSERT INTO `attribute_category` VALUES (1,1,1,'2021-12-28 20:03:59','2021-12-28 20:03:59'),(2,1,2,'2021-12-28 20:03:59','2021-12-28 20:03:59');
/*!40000 ALTER TABLE `attribute_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_translations`
--

DROP TABLE IF EXISTS `attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_translations`
--

LOCK TABLES `attribute_translations` WRITE;
/*!40000 ALTER TABLE `attribute_translations` DISABLE KEYS */;
INSERT INTO `attribute_translations` VALUES (1,3,'طريقة التقطيع','en','2022-01-02 20:20:35','2022-01-02 20:20:35'),(2,4,'الرأس','en','2022-01-02 20:20:44','2022-01-02 20:20:44'),(3,5,'التغليف','en','2022-01-02 20:20:52','2022-01-02 20:20:52'),(4,6,'مفروم','sa','2022-01-04 14:25:34','2022-01-04 14:25:34');
/*!40000 ALTER TABLE `attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_values`
--

DROP TABLE IF EXISTS `attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attribute_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attribute_id` int NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `color_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_values`
--

LOCK TABLES `attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute_values` DISABLE KEYS */;
INSERT INTO `attribute_values` VALUES (1,3,'خروف كامل',NULL,'2022-01-02 20:22:04','2022-01-03 14:59:52','0'),(2,3,'أنصاف',NULL,'2022-01-02 20:22:11','2022-01-03 15:00:00','50'),(3,3,'أرباع',NULL,'2022-01-02 20:22:18','2022-01-03 15:00:07','70'),(4,3,'تقطيع صغير ثلاجة',NULL,'2022-01-02 20:22:29','2022-01-03 15:00:15','130'),(5,4,'غير مطلوب',NULL,'2022-01-02 20:22:42','2022-01-02 20:22:42','0'),(6,4,'الرأس مع السلخ',NULL,'2022-01-02 20:22:49','2022-01-03 14:59:06','150'),(7,5,'أكياس لحم',NULL,'2022-01-02 20:23:03','2022-01-02 20:23:03','0'),(8,5,'أكياس مفرغة من الهواء',NULL,'2022-01-02 20:23:13','2022-01-03 14:54:38','10'),(9,6,'كامل',NULL,'2022-01-04 14:26:06','2022-01-04 14:26:06','50'),(10,6,'بدون',NULL,'2022-01-04 14:26:29','2022-01-04 14:26:29','0');
/*!40000 ALTER TABLE `attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (3,'طريقة التقطيع','2022-01-02 20:20:35','2022-01-02 20:20:35','1'),(4,'الرأس','2022-01-02 20:20:44','2022-01-02 20:20:44','1'),(5,'التغليف','2022-01-02 20:20:52','2022-01-02 20:20:52','1'),(6,'مفروم','2022-01-04 14:25:34','2022-01-04 14:25:34','1');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `banner` int DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` int DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_translations`
--

DROP TABLE IF EXISTS `brand_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_translations`
--

LOCK TABLES `brand_translations` WRITE;
/*!40000 ALTER TABLE `brand_translations` DISABLE KEYS */;
INSERT INTO `brand_translations` VALUES (1,3,'MY BRAND','en','2021-12-24 02:31:23','2021-12-24 02:31:23'),(2,1,'مزرعة  الكنانة','en','2022-01-02 21:00:28','2022-01-02 21:02:18'),(3,3,'test','sa','2022-01-03 12:09:22','2022-01-03 12:09:22'),(4,4,'zzzz2','sa','2022-01-23 02:31:54','2022-01-23 02:32:03');
/*!40000 ALTER TABLE `brand_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'مزرعة  الكنانة','13',1,'demo-brand-12','Demo brand',NULL,'2019-03-12 06:05:56','2022-01-02 21:02:18'),(2,'تجربه علامة تجارية','14',1,'demo-brand1','Demo brand1',NULL,'2019-03-12 06:06:13','2022-01-03 12:06:29'),(3,'test','14',0,'my-brand-sfgvc',NULL,NULL,'2021-12-24 02:31:23','2022-01-03 12:09:38'),(4,'zzzz2',NULL,0,'zzzz-zkeet',NULL,NULL,'2022-01-23 02:31:54','2022-01-23 02:32:03');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` VALUES (1,'home_default_currency','1',NULL,'2018-10-16 01:35:52','2019-01-28 01:26:53'),(2,'system_default_currency','29',NULL,'2018-10-16 01:36:58','2022-01-02 20:51:11'),(3,'currency_format','1',NULL,'2018-10-17 03:01:59','2018-10-17 03:01:59'),(4,'symbol_format','3',NULL,'2018-10-17 03:01:59','2022-01-02 20:51:43'),(5,'no_of_decimals','2',NULL,'2018-10-17 03:01:59','2020-03-04 00:57:16'),(6,'product_activation','1',NULL,'2018-10-28 01:38:37','2019-02-04 01:11:41'),(7,'vendor_system_activation','0',NULL,'2018-10-28 07:44:16','2021-12-24 06:39:29'),(8,'show_vendors','1',NULL,'2018-10-28 07:44:47','2019-02-04 01:11:13'),(9,'paypal_payment','0',NULL,'2018-10-28 07:45:16','2022-01-03 14:34:33'),(10,'stripe_payment','0',NULL,'2018-10-28 07:45:47','2018-11-14 01:51:51'),(11,'cash_payment','1',NULL,'2018-10-28 07:46:05','2019-01-24 03:40:18'),(12,'payumoney_payment','0',NULL,'2018-10-28 07:46:27','2019-03-05 05:41:36'),(13,'best_selling','1',NULL,'2018-12-24 08:13:44','2019-02-14 05:29:13'),(14,'paypal_sandbox','0',NULL,'2019-01-16 12:44:18','2019-01-16 12:44:18'),(15,'sslcommerz_sandbox','1',NULL,'2019-01-16 12:44:18','2019-03-14 00:07:26'),(16,'sslcommerz_payment','0',NULL,'2019-01-24 09:39:07','2019-01-29 06:13:46'),(17,'vendor_commission','20',NULL,'2019-01-31 06:18:04','2019-04-13 06:49:26'),(18,'verification_form','[{\"type\":\"text\",\"label\":\"Your name\"},{\"type\":\"text\",\"label\":\"Shop name\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"License No\"},{\"type\":\"text\",\"label\":\"Full Address\"},{\"type\":\"text\",\"label\":\"Phone Number\"},{\"type\":\"file\",\"label\":\"Tax Papers\"}]',NULL,'2019-02-03 11:36:58','2019-02-16 06:14:42'),(19,'google_analytics','0',NULL,'2019-02-06 12:22:35','2019-02-06 12:22:35'),(20,'facebook_login','0',NULL,'2019-02-07 12:51:59','2019-02-08 19:41:15'),(21,'google_login','0',NULL,'2019-02-07 12:52:10','2019-02-08 19:41:14'),(22,'twitter_login','0',NULL,'2019-02-07 12:52:20','2019-02-08 02:32:56'),(23,'payumoney_payment','1',NULL,'2019-03-05 11:38:17','2019-03-05 11:38:17'),(24,'payumoney_sandbox','1',NULL,'2019-03-05 11:38:17','2019-03-05 05:39:18'),(36,'facebook_chat','0',NULL,'2019-04-15 11:45:04','2019-04-15 11:45:04'),(37,'email_verification','0',NULL,'2019-04-30 07:30:07','2019-04-30 07:30:07'),(38,'wallet_system','0',NULL,'2019-05-19 08:05:44','2019-05-19 02:11:57'),(39,'coupon_system','1',NULL,'2019-06-11 09:46:18','2021-12-24 06:39:52'),(40,'current_version','5.5.5',NULL,'2019-06-11 09:46:18','2019-06-11 09:46:18'),(41,'instamojo_payment','0',NULL,'2019-07-06 09:58:03','2019-07-06 09:58:03'),(42,'instamojo_sandbox','1',NULL,'2019-07-06 09:58:43','2019-07-06 09:58:43'),(43,'razorpay','0',NULL,'2019-07-06 09:58:43','2019-07-06 09:58:43'),(44,'paystack','0',NULL,'2019-07-21 13:00:38','2019-07-21 13:00:38'),(45,'pickup_point','1',NULL,'2019-10-17 11:50:39','2021-12-24 06:39:57'),(46,'maintenance_mode','0',NULL,'2019-10-17 11:51:04','2021-12-26 19:16:08'),(47,'voguepay','0',NULL,'2019-10-17 11:51:24','2019-10-17 11:51:24'),(48,'voguepay_sandbox','0',NULL,'2019-10-17 11:51:38','2019-10-17 11:51:38'),(50,'category_wise_commission','0',NULL,'2020-01-21 07:22:47','2020-01-21 07:22:47'),(51,'conversation_system','0',NULL,'2020-01-21 07:23:21','2021-12-24 06:40:11'),(52,'guest_checkout_active','1',NULL,'2020-01-22 07:36:38','2020-01-22 07:36:38'),(53,'facebook_pixel','0',NULL,'2020-01-22 11:43:58','2020-01-22 11:43:58'),(55,'classified_product','0',NULL,'2020-05-13 13:01:05','2020-05-13 13:01:05'),(56,'pos_activation_for_seller','1',NULL,'2020-06-11 09:45:02','2020-06-11 09:45:02'),(57,'shipping_type','product_wise_shipping',NULL,'2020-07-01 13:49:56','2020-07-01 13:49:56'),(58,'flat_rate_shipping_cost','0',NULL,'2020-07-01 13:49:56','2020-07-01 13:49:56'),(59,'shipping_cost_admin','0',NULL,'2020-07-01 13:49:56','2020-07-01 13:49:56'),(60,'payhere_sandbox','0',NULL,'2020-07-30 18:23:53','2020-07-30 18:23:53'),(61,'payhere','0',NULL,'2020-07-30 18:23:53','2020-07-30 18:23:53'),(62,'google_recaptcha','0',NULL,'2020-08-17 07:13:37','2020-08-17 07:13:37'),(63,'ngenius','0',NULL,'2020-09-22 10:58:21','2020-09-22 10:58:21'),(64,'header_logo','3',NULL,'2020-11-16 07:26:36','2022-01-02 20:03:25'),(65,'show_language_switcher',NULL,NULL,'2020-11-16 07:26:36','2022-01-02 20:03:52'),(66,'show_currency_switcher',NULL,NULL,'2020-11-16 07:26:36','2022-01-02 20:03:52'),(67,'header_stikcy',NULL,NULL,'2020-11-16 07:26:36','2022-01-02 20:03:52'),(68,'footer_logo',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(69,'about_us_description',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(70,'contact_address',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(71,'contact_phone',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(72,'contact_email',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(73,'widget_one_labels',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(74,'widget_one_links',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(75,'widget_one',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(76,'frontend_copyright_text',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(77,'show_social_links',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(78,'facebook_link',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(79,'twitter_link',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(80,'instagram_link',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(81,'youtube_link',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(82,'linkedin_link',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(83,'payment_method_images',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(84,'home_slider_images','[\"16\",\"5\",\"26\",\"27\",\"25\",\"22\"]',NULL,'2020-11-16 07:26:36','2022-01-23 13:16:48'),(85,'home_slider_links','[null,null,null,null,null,null]',NULL,'2020-11-16 07:26:36','2022-01-23 13:15:30'),(86,'home_banner1_images','[\"17\"]',NULL,'2020-11-16 07:26:36','2022-01-22 19:32:20'),(87,'home_banner1_links','[null]',NULL,'2020-11-16 07:26:36','2022-01-22 19:32:20'),(88,'home_banner2_images','[\"18\"]',NULL,'2020-11-16 07:26:36','2022-01-22 19:32:31'),(89,'home_banner2_links','[null]',NULL,'2020-11-16 07:26:36','2022-01-22 19:32:31'),(90,'home_categories','[\"8\"]',NULL,'2020-11-16 07:26:36','2022-01-22 19:32:48'),(91,'top10_categories','[\"8\",\"9\"]',NULL,'2020-11-16 07:26:36','2022-01-22 19:33:21'),(92,'top10_brands','[\"1\",\"2\"]',NULL,'2020-11-16 07:26:36','2022-01-22 19:33:21'),(93,'website_name','AmAhmed',NULL,'2020-11-16 07:26:36','2022-01-02 20:05:41'),(94,'site_motto','AmAhmed',NULL,'2020-11-16 07:26:36','2022-01-02 20:05:41'),(95,'site_icon','3',NULL,'2020-11-16 07:26:36','2022-01-02 20:05:41'),(96,'base_color','#E50B2C',NULL,'2020-11-16 07:26:36','2022-01-02 20:05:56'),(97,'base_hov_color','#e62e04',NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(98,'meta_title',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(99,'meta_description',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(100,'meta_keywords',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(101,'meta_image',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(102,'site_name','AmAhmed',NULL,'2020-11-16 07:26:36','2022-01-02 23:37:13'),(103,'system_logo_white','14',NULL,'2020-11-16 07:26:36','2022-01-02 23:38:40'),(104,'system_logo_black','3',NULL,'2020-11-16 07:26:36','2022-01-02 23:37:13'),(105,'timezone',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(106,'admin_login_background',NULL,NULL,'2020-11-16 07:26:36','2020-11-16 07:26:36'),(107,'iyzico_sandbox','1',NULL,'2020-12-30 16:45:56','2020-12-30 16:45:56'),(108,'iyzico','0',NULL,'2020-12-30 16:45:56','2022-01-03 14:34:37'),(109,'decimal_separator','1',NULL,'2020-12-30 16:45:56','2020-12-30 16:45:56'),(110,'nagad','0',NULL,'2021-01-22 10:30:03','2021-01-22 10:30:03'),(111,'bkash','0',NULL,'2021-01-22 10:30:03','2021-01-22 10:30:03'),(112,'bkash_sandbox','1',NULL,'2021-01-22 10:30:03','2021-01-22 10:30:03'),(113,'header_menu_labels','[\"Home\",\"Flash Sale\",\"Blogs\",\"All Brands\",\"All Categories\"]',NULL,'2021-02-16 02:43:11','2021-02-16 02:52:18'),(114,'header_menu_links','[\"http:\\/\\/domain.com\",\"http:\\/\\/domain.com\\/flash-deals\",\"http:\\/\\/domain.com\\/blog\",\"http:\\/\\/domain.com\\/brands\",\"http:\\/\\/domain.com\\/categories\"]',NULL,'2021-02-16 02:43:11','2021-02-18 01:20:04'),(115,'proxypay','0',NULL,'2021-06-20 11:25:42','2022-01-03 14:34:38'),(116,'proxypay_sandbox','1',NULL,'2021-06-20 11:25:42','2021-06-20 11:25:42'),(117,'google_map','0',NULL,'2021-07-27 15:49:39','2022-01-10 21:44:00'),(118,'google_firebase','1',NULL,'2021-07-27 15:49:39','2022-01-19 00:58:42'),(119,'authorizenet_sandbox','1',NULL,'2021-02-16 02:43:11','2021-06-14 05:00:23'),(120,'topbar_banner',NULL,NULL,'2022-01-02 20:03:25','2022-01-02 20:03:25'),(121,'topbar_banner_link',NULL,NULL,'2022-01-02 20:03:25','2022-01-02 20:03:25'),(122,'helpline_number',NULL,NULL,'2022-01-02 20:03:25','2022-01-02 20:03:25'),(123,'home_banner3_images',NULL,NULL,'2022-01-22 19:33:05','2022-01-22 19:35:31'),(124,'home_banner3_links',NULL,NULL,'2022-01-22 19:33:05','2022-01-22 19:35:31'),(125,'main_category_ids','[\"1\",\"1\",\"2\",\"2\",\"2\",\"1\"]',NULL,'2022-01-23 00:18:44','2022-01-23 13:15:30');
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `temp_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int NOT NULL DEFAULT '0',
  `product_id` int DEFAULT NULL,
  `variation` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` double(20,2) DEFAULT '0.00',
  `tax` double(20,2) DEFAULT '0.00',
  `shipping_cost` double(20,2) DEFAULT '0.00',
  `shipping_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pickup_point` int DEFAULT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `product_referral_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_applied` tinyint NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (76,9,35,NULL,11,31,NULL,50.00,85.00,10.00,'home_delivery',0,0.00,NULL,NULL,0,1,'2022-02-04 17:24:39','2022-02-04 17:24:43'),(78,9,36,NULL,12,26,'خروفكامل-غيرمطلوب-أكياسلحم',560.00,15.00,20.00,'home_delivery',0,0.00,NULL,NULL,0,2,'2022-02-05 03:32:50','2022-02-05 03:47:17');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int NOT NULL DEFAULT '0',
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int NOT NULL DEFAULT '0',
  `top` int NOT NULL DEFAULT '0',
  `digital` int NOT NULL DEFAULT '0',
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,0,0,'اللحوم',0,0.00,'5','5',0,1,0,'demo-category-1','Demo category 1',NULL,'2022-01-03 13:30:31','2022-01-03 13:30:31'),(2,0,0,'الفواكه والخضروات',0,0.00,'6','6',0,0,0,'demo-category-2','Demo category 2',NULL,'2022-01-03 13:30:32','2022-01-03 13:30:32'),(8,1,1,'الماعز والأغنام',0,0.00,'12','12',1,0,0,'--nyfzz',NULL,NULL,'2022-02-01 05:39:56','2022-02-01 05:39:56'),(9,1,1,'لحم ابل',0,0.00,'16','16',1,0,0,'--pmhiy',NULL,NULL,'2022-01-03 13:34:08','2022-01-03 13:34:08'),(10,0,0,'تمور',0,0.00,'28','13',0,0,0,'-mh2rn',NULL,NULL,'2022-01-24 05:46:15','2022-01-24 05:46:15'),(11,2,1,'فواكة',0,0.00,'24','23',1,0,0,'-g82Wx',NULL,NULL,'2022-01-22 19:40:46','2022-01-22 19:40:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,'اللحوم','en','2021-12-28 17:03:52','2022-01-02 20:11:03'),(6,1,'اللحوم','sa','2022-01-02 20:08:11','2022-01-02 20:08:11'),(7,2,'الفواكه والخضروات','en','2022-01-02 20:09:31','2022-01-02 20:09:31'),(8,8,'الماعز والأغنام','sa','2022-01-03 13:29:30','2022-02-01 05:39:56'),(9,9,'لحم ابل','sa','2022-01-03 13:31:44','2022-01-03 13:31:44'),(10,10,'تمور','sa','2022-01-04 14:35:01','2022-01-04 14:35:01'),(11,11,'فواكة','sa','2022-01-22 19:40:35','2022-01-22 19:40:35');
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `image` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `featured` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48360 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (37410,'Mahayel',3147,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:38',NULL,NULL,NULL,'','','','0'),(37411,'Abha',3149,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(37412,'Abu \'Aris',3149,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(37413,'Khamis Mushayt',3149,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(37414,'Qal\'at Bishah',3149,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(37415,'Ha\'il',3152,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:37',NULL,NULL,NULL,'','','','0'),(37416,'Jawf',3153,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:36',NULL,NULL,NULL,'','','','0'),(37417,'Sakakah',3153,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:36',NULL,NULL,NULL,'','','','0'),(37418,'Jizan',3154,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(37419,'Sabya',3154,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(37420,'مكة',3155,0.00,1,'2021-04-06 01:13:50','2022-01-19 19:14:28',NULL,'52452','515','مكة','','20','1'),(37424,'Dar\'iyah',3156,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(37425,'Najran',3156,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(37426,'Sharurah',3156,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(37427,'\'Unayzah',3157,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:33',NULL,NULL,NULL,'','','','0'),(37428,'Buraydah',3157,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:33',NULL,NULL,NULL,'','','','0'),(37429,'ar-Rass',3157,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:33',NULL,NULL,NULL,'','','','0'),(37430,'Tabuk',3158,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:32',NULL,NULL,NULL,'','','','0'),(37431,'Umm Lajj',3158,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:32',NULL,NULL,NULL,'','','','0'),(37432,'al-Bahah',3160,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37433,'Ara\'ar',3161,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:20:07',NULL,NULL,NULL,'','','','0'),(37434,'Rafha',3161,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:20:07',NULL,NULL,NULL,'','','','0'),(37435,'Turayf',3161,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:20:07',NULL,NULL,NULL,'','','','0'),(37436,'al-Qurayyat',3161,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:20:07',NULL,NULL,NULL,'','','','0'),(37437,'Yanbu',3162,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:20:08',NULL,NULL,NULL,'','','','0'),(37438,'al-Madinah',3162,0.00,1,'2021-04-06 01:13:50','2022-01-02 18:50:22',NULL,'5445','45454','بسبسب','','3','0'),(37439,'\'Afif',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37440,'ad-Dawadimi',3163,0.00,1,'2021-04-06 01:13:50','2021-12-24 02:29:31',NULL,NULL,NULL,'','','','0'),(37441,'ad-Dilam',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37442,'al-Kharj',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37443,'al-Majma\'ah',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37444,'ar-Riyad',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(37445,'az-Zulfi',3163,0.00,1,'2021-04-06 01:13:50','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(48357,'new yourk2',3146,30.00,1,'2021-12-24 02:27:38','2021-12-24 02:39:47',NULL,'40.7127837','-74.00594130000002','new york2','','1','1'),(48358,'جدة',3155,0.00,1,'2022-01-17 21:21:00','2022-01-23 03:17:40',NULL,'39.1925048','21.485811','jeddah','','19','1'),(48359,'المدينة المنورة',3155,0.00,1,'2022-01-19 19:15:08','2022-01-19 19:16:37',NULL,'11','11','المدينة','','18','1');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_products`
--

DROP TABLE IF EXISTS `city_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_products`
--

LOCK TABLES `city_products` WRITE;
/*!40000 ALTER TABLE `city_products` DISABLE KEYS */;
INSERT INTO `city_products` VALUES (1,'48358','21',NULL,NULL),(2,'48358','22',NULL,NULL),(3,'48358','23',NULL,NULL),(4,'48358','24',NULL,NULL),(5,'48358','25',NULL,NULL),(6,'37420','26',NULL,NULL),(7,'48358','26',NULL,NULL),(8,'48359','26',NULL,NULL),(9,'48358','27',NULL,NULL),(10,'37412','28',NULL,NULL),(11,'48358','28',NULL,NULL),(12,'48358','29',NULL,NULL),(13,'48358','30',NULL,NULL),(14,'48358','31',NULL,NULL);
/*!40000 ALTER TABLE `city_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city_translations`
--

DROP TABLE IF EXISTS `city_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_translations`
--

LOCK TABLES `city_translations` WRITE;
/*!40000 ALTER TABLE `city_translations` DISABLE KEYS */;
INSERT INTO `city_translations` VALUES (1,48357,'new yourk2','en','2021-12-24 02:39:47','2021-12-24 02:39:47'),(2,37438,'al-Madinah','sa','2022-01-02 18:50:22','2022-01-02 18:50:22'),(3,48358,'جدة','sa','2022-01-19 19:12:51','2022-01-19 19:12:51'),(4,37420,'مكة','sa','2022-01-19 19:13:40','2022-01-19 19:13:40');
/*!40000 ALTER TABLE `city_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'IndianRed','#CD5C5C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(2,'LightCoral','#F08080','2018-11-05 02:12:26','2018-11-05 02:12:26'),(3,'Salmon','#FA8072','2018-11-05 02:12:26','2018-11-05 02:12:26'),(4,'DarkSalmon','#E9967A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(5,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(6,'Crimson','#DC143C','2018-11-05 02:12:26','2018-11-05 02:12:26'),(7,'Red','#FF0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(8,'FireBrick','#B22222','2018-11-05 02:12:26','2018-11-05 02:12:26'),(9,'DarkRed','#8B0000','2018-11-05 02:12:26','2018-11-05 02:12:26'),(10,'Pink','#FFC0CB','2018-11-05 02:12:26','2018-11-05 02:12:26'),(11,'LightPink','#FFB6C1','2018-11-05 02:12:26','2018-11-05 02:12:26'),(12,'HotPink','#FF69B4','2018-11-05 02:12:26','2018-11-05 02:12:26'),(13,'DeepPink','#FF1493','2018-11-05 02:12:26','2018-11-05 02:12:26'),(14,'MediumVioletRed','#C71585','2018-11-05 02:12:26','2018-11-05 02:12:26'),(15,'PaleVioletRed','#DB7093','2018-11-05 02:12:26','2018-11-05 02:12:26'),(16,'LightSalmon','#FFA07A','2018-11-05 02:12:26','2018-11-05 02:12:26'),(17,'Coral','#FF7F50','2018-11-05 02:12:26','2018-11-05 02:12:26'),(18,'Tomato','#FF6347','2018-11-05 02:12:26','2018-11-05 02:12:26'),(19,'OrangeRed','#FF4500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(20,'DarkOrange','#FF8C00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(21,'Orange','#FFA500','2018-11-05 02:12:26','2018-11-05 02:12:26'),(22,'Gold','#FFD700','2018-11-05 02:12:26','2018-11-05 02:12:26'),(23,'Yellow','#FFFF00','2018-11-05 02:12:26','2018-11-05 02:12:26'),(24,'LightYellow','#FFFFE0','2018-11-05 02:12:26','2018-11-05 02:12:26'),(25,'LemonChiffon','#FFFACD','2018-11-05 02:12:26','2018-11-05 02:12:26'),(26,'LightGoldenrodYellow','#FAFAD2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(27,'PapayaWhip','#FFEFD5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(28,'Moccasin','#FFE4B5','2018-11-05 02:12:27','2018-11-05 02:12:27'),(29,'PeachPuff','#FFDAB9','2018-11-05 02:12:27','2018-11-05 02:12:27'),(30,'PaleGoldenrod','#EEE8AA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(31,'Khaki','#F0E68C','2018-11-05 02:12:27','2018-11-05 02:12:27'),(32,'DarkKhaki','#BDB76B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(33,'Lavender','#E6E6FA','2018-11-05 02:12:27','2018-11-05 02:12:27'),(34,'Thistle','#D8BFD8','2018-11-05 02:12:27','2018-11-05 02:12:27'),(35,'Plum','#DDA0DD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(36,'Violet','#EE82EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(37,'Orchid','#DA70D6','2018-11-05 02:12:27','2018-11-05 02:12:27'),(38,'Fuchsia','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(39,'Magenta','#FF00FF','2018-11-05 02:12:27','2018-11-05 02:12:27'),(40,'MediumOrchid','#BA55D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(41,'MediumPurple','#9370DB','2018-11-05 02:12:27','2018-11-05 02:12:27'),(42,'Amethyst','#9966CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(43,'BlueViolet','#8A2BE2','2018-11-05 02:12:27','2018-11-05 02:12:27'),(44,'DarkViolet','#9400D3','2018-11-05 02:12:27','2018-11-05 02:12:27'),(45,'DarkOrchid','#9932CC','2018-11-05 02:12:27','2018-11-05 02:12:27'),(46,'DarkMagenta','#8B008B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(47,'Purple','#800080','2018-11-05 02:12:27','2018-11-05 02:12:27'),(48,'Indigo','#4B0082','2018-11-05 02:12:27','2018-11-05 02:12:27'),(49,'SlateBlue','#6A5ACD','2018-11-05 02:12:27','2018-11-05 02:12:27'),(50,'DarkSlateBlue','#483D8B','2018-11-05 02:12:27','2018-11-05 02:12:27'),(51,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:27','2018-11-05 02:12:27'),(52,'GreenYellow','#ADFF2F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(53,'Chartreuse','#7FFF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(54,'LawnGreen','#7CFC00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(55,'Lime','#00FF00','2018-11-05 02:12:27','2018-11-05 02:12:27'),(56,'LimeGreen','#32CD32','2018-11-05 02:12:27','2018-11-05 02:12:27'),(57,'PaleGreen','#98FB98','2018-11-05 02:12:27','2018-11-05 02:12:27'),(58,'LightGreen','#90EE90','2018-11-05 02:12:27','2018-11-05 02:12:27'),(59,'MediumSpringGreen','#00FA9A','2018-11-05 02:12:27','2018-11-05 02:12:27'),(60,'SpringGreen','#00FF7F','2018-11-05 02:12:27','2018-11-05 02:12:27'),(61,'MediumSeaGreen','#3CB371','2018-11-05 02:12:27','2018-11-05 02:12:27'),(62,'SeaGreen','#2E8B57','2018-11-05 02:12:27','2018-11-05 02:12:27'),(63,'ForestGreen','#228B22','2018-11-05 02:12:28','2018-11-05 02:12:28'),(64,'Green','#008000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(65,'DarkGreen','#006400','2018-11-05 02:12:28','2018-11-05 02:12:28'),(66,'YellowGreen','#9ACD32','2018-11-05 02:12:28','2018-11-05 02:12:28'),(67,'OliveDrab','#6B8E23','2018-11-05 02:12:28','2018-11-05 02:12:28'),(68,'Olive','#808000','2018-11-05 02:12:28','2018-11-05 02:12:28'),(69,'DarkOliveGreen','#556B2F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(70,'MediumAquamarine','#66CDAA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(71,'DarkSeaGreen','#8FBC8F','2018-11-05 02:12:28','2018-11-05 02:12:28'),(72,'LightSeaGreen','#20B2AA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(73,'DarkCyan','#008B8B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(74,'Teal','#008080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(75,'Aqua','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(76,'Cyan','#00FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(77,'LightCyan','#E0FFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(78,'PaleTurquoise','#AFEEEE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(79,'Aquamarine','#7FFFD4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(80,'Turquoise','#40E0D0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(81,'MediumTurquoise','#48D1CC','2018-11-05 02:12:28','2018-11-05 02:12:28'),(82,'DarkTurquoise','#00CED1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(83,'CadetBlue','#5F9EA0','2018-11-05 02:12:28','2018-11-05 02:12:28'),(84,'SteelBlue','#4682B4','2018-11-05 02:12:28','2018-11-05 02:12:28'),(85,'LightSteelBlue','#B0C4DE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(86,'PowderBlue','#B0E0E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(87,'LightBlue','#ADD8E6','2018-11-05 02:12:28','2018-11-05 02:12:28'),(88,'SkyBlue','#87CEEB','2018-11-05 02:12:28','2018-11-05 02:12:28'),(89,'LightSkyBlue','#87CEFA','2018-11-05 02:12:28','2018-11-05 02:12:28'),(90,'DeepSkyBlue','#00BFFF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(91,'DodgerBlue','#1E90FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(92,'CornflowerBlue','#6495ED','2018-11-05 02:12:28','2018-11-05 02:12:28'),(93,'MediumSlateBlue','#7B68EE','2018-11-05 02:12:28','2018-11-05 02:12:28'),(94,'RoyalBlue','#4169E1','2018-11-05 02:12:28','2018-11-05 02:12:28'),(95,'Blue','#0000FF','2018-11-05 02:12:28','2018-11-05 02:12:28'),(96,'MediumBlue','#0000CD','2018-11-05 02:12:28','2018-11-05 02:12:28'),(97,'DarkBlue','#00008B','2018-11-05 02:12:28','2018-11-05 02:12:28'),(98,'Navy','#000080','2018-11-05 02:12:28','2018-11-05 02:12:28'),(99,'MidnightBlue','#191970','2018-11-05 02:12:29','2018-11-05 02:12:29'),(100,'Cornsilk','#FFF8DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(101,'BlanchedAlmond','#FFEBCD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(102,'Bisque','#FFE4C4','2018-11-05 02:12:29','2018-11-05 02:12:29'),(103,'NavajoWhite','#FFDEAD','2018-11-05 02:12:29','2018-11-05 02:12:29'),(104,'Wheat','#F5DEB3','2018-11-05 02:12:29','2018-11-05 02:12:29'),(105,'BurlyWood','#DEB887','2018-11-05 02:12:29','2018-11-05 02:12:29'),(106,'Tan','#D2B48C','2018-11-05 02:12:29','2018-11-05 02:12:29'),(107,'RosyBrown','#BC8F8F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(108,'SandyBrown','#F4A460','2018-11-05 02:12:29','2018-11-05 02:12:29'),(109,'Goldenrod','#DAA520','2018-11-05 02:12:29','2018-11-05 02:12:29'),(110,'DarkGoldenrod','#B8860B','2018-11-05 02:12:29','2018-11-05 02:12:29'),(111,'Peru','#CD853F','2018-11-05 02:12:29','2018-11-05 02:12:29'),(112,'Chocolate','#D2691E','2018-11-05 02:12:29','2018-11-05 02:12:29'),(113,'SaddleBrown','#8B4513','2018-11-05 02:12:29','2018-11-05 02:12:29'),(114,'Sienna','#A0522D','2018-11-05 02:12:29','2018-11-05 02:12:29'),(115,'Brown','#A52A2A','2018-11-05 02:12:29','2018-11-05 02:12:29'),(116,'Maroon','#800000','2018-11-05 02:12:29','2018-11-05 02:12:29'),(117,'White','#FFFFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(118,'Snow','#FFFAFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(119,'Honeydew','#F0FFF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(120,'MintCream','#F5FFFA','2018-11-05 02:12:29','2018-11-05 02:12:29'),(121,'Azure','#F0FFFF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(122,'AliceBlue','#F0F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(123,'GhostWhite','#F8F8FF','2018-11-05 02:12:29','2018-11-05 02:12:29'),(124,'WhiteSmoke','#F5F5F5','2018-11-05 02:12:29','2018-11-05 02:12:29'),(125,'Seashell','#FFF5EE','2018-11-05 02:12:29','2018-11-05 02:12:29'),(126,'Beige','#F5F5DC','2018-11-05 02:12:29','2018-11-05 02:12:29'),(127,'OldLace','#FDF5E6','2018-11-05 02:12:29','2018-11-05 02:12:29'),(128,'FloralWhite','#FFFAF0','2018-11-05 02:12:29','2018-11-05 02:12:29'),(129,'Ivory','#FFFFF0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(130,'AntiqueWhite','#FAEBD7','2018-11-05 02:12:30','2018-11-05 02:12:30'),(131,'Linen','#FAF0E6','2018-11-05 02:12:30','2018-11-05 02:12:30'),(132,'LavenderBlush','#FFF0F5','2018-11-05 02:12:30','2018-11-05 02:12:30'),(133,'MistyRose','#FFE4E1','2018-11-05 02:12:30','2018-11-05 02:12:30'),(134,'Gainsboro','#DCDCDC','2018-11-05 02:12:30','2018-11-05 02:12:30'),(135,'LightGrey','#D3D3D3','2018-11-05 02:12:30','2018-11-05 02:12:30'),(136,'Silver','#C0C0C0','2018-11-05 02:12:30','2018-11-05 02:12:30'),(137,'DarkGray','#A9A9A9','2018-11-05 02:12:30','2018-11-05 02:12:30'),(138,'Gray','#808080','2018-11-05 02:12:30','2018-11-05 02:12:30'),(139,'DimGray','#696969','2018-11-05 02:12:30','2018-11-05 02:12:30'),(140,'LightSlateGray','#778899','2018-11-05 02:12:30','2018-11-05 02:12:30'),(141,'SlateGray','#708090','2018-11-05 02:12:30','2018-11-05 02:12:30'),(142,'DarkSlateGray','#2F4F4F','2018-11-05 02:12:30','2018-11-05 02:12:30'),(143,'Black','#000000','2018-11-05 02:12:30','2018-11-05 02:12:30');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combined_orders`
--

DROP TABLE IF EXISTS `combined_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combined_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shipping_address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `grand_total` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combined_orders`
--

LOCK TABLES `combined_orders` WRITE;
/*!40000 ALTER TABLE `combined_orders` DISABLE KEYS */;
INSERT INTO `combined_orders` VALUES (1,12,'{\"name\":\"test\",\"email\":\"b6447333@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0628\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u0628\\u0642\\u0627\\u0644\\u0629\",\"country\":\"Saudi Arabia\",\"state\":\"Aseer\",\"city\":\"Mahayel\",\"postal_code\":\"\\u0661\\u0663\\u0662\\u0663\",\"phone\":\"0537266754\"}',135.00,'2022-01-02 17:50:33','2022-01-02 17:50:33'),(2,12,'{\"name\":\"b6447333@gmail.com\",\"email\":\"b6447333@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0628\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u0628\\u0642\\u0627\\u0644\\u0629\",\"country\":\"Saudi Arabia\",\"state\":\"Aseer\",\"city\":\"Mahayel\",\"postal_code\":\"\\u0661\\u0663\\u0662\\u0663\",\"phone\":\"0537266754\"}',800.00,'2022-01-03 14:02:46','2022-01-03 14:02:46'),(3,12,'{\"name\":\"b6447333@gmail.com\",\"email\":\"b6447333@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0628\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u0628\\u0642\\u0627\\u0644\\u0629\",\"country\":\"Saudi Arabia\",\"state\":\"Aseer\",\"city\":\"Mahayel\",\"postal_code\":\"\\u0661\\u0663\\u0662\\u0663\",\"phone\":\"0537266754\"}',720.00,'2022-01-03 14:36:38','2022-01-03 14:36:38'),(4,12,'{\"name\":\"b6447333@gmail.com\",\"email\":\"b6447333@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0628\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u0628\\u0642\\u0627\\u0644\\u0629\",\"country\":\"Saudi Arabia\",\"state\":\"Aseer\",\"city\":\"Mahayel\",\"postal_code\":\"\\u0661\\u0663\\u0662\\u0663\",\"phone\":\"0537266754\"}',745.00,'2022-01-04 14:56:51','2022-01-04 14:56:51'),(5,19,'{\"name\":\"\",\"email\":null,\"address\":\"\\u0647\\u0644\\u0639\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"\\u0645\\u0644\\u062a\",\"phone\":\"548545\"}',885.00,'2022-01-16 14:58:12','2022-01-16 14:58:12'),(6,17,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Makkah\",\"postal_code\":\"42422\",\"phone\":\"5555555\"}',735.00,'2022-01-17 03:19:14','2022-01-17 03:19:14'),(7,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.591,39.1937\",\"addresstext\":\"5513 Asad Ibn Al Harithah, AR Rabwah District, Jeddah 23448\\u00a07257, Saudi Arabia\"}',3600.00,'2022-01-17 21:53:49','2022-01-17 21:53:49'),(8,15,'[]',0.00,'2022-01-17 22:08:30','2022-01-17 22:08:30'),(9,15,'[]',0.00,'2022-01-17 22:08:34','2022-01-17 22:08:34'),(10,15,'[]',0.00,'2022-01-17 22:08:50','2022-01-17 22:08:50'),(11,15,'[]',0.00,'2022-01-17 22:09:21','2022-01-17 22:09:21'),(12,15,'[]',0.00,'2022-01-17 22:09:24','2022-01-17 22:09:24'),(13,15,'[]',0.00,'2022-01-17 22:09:59','2022-01-17 22:09:59'),(14,15,'[]',0.00,'2022-01-17 22:12:56','2022-01-17 22:12:56'),(15,15,'[]',0.00,'2022-01-17 22:12:59','2022-01-17 22:12:59'),(16,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',735.00,'2022-01-17 22:13:59','2022-01-17 22:13:59'),(17,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',735.00,'2022-01-17 22:21:08','2022-01-17 22:21:08'),(18,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',735.00,'2022-01-17 22:30:15','2022-01-17 22:30:15'),(19,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',1915.00,'2022-01-17 23:02:01','2022-01-17 23:02:01'),(20,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',1200.00,'2022-01-17 23:15:33','2022-01-17 23:15:33'),(21,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',1200.00,'2022-01-17 23:21:39','2022-01-17 23:21:39'),(22,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',1200.00,'2022-01-17 23:24:12','2022-01-17 23:24:12'),(23,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5913,39.1957\",\"addresstext\":\"7253 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0635\\u0641\\u0627\\u060c Jeddah 23452\\u00a02364, Saudi Arabia\"}',735.00,'2022-01-17 23:24:54','2022-01-17 23:24:54'),(24,17,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Makkah\",\"postal_code\":\"42422\",\"phone\":\"5555555\",\"lat_lang\":\"21.591,39.1944\",\"addresstext\":\"7258 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05563, Saudi Arabia\"}',895.00,'2022-01-18 08:52:06','2022-01-18 08:52:06'),(25,17,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Makkah\",\"postal_code\":\"42422\",\"phone\":\"5555555\",\"lat_lang\":\"21.5949,39.1924\",\"addresstext\":\"7683, AR Rabwah District, Jeddah 23448\\u00a05370, Saudi Arabia\"}',1025.00,'2022-01-18 08:53:56','2022-01-18 08:53:56'),(26,17,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Makkah\",\"postal_code\":\"42422\",\"phone\":\"5555555\",\"lat_lang\":\"21.5947,39.1909\",\"addresstext\":\"AR Rabwah District 7655, \\u0627\\u0644\\u0631\\u0628\\u0648\\u0629\\u060c \\u062c\\u062f\\u0629 23448, Saudi Arabia\"}',935.00,'2022-01-18 08:55:02','2022-01-18 08:55:02'),(27,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5903,39.1948\",\"addresstext\":\"7186 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0631\\u0628\\u0648\\u0629\\u060c Jeddah 23448\\u00a05616, Saudi Arabia\"}',4355.00,'2022-01-18 10:27:38','2022-01-18 10:27:38'),(28,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Jeddah\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',735.00,'2022-01-18 12:57:51','2022-01-18 12:57:51'),(29,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Jeddah\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.5289,39.1584\",\"addresstext\":\"2903 \\u0637\\u0631\\u064a\\u0642 \\u0627\\u0644\\u0643\\u0648\\u0631\\u0646\\u064a\\u0634\\u060c Al Hamra District, Jeddah 23321\\u00a07135, Saudi Arabia\"}',885.00,'2022-01-18 13:59:04','2022-01-18 13:59:04'),(30,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Jeddah\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.5227,39.1554\",\"addresstext\":\"2601 Al Misk, Al Hamra District, Jeddah 23321\\u00a06458, Saudi Arabia\"}',1750.00,'2022-01-18 14:26:05','2022-01-18 14:26:05'),(31,12,'{\"name\":\"b6447333@gmail.com\",\"email\":\"b6447333@gmail.com\",\"address\":\"\\u0627\\u0644\\u0639\\u0645\\u0627\\u0631\\u064a\\u0629 \\u0628\\u062c\\u0627\\u0646\\u0628 \\u0627\\u0644\\u0628\\u0642\\u0627\\u0644\\u0629\",\"country\":\"Saudi Arabia\",\"state\":\"Aseer\",\"city\":\"Mahayel\",\"postal_code\":\"\\u0661\\u0663\\u0662\\u0663\",\"phone\":\"0537266754\"}',2630.00,'2022-01-18 21:30:19','2022-01-18 21:30:19'),(32,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5903,39.1948\",\"addresstext\":\"7186 \\u0627\\u0644\\u0627\\u0645\\u064a\\u0631 \\u0645\\u0627\\u062c\\u062f \\u0641\\u0631\\u0639\\u064a\\u060c \\u062d\\u064a \\u0627\\u0644\\u0631\\u0628\\u0648\\u0629\\u060c Jeddah 23448\\u00a05616, Saudi Arabia\"}',735.00,'2022-01-18 21:41:45','2022-01-18 21:41:45'),(33,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Jeddah\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.5885,39.1925\",\"addresstext\":\"5385 Khafaf Ibn Nadbah, AR Rabwah District, Jeddah 23448\\u00a06985, Saudi Arabia\"}',735.00,'2022-01-19 15:04:02','2022-01-19 15:04:02'),(34,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"Jeddah\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',735.00,'2022-01-19 17:47:35','2022-01-19 17:47:35'),(35,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',735.00,'2022-01-19 23:15:39','2022-01-19 23:15:39'),(36,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',18675.00,'2022-01-20 12:25:06','2022-01-20 12:25:06'),(37,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5906,39.1932\",\"addresstext\":\"7213 Diya Ad Din Al Marni, AR Rabwah District, Jeddah 23448\\u00a05449, Saudi Arabia\"}',1200.00,'2022-01-20 21:32:35','2022-01-20 21:32:35'),(38,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5905,39.1948\",\"addresstext\":\"7198 Prince Majid Rd, Ar Rabwah, Jeddah 23448, Saudi Arabia\"}',735.00,'2022-01-22 10:51:33','2022-01-22 10:51:33'),(39,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5905,39.1948\",\"addresstext\":\"7198 Prince Majid Rd, Ar Rabwah, Jeddah 23448, Saudi Arabia\"}',1200.00,'2022-01-22 11:06:13','2022-01-22 11:06:13'),(40,33,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',735.00,'2022-01-22 11:30:27','2022-01-22 11:30:28'),(41,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5905,39.1948\",\"addresstext\":\"7198 Prince Majid Rd, Ar Rabwah, Jeddah 23448, Saudi Arabia\"}',735.00,'2022-01-22 12:32:28','2022-01-22 12:32:28'),(42,15,'{\"name\":\"gf\",\"email\":null,\"address\":\"hg\",\"country\":\"Saudi Arabia\",\"state\":\"Al Khobar\",\"city\":\"new yourk2\",\"postal_code\":\"33333\",\"phone\":\"0555555555\",\"lat_lang\":\"21.5905,39.1948\",\"addresstext\":\"7198 Prince Majid Rd, Ar Rabwah, Jeddah 23448, Saudi Arabia\"}',735.00,'2022-01-22 12:48:13','2022-01-22 12:48:13'),(43,35,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"7152 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05627, Saudi Arabia\"}',595.00,'2022-01-22 15:47:00','2022-01-22 15:47:00'),(44,36,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"21.5905,39.1947\",\"addresstext\":\"7198 Prince Majid Rd, AR Rabwah District, Jeddah 23448\\u00a05612, Saudi Arabia\"}',595.00,'2022-01-22 16:25:03','2022-01-22 16:25:03'),(45,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}',715.00,'2022-01-22 17:36:15','2022-01-22 17:36:15'),(46,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}',659.00,'2022-01-22 19:20:00','2022-01-22 19:20:00'),(47,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}',700.00,'2022-01-22 19:24:59','2022-01-22 19:24:59'),(48,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}',30.00,'2022-01-23 12:11:34','2022-01-23 12:11:34'),(49,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}',735.00,'2022-01-23 12:18:56','2022-01-23 12:18:57'),(50,35,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.5227,39.1554\",\"addresstext\":\"2601 Al Misk, Al Hamra District, Jeddah 23321\\u00a06458, Saudi Arabia\"}',699.00,'2022-01-23 14:51:39','2022-01-23 14:51:39'),(51,36,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"21.5905,39.1947\",\"addresstext\":\"null\"}',595.00,'2022-01-25 19:24:07','2022-01-25 19:24:07'),(52,36,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"37.7837,-122.407\",\"addresstext\":\"865 Market St, San Francisco, CA 94103, USA\"}',715.00,'2022-01-29 04:10:07','2022-01-29 04:10:07'),(53,36,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"21.5058,39.2154\",\"addresstext\":\"8620 \\u062d\\u0644\\u0647 \\u0645\\u0646\\u0635\\u0648\\u0631\\u060c \\u062d\\u064a \\u0627\\u0644\\u0641\\u064a\\u062d\\u0627\\u0621\\u060c Jeddah 22245\\u00a03322, Saudi Arabia\"}',2165.00,'2022-02-01 16:04:42','2022-02-01 16:04:42'),(54,47,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966568042000\"}',595.00,'2022-02-04 23:17:37','2022-02-04 23:17:37');
/*!40000 ALTER TABLE `combined_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission_histories`
--

DROP TABLE IF EXISTS `commission_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission_histories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `order_detail_id` int NOT NULL,
  `seller_id` int NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission_histories`
--

LOCK TABLES `commission_histories` WRITE;
/*!40000 ALTER TABLE `commission_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `commission_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_viewed` int NOT NULL DEFAULT '1',
  `receiver_viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `image` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `featured` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (191,'SA','Saudi Arabia',1,'2021-04-06 01:06:30','2021-12-22 23:18:36',NULL,NULL,NULL,'','','','0');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_usages`
--

DROP TABLE IF EXISTS `coupon_usages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupon_usages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `coupon_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_usages`
--

LOCK TABLES `coupon_usages` WRITE;
/*!40000 ALTER TABLE `coupon_usages` DISABLE KEYS */;
INSERT INTO `coupon_usages` VALUES (1,12,1,'2022-01-03 14:36:38','2022-01-03 14:36:38');
/*!40000 ALTER TABLE `coupon_usages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int NOT NULL,
  `end_date` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (1,9,'cart_base','save10','{\"min_buy\":\"400\",\"max_discount\":\"1000\"}',10.00,'percent',1643673600,1645833600,'2022-01-03 14:35:20','2022-02-04 17:25:55');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'U.S. Dollar','$',1.00000,1,'USD','2018-10-09 11:35:08','2018-10-17 05:50:52'),(2,'Australian Dollar','$',1.28000,1,'AUD','2018-10-09 11:35:08','2019-02-04 05:51:55'),(5,'Brazilian Real','R$',3.25000,1,'BRL','2018-10-09 11:35:08','2018-10-17 05:51:00'),(6,'Canadian Dollar','$',1.27000,1,'CAD','2018-10-09 11:35:08','2018-10-09 11:35:08'),(7,'Czech Koruna','Kč',20.65000,1,'CZK','2018-10-09 11:35:08','2018-10-09 11:35:08'),(8,'Danish Krone','kr',6.05000,1,'DKK','2018-10-09 11:35:08','2018-10-09 11:35:08'),(9,'Euro','€',0.85000,1,'EUR','2018-10-09 11:35:08','2018-10-09 11:35:08'),(10,'Hong Kong Dollar','$',7.83000,1,'HKD','2018-10-09 11:35:08','2018-10-09 11:35:08'),(11,'Hungarian Forint','Ft',255.24000,1,'HUF','2018-10-09 11:35:08','2018-10-09 11:35:08'),(12,'Israeli New Sheqel','₪',3.48000,1,'ILS','2018-10-09 11:35:08','2018-10-09 11:35:08'),(13,'Japanese Yen','¥',107.12000,1,'JPY','2018-10-09 11:35:08','2018-10-09 11:35:08'),(14,'Malaysian Ringgit','RM',3.91000,1,'MYR','2018-10-09 11:35:08','2018-10-09 11:35:08'),(15,'Mexican Peso','$',18.72000,1,'MXN','2018-10-09 11:35:08','2018-10-09 11:35:08'),(16,'Norwegian Krone','kr',7.83000,1,'NOK','2018-10-09 11:35:08','2018-10-09 11:35:08'),(17,'New Zealand Dollar','$',1.38000,1,'NZD','2018-10-09 11:35:08','2018-10-09 11:35:08'),(18,'Philippine Peso','₱',52.26000,1,'PHP','2018-10-09 11:35:08','2018-10-09 11:35:08'),(19,'Polish Zloty','zł',3.39000,1,'PLN','2018-10-09 11:35:08','2018-10-09 11:35:08'),(20,'Pound Sterling','£',0.72000,1,'GBP','2018-10-09 11:35:08','2018-10-09 11:35:08'),(21,'Russian Ruble','руб',55.93000,1,'RUB','2018-10-09 11:35:08','2018-10-09 11:35:08'),(22,'Singapore Dollar','$',1.32000,1,'SGD','2018-10-09 11:35:08','2018-10-09 11:35:08'),(23,'Swedish Krona','kr',8.19000,1,'SEK','2018-10-09 11:35:08','2018-10-09 11:35:08'),(24,'Swiss Franc','CHF',0.94000,1,'CHF','2018-10-09 11:35:08','2018-10-09 11:35:08'),(26,'Thai Baht','฿',31.39000,1,'THB','2018-10-09 11:35:08','2018-10-09 11:35:08'),(27,'Taka','৳',84.00000,1,'BDT','2018-10-09 11:35:08','2018-12-02 05:16:13'),(28,'Indian Rupee','Rs',68.45000,1,'Rupee','2019-07-07 10:33:46','2019-07-07 10:33:46'),(29,'Saudi riyal','SAR',3.75000,1,'SAR','2022-01-02 20:50:51','2022-01-02 20:50:59');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_package_payments`
--

DROP TABLE IF EXISTS `customer_package_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_package_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `customer_package_id` int NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `approval` int NOT NULL,
  `offline_payment` int NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_package_payments`
--

LOCK TABLES `customer_package_payments` WRITE;
/*!40000 ALTER TABLE `customer_package_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_package_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_package_translations`
--

DROP TABLE IF EXISTS `customer_package_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_package_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_package_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_package_translations`
--

LOCK TABLES `customer_package_translations` WRITE;
/*!40000 ALTER TABLE `customer_package_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_package_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_packages`
--

DROP TABLE IF EXISTS `customer_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_packages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int DEFAULT NULL,
  `logo` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_packages`
--

LOCK TABLES `customer_packages` WRITE;
/*!40000 ALTER TABLE `customer_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_product_translations`
--

DROP TABLE IF EXISTS `customer_product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_product_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_product_id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_product_translations`
--

LOCK TABLES `customer_product_translations` WRITE;
/*!40000 ALTER TABLE `customer_product_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_products`
--

DROP TABLE IF EXISTS `customer_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `added_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `subcategory_id` int DEFAULT NULL,
  `subsubcategory_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `photos` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `video_provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) DEFAULT '0.00',
  `meta_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_products`
--

LOCK TABLES `customer_products` WRITE;
/*!40000 ALTER TABLE `customer_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (4,8,'2019-08-01 10:35:09','2019-08-01 10:35:09'),(5,10,'2021-12-22 20:59:49','2021-12-22 20:59:49'),(6,12,'2022-01-02 17:46:45','2022-01-02 17:46:45'),(7,13,'2022-01-09 03:33:10','2022-01-09 03:33:10'),(8,14,'2022-01-10 00:17:15','2022-01-10 00:17:15'),(9,15,'2022-01-10 18:20:27','2022-01-10 18:20:27'),(10,16,'2022-01-10 19:47:39','2022-01-10 19:47:39'),(11,17,'2022-01-14 06:05:29','2022-01-14 06:05:29'),(12,18,'2022-01-16 13:45:33','2022-01-16 13:45:33'),(13,19,'2022-01-16 14:51:55','2022-01-16 14:51:55'),(14,20,'2022-01-18 08:37:28','2022-01-18 08:37:28'),(15,21,'2022-01-18 08:37:39','2022-01-18 08:37:39'),(16,22,'2022-01-18 10:00:16','2022-01-18 10:00:16'),(17,23,'2022-01-18 10:00:32','2022-01-18 10:00:32'),(18,24,'2022-01-18 10:02:26','2022-01-18 10:02:26'),(19,25,'2022-01-18 10:03:29','2022-01-18 10:03:29'),(20,26,'2022-01-18 10:03:46','2022-01-18 10:03:46'),(21,27,'2022-01-18 10:04:29','2022-01-18 10:04:29'),(22,28,'2022-01-18 10:05:28','2022-01-18 10:05:28'),(23,29,'2022-01-18 10:07:04','2022-01-18 10:07:04'),(24,30,'2022-01-18 10:09:31','2022-01-18 10:09:31'),(25,31,'2022-01-18 10:09:52','2022-01-18 10:09:52'),(26,32,'2022-01-18 10:12:26','2022-01-18 10:12:26'),(27,33,'2022-01-18 12:42:09','2022-01-18 12:42:09'),(28,34,'2022-01-22 15:15:04','2022-01-22 15:15:04'),(29,35,'2022-01-22 15:38:00','2022-01-22 15:38:00'),(30,36,'2022-01-22 16:11:39','2022-01-22 16:11:39'),(31,37,'2022-01-22 17:34:29','2022-01-22 17:34:29'),(32,39,'2022-01-24 05:59:02','2022-01-24 05:59:02'),(33,40,'2022-01-24 05:59:45','2022-01-24 05:59:45'),(34,41,'2022-01-24 06:01:02','2022-01-24 06:01:02'),(35,42,'2022-01-24 06:01:08','2022-01-24 06:01:08'),(36,43,'2022-01-24 06:02:09','2022-01-24 06:02:09'),(37,44,'2022-01-24 06:04:10','2022-01-24 06:04:10'),(38,45,'2022-01-25 05:27:39','2022-01-25 05:27:39'),(39,46,'2022-01-25 05:28:17','2022-01-25 05:28:17'),(40,47,'2022-02-04 23:15:28','2022-02-04 23:15:28');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firebase_notifications`
--

DROP TABLE IF EXISTS `firebase_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firebase_notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `item_type` varchar(255) NOT NULL,
  `item_type_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firebase_notifications`
--

LOCK TABLES `firebase_notifications` WRITE;
/*!40000 ALTER TABLE `firebase_notifications` DISABLE KEYS */;
INSERT INTO `firebase_notifications` VALUES (1,'Order updated !',' Your order 20220122-12322824 has been ontheway','order',33,15,0,'2022-01-22 12:33:06','2022-01-22 12:33:06');
/*!40000 ALTER TABLE `firebase_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deal_products`
--

DROP TABLE IF EXISTS `flash_deal_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deal_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `flash_deal_id` int NOT NULL,
  `product_id` int NOT NULL,
  `discount` double(20,2) DEFAULT '0.00',
  `discount_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deal_products`
--

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;
INSERT INTO `flash_deal_products` VALUES (6,3,25,0.00,NULL,'2022-01-23 12:08:53','2022-01-23 12:08:53'),(8,1,26,0.00,NULL,'2022-02-01 15:32:04','2022-02-01 15:32:04');
/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deal_translations`
--

DROP TABLE IF EXISTS `flash_deal_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deal_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deal_translations`
--

LOCK TABLES `flash_deal_translations` WRITE;
/*!40000 ALTER TABLE `flash_deal_translations` DISABLE KEYS */;
INSERT INTO `flash_deal_translations` VALUES (1,1,'عروض موسم الشواء','sa','2022-01-22 14:54:25','2022-01-22 14:54:25'),(3,3,'عروض قوية','sa','2022-01-23 12:08:53','2022-01-23 12:08:53');
/*!40000 ALTER TABLE `flash_deal_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int DEFAULT NULL,
  `end_date` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `featured` int NOT NULL DEFAULT '0',
  `background_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deals`
--

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;
INSERT INTO `flash_deals` VALUES (1,'عروض موسم الشواء',1643414400,1661644740,1,0,'#7e0800','white','22','عروض-موسم-الشواء-mfr8o','2022-01-22 14:54:25','2022-02-01 15:32:04'),(3,'عروض قوية',1642809600,1643500740,1,1,NULL,NULL,'25','عروض-قوية-ju2ec','2022-01-23 12:08:53','2022-01-23 12:08:59');
/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_categories`
--

DROP TABLE IF EXISTS `home_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `subsubcategories` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_categories`
--

LOCK TABLES `home_categories` WRITE;
/*!40000 ALTER TABLE `home_categories` DISABLE KEYS */;
INSERT INTO `home_categories` VALUES (1,1,'[\"1\"]',1,'2019-03-12 06:38:23','2019-03-12 06:38:23'),(2,2,'[\"10\"]',1,'2019-03-12 06:44:54','2019-03-12 06:44:54');
/*!40000 ALTER TABLE `home_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `app_lang_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'en',
  `rtl` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en',0,'2019-01-20 12:13:20','2019-01-20 12:13:20'),(4,'Arabic','sa','ar',1,'2019-04-28 18:34:12','2019-04-28 18:34:12');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `conversation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2021_12_23_022951_add_extra_data_to_countries_table',2),(4,'2021_12_23_024207_add_extra_data_to_states_table',2),(5,'2021_12_23_024224_add_extra_data_to_cities_table',2),(6,'2021_12_26_223010_add_extra_data_to_pickup_points_table',3),(7,'2022_01_01_035827_add_category_id_to_attributes_table',4),(8,'2022_01_01_040456_add_price_to_attribute_values_table',4),(9,'2022_01_12_230702_add_date_data_to_orders_table',5),(10,'2022_01_17_022200_add_extra_data_to_products_table',5),(11,'2022_01_17_023607_create_city_products_table',5),(12,'2022_01_17_183041_add_address_data_to_orders_table',5),(13,'2022_01_17_201840_add_more_address_data_to_orders_table',5),(14,'2022_01_17_203318_add_more_address_data_to_addresses_table',6),(15,'2022_01_23_005810_create_units_table',7);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('013fd54b-fc80-4791-8ac6-e2bcea7a9894','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-04 14:59:33','2022-01-04 14:59:33'),('01c00c28-cee4-4e96-b561-aae5d403d461','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 09:43:50','2022-01-18 09:43:50'),('01e5f820-6dd0-47bc-9b9f-944bfae1bb75','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:00:01','2022-01-18 09:00:01'),('05941658-d678-4a78-878a-a61eb7806194','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:33:06','2022-01-22 12:33:06'),('0692562f-5b62-42e5-8618-aa9f8c4f46d7','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:55:29','2022-01-09 23:55:29'),('06c0f9aa-a425-4963-bee1-ca4b2eda5ca5','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 15:09:39','2022-01-23 15:09:39'),('0940cced-feca-4418-8391-a9cae7fd528f','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:43','2022-01-18 09:00:43'),('095a6078-49b5-447b-b72e-22bc21af5441','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 12:51:49','2022-01-22 12:51:49'),('0be67fd3-830b-47de-ba55-46ed5550d7f3','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-23 14:52:15','2022-01-23 14:52:15'),('0c30685b-6cbb-4725-8cdb-4b3de13b0fab','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":40,\"order_code\":\"20220123-12113448\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 12:12:51','2022-01-23 12:12:51'),('0f3f0e47-2b6c-4153-abc2-206e00e22850','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":23,\"order_code\":\"20220118-21301911\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 21:30:20','2022-01-18 21:30:20'),('10a91a48-6859-4be6-b9ba-e396925ba1df','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:53:57','2022-01-18 08:53:57'),('114cac40-3c3e-44d4-affb-fa2415557811','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":14,\"order_code\":\"20220117-23241230\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:24:13','2022-01-17 23:24:13'),('119d3711-cd05-42ab-a719-aad6398cc8e9','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-22 19:26:43','2022-01-22 19:26:43'),('13e02c70-2c4a-4af1-9763-05183d0dc9f0','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":9,\"order_code\":\"20220117-22210886\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:21:09','2022-01-17 22:21:09'),('140489e4-9800-4852-9b9e-ae89b2e1d5f4','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:00:36','2022-01-18 09:00:36'),('14ea18b5-bbcf-461b-b498-f9fbc697280b','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:00:18','2022-01-18 09:00:18'),('171476ea-75a3-4f8d-9f20-52d425a8bf9d','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:38:56','2022-01-03 14:38:56'),('17c0801a-ea02-4e98-8310-36861cb54478','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-03 14:37:09','2022-01-03 14:37:09'),('18201bb2-5bfa-4415-81f3-5d6056eb96be','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":15,\"order_code\":\"20220117-23245474\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:24:55','2022-01-17 23:24:55'),('1955e188-a702-44b4-8be3-70e86e93f547','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":2,\"order_code\":\"20220103-14024639\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-03 14:02:46','2022-01-03 14:02:46'),('1a090fbd-53c0-4cf0-9e94-fb01c6dabdd9','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 02:39:57','2022-01-23 02:39:57'),('1c12d12d-bdcc-4513-804e-0b4526759482','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"pending\"}',NULL,'2022-01-18 09:00:22','2022-01-18 09:00:22'),('1e0b3672-bd5f-402d-8a28-751dc91799a0','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:51:01','2022-01-09 23:51:01'),('1e5c4ff9-8fcd-4ad7-b7a1-fd017ad185ba','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 12:58:34','2022-01-18 12:58:34'),('1e84c503-5718-4ffa-961c-fe33f7f1ab4e','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:00:26','2022-01-18 09:00:26'),('1f9ccd16-dba3-4bbb-9583-f900c6d231ee','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":7,\"order_code\":\"20220117-21534993\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 21:53:50','2022-01-17 21:53:50'),('21646d99-0ecf-4dd1-821c-d55f3ad1edfc','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 12:34:57','2022-01-22 12:34:57'),('217f0aee-55bb-4955-85ea-e21fd290f0cb','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 15:09:39','2022-01-23 15:09:39'),('2209c910-d57d-4b07-b620-a68b82f58ca3','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":8,\"order_code\":\"20220117-22135925\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:14:00','2022-01-17 22:14:00'),('221bd581-2ab6-48c0-8325-37a3d05fbbcf','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-20 12:25:07','2022-01-20 12:25:07'),('2297a848-0055-4854-a87c-fe57066dc002','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-29 04:11:25','2022-01-29 04:11:25'),('24c3ffeb-d198-4068-b065-cb2eaf26a9dd','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 12:18:57','2022-01-23 12:18:57'),('268b526a-e72f-481c-b790-e3cc613c7646','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":31,\"order_code\":\"20220122-11061331\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 11:06:14','2022-01-22 11:06:14'),('26c7c6f8-cfe2-4834-91be-b844374e4052','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:37:21','2022-01-03 14:37:21'),('26e89347-c04f-42e7-8db0-d7110cbf9b7b','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 09:03:18','2022-01-18 09:03:18'),('27276782-6afc-4bf4-a96f-4eaa4296dcaf','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-20 12:27:08','2022-01-20 12:27:08'),('2737712d-01e8-471a-9557-9a9c818c4ec1','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 12:57:52','2022-01-18 12:57:52'),('27c82562-f616-4eb3-87ee-f86688fd56f1','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:27:27','2022-01-22 19:27:27'),('282da2f0-d1dc-4c75-b358-e96bb1c0e921','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":45,\"order_code\":\"20220201-16044226\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-02-01 16:04:43','2022-02-01 16:04:43'),('28d36c0a-4302-44e4-9859-0f5144abc2d4','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 09:00:32','2022-01-18 09:00:32'),('28ed7119-7b7f-401a-836b-e7663198274a','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:32:00','2022-01-18 09:32:00'),('2a45ba7b-631e-41b0-a09a-e0a61a3e127f','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":15,\"order_code\":\"20220117-23245474\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:24:55','2022-01-17 23:24:55'),('2a685365-cdc4-4de7-b830-657d9df2fe3d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:37:04','2022-01-03 14:37:04'),('2bcae571-db06-4e02-a1d9-57e9233f7bfe','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:00:26','2022-01-18 09:00:26'),('2d646261-c813-46b0-b7cf-69ba1d2c0fb0','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 12:58:47','2022-01-18 12:58:47'),('2df2ebff-2dad-4dd6-9932-ed80a256dc03','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 12:33:34','2022-01-22 12:33:34'),('2e316d3b-c7bd-4c5b-902b-9379abe9fe1c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 12:58:37','2022-01-18 12:58:37'),('2ecb5255-3dd9-4496-833b-2d3b0ca0f438','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":19,\"order_code\":\"20220118-10273854\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 10:27:38','2022-01-18 10:27:38'),('3027148b-950d-43a2-9bba-1ca054225a3c','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":9,\"order_code\":\"20220117-22210886\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:21:09','2022-01-17 22:21:09'),('33c05c3c-cafb-4130-96f0-234ec46f9563','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":1,\"order_code\":\"20220102-17503344\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-02 17:50:34','2022-01-02 17:50:34'),('33c43d6a-4d61-49c3-8767-5e403370cef5','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:37:04','2022-01-03 14:37:04'),('34052458-a7cd-4c06-adea-8791a1857e36','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 12:58:41','2022-01-18 12:58:41'),('352b09e3-dc3b-40da-93f9-f9c063f448f8','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 15:08:21','2022-01-23 15:08:21'),('3533c7a9-92ce-4b56-894e-504f44ee0eb5','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-29 04:11:25','2022-01-29 04:11:25'),('3692333d-2c6b-4a6a-9328-1bbdec454f07','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":36,\"order_code\":\"20220122-16250316\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 16:25:04','2022-01-22 16:25:04'),('3861527e-e82f-48e3-bf5a-8bbde04203d5','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":5,\"order_code\":\"20220116-14581271\",\"user_id\":19,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-16 14:58:13','2022-01-16 14:58:13'),('39b88d3f-a378-42df-8d55-4560811f2457','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":10,\"order_code\":\"20220117-22301568\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:30:15','2022-01-17 22:30:15'),('3a6c39b1-06e6-4c37-bf9a-482205adefc8','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 19:26:50','2022-01-22 19:26:50'),('3b3759d4-4495-48f9-a7d1-2f14ec0d0b35','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:51:01','2022-01-09 23:51:01'),('3b45ee56-48c1-4ac4-879c-39937eb8eaa3','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-23 15:08:53','2022-01-23 15:08:53'),('3cb41722-79a1-4102-b65b-9cba8332c9e7','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 12:58:34','2022-01-18 12:58:34'),('3d425f38-d7a0-412b-a144-139e7f60e4f3','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"pending\"}',NULL,'2022-01-18 09:32:08','2022-01-18 09:32:08'),('3e7258de-c97a-40b6-9b04-6cdac0eb8aee','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-29 04:11:48','2022-01-29 04:11:48'),('3e89cd73-9390-47d6-99a4-38f8ed4cc9dc','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-22 19:25:28','2022-01-22 19:25:28'),('3e9bc2d9-a4f5-48b0-b5ca-e7d648b4f340','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:55:31','2022-01-09 23:55:31'),('3f17a43f-17be-4abd-b4fa-de40dad4d09d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-29 04:12:12','2022-01-29 04:12:12'),('4178a0d5-f8b8-4888-baf7-c2e979b52ad7','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 12:32:28','2022-01-22 12:32:28'),('42a6b7b2-f2e2-4bac-856b-4fe15d731069','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":32,\"order_code\":\"20220122-11302739\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 11:30:31','2022-01-22 11:30:31'),('42e28994-8593-4708-b55d-0786c2aaf002','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:37:25','2022-01-03 14:37:25'),('44560ee8-dee6-4bea-8167-d8b0a22260d1','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:26:31','2022-01-22 19:26:31'),('4488bda4-3666-4ba7-ad13-acefe27c9451','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-04 14:59:00','2022-01-04 14:59:00'),('451ec32f-dcad-46e6-aaab-aaeed346248f','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:37:21','2022-01-03 14:37:21'),('456783e5-650c-4d94-ae60-a763612bec4c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":40,\"order_code\":\"20220123-12113448\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 12:11:35','2022-01-23 12:11:35'),('45833d74-9276-492c-b0c1-89a0e5d96761','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-20 12:27:26','2022-01-20 12:27:26'),('47783023-ecb0-4632-ac98-64858137dd6b','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":35,\"order_code\":\"20220122-15470087\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 15:47:01','2022-01-22 15:47:01'),('47ab7f87-0c3c-48a5-bd74-604386604862','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":22,\"order_code\":\"20220118-14260560\",\"user_id\":33,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 14:29:57','2022-01-18 14:29:57'),('47bfd50b-e411-4555-82a9-9254616b1627','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":22,\"order_code\":\"20220118-14260560\",\"user_id\":33,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 14:29:57','2022-01-18 14:29:57'),('47ed0cdb-121a-4b5f-9465-beff3fd33668','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:25:53','2022-01-22 19:25:53'),('483621a9-41ec-450a-b766-54f9e46c2556','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:38:12','2022-01-03 14:38:12'),('485f010a-3a93-4592-8503-2307dd681e4c','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 14:51:39','2022-01-23 14:51:39'),('48704c56-e2af-4b91-bce3-7ff1fdfb1ec4','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":40,\"order_code\":\"20220123-12113448\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 12:12:51','2022-01-23 12:12:51'),('4be926cd-4d82-4437-9a1f-5f9dd3e004e4','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-22 19:27:17','2022-01-22 19:27:17'),('4d076d54-16bf-49bf-b134-46ae374ea36c','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":7,\"order_code\":\"20220117-21534993\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 21:53:50','2022-01-17 21:53:50'),('4d5b1466-b336-47a2-a351-e962d326b1cb','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":21,\"order_code\":\"20220118-13590439\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 13:59:05','2022-01-18 13:59:05'),('4da5ea3b-efe4-4300-b3a8-8eda9f23b8a9','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 19:25:00','2022-01-22 19:25:00'),('4e187392-c530-4300-8a6d-4233c1100d31','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-03 14:36:38','2022-01-03 14:36:38'),('4fc26004-a716-4f9f-a54f-2da3f3cde7d8','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:10','2022-01-18 09:00:10'),('5022ec1c-9154-4b59-9d68-320e03594ef5','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:32:02','2022-01-18 09:32:02'),('50400076-f467-475a-b6d2-528a9397123f','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:43','2022-01-18 09:00:43'),('5218075d-804d-4a0f-bd50-f74b750917ea','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:29','2022-01-18 09:00:29'),('524ef3bb-e6da-4d84-b3fd-02a1b32fb300','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:49:02','2022-01-22 12:49:02'),('526c9a06-cb06-4987-a2bd-6eceac060892','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":26,\"order_code\":\"20220119-17473587\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 17:47:36','2022-01-19 17:47:36'),('532a6146-c968-47cf-9fd1-f18e379b47c5','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":12,\"order_code\":\"20220117-23153358\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:15:34','2022-01-17 23:15:34'),('5335fb79-ae2d-47ae-8319-741f530b8641','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:38:12','2022-01-03 14:38:12'),('5845ebed-c082-4a19-a42c-f53f24df6482','App\\Notifications\\OrderNotification','App\\Models\\User',19,'{\"order_id\":5,\"order_code\":\"20220116-14581271\",\"user_id\":19,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-16 14:58:13','2022-01-16 14:58:13'),('587ccb41-409d-42dd-a80c-54ddbba508b8','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 12:58:41','2022-01-18 12:58:41'),('5c312488-b5e2-40f0-88ce-d7a649d09a14','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 19:25:40','2022-01-22 19:25:40'),('5d96c2c5-1a47-404a-a708-42e92aaef438','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 19:25:00','2022-01-22 19:25:00'),('5db04004-493a-43c1-9773-1223a7fa0130','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 02:39:57','2022-01-23 02:39:57'),('5dc51309-cb78-47ad-a557-4545ce779859','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-22 12:52:10','2022-01-22 12:52:10'),('5ea086ba-c7fb-4b4b-b7e4-212acd93f641','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:54:32','2022-01-09 23:54:32'),('5f6f5451-3769-41c3-a573-1ecc4d6bde01','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 12:18:57','2022-01-23 12:18:57'),('5ff6a425-f335-4dbd-9633-93450eb9b5c8','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":37,\"order_code\":\"20220122-17361521\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 17:36:16','2022-01-22 17:36:16'),('613d47d3-f013-4258-aa4a-de67404da85d','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:55:03','2022-01-18 08:55:03'),('620835d2-a713-4cd5-b79f-e03ed93a3821','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":46,\"order_code\":\"20220204-23173764\",\"user_id\":47,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-02-04 23:17:37','2022-02-04 23:17:37'),('63350a85-7629-4a19-9728-e826546f053c','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":30,\"order_code\":\"20220122-10513343\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 10:51:35','2022-01-22 10:51:35'),('6338cb97-13e7-466d-8697-70ef1aec4b8d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:51:04','2022-01-09 23:51:04'),('6416e081-abc7-489c-977b-8c697827b828','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-23 14:52:23','2022-01-23 14:52:23'),('6480b6f1-30d1-4677-b2d4-d245ce29fa5f','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":24,\"order_code\":\"20220118-21414567\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 21:41:45','2022-01-18 21:41:45'),('66f94f28-5a08-4b8d-a4c4-c4fba69eeb46','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:32:04','2022-01-18 09:32:04'),('670d3992-81da-4e2d-948e-01e11f9222b1','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:32:04','2022-01-18 09:32:04'),('68e12a05-52b8-4a9c-b287-a6a002f15c5a','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-04 14:59:19','2022-01-04 14:59:19'),('68e48486-4973-497a-9836-cd0a6306e43b','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 09:00:32','2022-01-18 09:00:32'),('6a0b41be-9cdc-4f5b-b458-d0076f6ae4ec','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 14:51:39','2022-01-23 14:51:39'),('6a345a74-2d14-4de7-ba73-c71eee4a0d28','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:38:56','2022-01-03 14:38:56'),('6aadbf1a-4f62-42ab-911e-6cff3ce6545a','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:54:32','2022-01-09 23:54:32'),('6c4f00bf-263b-488f-a711-69f99eae3edd','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:43:54','2022-01-18 09:43:54'),('6cb9e7d2-3277-4831-b95e-54d894f65c84','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:32:00','2022-01-18 09:32:00'),('6cdcfce6-de78-4e53-8c62-87e118f4f90f','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:34:38','2022-01-22 12:34:38'),('6eb8a7f3-33f6-4cc0-a446-3a436960f63c','App\\Notifications\\OrderNotification','App\\Models\\User',47,'{\"order_id\":46,\"order_code\":\"20220204-23173764\",\"user_id\":47,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-02-04 23:17:37','2022-02-04 23:17:37'),('6f6ee8d1-6cb2-40e9-8937-157447f1513a','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":29,\"order_code\":\"20220120-21323531\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-20 21:32:36','2022-01-20 21:32:36'),('6f9a67e4-c516-46e8-b95d-34f6a0be468f','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 12:33:34','2022-01-22 12:33:34'),('70e741ca-144b-4bb9-958d-3f243ef1c734','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-04 14:56:51','2022-01-04 14:56:51'),('720b0490-2948-4232-a6f4-042296726bf2','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:05:19','2022-01-18 09:05:19'),('726f8cee-41bb-4599-b34b-8904f9ef1a97','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:55:31','2022-01-09 23:55:31'),('73d0db58-96cd-4fe4-8d8a-1ccd04dba0d8','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 19:26:12','2022-01-22 19:26:12'),('781fe35c-91fc-4b7d-baa4-cb9c7c0e4714','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:25:53','2022-01-22 19:25:53'),('78591db7-f257-4257-95a6-c2526e765bb1','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 02:40:01','2022-01-23 02:40:01'),('79597beb-0504-4b0f-ace1-f5336b1a2e2c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:05:19','2022-01-18 09:05:19'),('7bebf0e1-91c7-4fbd-9fb9-3be0a7ee5edb','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":12,\"order_code\":\"20220117-23153358\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:15:34','2022-01-17 23:15:34'),('7cd79de4-e00d-4be9-8a98-634d96622c46','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:51:04','2022-01-09 23:51:04'),('7d3eb33d-06a5-4b00-bfbc-96cccdac311d','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"pending\"}',NULL,'2022-01-18 09:32:08','2022-01-18 09:32:08'),('7ed94b96-9ca6-4764-b792-226e4c9c0595','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":14,\"order_code\":\"20220117-23241230\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:24:13','2022-01-17 23:24:13'),('802924c3-3810-4fed-a388-68548c696a98','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-03 14:37:13','2022-01-03 14:37:13'),('8111c579-f824-4676-a997-eb0e830d4dd4','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":8,\"order_code\":\"20220117-22135925\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:14:00','2022-01-17 22:14:00'),('8123e5f9-6036-4601-a31a-1bd120aef708','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 08:59:46','2022-01-18 08:59:46'),('82a371c8-b456-4cfc-8ba6-a6277b7a4d69','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 19:20:01','2022-01-22 19:20:01'),('83292520-7e44-4c63-ac60-a63801585dca','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:10','2022-01-18 09:00:10'),('834e2909-b4ff-4c42-920e-ebbc4a12205d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-03 14:36:58','2022-01-03 14:36:58'),('845ef59b-2a0d-472f-b328-73b3a702a6b2','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":26,\"order_code\":\"20220119-17473587\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 17:47:36','2022-01-19 17:47:36'),('84783faf-1186-4d7a-8b8e-e05dfd28d328','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 12:32:28','2022-01-22 12:32:28'),('85528112-9af6-47f5-a45d-fc54e0e359b8','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":23,\"order_code\":\"20220118-21301911\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 21:30:20','2022-01-18 21:30:20'),('85c9875d-a367-4f97-aec7-d47a75a4cbd8','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-20 12:27:08','2022-01-20 12:27:08'),('8665d88e-f9b2-454b-9b32-ab12b4871d0b','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":43,\"order_code\":\"20220125-19240789\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-25 19:24:08','2022-01-25 19:24:08'),('86f062af-a42f-4fb9-a664-e56e2d43273c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:55:03','2022-01-18 08:55:03'),('88d358fb-7411-4b85-accb-c705f5e6a440','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:00:01','2022-01-18 09:00:01'),('8a4d0c88-0d98-47d7-b5c5-c129ce734cf7','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-20 12:42:30','2022-01-20 12:42:30'),('8b79f507-ce96-4be3-8a7b-687e63eb7c9a','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-29 04:10:08','2022-01-29 04:10:08'),('8c89edfb-f043-4043-9d1e-6f489aa48cd7','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 09:00:48','2022-01-18 09:00:48'),('8c917af8-1265-4944-9de5-04c8674783ee','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":13,\"order_code\":\"20220117-23213973\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:21:40','2022-01-17 23:21:40'),('8f4ad428-630f-4567-8e35-8890e63ee8a6','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:49:02','2022-01-22 12:49:02'),('8fa9803e-de1f-4c57-a9d2-dcdf5a6cf845','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 09:00:48','2022-01-18 09:00:48'),('90d00090-aa12-439f-90aa-b2d47e1514e0','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":40,\"order_code\":\"20220123-12113448\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-23 12:11:35','2022-01-23 12:11:35'),('90d7423e-bf96-4259-bb71-b10d5b403ce9','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":1,\"order_code\":\"20220102-17503344\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 12:04:20','2022-01-03 12:04:20'),('91d2d4ed-b618-47bf-acd2-2dc3ba2af4ba','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":21,\"order_code\":\"20220118-13590439\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 13:59:05','2022-01-18 13:59:05'),('91ed592e-637b-4f72-8bdf-4f7dffc5a7c8','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-18 09:00:39','2022-01-18 09:00:39'),('91f5e9c8-90aa-4ef7-b329-f7568586c4ec','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":37,\"order_code\":\"20220122-17361521\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 17:36:16','2022-01-22 17:36:16'),('91fa9814-885a-4381-91f5-d166d2d15241','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-03 14:36:58','2022-01-03 14:36:58'),('9243c67c-d3e1-4fda-b22a-3174d486706a','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-20 12:25:07','2022-01-20 12:25:07'),('9346f497-f839-4ff2-a1c2-b7c64d9c3561','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-03 14:38:10','2022-01-03 14:38:10'),('968c3383-4d76-4fcc-a6a4-56335ba176de','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-29 04:12:55','2022-01-29 04:12:55'),('96ba9a71-bfe2-41e9-a3d1-821f5bf30066','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:53:57','2022-01-18 08:53:57'),('976b982d-ad2b-468e-975f-ad644cbfabb6','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":31,\"order_code\":\"20220122-11061331\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 11:06:14','2022-01-22 11:06:14'),('982447c5-4a79-4b14-9294-d8e4a63a4e4b','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-22 19:26:43','2022-01-22 19:26:43'),('98a89f4e-d07a-4b56-8ed0-79d3fbc0bb57','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-04 14:59:19','2022-01-04 14:59:19'),('9930a3da-4e39-431f-8451-8ba748010642','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-20 12:42:30','2022-01-20 12:42:30'),('9ad1f8b7-00f7-477c-a341-02c2d20556d4','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:00:29','2022-01-18 09:00:29'),('9af84ab5-0d09-4145-8b21-be5946f0154e','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":11,\"order_code\":\"20220117-23020164\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:02:02','2022-01-17 23:02:02'),('9ba3e654-6978-472d-8f77-ffe867568f1f','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-04 14:56:51','2022-01-04 14:56:51'),('9cd76c38-b5e1-4f19-91bd-054b98320c1e','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 14:37:25','2022-01-03 14:37:25'),('9d3d95d9-84cd-4598-9a03-5d19541b2319','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:26:31','2022-01-22 19:26:31'),('9d7e23be-f554-4d44-ac41-812b4a788f05','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":35,\"order_code\":\"20220122-15470087\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 15:47:01','2022-01-22 15:47:01'),('9e904997-a191-464f-8b0e-04f9f139af9d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":27,\"order_code\":\"20220119-23153978\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 23:15:40','2022-01-19 23:15:40'),('a0a8ae70-4fe8-430d-af4a-6e0b52278c6c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:01:21','2022-01-18 09:01:21'),('a16cc896-d4cd-4165-8d2b-daf402ce1e15','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-22 19:27:17','2022-01-22 19:27:17'),('a1d2cc63-6613-48d8-bebb-08ceff102cdd','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":32,\"order_code\":\"20220122-11302739\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 11:30:31','2022-01-22 11:30:31'),('a344d0ef-1db4-46ea-bdcb-750dcf8446d0','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 12:48:13','2022-01-22 12:48:13'),('a4e19eeb-9ca5-4dea-b97d-33be45e1ec5a','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:00:36','2022-01-18 09:00:36'),('ab2c2f9c-c568-4825-baa4-d5081a635508','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-23 14:52:15','2022-01-23 14:52:15'),('abe62ae9-95e0-431f-8675-c25b8e261ca3','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:32:02','2022-01-18 09:32:02'),('ac0e2477-9237-4c69-8d90-385ac966337e','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":27,\"order_code\":\"20220119-23153978\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 23:15:40','2022-01-19 23:15:40'),('acf18383-b631-4694-9c3b-79c61c508e68','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-22 19:25:28','2022-01-22 19:25:28'),('acfb0729-35da-44b5-a606-abe5b478a6fa','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-20 12:27:53','2022-01-20 12:27:53'),('adb9fe6b-2a10-4ee9-9b54-88f0b2474d10','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-04 14:59:33','2022-01-04 14:59:33'),('ae06d246-5c91-43a0-9d6e-bf62800839d3','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 09:01:21','2022-01-18 09:01:21'),('afa40eaa-74d9-4c6e-a23a-8e974f97bb58','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 19:26:46','2022-01-22 19:26:46'),('afe6f9d4-24f4-4023-8123-d286a08f5d21','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":30,\"order_code\":\"20220122-10513343\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 10:51:35','2022-01-22 10:51:35'),('b36e1d26-3d54-4261-a2a8-a9401799d70b','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-03 14:37:13','2022-01-03 14:37:13'),('b37f5e4d-58c9-4db8-9c28-6ce305f682e1','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:54:34','2022-01-09 23:54:34'),('b4c5eda4-5a4a-45ba-80ed-fea7923f2e25','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":45,\"order_code\":\"20220201-16044226\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-02-01 16:04:43','2022-02-01 16:04:43'),('b579f860-dc55-44db-b581-7aee4e52a30d','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 12:58:47','2022-01-18 12:58:47'),('b5dd7352-2223-4558-8ea3-ddd36c5cb5cd','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-18 09:43:54','2022-01-18 09:43:54'),('b71abd2b-3152-4362-985e-f460929eea8c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-20 12:42:38','2022-01-20 12:42:38'),('b781e9ee-735d-454d-a4f7-5c986e106287','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:27:27','2022-01-22 19:27:27'),('b8997618-dca3-4d5e-91a9-1966b93d0cdf','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 12:51:49','2022-01-22 12:51:49'),('b9787b56-f091-477d-86f1-bf885f3a802c','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-18 09:32:06','2022-01-18 09:32:06'),('ba2ed6b0-0788-466f-bf8f-5915d28bf614','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 19:26:46','2022-01-22 19:26:46'),('badc2f7b-e762-4a46-b831-cdf9a655915a','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:33:06','2022-01-22 12:33:06'),('bae193a1-c68d-42ce-8370-5c96a173c7a1','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-09 23:54:34','2022-01-09 23:54:34'),('bda2d6be-7906-4a6e-94d7-23f597e83c7f','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":22,\"order_code\":\"20220118-14260560\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 14:26:06','2022-01-18 14:26:06'),('bda3673f-6a71-4c07-83ec-cfefb9433465','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":6,\"order_code\":\"20220117-03191434\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 03:19:15','2022-01-17 03:19:15'),('be511fbb-2931-4632-8f26-862d494a984d','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-20 12:27:26','2022-01-20 12:27:26'),('be941f7a-ebff-4079-8b3a-d9f2bbc8dd2f','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-18 09:43:50','2022-01-18 09:43:50'),('bf46115b-7eb1-4766-9c4e-260f84c0a997','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-22 12:52:10','2022-01-22 12:52:10'),('c033493e-94b4-44e7-8edc-e6ef898b7afa','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 08:59:46','2022-01-18 08:59:46'),('c1cffa84-941a-4bf4-8b8c-98d7c3524660','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 02:40:01','2022-01-23 02:40:01'),('c1eefe47-cff1-40e3-bdd8-d9597a77299b','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-23 14:52:23','2022-01-23 14:52:23'),('c244871a-9630-41ed-89f2-fb75a5d68bce','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":22,\"order_code\":\"20220118-14260560\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 14:26:06','2022-01-18 14:26:06'),('c70de196-e3ff-4bb1-9959-4251ed6c8778','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":34,\"order_code\":\"20220122-12481313\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 12:48:13','2022-01-22 12:48:13'),('c7b4b6ee-d4fb-4351-acfa-dfe3e6161070','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 19:26:50','2022-01-22 19:26:50'),('cc91b134-b9b2-450e-af94-f9f3cdbf1d14','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":25,\"order_code\":\"20220119-15040218\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 15:04:03','2022-01-19 15:04:03'),('cda6d522-c658-4681-bdcd-df1739cc6115','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":38,\"order_code\":\"20220122-19200018\",\"user_id\":35,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 19:20:01','2022-01-22 19:20:01'),('ce35fc56-b456-49a6-ba43-698a8e7e462e','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 09:03:18','2022-01-18 09:03:18'),('cf92123b-05d0-4024-84fc-d115d7c91fd3','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"pending\"}',NULL,'2022-01-18 09:00:22','2022-01-18 09:00:22'),('d073eb7c-661a-463e-8458-e421c5e9d348','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:37:32','2022-01-03 14:37:32'),('d2a5c784-7602-4548-a4be-841fbf315466','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":29,\"order_code\":\"20220120-21323531\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-20 21:32:36','2022-01-20 21:32:36'),('d394821c-1d62-42b5-972f-4bb6ef31169a','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":24,\"order_code\":\"20220118-21414567\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 21:41:45','2022-01-18 21:41:45'),('d3fa382a-363c-48e5-9610-7665bbbbe2e4','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:25:29','2022-01-22 19:25:29'),('d4d4c85c-d44a-4fda-a03d-ee85e5dc9a2c','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":2,\"order_code\":\"20220103-14024639\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-03 14:02:46','2022-01-03 14:02:46'),('d5e1a082-3b7d-48f5-a1d8-beda3ee8fb35','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-29 04:10:07','2022-01-29 04:10:07'),('d951d117-9160-4d1d-84bc-9fb17cb16225','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-04 14:59:00','2022-01-04 14:59:00'),('da33bcbe-8538-486c-bed7-2cf9942884d6','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 12:34:57','2022-01-22 12:34:57'),('dd55fc7a-b813-4619-9eed-4a77ac9b9cee','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-03 14:38:10','2022-01-03 14:38:10'),('dda06d23-2553-4137-a41a-6daf3dd57499','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-18 09:00:18','2022-01-18 09:00:18'),('de52141b-51ef-4d1d-95ea-9a55be6e1429','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-03 14:37:09','2022-01-03 14:37:09'),('e0671570-8ba9-4e76-b4e4-e12b9d34180d','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":36,\"order_code\":\"20220122-16250316\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-22 16:25:04','2022-01-22 16:25:04'),('e2a80874-61be-4c77-a9b5-65c8693b8d3e','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 14:52:41','2022-01-23 14:52:41'),('e3ce4deb-dd5a-4392-accd-55f9b99f4050','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"paid\"}',NULL,'2022-01-23 15:08:21','2022-01-23 15:08:21'),('e529e50c-40c4-4915-8009-25276e1519ec','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:27:09','2022-01-22 19:27:09'),('e571b39e-010e-47ba-9536-cdbbcbf80b56','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-29 04:12:55','2022-01-29 04:12:55'),('e5e20757-548d-4fea-a957-b737f8c9a0bc','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":16,\"order_code\":\"20220118-08520687\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:52:07','2022-01-18 08:52:07'),('e6c5731c-1012-4226-9463-26264c06ea94','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":25,\"order_code\":\"20220119-15040218\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-19 15:04:03','2022-01-19 15:04:03'),('e808f1b3-ee99-46de-87f6-514330b2054a','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 12:57:52','2022-01-18 12:57:52'),('ea442ba0-98e4-429d-8a73-6c43ba7f3540','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 08:59:56','2022-01-18 08:59:56'),('eae9d9d4-7c6b-4e3c-b396-615ed93376cb','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":41,\"order_code\":\"20220123-12185748\",\"user_id\":35,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-23 15:08:53','2022-01-23 15:08:53'),('eba6e096-fbab-43d8-96a8-87ce494b2ee3','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":17,\"order_code\":\"20220118-08535692\",\"user_id\":17,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-18 09:32:06','2022-01-18 09:32:06'),('ec4cf334-d50c-48bc-ae71-d8339621f70e','App\\Notifications\\OrderNotification','App\\Models\\User',33,'{\"order_id\":20,\"order_code\":\"20220118-12575136\",\"user_id\":33,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-18 12:58:37','2022-01-18 12:58:37'),('ececb36f-32f3-4b4b-ac09-bf1859a036e1','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-20 12:27:53','2022-01-20 12:27:53'),('f00dafac-c4f8-48d3-9824-838322abe051','App\\Notifications\\OrderNotification','App\\Models\\User',35,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:27:09','2022-01-22 19:27:09'),('f208024f-879f-49a8-b629-36a9617bb17e','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-29 04:12:12','2022-01-29 04:12:12'),('f2cce632-8d1c-463d-bc8d-5719ffc4d995','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":42,\"order_code\":\"20220123-14513915\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-23 14:52:41','2022-01-23 14:52:41'),('f3581285-66d6-421f-aebf-2321a168e0e4','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-03 14:37:32','2022-01-03 14:37:32'),('f44ef55f-e05e-4c8b-a4f4-01336445c882','App\\Notifications\\OrderNotification','App\\Models\\User',12,'{\"order_id\":3,\"order_code\":\"20220103-14363893\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-03 14:36:38','2022-01-03 14:36:38'),('f49cf474-700b-41e0-89e8-474eb01fd379','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":10,\"order_code\":\"20220117-22301568\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 22:30:15','2022-01-17 22:30:15'),('f4bdf252-863b-4fdc-acc5-8866f6443dc4','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":16,\"order_code\":\"20220118-08520687\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 08:52:07','2022-01-18 08:52:07'),('f58d96c8-6b4f-442f-a9df-3d15ebe98b31','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":28,\"order_code\":\"20220120-12250629\",\"user_id\":15,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-20 12:42:38','2022-01-20 12:42:38'),('f69b9667-981c-438b-b7fb-32d3a739f81b','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"delivered\"}',NULL,'2022-01-22 19:25:29','2022-01-22 19:25:29'),('f72e73ed-5b3f-48df-afbf-0fecd9d504c3','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":11,\"order_code\":\"20220117-23020164\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:02:02','2022-01-17 23:02:02'),('f7dfad0a-0458-4a7f-bef6-7d9f626f83f9','App\\Notifications\\OrderNotification','App\\Models\\User',15,'{\"order_id\":33,\"order_code\":\"20220122-12322824\",\"user_id\":15,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 12:34:38','2022-01-22 12:34:38'),('f81afca2-7329-4ddf-887b-84321bb0fde1','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":1,\"order_code\":\"20220102-17503344\",\"user_id\":12,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-03 12:04:20','2022-01-03 12:04:20'),('f8bf3f09-b1f7-4556-86b9-e0bf4096f893','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":6,\"order_code\":\"20220117-03191434\",\"user_id\":17,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 03:19:15','2022-01-17 03:19:15'),('f9b4d824-2dc6-4edc-ac00-bbca42b7fb00','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":19,\"order_code\":\"20220118-10273854\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-18 10:27:38','2022-01-18 10:27:38'),('fa82d5b0-d4c5-417d-9477-35c5cdc1ccf6','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"cancelled\"}',NULL,'2022-01-18 09:00:39','2022-01-18 09:00:39'),('fbb301eb-f59b-4fd0-85bc-a28c81c98ca7','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":1,\"order_code\":\"20220102-17503344\",\"user_id\":12,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-02 17:50:34','2022-01-02 17:50:34'),('fc451deb-356b-4850-9a29-900248951330','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-22 19:26:12','2022-01-22 19:26:12'),('fcce41c8-d35b-4fbe-9845-8536f15cead7','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":39,\"order_code\":\"20220122-19245938\",\"user_id\":35,\"seller_id\":9,\"status\":\"on_the_way\"}',NULL,'2022-01-22 19:25:40','2022-01-22 19:25:40'),('fd342a6d-d017-4442-93a1-b247c365b060','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":4,\"order_code\":\"20220104-14565177\",\"user_id\":12,\"seller_id\":9,\"status\":\"unpaid\"}',NULL,'2022-01-09 23:55:29','2022-01-09 23:55:29'),('fd695f81-165c-4731-8bd2-caeda769f776','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":43,\"order_code\":\"20220125-19240789\",\"user_id\":36,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-25 19:24:08','2022-01-25 19:24:08'),('fd98afaf-db47-4146-b25b-36834d632885','App\\Notifications\\OrderNotification','App\\Models\\User',36,'{\"order_id\":44,\"order_code\":\"20220129-04100753\",\"user_id\":36,\"seller_id\":9,\"status\":\"confirmed\"}',NULL,'2022-01-29 04:11:48','2022-01-29 04:11:48'),('ff1d7df7-d5e5-449a-b3ab-13071071ad49','App\\Notifications\\OrderNotification','App\\Models\\User',17,'{\"order_id\":18,\"order_code\":\"20220118-08550280\",\"user_id\":17,\"seller_id\":9,\"status\":\"picked_up\"}',NULL,'2022-01-18 08:59:56','2022-01-18 08:59:56'),('ff621081-9250-40d5-867b-82489b34bc0b','App\\Notifications\\OrderNotification','App\\Models\\User',9,'{\"order_id\":13,\"order_code\":\"20220117-23213973\",\"user_id\":15,\"seller_id\":9,\"status\":\"placed\"}',NULL,'2022-01-17 23:21:40','2022-01-17 23:21:40');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `seller_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `variation` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `quantity` int DEFAULT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int DEFAULT NULL,
  `product_referral_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (48,40,9,25,NULL,-5.00,25.00,10.00,1,'unpaid','delivered','home_delivery',NULL,NULL,'2022-01-23 12:11:34','2022-01-23 12:12:51'),(49,41,9,26,'خروفكامل-غيرمطلوب-أكياسلحم',700.00,15.00,20.00,1,'paid','cancelled','home_delivery',NULL,NULL,'2022-01-23 12:18:57','2022-01-23 15:09:39'),(50,42,9,26,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم',664.00,15.00,20.00,1,'paid','delivered','home_delivery',NULL,NULL,'2022-01-23 14:51:39','2022-01-23 15:08:21'),(51,43,9,26,'خروفكامل-غيرمطلوب-أكياسلحم',560.00,15.00,20.00,1,'unpaid','pending','home_delivery',NULL,NULL,'2022-01-25 19:24:07','2022-01-25 19:24:07'),(52,44,9,25,NULL,-25.00,125.00,20.00,5,'paid','delivered','home_delivery',NULL,NULL,'2022-01-29 04:10:07','2022-01-29 04:12:55'),(53,44,9,26,'خروفكامل-غيرمطلوب-أكياسلحم',560.00,15.00,20.00,1,'paid','delivered','home_delivery',NULL,NULL,'2022-01-29 04:10:07','2022-01-29 04:12:55'),(54,45,9,26,'خروفكامل-غيرمطلوب-أكياسلحم',2100.00,45.00,20.00,3,'unpaid','pending','home_delivery',NULL,NULL,'2022-02-01 16:04:42','2022-02-01 16:04:42'),(55,46,9,26,'خروفكامل-غيرمطلوب-أكياسلحم',560.00,15.00,20.00,1,'unpaid','pending','home_delivery',NULL,NULL,'2022-02-04 23:17:37','2022-02-04 23:17:37');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `combined_order_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `guest_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `shipping_address` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `shipping_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pickup_point_id` int NOT NULL DEFAULT '0',
  `delivery_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `tracking_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` int NOT NULL,
  `viewed` int NOT NULL DEFAULT '0',
  `delivery_viewed` int NOT NULL DEFAULT '1',
  `payment_status_viewed` int DEFAULT '1',
  `commission_calculated` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dilivery_date` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dilivery_time` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dilivery_user_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_link` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_description` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addresstext` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (40,48,35,NULL,9,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}','home_delivery',0,'delivered','cash_on_delivery','unpaid',NULL,30.00,0.00,'20220123-12113448',NULL,1642939894,0,0,0,0,'2022-01-23 12:11:34','2022-01-23 12:12:51','2022-1-23','PM','1','0','https://maps.google.com/?q=21.59,39.1949','null','null'),(41,49,35,NULL,9,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.59,39.1949\",\"addresstext\":\"null\"}','home_delivery',0,'cancelled','cash_on_delivery','paid',NULL,735.00,0.00,'20220123-12185748',NULL,1642940337,0,0,0,1,'2022-01-23 12:18:57','2022-01-23 15:09:39','2022-1-23','PM','1','38','https://maps.google.com/?q=21.59,39.1949','عنوان خلف البقالة','null'),(42,50,35,NULL,9,'{\"name\":\"\\u0648\\u0644\\u064a\\u062f\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966537266754\",\"lat_lang\":\"21.5227,39.1554\",\"addresstext\":\"2601 Al Misk, Al Hamra District, Jeddah 23321\\u00a06458, Saudi Arabia\"}','home_delivery',0,'delivered','cash_on_delivery','paid',NULL,699.00,0.00,'20220123-14513915',NULL,1642949499,0,0,0,1,'2022-01-23 14:51:39','2022-01-23 15:08:21','2022-1-23','PM','1','38','https://maps.google.com/?q=21.5227,39.1554','null','2601 Al Misk, Al Hamra District, Jeddah 23321 6458, Saudi Arabia'),(43,51,36,NULL,9,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"21.5905,39.1947\",\"addresstext\":\"null\"}','home_delivery',0,'pending','cash_on_delivery','unpaid',NULL,595.00,0.00,'20220125-19240789',NULL,1643138647,0,0,0,0,'2022-01-25 19:24:07','2022-01-25 19:24:07','2022-1-25','PM','1','0','https://maps.google.com/?q=21.5905,39.1947','lkjl','null'),(44,52,36,NULL,9,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"37.7837,-122.407\",\"addresstext\":\"865 Market St, San Francisco, CA 94103, USA\"}','home_delivery',0,'delivered','cash_on_delivery','paid',NULL,715.00,0.00,'20220129-04100753',NULL,1643429407,0,0,0,1,'2022-01-29 04:10:07','2022-01-29 04:12:55','2022-1-29','PM','1','0','https://maps.google.com/?q=37.7837,-122.407','null','865 Market St, San Francisco, CA 94103, USA'),(45,53,36,NULL,9,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966552176584\",\"lat_lang\":\"21.5058,39.2154\",\"addresstext\":\"8620 \\u062d\\u0644\\u0647 \\u0645\\u0646\\u0635\\u0648\\u0631\\u060c \\u062d\\u064a \\u0627\\u0644\\u0641\\u064a\\u062d\\u0627\\u0621\\u060c Jeddah 22245\\u00a03322, Saudi Arabia\"}','home_delivery',0,'pending','cash_on_delivery','unpaid',NULL,2165.00,0.00,'20220201-16044226',NULL,1643731482,0,0,0,0,'2022-02-01 16:04:42','2022-02-01 16:04:42','2022-2-1','PM','1','0','https://maps.google.com/?q=21.5058,39.2154','null','8620 حله منصور، حي الفيحاء، Jeddah 22245 3322, Saudi Arabia'),(46,54,47,NULL,9,'{\"name\":\"\",\"email\":null,\"address\":\"jeddah\",\"country\":\"Saudi Arabia\",\"state\":\"Makkah\",\"city\":\"\\u062c\\u062f\\u0629\",\"postal_code\":\"0\",\"phone\":\"+966568042000\"}','home_delivery',0,'pending','cash_on_delivery','unpaid',NULL,595.00,0.00,'20220204-23173764',NULL,1644016657,0,0,0,0,'2022-02-04 23:17:37','2022-02-04 23:17:37','2022-2-6','PM','null','0','https://maps.google.com/?q=,','null','null');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_configurations`
--

DROP TABLE IF EXISTS `otp_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_configurations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_configurations`
--

LOCK TABLES `otp_configurations` WRITE;
/*!40000 ALTER TABLE `otp_configurations` DISABLE KEYS */;
INSERT INTO `otp_configurations` VALUES (1,'nexmo','0','2020-03-22 09:19:07','2022-01-09 23:43:14'),(2,'otp_for_order','1','2020-03-22 09:19:07','2020-03-22 09:19:07'),(3,'otp_for_delivery_status','1','2020-03-22 09:19:37','2020-03-22 09:19:37'),(4,'otp_for_paid_status','0','2020-03-22 09:19:37','2020-03-22 09:19:37'),(5,'twillo','1','2020-03-22 09:54:03','2022-01-09 23:43:11'),(6,'ssl_wireless','0','2020-03-22 09:54:03','2020-03-22 03:54:20'),(7,'fast2sms','0','2020-03-22 09:54:03','2020-03-22 03:54:20'),(8,'mimsms','0','2020-03-22 09:54:03','2020-03-22 03:54:20'),(9,'mimo','0','2020-12-27 09:54:03','2020-12-28 03:54:20'),(10,'msegat','0','2020-12-27 09:54:03','2020-12-28 03:54:20');
/*!40000 ALTER TABLE `otp_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_translations`
--

DROP TABLE IF EXISTS `page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `page_id` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_translations`
--

LOCK TABLES `page_translations` WRITE;
/*!40000 ALTER TABLE `page_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'home_page','Home Page','home',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:13:20','2020-11-04 10:13:20'),(2,'seller_policy_page','Seller Policy Pages','sellerpolicy',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:14:41','2020-11-04 12:19:30'),(3,'return_policy_page','Return Policy Page','returnpolicy',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:14:41','2020-11-04 10:14:41'),(4,'support_policy_page','Support Policy Page','supportpolicy',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:14:59','2020-11-04 10:14:59'),(5,'terms_conditions_page','Term Conditions Page','terms',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:15:29','2020-11-04 10:15:29'),(6,'privacy_policy_page','Privacy Policy Page','privacypolicy',NULL,NULL,NULL,NULL,NULL,'2020-11-04 10:15:55','2020-11-04 10:15:55');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payku_payments`
--

DROP TABLE IF EXISTS `payku_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payku_payments` (
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `media` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorization_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_4_digits` int unsigned DEFAULT NULL,
  `installments` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_parameters` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `payku_payments_transaction_id_unique` (`transaction_id`),
  CONSTRAINT `payku_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `payku_transactions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payku_payments`
--

LOCK TABLES `payku_payments` WRITE;
/*!40000 ALTER TABLE `payku_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payku_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payku_transactions`
--

DROP TABLE IF EXISTS `payku_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payku_transactions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` int unsigned DEFAULT NULL,
  `notified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  UNIQUE KEY `payku_transactions_id_unique` (`id`),
  UNIQUE KEY `payku_transactions_order_unique` (`order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payku_transactions`
--

LOCK TABLES `payku_transactions` WRITE;
/*!40000 ALTER TABLE `payku_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payku_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',12,'tokens','d85e2809ab7886e954610b7e883d2f057a83953034e03ff065a5c070fe6ed027','[\"*\"]',NULL,'2022-01-02 17:46:45','2022-01-02 17:46:45'),(2,'App\\Models\\User',12,'API Token','9c6ea05c03011b96344aec154da20cdf05a92bf6196e1684876a76607b82a440','[\"*\"]','2022-01-02 18:02:25','2022-01-02 17:47:51','2022-01-02 18:02:25'),(3,'App\\Models\\User',12,'API Token','d3f79e969fafac547b220c0c17d4c75a7e9f8988346ca6e58cd1d9c35380ddfd','[\"*\"]',NULL,'2022-01-02 18:56:04','2022-01-02 18:56:04'),(4,'App\\Models\\User',12,'API Token','a8f9276f1e6672c067b17b2846599eb41708cfabd82c410f22fbbf23708fac3d','[\"*\"]','2022-01-03 14:03:34','2022-01-03 13:52:45','2022-01-03 14:03:34'),(5,'App\\Models\\User',12,'API Token','0b4a8b7ec3d541a02e438f05c2892cb9f329711ea953953ffef65cca7fdcd730','[\"*\"]',NULL,'2022-01-03 14:12:08','2022-01-03 14:12:08'),(6,'App\\Models\\User',12,'API Token','08a7886ef3c3d89c2974077b584b97c602ca8bd841f722de16be6121ca2ca0b5','[\"*\"]','2022-01-03 14:26:00','2022-01-03 14:24:57','2022-01-03 14:26:00'),(7,'App\\Models\\User',12,'API Token','dcead7ba38404d7d4f9d5ff6350dfb258f98faf147ad17e5fbeebcdcc0be6188','[\"*\"]','2022-01-03 14:36:38','2022-01-03 14:36:06','2022-01-03 14:36:38'),(8,'App\\Models\\User',12,'API Token','69976d7c4990383554e381b6debdd8ea5a4378abe47c225e6b835e61bd3c2eab','[\"*\"]',NULL,'2022-01-04 12:58:12','2022-01-04 12:58:12'),(9,'App\\Models\\User',12,'API Token','74d34a9465e21a7210f7f7f5220ba6296b283b6a40830a6ad6c19936f5b788a1','[\"*\"]','2022-01-04 15:17:26','2022-01-04 14:46:07','2022-01-04 15:17:26'),(10,'App\\Models\\User',13,'tokens','3eb13895740a84ba918f607cad06d6b79147a336c483ac12cb98c6dd5755fb17','[\"*\"]',NULL,'2022-01-09 03:33:10','2022-01-09 03:33:10'),(11,'App\\Models\\User',12,'API Token','1edabc0306c43da9c55be1c0acf3b6c33a4da9b855f2636facbb32245a04a2c1','[\"*\"]','2022-01-09 03:37:10','2022-01-09 03:36:48','2022-01-09 03:37:10'),(12,'App\\Models\\User',12,'API Token','18c039e631ad51914cd22e561ba4a981c946dd8ac3d1c14acb0f5280e32ff84c','[\"*\"]','2022-01-09 03:39:13','2022-01-09 03:38:42','2022-01-09 03:39:13'),(13,'App\\Models\\User',12,'API Token','9548141e1377abc45863b47d0943cc8a7b0ca8d01c8041f1b45d35e9284362ca','[\"*\"]','2022-01-09 03:52:04','2022-01-09 03:51:48','2022-01-09 03:52:04'),(14,'App\\Models\\User',12,'API Token','87cbbf447b6fbc1198ef8090a86980562674e4a63acbf9e484d047c6dd127634','[\"*\"]','2022-01-09 04:03:20','2022-01-09 04:03:02','2022-01-09 04:03:20'),(15,'App\\Models\\User',12,'API Token','0df3a4c3bce85db0ce125281c367b2803ffec0899eda24642623ae16b2a2d951','[\"*\"]','2022-01-10 09:53:48','2022-01-10 09:53:24','2022-01-10 09:53:48'),(16,'App\\Models\\User',12,'API Token','d11cfd7a829baf32b5a7b205e032078fba2bfce59af428c5bb8ea3809abc4ec0','[\"*\"]','2022-01-10 09:56:17','2022-01-10 09:55:02','2022-01-10 09:56:17'),(17,'App\\Models\\User',12,'API Token','b1ee2815d0199773ed243da0ebcc58e1acea9cec2e107dca2fc802f35ff0b2c9','[\"*\"]','2022-01-10 10:58:41','2022-01-10 10:56:25','2022-01-10 10:58:41'),(18,'App\\Models\\User',15,'tokens','1876cb18a994cc23a1cb22e4161860a697d98ea7f80cb1eb723a4796972014b9','[\"*\"]',NULL,'2022-01-10 18:20:27','2022-01-10 18:20:27'),(19,'App\\Models\\User',15,'API Token','6c658fb6b2d7e8cf2bb07ad50ee0423ed2f108da4c63a94a0149bd2acf3a41ce','[\"*\"]',NULL,'2022-01-10 18:22:50','2022-01-10 18:22:50'),(20,'App\\Models\\User',15,'API Token','e7c073a4add367e905f8aa3bbc958cb9d4b5506fdad9d2ac5376fb5a511da8f3','[\"*\"]','2022-01-10 19:19:38','2022-01-10 19:19:12','2022-01-10 19:19:38'),(21,'App\\Models\\User',15,'API Token','79f0f5d5d2e3929923425c166c6959faa1132d760c5806bcef5fbd59fe2268d4','[\"*\"]','2022-01-10 19:28:12','2022-01-10 19:26:09','2022-01-10 19:28:12'),(22,'App\\Models\\User',15,'API Token','e2ff72365337c4b6c24fafeaa073080415800c9bcfea6d036629acf8afcd50d9','[\"*\"]','2022-01-10 19:30:35','2022-01-10 19:30:24','2022-01-10 19:30:35'),(23,'App\\Models\\User',15,'API Token','6755fd50aa94a911d4458d8804231e14a3745f6f74430b03478ed43ca48d2f24','[\"*\"]','2022-01-10 19:41:58','2022-01-10 19:41:48','2022-01-10 19:41:58'),(24,'App\\Models\\User',15,'API Token','9bcf59c05110a68070ecaedd49c41f6c2cba5258ee564e98a225546d87f90be3','[\"*\"]','2022-01-10 19:56:39','2022-01-10 19:47:41','2022-01-10 19:56:39'),(25,'App\\Models\\User',15,'API Token','1d0603a243867f1a70d8bdcc3e0b16a57f751cb9abc4392d2ccf8295f771a867','[\"*\"]','2022-01-10 19:57:36','2022-01-10 19:57:26','2022-01-10 19:57:36'),(26,'App\\Models\\User',15,'API Token','6c192f8a711b5a6bc99b905492edee3e582df051c0ebc6b2c5121c55cff6e411','[\"*\"]','2022-01-10 20:02:04','2022-01-10 20:01:56','2022-01-10 20:02:04'),(27,'App\\Models\\User',15,'API Token','d98aa9249ac2bbdbd115d169d22ef4653f99c714e4feb567b02f86f3ed7902f4','[\"*\"]','2022-01-10 20:44:28','2022-01-10 20:02:40','2022-01-10 20:44:28'),(28,'App\\Models\\User',15,'API Token','337009d0a2b13db9828d68e664380b8ef66a60e20ceac0ac942c864bf6fe7dc1','[\"*\"]','2022-01-10 20:49:26','2022-01-10 20:46:46','2022-01-10 20:49:26'),(29,'App\\Models\\User',15,'API Token','c3c7f86e33e5fb489b1a0cdcd308b7e93745626e01f0e4a3455d96eaab98e38d','[\"*\"]','2022-01-10 20:55:12','2022-01-10 20:49:58','2022-01-10 20:55:12'),(30,'App\\Models\\User',15,'API Token','a1a00c50ab8c46949e371b46dce13561fbcef3b850a725165e802fb8896be0ab','[\"*\"]','2022-01-10 21:26:19','2022-01-10 21:25:42','2022-01-10 21:26:19'),(31,'App\\Models\\User',15,'API Token','9e350e9d6bea278c69d7912fbadf7878a896c0a346bff12ec6973bbc3439ebba','[\"*\"]','2022-01-10 21:35:07','2022-01-10 21:34:25','2022-01-10 21:35:07'),(32,'App\\Models\\User',15,'API Token','8e20a6e702c3274e957512788365fbfacd0b2e8b3b54a1775c6a65348827bb48','[\"*\"]','2022-01-10 21:44:34','2022-01-10 21:40:50','2022-01-10 21:44:34'),(33,'App\\Models\\User',15,'API Token','1d1fa33b4b7c09eecf3e1825b9103055782218c2faae20ee0cfe3bbe27819e7b','[\"*\"]','2022-01-10 21:45:41','2022-01-10 21:45:29','2022-01-10 21:45:41'),(34,'App\\Models\\User',15,'API Token','eaec8f76928706686f62164a6ddef6f7333fd6137313ce818532e3ac84fe4b6b','[\"*\"]','2022-01-14 03:26:37','2022-01-14 03:24:30','2022-01-14 03:26:37'),(35,'App\\Models\\User',15,'API Token','6f690c91b2d755639e4c890c35d847f8fbdb8feac7ccc41a6527c013278a78fb','[\"*\"]','2022-01-14 03:38:41','2022-01-14 03:38:32','2022-01-14 03:38:41'),(36,'App\\Models\\User',15,'API Token','68a075ab1338ec5df3856fb3895e9b88bda33d137d6a76c62e763d5a08832f16','[\"*\"]','2022-01-14 03:40:01','2022-01-14 03:39:48','2022-01-14 03:40:01'),(37,'App\\Models\\User',15,'API Token','9f13ce84a0ced892c8c117cb05e6640bc9eaaad93e88aa6666a8ecdd01e78114','[\"*\"]','2022-01-14 06:01:17','2022-01-14 03:43:36','2022-01-14 06:01:17'),(38,'App\\Models\\User',17,'tokens','3cb6a60a86ee985f6d8a0680a4c4db0b775c4243bf2a03db9f691a13804b9e22','[\"*\"]',NULL,'2022-01-14 06:05:29','2022-01-14 06:05:29'),(39,'App\\Models\\User',17,'API Token','d0ba4b3a0ed4c1957cbb210521e5df114c884d3f9fd8e3ca6a64bef2ce7e0d8f','[\"*\"]','2022-01-14 08:01:05','2022-01-14 06:05:54','2022-01-14 08:01:05'),(40,'App\\Models\\User',15,'API Token','7944a2e6225ebe6bb2862aba7d393e1eda3c7b6aaf7cfcfb9ae8e39b09168be9','[\"*\"]','2022-01-14 12:24:15','2022-01-14 12:23:52','2022-01-14 12:24:15'),(41,'App\\Models\\User',15,'API Token','13e18fd152af5f04caced6d229fb2acde52c051d87ea8576f1fc687d494b3edd','[\"*\"]','2022-01-14 13:25:42','2022-01-14 13:24:11','2022-01-14 13:25:42'),(42,'App\\Models\\User',15,'API Token','83fa9cae54b83f7555e13fbed5e0cd7c601387b54b893f82586a5179acfb736b','[\"*\"]','2022-01-14 13:31:35','2022-01-14 13:30:16','2022-01-14 13:31:35'),(43,'App\\Models\\User',17,'API Token','b9838918a623e99ed3766a8465a763c9beaa4e1d5c0701cb130ac8647a82acd8','[\"*\"]','2022-01-14 13:48:26','2022-01-14 13:39:02','2022-01-14 13:48:26'),(44,'App\\Models\\User',15,'API Token','4cda4cbeeb365e5c93c3e1e7e2d0bcc0d7cceeec9aedd4c37ec4339d52e28d7b','[\"*\"]',NULL,'2022-01-16 13:43:03','2022-01-16 13:43:03'),(45,'App\\Models\\User',18,'tokens','a2a8628877f87209d649b00dc98545a9b0e4c87dc2edc9a7d82872ec3a142ce5','[\"*\"]',NULL,'2022-01-16 13:45:33','2022-01-16 13:45:33'),(46,'App\\Models\\User',15,'API Token','03c25163f6c9b063a9a6e78190ec81a95df2a11aa3e9ec755c7da0b067c71291','[\"*\"]','2022-01-16 13:50:20','2022-01-16 13:50:12','2022-01-16 13:50:20'),(47,'App\\Models\\User',15,'API Token','52d72d0b8ea235508e071120d908e8c7e12666cb6fb6b5fd1dd716b399a4fb97','[\"*\"]',NULL,'2022-01-16 14:05:49','2022-01-16 14:05:49'),(48,'App\\Models\\User',15,'API Token','8050768fee76250e544129c6b15e6d447ac2f3bfbc3ac2c106d0008d3d181b69','[\"*\"]',NULL,'2022-01-16 14:07:52','2022-01-16 14:07:52'),(49,'App\\Models\\User',15,'API Token','4ff69270b777e1c0353bc2279804a4a9a6ebbd8bececfae261b1a3434ed93f7e','[\"*\"]',NULL,'2022-01-16 14:50:30','2022-01-16 14:50:30'),(50,'App\\Models\\User',17,'API Token','aad6537448e1a376f508a6a518a2a8cba12028bf23aab1003922bf3ab0190cf8','[\"*\"]',NULL,'2022-01-16 14:51:26','2022-01-16 14:51:26'),(51,'App\\Models\\User',19,'tokens','b299f91b102781cd3b9f21a1f9b66cdd314c6247ecab2a5f62d88bb009b2356d','[\"*\"]',NULL,'2022-01-16 14:51:55','2022-01-16 14:51:55'),(52,'App\\Models\\User',19,'API Token','69555d75f4efd1413ab0cd6052003971c43822dab19c9631317a879a9cb192bf','[\"*\"]','2022-01-16 15:03:14','2022-01-16 14:52:39','2022-01-16 15:03:14'),(53,'App\\Models\\User',17,'API Token','a3c1c69d4663303ff4a67810aa9f93e88e05a9fec2e07f66a25d6828f9b9b2ce','[\"*\"]','2022-01-17 03:18:25','2022-01-16 15:04:16','2022-01-17 03:18:25'),(54,'App\\Models\\User',15,'API Token','47f88604b82a2fe6512d22dfbf2571d49a8edff8176657a4585881d319fe1308','[\"*\"]','2022-01-16 15:32:25','2022-01-16 15:22:55','2022-01-16 15:32:25'),(55,'App\\Models\\User',15,'API Token','2385072a85fbd902c5df1a8ec304314275053258d3335e16046936560d197a8f','[\"*\"]','2022-01-16 16:12:33','2022-01-16 16:11:34','2022-01-16 16:12:33'),(56,'App\\Models\\User',17,'API Token','e1259bd53fd00e1e16a57bf16c2fba836bc436d9ad73cadebda9749dc231d48e','[\"*\"]','2022-01-17 03:19:14','2022-01-17 03:18:36','2022-01-17 03:19:14'),(57,'App\\Models\\User',17,'API Token','b56617087c52c42198a4dd9b3ec29475de03ee9edf3f73c6c90410102c638ffe','[\"*\"]','2022-01-17 13:39:17','2022-01-17 13:35:28','2022-01-17 13:39:17'),(58,'App\\Models\\User',15,'API Token','8dc0ee618fc33a44daad366bb7e3c72955b439250131e5654e30605583066ccf','[\"*\"]','2022-01-17 14:22:45','2022-01-17 13:50:12','2022-01-17 14:22:45'),(59,'App\\Models\\User',15,'API Token','b0398f4d5ea0097e645b58b336a0de5213e9e6b38c42a70d35da82a3026cce45','[\"*\"]','2022-01-17 15:05:58','2022-01-17 14:34:28','2022-01-17 15:05:58'),(60,'App\\Models\\User',15,'API Token','bdcd2ae1307d7b38c7cfc04426b8fdb9cbf9dae5e7d8e6cce9c2139e251a2c1f','[\"*\"]','2022-01-17 15:56:21','2022-01-17 15:42:29','2022-01-17 15:56:21'),(61,'App\\Models\\User',15,'API Token','e21e652ababdf8d8c2d02b8a49e2e93d8e1dddcc045b40df79b46210bfa08978','[\"*\"]','2022-01-17 17:09:06','2022-01-17 17:08:24','2022-01-17 17:09:06'),(62,'App\\Models\\User',15,'API Token','ee041d73ad84b11aad03ca42f05827435256ba82bee01fb28c6beade3d0772d1','[\"*\"]','2022-01-17 19:23:30','2022-01-17 17:44:33','2022-01-17 19:23:30'),(63,'App\\Models\\User',15,'API Token','87c009d68270cb87282cf9744e69ad88e3a3111d5e38c973fa7b5c9077d3f2a9','[\"*\"]','2022-01-17 20:37:03','2022-01-17 20:08:38','2022-01-17 20:37:03'),(64,'App\\Models\\User',15,'API Token','c97a0a3ebac0481ee346908157db79128f3327d622c0a59797e766583ee46f7d','[\"*\"]','2022-01-17 20:42:02','2022-01-17 20:39:20','2022-01-17 20:42:02'),(65,'App\\Models\\User',15,'API Token','ceb99b908e68d01facc77d93999ca088142efa71b45c37dbb973557b5e31b634','[\"*\"]','2022-01-17 20:49:12','2022-01-17 20:43:16','2022-01-17 20:49:12'),(66,'App\\Models\\User',15,'API Token','9137d6ea9fe6573de0f6e44cc4ed62d91824e6fc98b1c5649c251fc03b01a8fa','[\"*\"]','2022-01-17 22:09:59','2022-01-17 20:49:42','2022-01-17 22:09:59'),(67,'App\\Models\\User',15,'API Token','24d62150931684ebd780ea3352863f267283d4dacd8461aa3ffea0b2079bb053','[\"*\"]','2022-01-17 22:19:59','2022-01-17 22:12:33','2022-01-17 22:19:59'),(68,'App\\Models\\User',15,'API Token','c2e58f0a49e173c2caa1d3faf747e51a5d633f508969f5a5a9f690bdf8cbe750','[\"*\"]','2022-01-17 22:30:15','2022-01-17 22:20:45','2022-01-17 22:30:15'),(69,'App\\Models\\User',15,'API Token','91d3e745f947942281cdf3504a6a781b13a9f9714e16b9485949c949f6182be9','[\"*\"]','2022-01-17 23:28:29','2022-01-17 22:44:27','2022-01-17 23:28:29'),(70,'App\\Models\\User',15,'API Token','d9805bc8cf9888f4f5176d1863d0c9800c6f1eadac4228681170866153f17fe1','[\"*\"]','2022-01-17 23:39:15','2022-01-17 23:33:39','2022-01-17 23:39:15'),(71,'App\\Models\\User',17,'API Token','5852073fdd83e20508668c7fee8ae95a3c45655b18431cc9e33ee99b2e22d39b','[\"*\"]','2022-01-18 08:55:02','2022-01-18 08:38:52','2022-01-18 08:55:02'),(72,'App\\Models\\User',30,'tokens','9222315fae86721b3965ec41dd4b52ce9fddd5ee1f5a0936a1e0e4ffb0cd3866','[\"*\"]',NULL,'2022-01-18 10:09:31','2022-01-18 10:09:31'),(73,'App\\Models\\User',31,'tokens','2427189307865cc937aa4ada767efad1543e3288116df14fe1526d5fa023970c','[\"*\"]',NULL,'2022-01-18 10:09:52','2022-01-18 10:09:52'),(74,'App\\Models\\User',31,'API Token','3797a0afabb3b29af338ae3f3c94c94ca3f6d119746f5b3aa49678dffa5cff4a','[\"*\"]',NULL,'2022-01-18 10:10:18','2022-01-18 10:10:18'),(75,'App\\Models\\User',15,'API Token','c2816351d88686d13f7ed1973dea6c0db9e8c28910db1183d924d70c1c29d020','[\"*\"]','2022-01-18 10:27:38','2022-01-18 10:12:15','2022-01-18 10:27:38'),(76,'App\\Models\\User',32,'tokens','1c75e789c584f3ca168b3702e15622816784c2731c516d812f6d93c36aa7ce38','[\"*\"]',NULL,'2022-01-18 10:12:26','2022-01-18 10:12:26'),(77,'App\\Models\\User',15,'API Token','451b1c029c0dd3e2155423712c396ae4b243bf61db6f3a61311c60c51ea311ea','[\"*\"]',NULL,'2022-01-18 11:12:33','2022-01-18 11:12:33'),(78,'App\\Models\\User',15,'API Token','7a69c24b33faea3c41dcdd60099329e1bd155dc9c649e5f47294fcb086f172db','[\"*\"]',NULL,'2022-01-18 11:13:27','2022-01-18 11:13:27'),(79,'App\\Models\\User',15,'API Token','70cb51e24d6bc820c941f7fee1c75768269b6949ba229a2c2d41f9d39cb74082','[\"*\"]',NULL,'2022-01-18 11:13:54','2022-01-18 11:13:54'),(80,'App\\Models\\User',15,'API Token','06fb0a6bb0998c47338bec2b552728d593612a3f318c567111e26ad4d79203f8','[\"*\"]',NULL,'2022-01-18 11:30:49','2022-01-18 11:30:49'),(81,'App\\Models\\User',15,'API Token','07aa2d957900e926e100aeaa85401ad7055bee722dd92d4d79db056d15611e9a','[\"*\"]',NULL,'2022-01-18 11:31:15','2022-01-18 11:31:15'),(82,'App\\Models\\User',15,'API Token','1d92060bfb498a471e040017fa79a81b13034609e08485ce5a8e2925c038df4b','[\"*\"]',NULL,'2022-01-18 12:32:23','2022-01-18 12:32:23'),(83,'App\\Models\\User',15,'API Token','aed3ab755519908a189ba63cf6737f503fb6ac75e527fcc6734cafeb414384cf','[\"*\"]',NULL,'2022-01-18 12:33:13','2022-01-18 12:33:13'),(84,'App\\Models\\User',15,'API Token','6a1947b74295dece692a3697221d14fbeae7985501eb297189bdcc9625fbc914','[\"*\"]',NULL,'2022-01-18 12:35:31','2022-01-18 12:35:31'),(85,'App\\Models\\User',15,'API Token','88c84d54d67d2c09400683c8e5ef9acaf9fbebc5b7b88c4c01e8499e7b3726cd','[\"*\"]',NULL,'2022-01-18 12:36:36','2022-01-18 12:36:36'),(86,'App\\Models\\User',15,'API Token','8515bb311db91ecbbe17bad52fa88042a0f74c4b4cb07d39ef8a21c1397673ef','[\"*\"]',NULL,'2022-01-18 12:38:11','2022-01-18 12:38:11'),(87,'App\\Models\\User',33,'tokens','a124eb713f04e2e9bd680ef6b4b720ecd2f6c59179e82b7edd32fd7f7932db46','[\"*\"]',NULL,'2022-01-18 12:42:09','2022-01-18 12:42:09'),(88,'App\\Models\\User',33,'API Token','b1fa1d7b1e0a0a492d39b46aff7a6fb190b8694560bea85a01d9e5f761048b6f','[\"*\"]','2022-01-18 13:56:20','2022-01-18 12:56:55','2022-01-18 13:56:20'),(89,'App\\Models\\User',33,'API Token','22d20507cf5fc668088c020b84ff2ddbae54f5f3794f7c5a9b167d74995c3c80','[\"*\"]','2022-01-18 14:13:22','2022-01-18 13:58:23','2022-01-18 14:13:22'),(90,'App\\Models\\User',33,'API Token','3ae69e48507a77da354616aefc5b8f32c40ee275e8cc6cfe32ecf1a9a6a2486c','[\"*\"]','2022-01-18 14:21:46','2022-01-18 14:14:19','2022-01-18 14:21:46'),(91,'App\\Models\\User',33,'API Token','2ebbfa080ece1acf1bf4e9e298d6bc4b1fb0ebb6597ec27713e5bfc82c58f7ad','[\"*\"]','2022-01-18 14:29:14','2022-01-18 14:24:26','2022-01-18 14:29:14'),(92,'App\\Models\\User',33,'API Token','8b722f8b95ef032c10b79d52a4a58e350227422266bb647676e5dd9e9f51bd6f','[\"*\"]','2022-01-18 20:33:57','2022-01-18 20:33:12','2022-01-18 20:33:57'),(93,'App\\Models\\User',33,'API Token','a7b56691ccaa97bb92428c78955cbd51b4438b21a81089000220048ed121f94c','[\"*\"]','2022-01-18 21:12:25','2022-01-18 21:12:19','2022-01-18 21:12:25'),(94,'App\\Models\\User',12,'API Token','5c530fcd42fe1c594bf64b9c64edf24c9a43e25efa9eca180373b8f910e83b54','[\"*\"]','2022-01-18 21:30:19','2022-01-18 21:30:00','2022-01-18 21:30:19'),(95,'App\\Models\\User',15,'API Token','f744dc734aa5596068b6063701cce6ff07ddefe31cce99be60045b3836663fbd','[\"*\"]','2022-01-18 22:35:15','2022-01-18 21:40:12','2022-01-18 22:35:15'),(96,'App\\Models\\User',15,'API Token','4feb36ec3ae55e7dbeb58cd19acf1fa9a3b069ceaf706fc016a72c7b38bad8cf','[\"*\"]','2022-01-18 22:36:43','2022-01-18 22:35:37','2022-01-18 22:36:43'),(97,'App\\Models\\User',15,'API Token','f9ac81fc7eecf51a5301923f20c31b22508a15a4563cbe96cb4510154bb3b9b3','[\"*\"]',NULL,'2022-01-18 22:42:15','2022-01-18 22:42:15'),(98,'App\\Models\\User',15,'API Token','5e42013fb83c7c26772b9870bb2356123dc6130cd6d5db2355fb875756c64649','[\"*\"]','2022-01-18 22:42:46','2022-01-18 22:42:22','2022-01-18 22:42:46'),(99,'App\\Models\\User',15,'API Token','238485415d3f2568c01f56c03e319b149b87595e8e6cc2f11c0235f987254221','[\"*\"]','2022-01-18 22:47:47','2022-01-18 22:47:29','2022-01-18 22:47:47'),(100,'App\\Models\\User',15,'API Token','ce77b7dac1c16efdd429834da5eca1a4ec619140cb219bcf6917f66c1c2563be','[\"*\"]','2022-01-18 22:52:51','2022-01-18 22:52:35','2022-01-18 22:52:51'),(101,'App\\Models\\User',15,'API Token','d0ad5e2ae48c74ee2326404cc63703dda58c1502fed5d5b8c763090ae23071aa','[\"*\"]','2022-01-18 23:02:16','2022-01-18 23:01:54','2022-01-18 23:02:16'),(102,'App\\Models\\User',15,'API Token','2c82cd6db700db647f764cc9c5dbe60a8a2cb1bb66dfafb2ac743c8394e13ace','[\"*\"]','2022-01-19 10:46:46','2022-01-19 10:46:38','2022-01-19 10:46:46'),(103,'App\\Models\\User',15,'API Token','e7bbda09496fb1eabc009c6c0807f41e9b9e35918f80f896de8393be51590ec0','[\"*\"]',NULL,'2022-01-19 10:58:20','2022-01-19 10:58:20'),(104,'App\\Models\\User',15,'API Token','95b3dcde6b16ec80af9ba960e45d7c8a092e07a56c1d4632d54eeacd5fb3a5a7','[\"*\"]','2022-01-19 11:07:36','2022-01-19 10:58:23','2022-01-19 11:07:36'),(105,'App\\Models\\User',15,'API Token','d23474241a8ec418a3456983081abeb90ea5eccb3af3c60448436c3a3a38abf5','[\"*\"]','2022-01-19 11:08:05','2022-01-19 11:07:49','2022-01-19 11:08:05'),(106,'App\\Models\\User',15,'API Token','a53838ce4c5dc8eefca4718a6542854d7cbc4b370987e5dd4d4f20d42c388f2f','[\"*\"]','2022-01-19 11:14:40','2022-01-19 11:13:27','2022-01-19 11:14:40'),(107,'App\\Models\\User',15,'API Token','ddb2b969bcaa2c5339009c09eaa6a6a2a65bd0a868f7ae52c4b3d9cf02be0436','[\"*\"]','2022-01-19 11:19:12','2022-01-19 11:19:04','2022-01-19 11:19:12'),(108,'App\\Models\\User',15,'API Token','e0a233181c9e0062fd546b235315492a42f5c53fe3e832f4cb7a7f61e8965ecf','[\"*\"]','2022-01-19 11:28:00','2022-01-19 11:23:54','2022-01-19 11:28:00'),(109,'App\\Models\\User',15,'API Token','b15982211ec40cc3c8e57883d5f71e122c82588cbbd2693517297bfb92ed883d','[\"*\"]','2022-01-19 11:29:03','2022-01-19 11:28:53','2022-01-19 11:29:03'),(110,'App\\Models\\User',15,'API Token','7685482753bb0e6d5a3b55cff29e2ae29a1a02f7926fa1f6a165776782858cd0','[\"*\"]','2022-01-19 11:35:21','2022-01-19 11:35:11','2022-01-19 11:35:21'),(111,'App\\Models\\User',15,'API Token','b8f6ae86d46d50a2c8042d5a68e43f0d25d874ddd0fdd072dfd8fa607a56eb16','[\"*\"]','2022-01-19 11:46:05','2022-01-19 11:45:57','2022-01-19 11:46:05'),(112,'App\\Models\\User',15,'API Token','5a394a078ee8862025ae2498fe89dd531bc72999fe752ec4d88dfaac3e803641','[\"*\"]','2022-01-19 11:50:41','2022-01-19 11:50:30','2022-01-19 11:50:41'),(113,'App\\Models\\User',15,'API Token','b60f8bc440952aa94b67cbbbf28958ff2461de1a9d7d66daa2d839e816bbec4c','[\"*\"]','2022-01-19 11:57:39','2022-01-19 11:57:31','2022-01-19 11:57:39'),(114,'App\\Models\\User',15,'API Token','ecac1ef1247bb53acca7580a2707443b62acd1eecbd115ba5171b8ad59a03594','[\"*\"]','2022-01-19 12:37:34','2022-01-19 12:30:38','2022-01-19 12:37:34'),(115,'App\\Models\\User',15,'API Token','f215bb6370ca5c6e268dcd605171c686cc17c5644e9f915ca7d239e99dcc896a','[\"*\"]','2022-01-19 12:43:05','2022-01-19 12:42:56','2022-01-19 12:43:05'),(116,'App\\Models\\User',15,'API Token','9051142a801d7f99501f8263f35d82e6d0aea3bcc1b1a98387927234cafb24a3','[\"*\"]','2022-01-19 12:49:36','2022-01-19 12:49:26','2022-01-19 12:49:36'),(117,'App\\Models\\User',15,'API Token','1aa3cda6792d0f93793dc294654d652c4d37b3f0c8342b39e5b74fce631beeec','[\"*\"]','2022-01-19 14:13:53','2022-01-19 14:13:46','2022-01-19 14:13:53'),(118,'App\\Models\\User',15,'API Token','3d2ed3118ed293952e700496173a176927baf90a13c11fc7cc1d349ec874fd7e','[\"*\"]','2022-01-19 16:24:02','2022-01-19 15:00:05','2022-01-19 16:24:02'),(119,'App\\Models\\User',33,'API Token','bc60002b6858ddd4d7d46c1b667de3b44cce7ad568cb38f593af7351756f3647','[\"*\"]','2022-01-19 15:04:02','2022-01-19 15:03:26','2022-01-19 15:04:02'),(120,'App\\Models\\User',33,'API Token','2a86eed3cb433632708f1faf43fb058e808dfd0dd812f1e062e507f13655b791','[\"*\"]','2022-01-19 17:48:01','2022-01-19 17:46:08','2022-01-19 17:48:01'),(121,'App\\Models\\User',15,'API Token','157502fdbe3bf75f2d03e1916a0171ff630b1fd0a07b572d72740ad1c30a5556','[\"*\"]','2022-01-19 17:58:35','2022-01-19 17:57:21','2022-01-19 17:58:35'),(122,'App\\Models\\User',15,'API Token','02d56aa5c71eff267ece0f57871ef833e3c8ca89ab0dd6573168a0ad553c325c','[\"*\"]','2022-01-19 18:00:23','2022-01-19 17:58:49','2022-01-19 18:00:23'),(123,'App\\Models\\User',33,'API Token','37a786052b178fbaf6d7fcfb3f018792f859f736c48e53398d137aed100a3d05','[\"*\"]','2022-01-22 10:48:24','2022-01-19 23:14:49','2022-01-22 10:48:24'),(124,'App\\Models\\User',15,'API Token','9436f7d9fca8e0aad2b5f993791a8e25a5577600063b07432a35b55e651b5cd2','[\"*\"]',NULL,'2022-01-20 11:24:48','2022-01-20 11:24:48'),(125,'App\\Models\\User',15,'API Token','a177004f858d2b46d46c7d0193cbc28aee1cd89aa20b9b0607f9a45ae9903589','[\"*\"]',NULL,'2022-01-20 12:23:51','2022-01-20 12:23:51'),(126,'App\\Models\\User',15,'API Token','b784743d5f68aaf4026010df7439bdf7cd80b4b2bf58edeb92fad9114f8b10f4','[\"*\"]',NULL,'2022-01-20 12:23:59','2022-01-20 12:23:59'),(127,'App\\Models\\User',15,'API Token','5d2151c6e4a5ce5a27db9144cfb8839e97dd44ad7aa0b7d5685ee3f633ece7f5','[\"*\"]',NULL,'2022-01-20 12:24:05','2022-01-20 12:24:05'),(128,'App\\Models\\User',15,'API Token','705de73f150209a9600222416de5d866bb2c5a0b3f7b75def6bde88ba228dcd3','[\"*\"]',NULL,'2022-01-20 12:24:14','2022-01-20 12:24:14'),(129,'App\\Models\\User',15,'API Token','4ab01ac1e49e247183a2b0a21c0d1a0dc942a5e0f0c31358b54949f40e744e1f','[\"*\"]','2022-01-20 12:25:06','2022-01-20 12:24:19','2022-01-20 12:25:06'),(130,'App\\Models\\User',15,'API Token','31589273d46f7181e1491c6edd623f73a2383da195fcc5a312ef489abe197cbf','[\"*\"]',NULL,'2022-01-20 19:44:40','2022-01-20 19:44:40'),(131,'App\\Models\\User',15,'API Token','03de9bd516aa6dc6a1f2920d272b73dc00d6b4ce2e7079a53d8799906b947742','[\"*\"]',NULL,'2022-01-20 19:44:43','2022-01-20 19:44:43'),(132,'App\\Models\\User',15,'API Token','df8a5e34c3df6cb4603b351187873a631d4af08d169fec258e506d8bac8e1e8f','[\"*\"]',NULL,'2022-01-20 19:44:48','2022-01-20 19:44:48'),(133,'App\\Models\\User',15,'API Token','ef0fe13549591e725cf1dd8fa461724ef06b3568af8d24e42002d74c341b0fd5','[\"*\"]',NULL,'2022-01-20 19:45:35','2022-01-20 19:45:35'),(134,'App\\Models\\User',15,'API Token','930e77e326fe2ecf4e6274649c23d1830cb096cd5ce710fd67dfa549551618fd','[\"*\"]',NULL,'2022-01-20 19:47:47','2022-01-20 19:47:47'),(135,'App\\Models\\User',15,'API Token','ec1b1c58f8b22b4b896162735e2529b61f0e3cb2f7c0d1c3e8e081a73ad719b1','[\"*\"]',NULL,'2022-01-20 19:51:50','2022-01-20 19:51:50'),(136,'App\\Models\\User',15,'API Token','a960f6af03ede48c1b772d202fe541af9fd233f2eea2d0b8a10fc579d3c737d2','[\"*\"]',NULL,'2022-01-20 20:54:22','2022-01-20 20:54:22'),(137,'App\\Models\\User',15,'API Token','bd7a3b1b2b48532723c751f3d0a628af9d4b6854c6347cd61ffabab268d2ce76','[\"*\"]',NULL,'2022-01-20 21:04:42','2022-01-20 21:04:42'),(138,'App\\Models\\User',15,'API Token','44ff79fb740ab08b28fac2e0ee92dc359e9f4b5ca63c1664a4f5830458bde193','[\"*\"]','2022-01-20 21:32:35','2022-01-20 21:29:42','2022-01-20 21:32:35'),(139,'App\\Models\\User',15,'API Token','4bbc57cfb3e70d8a942ed796e3a53db7b8151731626fef10d3e4d8f45cb6245b','[\"*\"]',NULL,'2022-01-20 21:39:56','2022-01-20 21:39:56'),(140,'App\\Models\\User',15,'API Token','0f5e2b1efb046e0019e33fc222228c506c8d1a2fc6c894437fa8b27128853acf','[\"*\"]',NULL,'2022-01-20 21:41:05','2022-01-20 21:41:05'),(141,'App\\Models\\User',15,'API Token','4c9f8bde60a0ba173e577e7d532173bf80a3546e6d51761f92c12df9145ca8fa','[\"*\"]',NULL,'2022-01-20 21:42:15','2022-01-20 21:42:15'),(142,'App\\Models\\User',15,'API Token','0f14ac5ac8ef0a825c7c0b6070a07588b7409f5a5a02f50b0e2c729eb172a26e','[\"*\"]','2022-01-22 07:37:48','2022-01-20 21:46:49','2022-01-22 07:37:48'),(143,'App\\Models\\User',15,'API Token','a3a3376e365928fcc4208c3ff03fe0f7cf4bb6e665bccab7ef357386d24dbb47','[\"*\"]','2022-01-22 10:51:33','2022-01-22 10:48:21','2022-01-22 10:51:33'),(144,'App\\Models\\User',15,'API Token','4c73871b64e95ceb87545f61645bd4a359780a98773ac06a8f499d16a349cad4','[\"*\"]',NULL,'2022-01-22 11:05:07','2022-01-22 11:05:07'),(145,'App\\Models\\User',15,'API Token','b711d5185222bd8232059c3b52a3be1376c6567533b7d5d4b308d13cf08af50e','[\"*\"]',NULL,'2022-01-22 11:05:27','2022-01-22 11:05:27'),(146,'App\\Models\\User',15,'API Token','f3815f7eed20ce7fa862e5ba28fe6a4fdec9e49f8a10914b3c90e7c4b01a761c','[\"*\"]','2022-01-22 11:06:13','2022-01-22 11:05:33','2022-01-22 11:06:13'),(147,'App\\Models\\User',33,'API Token','b58abd8013cd781584ea638b5970a6b270cb8931c57acfc02fe3856fda813226','[\"*\"]','2022-01-22 11:30:27','2022-01-22 11:28:19','2022-01-22 11:30:27'),(148,'App\\Models\\User',15,'API Token','aad60662c0942624838d212909764fa00131177ce1ae72e99fdbc82dd8dc4f69','[\"*\"]',NULL,'2022-01-22 11:35:53','2022-01-22 11:35:53'),(149,'App\\Models\\User',15,'API Token','4409b51b0bc8dc8ec6dbe670bf2d2d9009c0c20ec057d82e6f833b46c974d3e9','[\"*\"]',NULL,'2022-01-22 11:36:18','2022-01-22 11:36:18'),(150,'App\\Models\\User',15,'API Token','7eff1faac176ddc784e75652d1694d27533c63ceadf9e8484358ee933cb3b790','[\"*\"]',NULL,'2022-01-22 11:38:56','2022-01-22 11:38:56'),(151,'App\\Models\\User',15,'API Token','285c4633d28c2ea760742febea64b0078d83c8d389d7338865e140bb606eea9a','[\"*\"]',NULL,'2022-01-22 11:39:35','2022-01-22 11:39:35'),(152,'App\\Models\\User',15,'API Token','d4514c9e54ee67683d1877523f1629e53924276fde01946c10e9fa0d7fc993a6','[\"*\"]',NULL,'2022-01-22 11:39:49','2022-01-22 11:39:49'),(153,'App\\Models\\User',15,'API Token','12662b272df22f8ce08d94e86eed1829124a2ffbe1dcab76878b8b68d3ecd5da','[\"*\"]',NULL,'2022-01-22 12:15:58','2022-01-22 12:15:58'),(154,'App\\Models\\User',15,'API Token','e105fcee4d8c13938fe36a38fcf1770fa70031d40b9160d383154053b04bd073','[\"*\"]','2022-01-22 12:16:55','2022-01-22 12:16:54','2022-01-22 12:16:55'),(155,'App\\Models\\User',15,'API Token','18097f0b4780362a42ab3aec45e9e3fd7fd2474a9fc51c8f8d49a93f0b33609b','[\"*\"]',NULL,'2022-01-22 12:29:44','2022-01-22 12:29:44'),(156,'App\\Models\\User',15,'API Token','c08b8c0d2ff8d64f0d7a414286e3210ad110661cfe13a2ed226efb3df988ff50','[\"*\"]','2022-01-22 12:32:28','2022-01-22 12:31:50','2022-01-22 12:32:28'),(157,'App\\Models\\User',15,'API Token','4a99616e6ca8c51dfbbbdd69306ab368419afc094a9ed04717b4ff8ba7dfd637','[\"*\"]','2022-01-22 12:48:13','2022-01-22 12:47:15','2022-01-22 12:48:13'),(158,'App\\Models\\User',35,'tokens','4e4c2b9192b9e8b8e8f20c8b3b92d2fa463fb1270ac98573faa4b56d693a5a5a','[\"*\"]',NULL,'2022-01-22 15:38:00','2022-01-22 15:38:00'),(159,'App\\Models\\User',35,'API Token','5e9e54d3ef2e9d9b1a52bb288fd7657d86eac66591c36d77772f469805ff846d','[\"*\"]','2022-01-22 15:38:20','2022-01-22 15:38:15','2022-01-22 15:38:20'),(160,'App\\Models\\User',35,'API Token','6339ebd90a889c246a3789d55c5cd80a60aaceebd1470823b4084ac356b2d4aa','[\"*\"]','2022-01-22 16:19:47','2022-01-22 15:44:25','2022-01-22 16:19:47'),(161,'App\\Models\\User',36,'tokens','dba1e47ed32845ee656327f7a038d92d69bffaf8e843fa546f12cbd170647188','[\"*\"]',NULL,'2022-01-22 16:11:39','2022-01-22 16:11:39'),(162,'App\\Models\\User',36,'API Token','b20324758747a7003d15da3f0cf75c677b55b7114e9b0c8fac0461609f116b38','[\"*\"]','2022-01-22 16:14:09','2022-01-22 16:13:47','2022-01-22 16:14:09'),(163,'App\\Models\\User',36,'API Token','9d3daac61744ca7b177f36c312082e7f9cf2676a3cf1ed3189b97c3dc1865f4f','[\"*\"]','2022-01-23 03:31:15','2022-01-22 16:24:20','2022-01-23 03:31:15'),(164,'App\\Models\\User',37,'tokens','8b2a3ab09ecdaa4466d9a304966354c4c266a292a5b0103bfdc10c16e433a3f6','[\"*\"]',NULL,'2022-01-22 17:34:29','2022-01-22 17:34:29'),(165,'App\\Models\\User',35,'API Token','ad5d4df40dae096cdecee422bca563589644c273ce428bd32ac454c3038491ab','[\"*\"]','2022-01-22 19:29:24','2022-01-22 17:35:44','2022-01-22 19:29:24'),(166,'App\\Models\\User',35,'API Token','d1b91695281c13d0a415ad017b01394aa52fe0693efab9e43e916f9eaa39e3fc','[\"*\"]','2022-01-23 12:18:56','2022-01-23 12:11:10','2022-01-23 12:18:56'),(167,'App\\Models\\User',35,'API Token','5d0bb759091efbc6eaa8d0913755e51765cd9995ac2857c486b760273bf6ac56','[\"*\"]','2022-01-28 13:30:37','2022-01-23 14:21:05','2022-01-28 13:30:37'),(168,'App\\Models\\User',39,'tokens','4ca692db2bb52b0b6bef0c268d408cec422554e1735fad55c534d6af6db1f92c','[\"*\"]',NULL,'2022-01-24 05:59:02','2022-01-24 05:59:02'),(169,'App\\Models\\User',40,'tokens','74a52af12cc5c94e6bff4f335cf3ca9636c240889b38d453aba114f4c9ed09dc','[\"*\"]',NULL,'2022-01-24 05:59:45','2022-01-24 05:59:45'),(170,'App\\Models\\User',41,'tokens','be9077d2d2ff48aeda728da8392187dec14c9c967feda66e11f540df46443714','[\"*\"]',NULL,'2022-01-24 06:01:02','2022-01-24 06:01:02'),(171,'App\\Models\\User',42,'tokens','61093dc51ba29d16d7afb101ae00bac2e04f4131341aa5e5a7567b73ca1394da','[\"*\"]',NULL,'2022-01-24 06:01:08','2022-01-24 06:01:08'),(172,'App\\Models\\User',43,'tokens','6e773f85fe80f6fbe14c34c362e3a18ab0fb771fb625d0d4306da250de7581a4','[\"*\"]',NULL,'2022-01-24 06:02:09','2022-01-24 06:02:09'),(173,'App\\Models\\User',44,'tokens','8c4b1bc04e3e391040e8a7fda01072b4df89a75fed3676a219c628dea37dbc92','[\"*\"]',NULL,'2022-01-24 06:04:10','2022-01-24 06:04:10'),(174,'App\\Models\\User',45,'tokens','5959a21a42daa08811503c21ac05162fbef7fd4a65cc5808de469bc3015cd37c','[\"*\"]',NULL,'2022-01-25 05:27:39','2022-01-25 05:27:39'),(175,'App\\Models\\User',46,'tokens','429197119961c5d94434c6d53307e32ab924081c8fac718fa6cc36a94c91aac8','[\"*\"]',NULL,'2022-01-25 05:28:17','2022-01-25 05:28:17'),(176,'App\\Models\\User',36,'API Token','875ab8cf941814b9a1ce5e09e8bf740a1d23f85a7e5a33a499aa9646b0497b6e','[\"*\"]','2022-01-25 19:24:07','2022-01-25 19:22:15','2022-01-25 19:24:07'),(177,'App\\Models\\User',36,'API Token','80f033052afd046096e6113bb7b7a4e522c4d8d404e6e4a8d2b1e98ee597164e','[\"*\"]','2022-01-26 10:14:20','2022-01-26 10:14:05','2022-01-26 10:14:20'),(178,'App\\Models\\User',36,'API Token','f5ca7f65ad6da6a9dee32bb1766c7616ce8adbe0ec95ac77f90d84df784c770d','[\"*\"]','2022-01-26 12:03:43','2022-01-26 10:20:07','2022-01-26 12:03:43'),(179,'App\\Models\\User',36,'API Token','f893eed4d4bf016fca43fdb6897bbb6e6ad0e1807fbcb72af0caaa474b751ae7','[\"*\"]','2022-01-29 04:10:07','2022-01-26 12:16:42','2022-01-29 04:10:07'),(180,'App\\Models\\User',35,'API Token','773fb44234f8cea0ba59516af0a2772a4c63a35995fd27a578a3fe6b9664b4fe','[\"*\"]','2022-01-28 13:35:58','2022-01-28 13:35:58','2022-01-28 13:35:58'),(181,'App\\Models\\User',35,'API Token','d90632eaab4d7886d70f380a5fb5ff49a741b2948df5d6a30b8e244bd31918bf','[\"*\"]','2022-02-04 17:56:12','2022-01-28 13:36:56','2022-02-04 17:56:12'),(182,'App\\Models\\User',35,'API Token','2cf79fe1630fa4dc954067fe2f9203e089aee833fb7d4a75f0c3775c3d8f423e','[\"*\"]','2022-01-29 09:16:16','2022-01-29 09:14:35','2022-01-29 09:16:16'),(183,'App\\Models\\User',36,'API Token','f5cec7fdb2820d405fb2de5a35f93873b93fa732f1eea1c7d2994e713bb88c9b','[\"*\"]','2022-02-02 13:23:13','2022-02-01 04:36:56','2022-02-02 13:23:13'),(184,'App\\Models\\User',36,'API Token','7f1f44806e5929a9f9ec681a9d455047b26c416cbc96658d37479ce4ff49f456','[\"*\"]','2022-02-05 04:11:56','2022-02-01 04:51:05','2022-02-05 04:11:56'),(185,'App\\Models\\User',36,'API Token','0c1c72005debfff68fbd1b4319a6e14426129a9157bf71c3e362e886047f18f2','[\"*\"]','2022-02-02 13:21:32','2022-02-02 13:20:08','2022-02-02 13:21:32'),(186,'App\\Models\\User',36,'API Token','28625810ed1dee77df15109d5f49c53752ec553d2660c6f5368ca3e1e15c6d46','[\"*\"]','2022-02-02 13:41:09','2022-02-02 13:31:00','2022-02-02 13:41:09'),(187,'App\\Models\\User',47,'tokens','77a2f85c1ddff2d4c0450046a206fb557572062436f7a62f50b552563d1969ab','[\"*\"]',NULL,'2022-02-04 23:15:28','2022-02-04 23:15:28'),(188,'App\\Models\\User',47,'API Token','9b58537b35254f2274f078be1d9eedb36d69ea687683f3a8af239bf9004ac812','[\"*\"]','2022-02-04 23:17:37','2022-02-04 23:15:42','2022-02-04 23:17:37');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_point_translations`
--

DROP TABLE IF EXISTS `pickup_point_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickup_point_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pickup_point_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_point_translations`
--

LOCK TABLES `pickup_point_translations` WRITE;
/*!40000 ALTER TABLE `pickup_point_translations` DISABLE KEYS */;
INSERT INTO `pickup_point_translations` VALUES (1,1,'store1','322','en','2021-12-26 20:46:56','2021-12-26 20:46:56'),(2,2,'ملحمه ابو احمد','العنوان','sa','2022-01-04 14:22:21','2022-01-04 14:22:21');
/*!40000 ALTER TABLE `pickup_point_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_points`
--

DROP TABLE IF EXISTS `pickup_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickup_points` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pick_up_status` int DEFAULT NULL,
  `cash_on_pickup_status` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `latitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_points`
--

LOCK TABLES `pickup_points` WRITE;
/*!40000 ALTER TABLE `pickup_points` DISABLE KEYS */;
INSERT INTO `pickup_points` VALUES (1,1,'store1','322','6565656565',1,NULL,'2021-12-26 20:46:56','2021-12-26 20:46:56',NULL,NULL,'191','3146','48357'),(2,1,'ملحمه ابو احمد','العنوان','966537266754',1,NULL,'2022-01-04 14:22:21','2022-01-04 14:22:21',NULL,NULL,'191','3155','37420');
/*!40000 ALTER TABLE `pickup_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stocks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `image` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

LOCK TABLES `product_stocks` WRITE;
/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
INSERT INTO `product_stocks` VALUES (399,25,'',NULL,5.00,44,NULL,'2022-01-22 20:14:15','2022-01-29 04:10:07'),(400,26,'خروفكامل-غيرمطلوب-أكياسلحم','skuخروفكامل-غيرمطلوب-أكياسلحم',700.00,94,0,'2022-01-23 12:17:50','2022-02-04 23:17:37'),(401,26,'خروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء','skuخروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء',710.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(402,26,'خروفكامل-الرأسمعالسلخ-أكياسلحم','skuخروفكامل-الرأسمعالسلخ-أكياسلحم',850.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(403,26,'خروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuخروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء',860.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(404,26,'أنصاف-غيرمطلوب-أكياسلحم','skuأنصاف-غيرمطلوب-أكياسلحم',750.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(405,26,'أنصاف-غيرمطلوب-أكياسمفرغةمنالهواء','skuأنصاف-غيرمطلوب-أكياسمفرغةمنالهواء',760.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(406,26,'أنصاف-الرأسمعالسلخ-أكياسلحم','skuأنصاف-الرأسمعالسلخ-أكياسلحم',900.00,100,0,'2022-01-23 12:17:50','2022-01-23 12:17:50'),(407,26,'أنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء',910.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(408,26,'أرباع-غيرمطلوب-أكياسلحم','skuأرباع-غيرمطلوب-أكياسلحم',770.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(409,26,'أرباع-غيرمطلوب-أكياسمفرغةمنالهواء','skuأرباع-غيرمطلوب-أكياسمفرغةمنالهواء',780.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(410,26,'أرباع-الرأسمعالسلخ-أكياسلحم','skuأرباع-الرأسمعالسلخ-أكياسلحم',920.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(411,26,'أرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء',930.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(412,26,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم',830.00,99,0,'2022-01-23 12:17:51','2022-01-23 14:51:39'),(413,26,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء',840.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(414,26,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم',980.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(415,26,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء',990.00,100,0,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(416,26,'',NULL,700.00,100,NULL,'2022-01-23 12:17:51','2022-01-23 12:17:51'),(419,28,'',NULL,0.00,10,NULL,'2022-02-01 05:30:55','2022-02-01 05:30:55'),(437,29,'خروفكامل-غيرمطلوب-أكياسلحم','skuخروفكامل-غيرمطلوب-أكياسلحم',1200.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(438,29,'خروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء','skuخروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء',1210.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(439,29,'خروفكامل-الرأسمعالسلخ-أكياسلحم','skuخروفكامل-الرأسمعالسلخ-أكياسلحم',1350.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(440,29,'خروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuخروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1360.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(441,29,'أنصاف-غيرمطلوب-أكياسلحم','skuأنصاف-غيرمطلوب-أكياسلحم',1250.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(442,29,'أنصاف-غيرمطلوب-أكياسمفرغةمنالهواء','skuأنصاف-غيرمطلوب-أكياسمفرغةمنالهواء',1260.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(443,29,'أنصاف-الرأسمعالسلخ-أكياسلحم','skuأنصاف-الرأسمعالسلخ-أكياسلحم',1400.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(444,29,'أنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1410.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(445,29,'أرباع-غيرمطلوب-أكياسلحم','skuأرباع-غيرمطلوب-أكياسلحم',1270.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(446,29,'أرباع-غيرمطلوب-أكياسمفرغةمنالهواء','skuأرباع-غيرمطلوب-أكياسمفرغةمنالهواء',1280.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(447,29,'أرباع-الرأسمعالسلخ-أكياسلحم','skuأرباع-الرأسمعالسلخ-أكياسلحم',1420.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(448,29,'أرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1430.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(449,29,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم',1330.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(450,29,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء',1340.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(451,29,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم',1480.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(452,29,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1490.00,1000,0,'2022-02-01 05:34:22','2022-02-01 05:34:22'),(453,30,'خروفكامل-غيرمطلوب-أكياسلحم','skuخروفكامل-غيرمطلوب-أكياسلحم',850.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(454,30,'خروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء','skuخروفكامل-غيرمطلوب-أكياسمفرغةمنالهواء',860.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(455,30,'خروفكامل-الرأسمعالسلخ-أكياسلحم','skuخروفكامل-الرأسمعالسلخ-أكياسلحم',1000.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(456,30,'خروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuخروفكامل-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1010.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(457,30,'أنصاف-غيرمطلوب-أكياسلحم','skuأنصاف-غيرمطلوب-أكياسلحم',900.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(458,30,'أنصاف-غيرمطلوب-أكياسمفرغةمنالهواء','skuأنصاف-غيرمطلوب-أكياسمفرغةمنالهواء',910.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(459,30,'أنصاف-الرأسمعالسلخ-أكياسلحم','skuأنصاف-الرأسمعالسلخ-أكياسلحم',1050.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(460,30,'أنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأنصاف-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1060.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(461,30,'أرباع-غيرمطلوب-أكياسلحم','skuأرباع-غيرمطلوب-أكياسلحم',920.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(462,30,'أرباع-غيرمطلوب-أكياسمفرغةمنالهواء','skuأرباع-غيرمطلوب-أكياسمفرغةمنالهواء',930.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(463,30,'أرباع-الرأسمعالسلخ-أكياسلحم','skuأرباع-الرأسمعالسلخ-أكياسلحم',1070.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(464,30,'أرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuأرباع-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1080.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(465,30,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسلحم',980.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(466,30,'تقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-غيرمطلوب-أكياسمفرغةمنالهواء',990.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(467,30,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسلحم',1130.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(468,30,'تقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء','skuتقطيعصغيرثلاجة-الرأسمعالسلخ-أكياسمفرغةمنالهواء',1140.00,0,0,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(469,30,'',NULL,850.00,0,NULL,'2022-02-01 10:59:29','2022-02-01 10:59:29'),(474,31,'',NULL,100.00,10,NULL,'2022-02-04 17:23:54','2022-02-04 17:23:54');
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_taxes`
--

DROP TABLE IF EXISTS `product_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `tax_id` int NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_taxes`
--

LOCK TABLES `product_taxes` WRITE;
/*!40000 ALTER TABLE `product_taxes` DISABLE KEYS */;
INSERT INTO `product_taxes` VALUES (4,1,3,15.00,'percent','2021-12-22 20:58:16','2021-12-22 20:58:16'),(6,2,3,0.00,'amount','2022-01-02 16:58:55','2022-01-02 16:58:55'),(8,3,3,0.00,'amount','2022-01-02 20:36:54','2022-01-02 20:36:54'),(9,4,3,0.00,'amount','2022-01-02 20:41:03','2022-01-02 20:41:03'),(11,6,3,0.00,'amount','2022-01-03 15:24:40','2022-01-03 15:24:40'),(12,7,3,0.00,'amount','2022-01-03 15:25:50','2022-01-03 15:25:50'),(13,8,3,15.00,'amount','2022-01-03 15:27:25','2022-01-03 15:27:25'),(16,11,3,0.00,'amount','2022-01-03 15:41:00','2022-01-03 15:41:00'),(17,10,3,0.00,'amount','2022-01-03 15:51:37','2022-01-03 15:51:37'),(18,5,3,0.00,'amount','2022-01-03 15:56:50','2022-01-03 15:56:50'),(19,9,3,15.00,'percent','2022-01-03 15:57:49','2022-01-03 15:57:49'),(23,16,3,15.00,'percent','2022-01-03 16:13:20','2022-01-03 16:13:20'),(24,17,3,0.00,'amount','2022-01-03 16:14:13','2022-01-03 16:14:13'),(25,18,3,0.00,'amount','2022-01-03 16:32:03','2022-01-03 16:32:03'),(26,19,3,15.00,'amount','2022-01-03 16:34:10','2022-01-03 16:34:10'),(27,20,3,15.00,'percent','2022-01-04 14:42:38','2022-01-04 14:42:38'),(28,21,3,15.00,'amount','2022-01-18 13:06:55','2022-01-18 13:06:55'),(29,21,4,0.00,'amount','2022-01-18 13:06:55','2022-01-18 13:06:55'),(30,22,3,15.00,'amount','2022-01-22 20:09:01','2022-01-22 20:09:01'),(31,22,4,10.00,'amount','2022-01-22 20:09:01','2022-01-22 20:09:01'),(32,23,3,15.00,'amount','2022-01-22 20:11:49','2022-01-22 20:11:49'),(33,23,4,10.00,'amount','2022-01-22 20:11:49','2022-01-22 20:11:49'),(34,24,3,15.00,'amount','2022-01-22 20:12:56','2022-01-22 20:12:56'),(35,24,4,10.00,'amount','2022-01-22 20:12:56','2022-01-22 20:12:56'),(36,25,3,15.00,'amount','2022-01-22 20:14:15','2022-01-22 20:14:15'),(37,25,4,10.00,'amount','2022-01-22 20:14:15','2022-01-22 20:14:15'),(38,26,3,15.00,'amount','2022-01-23 12:17:50','2022-01-23 12:17:50'),(39,26,4,0.00,'amount','2022-01-23 12:17:50','2022-01-23 12:17:50'),(40,27,3,0.00,'amount','2022-01-23 12:33:59','2022-01-23 12:33:59'),(41,27,4,0.00,'amount','2022-01-23 12:33:59','2022-01-23 12:33:59'),(44,28,3,0.00,'amount','2022-02-01 05:30:55','2022-02-01 05:30:55'),(45,28,4,0.00,'amount','2022-02-01 05:30:55','2022-02-01 05:30:55'),(48,29,3,0.00,'amount','2022-02-01 05:34:22','2022-02-01 05:34:22'),(49,29,4,0.00,'amount','2022-02-01 05:34:22','2022-02-01 05:34:22'),(50,30,3,0.00,'amount','2022-02-01 10:59:29','2022-02-01 10:59:29'),(51,30,4,0.00,'amount','2022-02-01 10:59:29','2022-02-01 10:59:29'),(60,31,3,15.00,'amount','2022-02-04 17:23:54','2022-02-04 17:23:54'),(61,31,4,70.00,'amount','2022-02-04 17:23:54','2022-02-04 17:23:54');
/*!40000 ALTER TABLE `product_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translations`
--

LOCK TABLES `product_translations` WRITE;
/*!40000 ALTER TABLE `product_translations` DISABLE KEYS */;
INSERT INTO `product_translations` VALUES (22,25,'تفاح','كيلو','<p>تفاح طازج من المزرعة&nbsp;</p>','en','2022-01-22 20:14:15','2022-01-22 20:14:15'),(23,26,'حري','4',NULL,'en','2022-01-23 12:17:51','2022-01-23 12:17:51'),(25,28,'منتج احتبار','3',NULL,'en','2022-01-23 14:26:30','2022-01-23 14:26:30'),(26,28,'خاروف','3',NULL,'en','2022-02-01 05:30:55','2022-02-01 05:30:55'),(27,29,'ماعز','3',NULL,'en','2022-02-01 05:33:41','2022-02-01 05:33:41'),(28,29,'ماعز','3',NULL,'en','2022-02-01 05:34:22','2022-02-01 05:34:22'),(29,30,'نعيمي','3',NULL,'en','2022-02-01 10:59:29','2022-02-01 10:59:29'),(30,31,'برتقال','3',NULL,'en','2022-02-04 17:17:52','2022-02-04 17:17:52'),(31,31,'برتقال','3',NULL,'en','2022-02-04 17:19:19','2022-02-04 17:19:19'),(32,31,'برتقال','3',NULL,'en','2022-02-04 17:21:52','2022-02-04 17:21:52'),(33,31,'برتقال','3',NULL,'en','2022-02-04 17:23:39','2022-02-04 17:23:39'),(34,31,'برتقال','3',NULL,'en','2022-02-04 17:23:54','2022-02-04 17:23:54');
/*!40000 ALTER TABLE `product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int NOT NULL,
  `category_id` int NOT NULL,
  `brand_id` int DEFAULT NULL,
  `photos` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `variant_product` int NOT NULL DEFAULT '0',
  `attributes` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `colors` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `variations` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `todays_deal` int NOT NULL DEFAULT '0',
  `published` int NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `stock_visibility_state` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = On, 0 = Off',
  `featured` int NOT NULL DEFAULT '0',
  `seller_featured` int NOT NULL DEFAULT '0',
  `current_stock` int NOT NULL DEFAULT '0',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int NOT NULL DEFAULT '1',
  `low_stock_quantity` int DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_start_date` int DEFAULT NULL,
  `discount_end_date` int DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'flat_rate',
  `shipping_cost` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_quantity_multiplied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Mutiplied with shipping cost',
  `est_shipping_days` int DEFAULT NULL,
  `num_of_sale` int NOT NULL DEFAULT '0',
  `meta_title` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `meta_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int NOT NULL DEFAULT '0',
  `auction_product` int NOT NULL DEFAULT '0',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_link` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_link_btn` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Buy Now',
  `wholesale_product` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `summary` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_category_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `tags` (`tags`(255)),
  KEY `unit_price` (`unit_price`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (25,'تفاح','admin',9,11,3,'24','23','youtube',NULL,'','<p>تفاح طازج من المزرعة&nbsp;</p>',5.00,NULL,0,'[]','[]','[]',NULL,1,1,1,'quantity',1,1,0,0,'كيلو',1,1,10.00,'amount',1642809600,1643500740,NULL,NULL,'flat_rate','10',0,14,6,'تفاح','تفاح طازج من المزرعة&nbsp;','23',NULL,'tfah-2',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-01-22 20:14:15','2022-01-29 04:10:07',NULL,'2',NULL,NULL),(26,'حري','admin',9,8,1,'12','12','youtube',NULL,'',NULL,700.00,NULL,1,'[\"3\",\"4\",\"5\"]','[{\"attribute_id\":\"3\",\"values\":[\"خروف كامل\",\"أنصاف\",\"أرباع\",\"تقطيع صغير ثلاجة\"]},{\"attribute_id\":\"4\",\"values\":[\"غير مطلوب\",\"الرأس مع السلخ\"]},{\"attribute_id\":\"5\",\"values\":[\"أكياس لحم\",\"أكياس مفرغة من الهواء\"]}]','[]',NULL,1,1,1,'quantity',1,1,0,0,'4',1,1,20.00,'percent',1643414400,1661644740,NULL,NULL,'flat_rate','20',0,2,8,'حري','','12',NULL,'hry',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-01-23 12:17:50','2022-02-04 23:17:37',NULL,'1',NULL,NULL),(28,'خاروف','admin',9,8,1,'5','5','youtube',NULL,'',NULL,0.00,NULL,0,'[]','[]','[]',NULL,0,1,1,'quantity',1,1,0,0,'3',1,1,0.00,'amount',NULL,NULL,NULL,NULL,'free','0',0,NULL,0,'منتج احتبار','','5',NULL,'mntg-ahtbar',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-01-23 14:26:30','2022-02-01 05:42:55',NULL,'1',NULL,NULL),(29,'ماعز','admin',9,8,1,'29','29','youtube',NULL,'بب',NULL,1200.00,NULL,1,'[\"3\",\"4\",\"5\"]','[{\"attribute_id\":\"3\",\"values\":[\"خروف كامل\",\"أنصاف\",\"أرباع\",\"تقطيع صغير ثلاجة\"]},{\"attribute_id\":\"4\",\"values\":[\"غير مطلوب\",\"الرأس مع السلخ\"]},{\"attribute_id\":\"5\",\"values\":[\"أكياس لحم\",\"أكياس مفرغة من الهواء\"]}]','[]',NULL,0,1,1,'quantity',1,1,0,0,'3',1,1,0.00,'amount',1643673600,1643846340,NULL,NULL,'free','0',0,NULL,0,'ماعز','','5',NULL,'maaaz',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-02-01 05:33:41','2022-02-01 05:42:54',NULL,'1',NULL,NULL),(30,'نعيمي','admin',9,8,NULL,'30','30','youtube',NULL,'ا',NULL,850.00,NULL,1,'[\"3\",\"4\",\"5\"]','[{\"attribute_id\":\"3\",\"values\":[\"خروف كامل\",\"أنصاف\",\"أرباع\",\"تقطيع صغير ثلاجة\"]},{\"attribute_id\":\"4\",\"values\":[\"غير مطلوب\",\"الرأس مع السلخ\"]},{\"attribute_id\":\"5\",\"values\":[\"أكياس لحم\",\"أكياس مفرغة من الهواء\"]}]','[]',NULL,0,1,1,'quantity',1,0,0,0,'3',1,1,0.00,'amount',NULL,NULL,NULL,NULL,'free','0',0,NULL,0,'نعيمي','','30',NULL,'naaymy',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-02-01 10:59:29','2022-02-01 10:59:29',NULL,'1',NULL,NULL),(31,'برتقال','admin',9,11,1,'6','6','youtube',NULL,'',NULL,100.00,NULL,0,'[]','[]','[]',NULL,0,1,1,'quantity',1,0,0,0,'3',1,1,50.00,'percent',1643846400,1645315140,NULL,NULL,'flat_rate','10',0,NULL,0,'برتقال','','6',NULL,'brtkal',0.00,NULL,0,0,NULL,NULL,NULL,NULL,0,'2022-02-04 17:17:52','2022-02-04 17:23:54',NULL,'2',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proxypay_payments`
--

DROP TABLE IF EXISTS `proxypay_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proxypay_payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  `amount` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proxypay_payments`
--

LOCK TABLES `proxypay_payments` WRITE;
/*!40000 ALTER TABLE `proxypay_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `proxypay_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `comment` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (3,5,35,5,'ممتاز ما شاء الله تبارك الله',1,0,'2022-01-22 19:28:15','2022-01-22 19:28:15'),(4,25,35,5,'طازج ما شاء الله',0,0,'2022-01-23 12:19:32','2022-01-23 14:35:13');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_translations`
--

DROP TABLE IF EXISTS `role_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_translations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_translations`
--

LOCK TABLES `role_translations` WRITE;
/*!40000 ALTER TABLE `role_translations` DISABLE KEYS */;
INSERT INTO `role_translations` VALUES (1,3,'Delivery','sa','2022-01-17 22:00:58','2022-01-17 22:00:58'),(2,4,'Butcher shop','sa','2022-01-19 20:43:47','2022-01-19 20:43:47');
/*!40000 ALTER TABLE `role_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Manager','[\"1\",\"2\",\"4\"]','2018-10-10 04:39:47','2018-10-10 04:51:37'),(2,'Accountant','[\"2\",\"3\"]','2018-10-10 04:52:09','2018-10-10 04:52:09'),(3,'Delivery','[\"3\"]','2022-01-17 22:00:58','2022-01-17 22:00:58'),(4,'Butcher shop','[\"3\",\"4\",\"5\",\"6\"]','2022-01-19 20:43:47','2022-01-19 20:43:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `searches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
INSERT INTO `searches` VALUES (2,'dcs',1,'2020-03-08 00:29:09','2020-03-08 00:29:09'),(3,'das',3,'2020-03-08 00:29:15','2020-03-08 00:29:50'),(4,'test',3,'2022-01-02 18:01:22','2022-01-02 18:01:28'),(5,'text',19,'2022-01-16 13:44:04','2022-01-25 05:32:24'),(6,'حري',2,'2022-01-22 17:29:47','2022-01-22 17:29:51'),(7,'jf',1,'2022-01-22 20:51:03','2022-01-22 20:51:03');
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_withdraw_requests`
--

DROP TABLE IF EXISTS `seller_withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_withdraw_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` int DEFAULT NULL,
  `viewed` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_withdraw_requests`
--

LOCK TABLES `seller_withdraw_requests` WRITE;
/*!40000 ALTER TABLE `seller_withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `rating` double(3,2) NOT NULL DEFAULT '0.00',
  `num_of_reviews` int NOT NULL DEFAULT '0',
  `num_of_sale` int NOT NULL DEFAULT '0',
  `verification_status` int NOT NULL DEFAULT '0',
  `verification_info` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `cash_on_delivery_status` int NOT NULL DEFAULT '0',
  `admin_to_pay` double(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int DEFAULT NULL,
  `bank_payment_status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `pick_up_point_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `delivery_pickup_latitude` float DEFAULT NULL,
  `delivery_pickup_longitude` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_templates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identifier` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sms_body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `template_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_templates`
--

LOCK TABLES `sms_templates` WRITE;
/*!40000 ALTER TABLE `sms_templates` DISABLE KEYS */;
INSERT INTO `sms_templates` VALUES (1,'phone_number_verification','الرمز المؤقت : [[code]]',NULL,0,'2021-06-07 13:29:22','2022-01-18 10:03:09'),(3,'order_placement','تم إستلام طلبك رقم الطلب :  [[order_code]]',NULL,1,'2021-06-07 13:32:22','2022-01-22 14:42:29'),(4,'delivery_status_change','تم تحديث حالة الشحن الى  [[delivery_status]]   لطلبك رقم  : [[order_code]]',NULL,1,'2021-06-07 13:33:14','2022-01-23 12:05:34'),(5,'payment_status_change','تم تحديث حالة الدفع الى  [[payment_status]]  لطلبك رقم  : [[order_code]]',NULL,1,'2021-06-07 13:35:23','2022-01-23 12:06:04'),(7,'notify_delivery_person','رقم الطلب  : [[code]]                رقم الجوال  : [[phone]]                        العنوان  : [[address_link]]',NULL,1,'2022-01-18 12:38:39','2022-01-18 12:51:31');
/*!40000 ALTER TABLE `sms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,11,3,'2021-12-26 20:46:24','2022-01-17 22:01:11'),(2,38,3,'2022-01-23 14:56:52','2022-01-23 14:56:52');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `image` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `featured` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4124 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (3146,'Al Khobar',191,1,'2021-04-06 01:11:20','2021-12-22 23:20:09',NULL,NULL,NULL,'','','','0'),(3147,'Aseer',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:38',NULL,NULL,NULL,'','','','0'),(3148,'Ash Sharqiyah',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:39',NULL,NULL,NULL,'','','','0'),(3149,'Asir',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(3150,'Central Province',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:40',NULL,NULL,NULL,'','','','0'),(3151,'Eastern Province',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:41',NULL,NULL,NULL,'','','','0'),(3152,'Ha\'il',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:37',NULL,NULL,NULL,'','','','0'),(3153,'Jawf',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:36',NULL,NULL,NULL,'','','','0'),(3154,'Jizan',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(3155,'Makkah',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:34',NULL,NULL,NULL,'','','','0'),(3156,'Najran',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:35',NULL,NULL,NULL,'','','','0'),(3157,'Qasim',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:33',NULL,NULL,NULL,'','','','0'),(3158,'Tabuk',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:32',NULL,NULL,NULL,'','','','0'),(3159,'Western Province',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:31',NULL,NULL,NULL,'','','','0'),(3160,'al-Bahah',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(3161,'al-Hudud-ash-Shamaliyah',191,1,'2021-04-06 01:11:20','2021-12-22 23:20:07',NULL,NULL,NULL,'','','','0'),(3162,'al-Madinah',191,1,'2021-04-06 01:11:20','2021-12-22 23:20:08',NULL,NULL,NULL,'','','','0'),(3163,'ar-Riyad',191,1,'2021-04-06 01:11:20','2021-12-22 23:19:30',NULL,NULL,NULL,'','','','0'),(4122,'1111t',191,1,'2021-12-24 01:30:41','2021-12-24 01:36:08',NULL,'40.7127837','-74.00594130000002','new york','',NULL,'0'),(4123,'112q2',191,1,'2021-12-24 01:34:45','2021-12-24 02:34:19',NULL,'40.7127837','-74.00594130000002','new york','','1','1');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (3,'Tax',1,'2021-03-07 11:45:33','2021-03-07 11:45:33'),(4,'رسوم اضافية',1,'2022-01-04 14:51:13','2022-01-04 14:51:13');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_replies`
--

DROP TABLE IF EXISTS `ticket_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_replies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ticket_id` int NOT NULL,
  `user_id` int NOT NULL,
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_replies`
--

LOCK TABLES `ticket_replies` WRITE;
/*!40000 ALTER TABLE `ticket_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` int NOT NULL,
  `user_id` int NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `files` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int NOT NULL DEFAULT '0',
  `client_viewed` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `additional_content` text,
  `mpesa_request` varchar(255) DEFAULT NULL,
  `mpesa_receipt` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `lang_value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27433 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (3,'كيلو','2022-01-23 02:35:17','2022-01-23 02:35:17'),(4,'كامل','2022-01-23 12:16:08','2022-01-23 12:16:08'),(5,'jiij','2022-01-23 14:58:52','2022-01-23 14:58:52');
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uploads` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_original_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `file_size` int DEFAULT NULL,
  `extension` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (1,'coollogo_com-306073858','uploads/all/mJ7bnUlYbELR7wvYcyXBceCd1XwxrCly3Da6ThCR.png',9,16772,'png','image','2021-12-22 20:55:29','2021-12-22 20:55:29',NULL),(2,'SharedScreenshot','uploads/all/YnHJ9K9Ja0PKOzQD1T8jIqgZ634kOBRCyxxqGocN.jpg',9,48901,'jpg','image','2022-01-01 19:57:55','2022-01-01 19:57:55',NULL),(3,'app_logo (1)','uploads/all/bThR5R1fLl7MN8LvhurwMLynCjRpeyD7Er51dnkb.png',9,132552,'png','image','2022-01-02 06:03:22','2022-01-02 06:03:22',NULL),(4,NULL,'uploads/all/1000000000020220102175646.jpg',12,409913,'jpg','image','2022-01-02 17:56:46','2022-01-02 17:56:46',NULL),(5,'sheep-wide','uploads/all/t5I1OlU49RaGbu7Z3Ih6nCQo6kMiPer2jRk5qdy3.jpg',9,106533,'jpg','image','2022-01-02 20:07:45','2022-01-02 20:07:45',NULL),(6,'istockphoto-1203599923-170667a','uploads/all/33EunybQRXh1fJXw7hHj875cI3U4W6bqstYePyrJ.jpg',9,169791,'jpg','image','2022-01-02 20:09:23','2022-01-02 20:09:23',NULL),(7,'86116','uploads/all/AyDpaHES3TLkTGf8w5jZ42DS608KPH4pePeVpfYY.jpg',9,35328,'jpg','image','2022-01-02 20:14:19','2022-01-02 20:14:19',NULL),(8,'الفرق-بين-النعيمي-والنجدي-2-700x629','uploads/all/Duo9B1YGbwozVhGBkaO55jWzDydU38CSlFml1pal.jpg',9,152573,'jpeg','image','2022-01-02 20:14:20','2022-01-02 20:14:20',NULL),(9,'حراج-غنم','uploads/all/pMmtplXZaUHew35pT8vWY8YBsXfuDl5HJzPLTzxP.webp',9,154080,'webp','image','2022-01-02 20:14:21','2022-01-02 20:14:21',NULL),(10,'fad3ff53-ca94-482d-b189-294d4ee7427c','uploads/all/MQvwvTa2SKiNyD9fND6KW3jRN70OD1eCLB9aRLPM.jpg',9,102736,'jpeg','image','2022-01-02 20:14:21','2022-01-02 20:14:21',NULL),(11,'610154d8-34fc-4f97-a70e-98079df73d0a','uploads/all/GA9Gyv9CgxgG09PekL9KasZU86BLCTHNm07No5DO.jpg',9,49004,'jpeg','image','2022-01-02 20:14:22','2022-01-02 20:14:22',NULL),(12,'a16fd1a7-4b5d-47c0-b30f-6d58247a69c0','uploads/all/DQm4KoX3FkODvHmt2UnmEsyLpQrV6a4vFqMwk3Pu.jpg',9,68570,'jpeg','image','2022-01-02 20:14:22','2022-01-02 20:14:22',NULL),(13,'تنزيل','uploads/all/FQSaH1i3kgCEt2mcn13KDIGSNX4Ed5fQqPbC9514.png',9,22792,'png','image','2022-01-02 21:02:03','2022-01-02 21:02:03',NULL),(14,'app_logo (1)','uploads/all/7Fu1f9wgW22HoNpmwEK28g1l6FJzOZhZWZLl8wo5.png',9,132552,'png','image','2022-01-02 23:38:34','2022-01-02 23:38:34',NULL),(15,'Screenshot_٢٠٢٢٠١٠١-١٣٢٨٤٥_AmAhmed','uploads/all/Ofg89XzsiVKANxYRbMCvJWYWLgUAWKafHOe3f8Nq.jpg',9,24493,'jpg','image','2022-01-03 12:05:29','2022-01-03 12:05:29',NULL),(16,'2019_12_23_22_53_44_991','uploads/all/zeOgVEOuIpUWumLpdFkgzup4kgLggPIXyNjfDBch.jpg',9,199627,'jpg','image','2022-01-03 13:31:39','2022-01-03 13:31:39',NULL),(17,'things-to-do-in-jeddah-1200x900','uploads/all/EFNE9nYUEClhwOXRt76NpehGbDncNOJ5BeeyK6Ef.jpg',9,271849,'jpg','image','2022-01-17 21:20:53','2022-01-17 21:20:53',NULL),(18,'photo-1551041777-ed277b8dd348','uploads/all/e7hWuVjWzHEZSEobl10a1bxdAW2BC4p5SnupQQpT.png',9,917114,'png','image','2022-01-19 19:09:33','2022-01-19 19:09:33',NULL),(19,'photo-1580397999469-47471c14c842-_1_-min','uploads/all/2aSrUyMMV7FWDZq4l57ZdJlN6i5o4i4Qq1YYE8OA.png',9,1295394,'png','image','2022-01-19 19:11:59','2022-01-19 19:11:59',NULL),(20,'photo-1565552645632-d725f8bfc19a_1-min','uploads/all/K9ZFRevgcLKWefOdMtkaU7vGzl0OBquuB8rhVHvP.png',9,1178962,'png','image','2022-01-19 19:12:39','2022-01-19 19:12:39',NULL),(21,'Y2TfT8DvmHLuFtWWGx9NwctmHSGKfL0STXktPe7Q','uploads/all/yLMNdY2qxC69UAKkIxM2r09yzNfO81lfGhSPwyEb.png',9,504318,'png','image','2022-01-22 08:42:45','2022-01-22 08:42:54','2022-01-22 08:42:54'),(22,'banner-template-with-barbeque-theme_23-2148522380','uploads/all/ajf2gTZNV3rmMldkMFigIc2LigSFM7NlG0vo3aRG.jpg',9,69487,'jpg','image','2022-01-22 14:53:51','2022-01-22 14:53:51',NULL),(23,'119024577-fresh-fruits-assorted-fruits-colorful-background-color-range','uploads/all/22N75iJUv8vwTR7IiGoYPPARDWIpBzYL6W9QvvKu.webp',9,166298,'webp','image','2022-01-22 19:40:21','2022-01-22 19:40:21',NULL),(24,'fruits-6044263_960_720','uploads/all/CF4u0Vy8TcyMUMugW1Kq1Tkmq2Outn6ttz11NUSQ.jpg',9,213816,'jpg','image','2022-01-22 19:40:21','2022-01-22 19:40:21',NULL),(25,'DSC_1144+copy','uploads/all/042nsk1Jizfy83j3PACVDm4XN4mI7vmaVP9L4QUN.jpg',9,135640,'jpg','image','2022-01-23 00:21:07','2022-01-23 00:21:07',NULL),(26,'depositphotos_46530711-stock-illustration-fruits-banner','uploads/all/wS6P0ZyzkCQsCbEW4ESfe7wlbpx0DhyNcmugZg8i.jpg',9,150230,'jpg','image','2022-01-23 00:21:08','2022-01-23 00:21:08',NULL),(27,'______+__________-1','uploads/all/fI7DYDKrkdoZMDBGsIDSXNeG8JgKuf8pQu8RZZSq.jpg',9,321717,'jpg','image','2022-01-23 00:21:10','2022-01-23 00:21:10',NULL),(28,'f (1)','uploads/all/TJYpcMIqP4RXkniV0nheinpOJvFY19GX3DVhfulK.png',9,716749,'png','image','2022-01-24 05:44:58','2022-01-24 05:44:58',NULL),(29,'ccc10','uploads/all/meVEhAQJe3qdYJL8pCDfCz0CX6xGWx8MXdG6Tebx.png',9,319264,'png','image','2022-02-01 05:32:47','2022-02-01 05:32:47',NULL),(30,'fad3ff53-ca94-482d-b189-294d4ee7427c','uploads/all/AURoWlvNSVEn6whZxlPI1P2H58aykQ4jBWOA0yjE.jpg',9,102736,'jpeg','image','2022-02-01 10:57:43','2022-02-01 10:57:43',NULL);
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `referred_by` int DEFAULT NULL,
  `provider_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `new_email_verificiation_code` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `password` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT '0.00',
  `banned` tinyint NOT NULL DEFAULT '0',
  `referral_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int DEFAULT NULL,
  `remaining_uploads` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,NULL,NULL,'customer','Mr. Customer','customer@example.com','2018-12-11 18:00:00','867166',NULL,'$2y$10$52hpMlvMK6u8nK2F47j2iuwK0RTtuxSK4fbcqy4P4X2OQt6iNis1.','9ndcz5o7xgnuxctJIbvUQcP41QKmgnWCc7JDSnWdHOvipOP2AijpamCNafEe',NULL,'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50',NULL,'Demo address','US',NULL,'Demo city','1234',NULL,0.00,0,'8zJTyXTlTT',NULL,NULL,'2018-10-07 04:42:57','2022-01-22 15:22:16'),(9,NULL,NULL,'admin','admin','admin@admin.com','2021-12-22 20:12:17',NULL,NULL,'$2y$10$/Kn/mOZkvBWh0PKbjgUtqOgVn7IczKw6x47KKyfxR9QSK8VR/1YWW','BNaWvZzNQWSf6LBIZVoac6VSeKVpTV1yGdXf8DG7J2z35rF6jnCtyfEYiXAk',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0,NULL,NULL,0,'2021-12-22 20:31:17','2021-12-22 20:31:17'),(10,NULL,NULL,'customer','user1','user1@test.com','2021-12-22 20:12:49',NULL,NULL,'$2y$10$0Mt6wTyMIhk7NLRpV6JkTedDG/zlqlsXoHTqf3VatOWI8bI4HJg/m',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0,NULL,NULL,0,'2021-12-22 20:59:49','2021-12-22 20:59:49'),(11,NULL,NULL,'staff','store_m_1','store_m_1@store_m_1.com',NULL,'813432',NULL,'$2y$10$SWyTfZZstUQNEiAWtprHBe3s9Z8brkm5B5zQfaMMGWd9elSYUq8Gu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123',0.00,0,NULL,NULL,0,'2021-12-26 20:46:24','2022-01-25 05:28:41'),(13,NULL,NULL,'customer','k','k@k.com','2022-01-09 03:01:10','320272',NULL,'$2y$10$oncBBfZwNp30F7W1IKM16.rzv/D/FUZLutKs.Oj9g6QYHN6SjKG2q',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.00,0,NULL,NULL,0,'2022-01-09 03:33:10','2022-01-09 03:33:10'),(18,NULL,NULL,'customer','',NULL,NULL,'568896',NULL,'$2y$10$lfRyULE5o9GK4IZ/MDvTmuBXc/O12ZvCvav3bWYtmEQDEkO2cCfr2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+355',0.00,0,NULL,NULL,0,'2022-01-16 13:45:33','2022-01-25 05:28:39'),(20,NULL,NULL,'customer','',NULL,NULL,'258237',NULL,'$2y$10$L5G96aZ5o1n1NcCJJ/YIl.48H.VUThAbjGD70pGMDzZXZxB5KHtCS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9661111112222',0.00,0,NULL,NULL,0,'2022-01-18 08:37:28','2022-01-18 08:37:28'),(21,NULL,NULL,'customer','',NULL,NULL,'305167',NULL,'$2y$10$JWm7KOtjp0Cy8.ZkiwSKFOEpBEM4o9v/D.whiqn0YqkodI8wF3jQW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+96611111122223',0.00,0,NULL,NULL,0,'2022-01-18 08:37:39','2022-01-18 08:37:39'),(22,NULL,NULL,'customer','',NULL,NULL,'633437',NULL,'$2y$10$8vFCixZP5.DJeLYtkRWy6OzTTZrgnpYeXkZvdCneOcMcJzWjMm4D6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966558888888',0.00,0,NULL,NULL,0,'2022-01-18 10:00:16','2022-01-18 10:00:16'),(23,NULL,NULL,'customer','',NULL,NULL,'107719',NULL,'$2y$10$j170/I/B/E97zl1rUZZf4uwLRLegJadFxZR0Bd.NNQfmSeaB89eX.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966558888882',0.00,0,NULL,NULL,0,'2022-01-18 10:00:32','2022-01-18 10:00:32'),(24,NULL,NULL,'customer','',NULL,NULL,'613148',NULL,'$2y$10$oPNRJTAcCYmycvltKraDdOZAAungsheo44WsK/qOUjLOx5.tJ./4.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9661111111',0.00,0,NULL,NULL,0,'2022-01-18 10:02:26','2022-01-18 10:02:26'),(25,NULL,NULL,'customer','',NULL,NULL,'540488',NULL,'$2y$10$DvadYHF7TzpPzOD8l8.cFOzp/1u2L6GH9urBzxnSnBXCsw/N6HIwC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9661111112',0.00,0,NULL,NULL,0,'2022-01-18 10:03:29','2022-01-18 10:03:29'),(26,NULL,NULL,'customer','',NULL,NULL,'879258',NULL,'$2y$10$31Z.QjswNvelFsw5Y0mazOMC3UgZw3sG/DtWdNtNe87ICxtcGtj1C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9662222222',0.00,0,NULL,NULL,0,'2022-01-18 10:03:46','2022-01-18 10:03:46'),(27,NULL,NULL,'customer','',NULL,NULL,'755274',NULL,'$2y$10$mIu5ALp6LwLBkubIUxcI.uQQQtfxVKhrZwgZp0QMcdMiRZxTdMSGW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9663333333',0.00,0,NULL,NULL,0,'2022-01-18 10:04:29','2022-01-18 10:04:29'),(28,NULL,NULL,'customer','',NULL,NULL,'463611',NULL,'$2y$10$rLJCjVizw9Tc2Em.8Vo4/.EYA8N7a1NuvW06QISrWPdwbxdK1YcQ2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9664444444',0.00,0,NULL,NULL,0,'2022-01-18 10:05:28','2022-01-18 10:05:28'),(29,NULL,NULL,'customer','',NULL,NULL,'737235',NULL,'$2y$10$iYVGe2u6y47GgfUkwRmkmeT4HXEicuWVWBjOWjIH4V2CtIyAJQkKi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9668888888',0.00,0,NULL,NULL,0,'2022-01-18 10:07:04','2022-01-18 10:07:04'),(30,NULL,NULL,'customer','',NULL,NULL,'365616',NULL,'$2y$10$U2LfimH56YS5S0b4iE7DgONPzQHKsqgiB/Z2aYVkU38/jV/RWmohu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9668888889',0.00,0,NULL,NULL,0,'2022-01-18 10:09:31','2022-01-18 10:09:31'),(31,NULL,NULL,'customer','',NULL,'2022-01-18 10:10:10',NULL,NULL,'$2y$10$axjjCzlOWWNqoeLSO5Tp0O1Uddnw.Ljqr6RCabx7hi/ae9tcxFAFK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+9668888885',0.00,0,NULL,NULL,0,'2022-01-18 10:09:52','2022-01-18 10:10:10'),(32,NULL,NULL,'customer','',NULL,'2022-01-18 10:31:47',NULL,NULL,'$2y$10$2./XHt6yZLWs3xmgdeMtQOrqYN2MJlK5XXetqWg44AvCrC7pFVOUW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966333331212',0.00,0,NULL,NULL,0,'2022-01-18 10:12:26','2022-01-18 10:31:47'),(35,NULL,NULL,'customer','وليد',NULL,'2022-01-22 03:01:00','971828',NULL,'$2y$10$R4gOaFBzG6rtbnanoWsqG.lYN3zOxU2/XmQCS4H.Wyet6sgO9GVR.',NULL,'cJ8FF5adQM6lRcvhGwp48y:APA91bHUNSujqbHiLrNIgKcjuiwUxcsyN6gllo_XEKYhYu39FGvigycb9FAfYvkbMgopzLYcjSglc-fml6f-aXg2daTEsW0zRa4fCYf4_D54nc4KpcKMH_t0AQzH4QYARfyhSfbvZHDs',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966537266754',0.00,0,NULL,NULL,0,'2022-01-22 15:38:00','2022-02-02 13:42:06'),(36,NULL,NULL,'customer','',NULL,'2022-01-22 04:01:39','424582',NULL,'$2y$10$kxzOJsAR52woiYFyvuFgMedBKeCwn170.aJvsPXDtrMJUD81r/rma',NULL,'ey752zeTpErTsNNYgIH2hz:APA91bEGqvUJJj3_kCt55gU4I3sGU1C4oGko-dyYcwl7iO_iEbdQIPbRi4Y00IpaIL1SXPUFXyskr_BRSM2SJVsmhIKWQUJKXAL0PgBintC2fQnqD7BsYpOYuV05uVgwqIHBig7H0hGH',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966552176584',0.00,0,NULL,NULL,0,'2022-01-22 16:11:39','2022-02-02 13:31:00'),(37,NULL,NULL,'customer','',NULL,'2022-01-22 05:01:29','206254',NULL,'$2y$10$qJ1WzRUKUMHi4d5qGhOqa.Rc5tRErZu9EaYnuWojyHxE9A1UF6tka',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+96653766754',0.00,0,NULL,NULL,0,'2022-01-22 17:34:29','2022-01-22 17:34:30'),(38,NULL,NULL,'staff','عمر حسن','dev@test.com',NULL,NULL,NULL,'$2y$10$HyeojzVLe3Sa95Q1xK.y3ujSaPUi0/8.VFl8jepT7g6Skl2Sh.rPW',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'9656565656',0.00,0,NULL,NULL,0,'2022-01-23 14:56:52','2022-01-23 14:56:52'),(39,NULL,NULL,'customer','',NULL,'2022-01-24 05:01:02','223207',NULL,'$2y$10$Uo.nbhJBaF0AcG/P67OkbeqIyL42u98CZ78lLpWbdixuR04XJjFpK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966',0.00,0,NULL,NULL,0,'2022-01-24 05:59:02','2022-01-25 05:26:56'),(40,NULL,NULL,'customer','',NULL,'2022-01-24 05:01:45','136111',NULL,'$2y$10$Q5bou9THuPDnvVxgLFxMduQkZkWeyIMaoJJZlhbEShD89VKLX1BGC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+213',0.00,0,NULL,NULL,0,'2022-01-24 05:59:45','2022-01-25 05:29:03'),(41,NULL,NULL,'customer','',NULL,'2022-01-24 06:01:02','442634',NULL,'$2y$10$vcBgW1DQD4zFfwBM2Sevyuffz2B1PM8.MpWomUzqDKeqC0dV1i0..',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+93',0.00,0,NULL,NULL,0,'2022-01-24 06:01:02','2022-01-25 05:28:07'),(42,NULL,NULL,'customer','',NULL,'2022-01-24 06:01:08','752254',NULL,'$2y$10$g8P9T0ORGJXeBIFb1BcZL.MfzbuLkZEKlIeyhwn4syfNV3WuXUQh6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+244',0.00,0,NULL,NULL,0,'2022-01-24 06:01:08','2022-01-25 05:28:24'),(43,NULL,NULL,'customer','',NULL,'2022-01-24 06:01:09','174307',NULL,'$2y$10$K050QGDWxanPSBz8OT8iTOQsgr.na1F2AjBkGsd2ppBgSI3S0KXCG',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+358',0.00,0,NULL,NULL,0,'2022-01-24 06:02:09','2022-01-24 06:18:06'),(44,NULL,NULL,'customer','',NULL,'2022-01-24 06:01:10','943576',NULL,'$2y$10$Y6np4I9ydNz3Di8wSgHY.O7.I.cI8ieVl2oVPVj030E363kf2lKFK',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+1684',0.00,0,NULL,NULL,0,'2022-01-24 06:04:10','2022-01-25 05:26:22'),(45,NULL,NULL,'customer','',NULL,'2022-01-25 05:01:39','878480',NULL,'$2y$10$laEQJaSlKRWeIwJyNtWjHObROg4RNo6ihxAsVJkbXaQaF0kqlpole',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+376',0.00,0,NULL,NULL,0,'2022-01-25 05:27:39','2022-01-25 05:27:42'),(46,NULL,NULL,'customer','',NULL,'2022-01-25 05:01:17','998400',NULL,'$2y$10$947YazZRPgcLRKnRAWqvL.GCrEoAbDx0Fzgex9eLU/1wdx3bUGTY.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+1264',0.00,0,NULL,NULL,0,'2022-01-25 05:28:17','2022-01-25 05:28:17'),(47,NULL,NULL,'customer','',NULL,'2022-02-04 11:02:28','646188',NULL,'$2y$10$N2pCKDmbGpY1kQiO0bq7per39SjBNNW6mV0iRayXPokgvH0AEAKZ6',NULL,'cXw3UXzTA0bimp59ZstphA:APA91bFLeDT5-sYG6l6fWmlKOhfmfT6hKuTxjlIBjUYF5mwv4TlMOzprUcjJ5fN802UgTYgxj2c89_oh8AZfv6RxcmacevKyGEAcfeef4dmA4f4iWZILL9vVhSh1C9krdgTis4ThqY1f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'+966568042000',0.00,0,NULL,NULL,0,'2022-02-04 23:15:28','2022-02-04 23:15:43');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallets`
--

DROP TABLE IF EXISTS `wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallets`
--

LOCK TABLES `wallets` WRITE;
/*!40000 ALTER TABLE `wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (1,12,1,'2022-01-02 17:49:07','2022-01-02 17:49:07'),(2,12,2,'2022-01-02 17:57:53','2022-01-02 17:57:53'),(3,12,19,'2022-01-04 15:00:47','2022-01-04 15:00:47'),(4,33,19,'2022-01-19 17:48:12','2022-01-19 17:48:12'),(5,35,19,'2022-01-22 17:45:07','2022-01-22 17:45:07'),(6,35,5,'2022-01-22 19:28:31','2022-01-22 19:28:31'),(7,35,20,'2022-01-22 19:29:10','2022-01-22 19:29:10'),(8,35,25,'2022-01-23 12:19:41','2022-01-23 12:19:41'),(9,0,26,'2022-01-24 06:17:30','2022-01-24 06:17:30');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-05  9:21:40