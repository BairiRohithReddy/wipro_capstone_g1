-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FKg5uhi8vpsuy0lgloxk2h4w5o6` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1),(54),(64),(89),(93);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `id` varchar(255) NOT NULL,
  `status` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('getit',0);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (104),(104),(104),(104),(104);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_main`
--

DROP TABLE IF EXISTS `order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_main` (
  `order_id` bigint NOT NULL,
  `buyer_address` varchar(255) DEFAULT NULL,
  `buyer_email` varchar(255) DEFAULT NULL,
  `buyer_name` varchar(255) DEFAULT NULL,
  `buyer_phone` varchar(255) DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `order_amount` decimal(19,2) NOT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_main`
--

LOCK TABLES `order_main` WRITE;
/*!40000 ALTER TABLE `order_main` DISABLE KEYS */;
INSERT INTO `order_main` VALUES (63,'nspt','rohith@gmail.com','rohith','0987654321','2022-08-24 08:47:24.540758',5000.00,2,'2022-08-24 12:31:56.148302'),(69,'nspt','rohith@gmail.com','rohith','9876543210','2022-08-24 09:09:18.715478',35.00,2,'2022-08-24 12:31:54.230690'),(99,'gandipet','rohithbairi16@gmail.com','rohith reddy','9381807932','2022-08-25 08:26:21.556948',5000.00,0,'2022-08-25 08:26:21.558174'),(101,'gandipet','rohithbairi16@gmail.com','rohith reddy','9381807932','2022-08-25 08:26:27.457090',45.00,0,'2022-08-25 08:26:27.457090'),(103,'gandipet','rohithbairi16@gmail.com','rohith reddy','9381807932','2022-08-25 08:26:38.894337',52999.00,0,'2022-08-25 08:26:38.894337');
/*!40000 ALTER TABLE `order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_type` int DEFAULT NULL,
  `create_time` datetime(6) DEFAULT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `UK_6kq6iveuim6wd90cxo5bksumw` (`category_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1001,'Shop Living Room',0,'2022-03-09 23:03:26.000000','2022-03-10 00:15:27.000000'),(1002,'Shop Bed Room',1,'2022-03-10 00:26:05.000000','2022-03-10 00:26:05.000000'),(1003,'Shop Dining Room',2,'2022-03-10 00:15:02.000000','2022-03-10 00:15:21.000000'),(1004,'Shop Study Room',3,'2022-03-10 01:01:09.000000','2022-03-10 01:01:09.000000'),(1005,'Home Electronics',4,'2022-03-10 00:26:05.000000','2022-03-10 00:26:05.000000');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_in_order`
--

DROP TABLE IF EXISTS `product_in_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_in_order` (
  `id` bigint NOT NULL,
  `category_type` int NOT NULL,
  `count` int DEFAULT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_stock` int DEFAULT NULL,
  `cart_user_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhnivo3fl2qtco3ulm4mq0mbr5` (`cart_user_id`),
  KEY `FKt0sfj3ffasrift1c4lv3ra85e` (`order_id`),
  CONSTRAINT `FKhnivo3fl2qtco3ulm4mq0mbr5` FOREIGN KEY (`cart_user_id`) REFERENCES `cart` (`user_id`),
  CONSTRAINT `FKt0sfj3ffasrift1c4lv3ra85e` FOREIGN KEY (`order_id`) REFERENCES `order_main` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_in_order`
--

LOCK TABLES `product_in_order` WRITE;
/*!40000 ALTER TABLE `product_in_order` DISABLE KEYS */;
INSERT INTO `product_in_order` VALUES (90,3,2,'Books for learning C/C++','https://imgv2-1-f.scribdassets.com/img/word_document/475785266/original/08b4f44730/1602746426?v=1','B00022','Basics of C',35.00,30,NULL,NULL),(91,3,1,'Books for learning C++','https://cdn-images-1.medium.com/max/1600/0*p1V0gS1AjZiZe39m.jpg','B00021','C ++',45.00,25,NULL,NULL),(92,3,1,'Books for learning C/C++','https://imgv2-1-f.scribdassets.com/img/word_document/475785266/original/08b4f44730/1602746426?v=1','B00022','Basics of C',35.00,30,NULL,NULL),(96,2,1,'Wooden table 3/4','https://tse1.mm.bing.net/th?id=OIP.n33iLb9hgFDdb6fpIaX1zQHaGq&pid=Api&P=0','SDR01','Dining table',899.00,199,NULL,NULL),(97,3,1,'Acer Aspire 5 Thin & Light Laptop Intel Core i5 11th Gen (Windows 11 Home/MS Office /8GB/512GB SSD) A514-54 with 35.5cm (14\") Full HD Display with Backlit Keyboard/1.45 kgs','https://tse3.mm.bing.net/th?id=OIP.X8KU3mfmKx2t8wS2lDxYbAHaHa&pid=Api&P=0','SSR01','Laptop',52999.00,22,NULL,NULL),(98,0,1,'Tables That Do More Than Serve!','https://tse4.mm.bing.net/th?id=OIP.AKD3JVe64I5LJhxJPNmluAHaHa&pid=Api&P=0','SLR02','Coffee tables',5000.00,21,NULL,99),(100,3,1,'Cloud for Dummies','https://media.wiley.com/product_data/coverImage300/00/11194879/1119487900.jpg','B00121','Cloud-Beginners',45.00,25,NULL,101),(102,3,1,'Acer Aspire 5 Thin & Light Laptop Intel Core i5 11th Gen (Windows 11 Home/MS Office /8GB/512GB SSD) A514-54 with 35.5cm (14\") Full HD Display with Backlit Keyboard/1.45 kgs','https://tse3.mm.bing.net/th?id=OIP.X8KU3mfmKx2t8wS2lDxYbAHaHa&pid=Api&P=0','SSR01','Laptop',52999.00,22,NULL,103);
/*!40000 ALTER TABLE `product_in_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_info`
--

DROP TABLE IF EXISTS `product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_info` (
  `product_id` varchar(255) NOT NULL,
  `category_type` int DEFAULT '0',
  `create_time` datetime(6) DEFAULT NULL,
  `product_description` varchar(255) DEFAULT NULL,
  `product_icon` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(19,2) NOT NULL,
  `product_status` int DEFAULT '0',
  `product_stock` int NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_info`
