-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_pendaftaran_formulir
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Table structure for table `tbl_formulir`
--

DROP TABLE IF EXISTS `tbl_formulir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_formulir` (
  `id_pendaftaran` int(10) NOT NULL AUTO_INCREMENT,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `nama_panggilan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `username_ig` varchar(255) NOT NULL,
  `alasan_mengikuti_seminar` varchar(255) NOT NULL,
  `tgl_pendaftaran` datetime NOT NULL,
  PRIMARY KEY (`id_pendaftaran`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_formulir`
--

LOCK TABLES `tbl_formulir` WRITE;
/*!40000 ALTER TABLE `tbl_formulir` DISABLE KEYS */;
INSERT INTO `tbl_formulir` VALUES (1,'ayu','meyanti','ayu','Perempuan','makassar','2000-05-02','ayumeyanti@gmail.com','toddopuli','Teknik Elektro','Teknik Komputer dan Jaringan','ayumyntii','Menambah teman dan wawasan.','2020-04-11 22:20:51'),(3,'ainun','trisnaningrun','ainun','Perempuan','makassar','2000-09-23','ainuntrisnaningrunn@gmail.com','sudiang','Teknik Elektro','Teknik Komputer dan Jaringan','ainuntrisnaningrunn','Seminarnya gratis.','2020-04-11 22:22:27'),(5,'nurul','arina','arina','Perempuan','soppeng','2001-01-28','nurularina@gmail.com','sahabat','Teknik Elektro','Teknik Komputer dan Jaringan','nurullarina','Menambah pengetahuan mengenai IT.','2020-04-11 22:26:25');
/*!40000 ALTER TABLE `tbl_formulir` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-11 22:31:47
