-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.34-MariaDB-0ubuntu0.20.04.1 - Ubuntu 20.04
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for convocatoria
CREATE DATABASE IF NOT EXISTS `convocatoria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `convocatoria`;

-- Dumping structure for table convocatoria.tribunal
CREATE TABLE IF NOT EXISTS `tribunal` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tribu` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `funcion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`tribu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.tribunal: ~13 rows (approximately)
/*!40000 ALTER TABLE `tribunal` DISABLE KEYS */;
INSERT INTO `tribunal` (`nombre`, `apellidos`, `tribu`, `contraseña`, `funcion`) VALUES
	('G1', 'KHJKHKJH', 'G1', '123', 'G1'),
	('L1', 'HJGHG', 'L1', '123', 'L1'),
	('L2', 'KJKJ', 'L2', '123', 'L2'),
	('L3', 'LKLKL', 'L3', '123', 'L3'),
	('L4', 'LKLK', 'L4', '123', 'L4'),
	('L5', 'HJHJ', 'L5', '123', 'L5'),
	('L6', 'RTRTR', 'L6', '123', 'L6'),
	('L7', 'YUYU', 'L7', '123', 'L7'),
	('L8', 'khhj', 'L8', '123', 'L8'),
	('P1', 'KJKLJKLJ', 'P1', '123', 'P1'),
	('P2', 'KJHJKHJ', 'P2', '123', 'P2'),
	('P3', ';LL;K;L', 'P3', '123', 'P3'),
	('P4', 'KLHJKH', 'P4', '123', 'P4');
/*!40000 ALTER TABLE `tribunal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