--

LOCK TABLES `product_info` WRITE;
/*!40000 ALTER TABLE `product_info` DISABLE KEYS */;
INSERT INTO `product_info` VALUES ('B00021',3,NULL,'Books for learning C++','https://cdn-images-1.medium.com/max/1600/0*p1V0gS1AjZiZe39m.jpg','C ++',45.00,0,25,'2022-08-20 06:23:12.812000'),('B00022',3,NULL,'Books for learning C/C++','https://imgv2-1-f.scribdassets.com/img/word_document/475785266/original/08b4f44730/1602746426?v=1','Basics of C',35.00,0,30,'2022-08-24 12:31:54.246000'),('B00121',3,NULL,'Cloud for Dummies','https://media.wiley.com/product_data/coverImage300/00/11194879/1119487900.jpg','Cloud-Beginners',45.00,0,24,'2022-08-25 08:26:27.462000'),('B00122',3,NULL,'Kubernetes for Dummies','https://m.media-amazon.com/images/I/41azDS-7v7L.jpg','Kubernetes-Beginners',35.00,0,30,'2022-08-20 06:23:39.296000'),('HE01',3,'2022-03-10 10:37:39.000000','Longway Creta 1200mm/48 inch with remote High Speed Anti-dust Decorative 5 Star Rated Ceiling Fan 400 RPM','https://tse4.mm.bing.net/th?id=OIP.26VhTDV4Q4F6OLw1k1NCDAHaDh&pid=Api&P=0','Fan',1299.00,1,200,'2022-08-20 10:56:38.453000'),('HE02',4,'2022-03-10 10:37:39.000000','Samsungs  Refrigerator','https://tse3.mm.bing.net/th?id=OIP.XvBY6yekVCKY88x5i1SBEQHaNX&pid=Api&P=0','Fridge',12500.00,1,200,'2022-03-10 19:42:02.000000'),('HE03',4,'2022-03-10 10:37:39.000000','Big Capacity(12kg) Energy Efficiency (A+++-40%) ,6 Motion Direct Drive, Inverter Direct Drive, (Less noise andvibration, 10-Year MotorWarranty, 22-Year VDE Certification),TrueSteam™,Smart Diagnosis™','https://tse4.mm.bing.net/th?id=OIP.PeR_xjZrSPWPQWrSSA59PAHaJ4&pid=Api&P=0','Washing machine',10000.00,1,200,'2022-03-10 19:42:02.000000'),('SBR01',1,'2022-03-10 12:11:51.000000','Adolph Bed With Side Storage','https://tse1.mm.bing.net/th?id=OIP.JMGWpPFhkjtIcreGJYcGxwHaHa&pid=Api&P=0','Bed',12000.00,0,108,'2022-07-09 14:36:20.000000'),('SBR02',1,'2022-03-10 06:44:25.000000','Wakefit Orthopaedic Memory Foam Mattress (78*72*6inch) / (198.1*182.9*15.2cm)','https://tse3.mm.bing.net/th?id=OIP.1YKCt2aJdwM6Vz3A45UOwgHaF7&pid=Api&P=0','Mattress',9999.00,0,6,'2022-07-10 13:43:23.000000'),('SBR03',1,'2022-03-10 10:39:29.000000','cotton check silk bedsheet ,6ft x 6ft','https://tse3.mm.bing.net/th?id=OIP.yP2Ticn2ui6XoEVWqucOwwHaIJ&pid=Api&P=0','Bed Sheets',999.00,0,199,'2022-03-10 10:39:32.000000'),('SDR01',2,'2022-03-10 10:40:35.000000','Wooden table 3/4','https://tse1.mm.bing.net/th?id=OIP.n33iLb9hgFDdb6fpIaX1zQHaGq&pid=Api&P=0','Dining table',899.00,0,199,'2022-03-10 10:40:35.000000'),('SDR02',2,'2022-03-10 12:08:17.000000','floral prited cloth','https://tse4.mm.bing.net/th?id=OIP.V5MHvJI5WLVWJ3TVdyao0AHaHa&pid=Api&P=0','Table cloth',566.00,0,200,'2022-07-10 13:43:23.000000'),('SDR03',2,'2022-03-10 12:15:05.000000','2 inches thick mat with hot pot holder','https://tse1.mm.bing.net/th?id=OIP.ol95C1SFW4RLCtTCml977QHaIp&pid=Api&P=0','Dining table mat',399.00,0,57,'2022-03-10 12:15:10.000000'),('SLR01',0,'2022-03-10 10:37:39.000000','Cherish each moment in comfort','https://tse2.mm.bing.net/th?id=OIP.X8FEwL570QhiCqkiT043vwHaFj&pid=Api&P=0','Two-seat sofas',20000.00,1,200,'2022-03-10 19:42:02.000000'),('SLR02',0,'2022-03-10 12:12:46.000000','Tables That Do More Than Serve!','https://tse4.mm.bing.net/th?id=OIP.AKD3JVe64I5LJhxJPNmluAHaHa&pid=Api&P=0','Coffee tables',5000.00,0,20,'2022-08-25 08:26:21.564000'),('SLR03',0,'2022-03-10 06:51:03.000000','Bring the cinema home','https://tse4.mm.bing.net/th?id=OIP.ZqCj8_mF04Rd_AeGIDNbMAHaHa&pid=Api&P=0','TV & media storage',15000.00,0,100,'2018-03-10 12:04:13.000000'),('SLR04',0,'2022-03-10 10:35:43.000000','Curtains to help you sleep better','https://tse4.mm.bing.net/th?id=OIP.ZvLiX_YTfLn0GRIYUrzQ0wHaHa&pid=Api&P=0','Curtains',2000.00,0,194,'2022-07-10 13:50:11.000000'),('SLR05',0,'2022-03-10 12:09:41.000000','Decorative lighting','https://tse2.mm.bing.net/th?id=OIP.ok6Nc1eGAx1nB__C-bkL3QHaGl&pid=Api&P=0','LED lanterns',10.00,0,109,'2022-03-10 12:09:41.000000'),('SSR01',3,'2022-03-10 12:16:44.000000','Acer Aspire 5 Thin & Light Laptop Intel Core i5 11th Gen (Windows 11 Home/MS Office /8GB/512GB SSD) A514-54 with 35.5cm (14\") Full HD Display with Backlit Keyboard/1.45 kgs','https://tse3.mm.bing.net/th?id=OIP.X8KU3mfmKx2t8wS2lDxYbAHaHa&pid=Api&P=0','Laptop',52999.00,0,21,'2022-08-25 08:26:38.901000'),('SSR02',3,'2022-03-10 10:37:39.000000','Twain Free Standing Engineered Wood Study Table In Cherry Melamine Finish','https://tse3.mm.bing.net/th?id=OIP.wXeqa0e-JShEiBes5gc8CAHaHa&pid=Api&P=0','Study Table',799.00,1,200,'2022-03-10 19:42:02.000000'),('SSR03',3,'2022-03-10 10:37:39.000000','Linsay Ergonomic Chair','https://tse1.mm.bing.net/th?id=OIP.A0Ki5QeWEeqSt4IHG9QxGgHaHh&pid=Api&P=0','Study Chair',20099.00,1,200,'2022-03-10 19:42:02.000000'),('SSR04',3,'2022-03-10 10:37:39.000000','Solid wooden book shelf','https://tse4.mm.bing.net/th?id=OIP.35yXv1D0LfXctTUTKw6AmwHaHa&pid=Api&P=0','Bookshelves',10000.00,1,200,'2022-03-10 19:42:02.000000');
/*!40000 ALTER TABLE `product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `active` bit(1) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sx468g52bpetvlad2j9y0lptc` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,_binary '','gandipet','brohithreddy.160301@gmail.com','admin','$2a$10$tVB9G2bflxpBCpLRfgbSuuXRzxP0aUD0xeiSb//icbMjizVNqrFUm','09381807932','ROLE_MANAGER'),(89,_binary '','gandipet','rohithbairi16@gmail.com','rohith reddy','$2a$10$8R9QWvsPA2jSFhy5pPPK/e7cJrTzPpI.0XTLm.K0jh/TmOyf70YlW','9381807932','ROLE_CUSTOMER'),(93,_binary '','gandipet, CBES boys Hostel','rohith@gmail.com','rohith','$2a$10$cZw3CJ69uH48.Kw6SdOQSutMnmnvhsJUyLkHEDflE8pVJlXysYDry','9381807932','ROLE_CUSTOMER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` bigint NOT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKklfv8svemdde0od1rs6mgstb` (`product_id`),
  KEY `FKtrd6335blsefl2gxpb8lr0gr7` (`user_id`),
  CONSTRAINT `FKklfv8svemdde0od1rs6mgstb` FOREIGN KEY (`product_id`) REFERENCES `product_info` (`product_id`),
  CONSTRAINT `FKtrd6335blsefl2gxpb8lr0gr7` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (94,'2022-08-25 08:20:39.042000','B00021',89),(95,'2022-08-25 08:20:49.421000','B00121',89);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-25 20:01:48
