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

-- Dumping structure for table convocatoria.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo_SIS` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correo_Institucional` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_SIS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Dumping data for table convocatoria.estudiante: ~24 rows (approximately)
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` (`codigo_SIS`, `nombre`, `apellidos`, `direccion`, `telefono`, `correo_Institucional`, `contraseña`) VALUES
	('202001026', 'Fabiana', 'Padilla', 'Linde', '7987895465', '202001026@est.edu.umss', '123 '),
	('202001027', 'Felix', 'Ramoz', 'Tiqui', '54654654', '202001027@est.edu.umss', '123'),
	('202001028', 'favio', 'Morales', 'Linde', '654654', '202001028@est.edu.umss', '123'),
	('202001029', 'Gabriela', 'Mamani', 'Linde', '54654', '202001029@est.edu.umss', '123'),
	('202001030', 'Gabo', 'Mamani', 'Tiqui', '464654', '202001030@est.edu.umss', '123'),
	('202001031', 'Harol', 'Taqrqui', 'Tiqui', '321654', '202001031@est.edu.umss', '123'),
	('202001032', 'Himena', 'Mamani', 'Linde', '646787', '202001032@est.edu.umss', '123 '),
	('202001033', 'isac', 'Angulo', 'tqui', '64654654', '202001033@est.edu.umss', '123'),
	('202001034', 'isaias', 'Martinez', 'Tiqui', '465456456', '202001034@est.edu.umss', '123'),
	('202001035', 'Joel', 'Ramiro', 'Linde', '646547', '202001035@est.edu.umss', '123'),
	('202001036', 'Jonas', 'Apaza', 'LINde', '654654756', '202001036@est.edu.umss', '123'),
	('202001037', 'Jacob', 'Morales', 'Quillacollo', '65456456', '202001037@est.edu.umss', '123'),
	('202001038', 'Jaziel', 'Apaza', 'Quilla', '654654654', '202001038@est.edu.umss', '123'),
	('202001039', 'Habril', 'Mamani', 'Quila', '4654654564', '202001039@est.edu.umss', '123'),
	('202001040', 'Jimena', 'Mercedes', 'LInde', '6456456456', '202001040@est.edu.umss', '123'),
	('202001041', 'JHoe', 'Luna', 'PAnamericana', '5465465', '202001041@est.edu.umss', '123'),
	('202001042', 'Fancundo', 'Escalera', 'Panamericana', '6546765456', '202001042@est.edu.umss', '123'),
	('202001043', 'Fausto', 'MOntano', 'Quilla', '645646546', '202001043@est.edu.umss', '123'),
	('202001044', 'jesse', 'Ezpinoza', 'Quilla', '654654', '202001044@est.edu.umss', '123'),
	('202001045', 'Gaspar', 'Ezpinosa', 'Tiqui', '2514654564', '202001045@est.edu.umss', '123'),
	('202001046', 'Irma', 'mita', 'linde', '54654564', '202001046@est.edu.umss', '123'),
	('202001047', 'IRene', 'Ezpinosa', 'POrvenir', '6456456', '202001047@est.edu.umss', '123'),
	('202001048', 'Iris', 'Andre', 'Cochamba', '6465465', '202001048@est.edu.umss', '123'),
	('202001049', 'Jaldino', 'Rivero', 'Oruro', '564654564', '202001049@est.edu.umss', '123');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
