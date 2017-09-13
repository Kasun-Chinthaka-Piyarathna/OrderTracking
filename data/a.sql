-- MySQL dump 10.13  Distrib 5.6.27, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: pizzahut
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Current Database: `pizzahut`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `pizzahut` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `pizzahut`;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `id` int(4) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Kasun','Chinthaka','fhshajhfhhfejh','356123726137'),(2,'Chuka','Chukz','pilimathalawa','0718724671'),(2,'Nuwan','Harsha','Kandy','0813849893'),(2,'A','B','C','1'),(2,'b','c','w','2'),(2,'a','a','a','12');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomersNew`
--

DROP TABLE IF EXISTS `CustomersNew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CustomersNew` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomersNew`
--

LOCK TABLES `CustomersNew` WRITE;
/*!40000 ALTER TABLE `CustomersNew` DISABLE KEYS */;
INSERT INTO `CustomersNew` VALUES (1,'Kasun','Chinthaka','aashgh','25236516'),(2,'Kasun','Chinthaka','sajdjasmdn','8569894898439'),(3,'KK','CC','DD','&&'),(4,'KK','KK','KK','55'),(5,'KK','LL','MM','88'),(6,'AA','SS','DD','1234'),(7,'JJ','HH','FF','67265321'),(8,'FF','TT','YY','455'),(9,'qq','ww','ee','22'),(10,'HH','KK','RR','77'),(11,'qq','ww','ee','22'),(12,'Kasu','kk','ll','888'),(13,'ee','ee','ee','33'),(14,'uu','ii','yy','66'),(15,'tt','tt','tt','44'),(16,'tt','tt','tt','44'),(17,'rr','rr','rr','22'),(18,'kk','kk','kk','33');
/*!40000 ALTER TABLE `CustomersNew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Menu` (
  `id` int(4) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `units` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu`
--

LOCK TABLES `Menu` WRITE;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` VALUES (1,'Chicken Bacon',880.50,200),(2,'Cheese Lovers',1100.00,300),(3,'Devilled Chicken',1500.00,80),(4,'Cheese & Tomato',1050.00,110),(5,'CheesyOnion',1650.00,40);
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderNew`
--

DROP TABLE IF EXISTS `OrderNew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderNew` (
  `order_id` int(4) DEFAULT NULL,
  `customer_id` int(4) DEFAULT NULL,
  `totalprice` decimal(10,2) DEFAULT NULL,
  `menu_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderNew`
--

LOCK TABLES `OrderNew` WRITE;
/*!40000 ALTER TABLE `OrderNew` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderNew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderNewCorrected`
--

DROP TABLE IF EXISTS `OrderNewCorrected`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderNewCorrected` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(4) DEFAULT NULL,
  `totalprice` decimal(10,2) DEFAULT NULL,
  `menu_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderNewCorrected`
--

LOCK TABLES `OrderNewCorrected` WRITE;
/*!40000 ALTER TABLE `OrderNewCorrected` DISABLE KEYS */;
INSERT INTO `OrderNewCorrected` VALUES (1,1,1100.00,1),(2,10,1100.00,1),(3,10,1300.00,11),(4,10,1300.00,11),(5,10,1300.00,11);
/*!40000 ALTER TABLE `OrderNewCorrected` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-13 14:49:31
