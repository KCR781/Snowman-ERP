-- MySQL dump 10.13  Distrib 9.3.0, for Linux (x86_64)
--
-- Host: localhost    Database: snowman_db
-- ------------------------------------------------------
-- Server version	9.3.0

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
-- Table structure for table `tb_managers`
--

DROP TABLE IF EXISTS `tb_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_managers` (
  `manager_id` binary(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `version` bigint DEFAULT NULL,
  PRIMARY KEY (`manager_id`),
  UNIQUE KEY `UKm0iv84a3v9uqwcmntvnje6gg5` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_managers`
--

LOCK TABLES `tb_managers` WRITE;
/*!40000 ALTER TABLE `tb_managers` DISABLE KEYS */;
INSERT INTO `tb_managers` VALUES (_binary '\�ţ�G��\��r�\�','manager7@example.com','password7','manager7',0),(_binary '#�\�\�@2�L3\�\�5o','manager5@example.com','password5','manager5',0),(_binary 'S����J\������\�\�','manager1@example.com','password1','manager1',0),(_binary '�H�gGI��a\0\�\�\�','manager4@example.com','password4','manager4',0),(_binary '�@��@��x��B�b','manager6@example.com','password6','manager6',0),(_binary '��\�\��C5�r��R�','manager2@example.com','password2','manager2',0),(_binary '\�M \�\'LF��!\�\�','manager3@example.com','password3','manager3',0),(_binary '\�b2�\�\�I0�^��RcI�','manager8@example.com','password8','manager8',0),(_binary '\�h\�ӁK�o\�8g��','manager10@example.com','password10','manager10',0),(_binary '� {A�wK\�\�\��\0\0q','manager9@example.com','password9','manager9',0);
/*!40000 ALTER TABLE `tb_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `user_id` binary(16) NOT NULL,
  `creation_timestamp` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `update_timestamp` datetime(6) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `version` bigint DEFAULT NULL,
  `manager_id` binary(16) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UKgrd22228p1miaivbn9yg178pm` (`email`),
  KEY `FKnj1w09rj3qiqa8me0li6sgidi` (`manager_id`),
  CONSTRAINT `FKnj1w09rj3qiqa8me0li6sgidi` FOREIGN KEY (`manager_id`) REFERENCES `tb_managers` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (_binary 'K���qIИ\�nv\�\� ','2025-06-06 18:08:54.989599','user3@example.com','password3','2025-06-06 18:08:54.989599','user3',0,_binary '\�ţ�G��\��r�\�'),(_binary '�g�\�\�Gպ��\�DX�G','2025-06-06 18:08:54.995327','user6@example.com','password6','2025-06-06 18:08:54.995337','user6',0,_binary '\�ţ�G��\��r�\�'),(_binary '�\��o�D����y\\�','2025-06-06 18:08:54.984000','user1@example.com','password1','2025-06-06 18:08:54.984000','user1',0,_binary '\�ţ�G��\��r�\�'),(_binary '�`\�e[�M+�\�V\����','2025-06-06 18:08:54.996384','user7@example.com','password7','2025-06-06 18:08:54.996384','user7',0,_binary '\�ţ�G��\��r�\�'),(_binary '�+=�M3�\�\��آ�','2025-06-06 18:08:55.001585','user10@example.com','password10','2025-06-06 18:08:55.001585','user10',0,_binary '\�ţ�G��\��r�\�'),(_binary '�,#-ӯK ���m@\�\�','2025-06-06 18:08:54.998476','user8@example.com','password8','2025-06-06 18:08:54.998476','user8',0,_binary '\�ţ�G��\��r�\�'),(_binary '��&o@�<�\�Yf�\�','2025-06-06 18:08:55.000044','user9@example.com','password9','2025-06-06 18:08:55.000044','user9',0,_binary '\�ţ�G��\��r�\�'),(_binary '\��\�\��LC�\��\�\�)�','2025-06-06 18:08:54.987874','user2@example.com','password2','2025-06-06 18:08:54.987874','user2',0,_binary '\�ţ�G��\��r�\�'),(_binary '\�\�dDG͠�\�\�;��','2025-06-06 18:08:54.991669','user4@example.com','password4','2025-06-06 18:08:54.991686','user4',0,_binary '\�ţ�G��\��r�\�'),(_binary '\���iM}����R�T\�','2025-06-06 18:08:54.993250','user5@example.com','password5','2025-06-06 18:08:54.993250','user5',0,_binary '\�ţ�G��\��r�\�');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-06 18:18:21
