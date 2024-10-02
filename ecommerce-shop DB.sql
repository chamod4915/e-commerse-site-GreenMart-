CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.35

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
  `cartId` int NOT NULL AUTO_INCREMENT,
  `productId` int DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryTitle` varchar(50) DEFAULT NULL,
  `categoryDescription` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (4,'Meat Items','Fresh Meat that is Daily Update'),(5,'Fruits and Vegetables','All are Fresh Items'),(8,'Beverages','bevereges item'),(9,'Dairy','Dairy product hehe'),(10,'Baby Product','baby care'),(11,'Household','Household items'),(12,'Food Cupboard','cupboard product'),(13,'Pet Products','Pet Products'),(14,'Health & Beauty','Health and Beauty products');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `orderDate` varchar(50) DEFAULT NULL,
  `deliveryDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,3,1,451,'2023-12-22','2023-12-28'),(2,3,17,2,720,'2023-12-22','2023-12-28'),(3,2,23,3,969,'2023-12-22','2023-12-28'),(4,2,20,1,356,'2023-12-25','2023-12-31'),(5,3,16,1,198,'2023-12-27','2023-12-31');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productTitle` varchar(50) DEFAULT NULL,
  `productDescription` varchar(50) DEFAULT NULL,
  `productPhoto` varchar(50) DEFAULT NULL,
  `productPrice` varchar(50) DEFAULT NULL,
  `productDiscount` varchar(50) DEFAULT NULL,
  `productQuantity` varchar(50) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`productId`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,'Orange 250g','Oranges of good quality','org1.jpg','460','2','99',5),(4,'Leeks 1Kg','Fresh Vegetable','Leeks.png','440','2','12',5),(5,'Green Apple 300g','good and healthy','app.jpg','555','4','4',5),(8,'Carrot 1Kg','Fresh and eat','carr1.jpg','480','6','50',5),(10,'Salmon Fish 500g','Premium quality','fish.jpg','1890','3','3',4),(14,'Chicken Sausage 1Kg','Maxies Jambo','sa.jpg','1250','0','0',4),(16,'Highland Milk 250ml','Sterilized Flavored Milk','high.jpg','225','12','18',8),(17,'Coca-Cola 2L','Bestselling item','cok.jpg','450','20','58',8),(18,'Speed Water bottle 500ml','speed is winning brand in sri lanka','wtr.jpg','115','0','100',8),(19,'Happy Cow Cheese 120g','Good Quality','cheese.jpg','1200','0','50',9),(20,'Kotmale Yoghurt 3pcs','Frozen Yoghurt - strawberry, blue berry, vanila','yog.jpg','360','1','8',9),(21,'Anchor 400g','Milk Powder','ancor.jpg','1080','5','0',9),(22,'Anchor Pedia Pro 350g','1-2 Years','pedia.png','1218','10','40',10),(23,'Sunlight 2in1 1Kg','Lavender Fragrance','sun.jpg','430','25','97',11),(24,'Prima Toppz Noodles - 80.00 g','prima noodles 80g','nood.jpg','165','0','48',12),(25,'Flora Margarine - 500.00 g','fat free margarine','mag.jpg','1500','2','10',12),(26,'Crysbro Whole Chicken - 1.00 kg','whole chicken ','chik.jpg','1650','5','19',4),(27,'Goldi Boneless Mutton Cubes - 250.00 g','mutton cubes','mutton.jpg','2200','8','0',4),(28,'Fish Cat Food - 400.00 g','cat food','catfood.jpg','1590','5','22',13),(29,'Pedigree Puppy Chicken Milk Food - 3Kg','dog food','dogfood.jpg','5200','0','18',13),(30,'Baby Cheramy Kohomba & Venivel Soap - 90.00 g','Baby Soap','babysoap.jpg','190','0','50',10),(31,'LuvEsence Body Mist,Sweet Luv - 100.00 ml','Body Miss LuvEsence','bodymiss.jpg','2100','10','8',14),(32,'Dreamron Silicon Hair Treatment - 100.00 ml','silicon hair oil','PC32431_1.jpg','1250','3','9',14);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userPassword` varchar(50) DEFAULT NULL,
  `userPhone` varchar(50) DEFAULT NULL,
  `userPic` varchar(50) DEFAULT NULL,
  `userAddress` varchar(50) DEFAULT NULL,
  `userType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'chamod','chamodthilinakumara9@gmail.com','12365','0774915064','app.jpg','d 113/2 diganawaththa molagoda kegalle','admin'),(2,'malmi','malmichamu@gmail.com','1234','0764152692','chamu.png','d 113/2 diganawaththa molagoda kegalle','normal'),(3,'thasila','thasila@gmail.com','123456','0773515314','ava.jpg','d 123/8 hiriwadunna kegalle','normal'),(4,'thilina','kthilina005@gmail.com','7418','0774915064','chamu.png','d 113/2 diganawaththa molagoda kegalle','normal');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 12:24:28
